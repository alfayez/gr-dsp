/** ============================================================================
 *  @file   tskLoop.c
 *
 *  @path   $(DSPLINK)/dsp/src/samples/loop/
 *
 *  @desc   This is simple TSK based application that uses SIO interface to
 *          implement loopback for GPP. It receives data from the a input
 *          channel and send the same data back from output channel. Input and
 *          output channel numbers are configurable through header file of this
 *          application.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */


/*  ----------------------------------- DSP/BIOS Headers            */
#include <std.h>
#include <log.h>
#include <swi.h>
#include <sys.h>
#include <sio.h>
#if defined (DSP_BOOTMODE_NOBOOT)
#include <dio.h>
#include <iom.h>
#endif
#include <tsk.h>

/*  ----------------------------------- DSP/BIOS LINK Headers       */
#include <failure.h>
#include <dsplink.h>
#include <platform.h>
#if defined (DSP_BOOTMODE_NOBOOT)
#include <sma_pool.h>
#include <zcpy_data.h>
#endif

/*  ----------------------------------- Sample Headers              */
#include <loop_config.h>
#include <tskLoop.h>
#include <_hal_cache.h>
#include <string.h>

//#include <dsp_fir_cplx.h>

    bufferType rf_data_in0[MAX_SIZE];
    bufferType rf_data_in1[MAX_SIZE/2];
    bufferType rf_data_size = 0;    
    bufferType fir_coeff[MAX_SIZE/2];
    bufferType fir_coeff_size = 0, scaling_factor = 1, interpolation_factor = 1;
    int		first_entry = 0;
    int		stallVar=1, stallCount=0;
/** ============================================================================
 *  @const  FILEID
 *
 *  @desc   FILEID is used by SET_FAILURE_REASON macro.
 *  ============================================================================
 */
#define FILEID  FID_APP_C

/** ============================================================================
 *  @name   xferBufSize
 *
 *  @desc   Size of the buffer size for TSK based loopback.
 *  ============================================================================
 */
extern Uint32 xferBufSize ;

/** ============================================================================
 *  @name   numTransfers
 *
 *  @desc   Iterations of data transfer to be done by the application.
 *          A value of 0 in numTransfers implies infinite iterations.
 *  ============================================================================
 */
extern Uint16 numTransfers ;

#if defined (DSP_BOOTMODE_NOBOOT)
/** ============================================================================
 *  @name   smaPoolObj
 *
 *  @desc   Global object for pool parameters for the dynamic POOL_open call
 *  ============================================================================
 */
SMAPOOL_Params            smaPoolObj ;

extern IOM_Fxns ZCPYDATA_FXNS ;
extern Void ZCPYDATA_init (Void) ;


DIO_Params dioAttrs = {
     "/dsplink",
      NULL
} ;

DEV_Attrs devAttrs = {
        0,            /* devId */
        0,            /* dsplink deviceParams */
        DEV_IOMTYPE,  /* dsplink driver type */
        0             /* dsplink devp */
} ;

DEV_Attrs dioDevAttrs = {
        0,            /* devId */
        &dioAttrs,    /* DIO deviceParams */
        DEV_SIOTYPE,  /* DIO type */
        0             /* devp */
} ;
#endif


/** ============================================================================
 *  @func   TSKLOOP_create
 *
 *  @desc   Create phase function for the TSKLOOP application. Initializes the
 *          TSKLOOP_TransferInfo structure with the information that will be
 *          used by the other phases of the application.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKLOOP_create (TSKLOOP_TransferInfo ** infoPtr)
{
    Int                     status = SYS_OK ;
    TSKLOOP_TransferInfo *  info = NULL ;
    SIO_Attrs               attrs ;
    Uint16                  i ;
    Uint16                  j ;
#if  defined (DSP_BOOTMODE_NOBOOT)
    POOL_Obj                poolObj ;

    smaPoolObj.poolId        = 0;
    smaPoolObj.exactMatchReq = TRUE ;
    poolObj.initFxn          = SMAPOOL_init ;
    poolObj.fxns             = (POOL_Fxns *) &SMAPOOL_FXNS ;
    poolObj.params           = &(smaPoolObj) ;
    poolObj.object           = NULL ;

    status = POOL_open (0, &poolObj) ;

    /* Create IOM driver dynamically */
    status = DEV_createDevice("/dsplink", &ZCPYDATA_FXNS, (Fxn) &ZCPYDATA_init, &devAttrs) ;

    /* Create DIO adapter dynamically */
    status = DEV_createDevice("/dio_dsplink", &DIO_tskDynamicFxns, NULL, &dioDevAttrs);
#endif

    /* Allocate TSKLOOP_TransferInfo structure that will be initialized
     * and passed to other phases of the application
     */
    *infoPtr = MEM_calloc (DSPLINK_SEGID,
                           sizeof (TSKLOOP_TransferInfo),
                           DSPLINK_BUF_ALIGN) ;

    if (*infoPtr == NULL) {
        status = SYS_EALLOC ;
    }
    else {
        info = *infoPtr ;
    }

    if (status == SYS_OK) {
        /* Filling up the transfer info structure */
        info->numTransfers =  numTransfers ;
        info->bufferSize   =  xferBufSize ;
        info->numBuffers   =  TSK_NUM_BUFFERS ;

        /* Attributes for the stream creation */
        attrs = SIO_ATTRS ;
        attrs.nbufs   = info->numBuffers ;
        attrs.segid   = DSPLINK_SEGID ;
        attrs.align   = DSPLINK_BUF_ALIGN ;
        attrs.flush   = TRUE ;
        attrs.model   = SIO_ISSUERECLAIM ;
        attrs.timeout = SYS_FOREVER ;

        /* Creating input and output streams */
        info->inputStream = SIO_create (INPUT_CHANNEL,
                                        SIO_INPUT,
                                        info->bufferSize,
                                        &attrs) ;
        info->outputStream = SIO_create (OUTPUT_CHANNEL,
                                         SIO_OUTPUT,
                                         info->bufferSize,
                                         &attrs) ;

        if (   (info->inputStream  == NULL)
            || (info->outputStream == NULL)) {
            status = SYS_EALLOC ;
        }
    }

    /* Allocating all the buffers that will be used in the transfer */
    if (status == SYS_OK) {
        for (i = 0 ; (i < info->numBuffers) && (status == SYS_OK) ; i++) {
            status = POOL_alloc (SAMPLE_POOL_ID,
                                 (Ptr *) &(info->buffers [i]),
                                 info->bufferSize) ;
            if (status != SYS_OK) {
                for (j = 0 ; j < i ; j++) {
                    POOL_free (SAMPLE_POOL_ID,
                               info->buffers [i],
                               info->bufferSize) ;
                    info->buffers [j] = NULL ;
                }
                status = SYS_EALLOC ;
            }
        }
    }
    
    
    ///////////////////////////////
    // init buffers
    memset(rf_data_in0, 0, sizeof(rf_data_in0));
    memset(rf_data_in1, 0, sizeof(rf_data_in1));
    memset(fir_coeff, 0, sizeof(fir_coeff));
    
    return status ;
}


/** ============================================================================
 *  @func   TSKLOOP_execute
 *
 *  @desc   Execute phase function for the TSKLOOP application. Application
 *          receives the data from the input channel and sends the same data
 *          back on output channel. Channel numbers can be configured through
 *          header file.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKLOOP_execute(TSKLOOP_TransferInfo * info)
{
    Int         status  = SYS_OK ;
    Char *      buffer  = info->buffers [0] ;
    Arg         arg     = 0 ;
    Uint32      i=0,k=0, l=0;
    Int         nmadus ;
	bufferType	temp_zero=0;	
    //bufferType* rf_data_in0_temp = rf_data_in0;
    //bufferType* rf_data_in1_temp = rf_data_in1;
    //Char *      buffer_temp  = info->buffers [0] ;
    
    /* Execute the loop for configured number of transfers
     * A value of 0 in numTransfers implies infinite iterations
     */

    //BCACHE_setMode(BCACHE_L1D, BCACHE_FREEZE);


//    for (i = 0 ;
//         (   ((info->numTransfers == 0) || (i < info->numTransfers))
//          && (status == SYS_OK)) ;
//         i++) {
//	while (stallVar)
//		stallCount++;
while (1) {
        /* Receive a data buffer from GPP */
        status = SIO_issue(info->inputStream,
                           buffer,
                           info->bufferSize,
                           arg) ;
        if (status == SYS_OK) {
            nmadus = SIO_reclaim (info->inputStream,
                                  (Ptr *) &buffer,
                                  &arg) ;
            if (nmadus < 0) {
                status = -nmadus ;
                SET_FAILURE_REASON (status) ;
            }
            else {
                info->receivedSize = nmadus ;
            }
        }
        else {
            SET_FAILURE_REASON(status);
        }
        /* Do processing on this buffer */
	
	if (status == SYS_OK) {    

	     if (first_entry < 1)
	     {
	     
	        memcpy(&scaling_factor, buffer+sizeof(bufferType)*(SCALING_INDEX+1), sizeof(bufferType));
	     	memcpy(&interpolation_factor, buffer+sizeof(bufferType)*(INTERPOLATION_INDEX+1), sizeof(bufferType));
	        memcpy(&fir_coeff_size, buffer+sizeof(bufferType)*(COEFF_INDEX+1), sizeof(bufferType));
	     	
			//memcpy(fir_coeff, buffer+sizeof(bufferType)*(COEFF_INDEX+2), sizeof(bufferType)*fir_coeff_size);
			// HERE HERE
			fir_coeff_size = fir_coeff_size*2;
			k=0;
			for (i=0; i < fir_coeff_size; i=i+2)
			{ 
			    memcpy(&fir_coeff[i], buffer+sizeof(bufferType)*(COEFF_INDEX+2+k), sizeof(bufferType));
				//memcpy(fir_coeff, buffer+sizeof(bufferType)*(COEFF_INDEX+2), sizeof(bufferType)*fir_coeff_size);
				k = k + 1;
			}
			fir_coeff_size = fir_coeff_size/2;
	     	//square(((bufferType *)buffer)+RF_DATA_OFFSET, fir_coeff_size, (bufferType *)buffer);
	     	first_entry++;
	     }
	     else
	     {
	     
		//rf_data_in0_temp = rf_data_in0;
		//rf_data_in1_temp = rf_data_in1;
		//buffer_temp      = buffer;

	     	//memcpy(&rf_data_size, buffer, sizeof(bufferType));
			rf_data_size = _mem2_const(&buffer[0]);
			//memcpy(rf_data_in0, buffer+sizeof(bufferType)*((fir_coeff_size)*2-1), sizeof(bufferType)*rf_data_size*2);
	     	//////////////////////////////
	     	// FIR_FF
	     	//memcpy(rf_data_in0, buffer+sizeof(bufferType), sizeof(bufferType)*rf_data_size);
	     	//fir_fff(rf_data_in0, rf_data_size, fir_coeff, fir_coeff_size, (bufferType *)buffer);
		
		///////////////////////////////////
		// FIR_CF
		// input values
		
		k=1;
		l=0;
		/*
		for (i=0; i < rf_data_size/INTERPOLATION; i++)
		{
			//memcpy(rf_data_in0+i*sizeof(bufferType), (bufferType *)buffer+k*sizeof(bufferType), sizeof(bufferType));
			//memcpy(rf_data_in1+i*sizeof(bufferType), (bufferType *)buffer+(k+1)*sizeof(bufferType), sizeof(bufferType));
			
			memcpy(rf_data_in0+l, (bufferType *)buffer+k, sizeof(bufferType));
			memcpy(rf_data_in1+l, (bufferType *)buffer+(k+1), sizeof(bufferType));			
			k = k + 2;
			l = l + 2;
		}
		*/
		//memset(buffer, 0, sizeof(bufferType)*(rf_data_size+1)*2);
		//HAL_CACHE_WBALL;
		//fir_ccf(rf_data_in0, rf_data_in1, rf_data_size, fir_coeff, fir_coeff_size, (bufferType *)buffer, (bufferType *)buffer+1);
		//interp_fir_ccf(rf_data_in0, rf_data_in1, INTERPOLATION, rf_data_size, fir_coeff, fir_coeff_size, (bufferType *)buffer, (bufferType *)buffer+1);
		
		
		//interp_fir_ccf((bufferType *)buffer+1, (bufferType *)buffer+2, interpolation_factor, rf_data_size, fir_coeff, fir_coeff_size, (bufferType *)buffer, (bufferType *)buffer+1);
		//rf_data_in0 = rf_data_in0 + rf_data_size*2;
		//((fir_coeff_size)*2-1)
		//DSP_fir_cplx_test ((short *)&rf_data_in0[(fir_coeff_size-1)*2], fir_coeff, (short *)buffer, fir_coeff_size, rf_data_size);
		DSP_fir_cplx_test ((short *)buffer+((fir_coeff_size-1)*2)*2, fir_coeff, (short *)buffer, fir_coeff_size, rf_data_size);
///////////////////////////////////////		
		// send results
		//k = 0;
		//memset(buffer, 0, sizeof(bufferType)*(rf_data_size+1)*2);
		//for (i=0; i < rf_data_size; i++)
		//{
		//	memcpy((bufferType *)buffer + (k  )*sizeof(bufferType), rf_data_in0 + i*sizeof(bufferType), sizeof(bufferType));
		//	memcpy((bufferType *)buffer + (k+1)*sizeof(bufferType), rf_data_in1 + i*sizeof(bufferType), sizeof(bufferType));
		//	k = k + 2;
		//}
		
	     	//square(((bufferType *)buffer)+RF_DATA_OFFSET, rf_data_size, (bufferType *)buffer);
	     	//convolution(((bufferType *)buffer)+RF_DATA_OFFSET, rf_data_size, fir_coeff, fir_coeff_size, (bufferType *)buffer);
	     }
	     //HAL_CACHE_WBALL;
	     //HAL_CACHE_WB(buffLocal, sizeof(bufferType)*ARRAY_SIZE);
        }
	else {
            SET_FAILURE_REASON(status);
        }
        /* Send the processed buffer back to GPP */
        if (status == SYS_OK) {
            status = SIO_issue(info->outputStream,
                               buffer,
                               info->receivedSize,
                               arg);

            if (status == SYS_OK) {
                nmadus = SIO_reclaim (info->outputStream,
                                      (Ptr *) &(buffer),
                                      &arg) ;
                if (nmadus < 0) {
                    status = -nmadus ;
                    SET_FAILURE_REASON (status) ;
                }
            }
            else {
                SET_FAILURE_REASON (status) ;
            }
        }
    }
    return status ;
}


/** ============================================================================
 *  @func   TSKLOOP_delete
 *
 *  @desc   Delete phase function for the TSKLOOP application. It deallocates
 *          all the resources of allocated during create phase of the
 *          application.
 *
 *  @modif  None.
 *  ============================================================================
 */
Int TSKLOOP_delete (TSKLOOP_TransferInfo * info)
{
    Int     status     = SYS_OK ;
    Uint16  tmpStatus = SYS_OK ;
    Bool    freeStatus = FALSE ;
    Uint16  j ;

    /* Delete input stream */
    if (info->inputStream != NULL) {
        status = SIO_delete (info->inputStream) ;
        if (status != SYS_OK) {
            SET_FAILURE_REASON (status) ;
        }
    }

    /* Delete output stream */
    if (info->outputStream != NULL) {
        tmpStatus = SIO_delete(info->outputStream);
        if ((status == SYS_OK) && (tmpStatus != SYS_OK)) {
            status = tmpStatus ;
            SET_FAILURE_REASON (status) ;
        }
    }

    /* Delete the buffers */
    if (info->numBuffers > 0) {
        for (j = 0 ;
             (j < info->numBuffers) && (info->buffers [j] != NULL) ;
             j++) {
            POOL_free (SAMPLE_POOL_ID, info->buffers [j], info->bufferSize) ;
        }
    }

    /* Free the info structure */
    freeStatus = MEM_free (DSPLINK_SEGID, info, sizeof (TSKLOOP_TransferInfo)) ;
    
    if ((status == SYS_OK) && (freeStatus != TRUE)) {
        status = SYS_EFREE ;
        SET_FAILURE_REASON (status) ;
    }

    return status ;
}

bufferType convolution(bufferType* in1, int length1, bufferType* in2, int length2, bufferType* out)
{
	int i=0,j=0;
	#pragma MUST_ITERATE(10,10)
	for (i=0; i < length1+length2-1; i++)
	{
		//#pragma MUST_ITERATE(2,2)
		for (j=0; j<length1; j++)
		{
			if (i-j >= 0)
			{
				//if (i==0)
				out[i] = out[i] + in1[j]*in2[i-j];
				//out[j]=in2[j];
				//printf("i=%d j=%d i=j=%d\n", i, j, i-j);
			}
		}
	}
	return 1;

}
bufferType square(bufferType* in1, int length1, bufferType* out)
{
	int i=0;
//	#pragma MUST_ITERATE(10,10)
	for (i=0; i < length1; i++)
	{
		//if (i==0)
		out[i] = (in1[i]*in1[i])/scaling_factor;
		//out[i] = in1[i];
		//out[j]=in2[j];
		//printf("i=%d j=%d i=j=%d\n", i, j, i-j);
	}
	
	return 1;

}
bufferType fir_fff(bufferType* fir_in, bufferType fir_in_size_local, bufferType* fir_coeff, bufferType fir_coeff_size_local, bufferType* fir_out)
{
	bufferType i=0;
	
	for(i=0; i < fir_in_size_local; i++)
	{
		fir_out[i] = filter_fff_imp(&fir_in[i]);		
		//fir_out[i] = fir_in[i];
	}	

	return 1;
}

bufferType fir_ccf(bufferType* fir_in0, bufferType* fir_in1, bufferType fir_in_size_local, bufferType* fir_coeff, bufferType fir_coeff_size_local, bufferType* fir_out0, bufferType* fir_out1)
{
	bufferType i=0;
	bufferType k=0;
	
	for(i=0; i < fir_in_size_local; i++)
	{
		fir_out0[k] = filter_ccf_imp(&fir_in0[k]);
		fir_out1[k] = filter_ccf_imp(&fir_in1[k]);
		//fir_out0[k] = fir_in0[k]+1;
		//fir_out1[k] = fir_in1[k]+1;
		k = k + 2;
		//fir_out[i] = fir_in[i];
	}	

	return 1;
}
bufferType interp_fir_ccf(bufferType* fir_in0, bufferType* fir_in1, bufferType interpolation, bufferType fir_in_size_local, bufferType* fir_coeff, bufferType fir_coeff_size_local, bufferType* fir_out0, bufferType* fir_out1)
{
	bufferType i=0;
	bufferType k=0;
	bufferType nfilters = interpolation;
	bufferType ni = fir_in_size_local / interpolation;
	bufferType nf = 0;
	/*
	for(i=0; i < ni; i++)
	{
		for (nf = 0; nf < nfilters; nf++)
		{
			fir_out0[k] = filter_ccf_imp(&fir_in0[i]);
			fir_out1[k] = filter_ccf_imp(&fir_in1[i]);
			
			//fir_out0[k] = filter_ccf_imp(&fir_in0[i]);
			//fir_out1[k] = filter_ccf_imp(&fir_in1[i]);
			//fir_out0[k] = fir_in0[i]+1;
			//fir_out1[k] = fir_in1[i]+1;
			k = k + 2*nfilters;
			//fir_out[i] = fir_in[i];
		}
	}
	*/
	
	for(i=0; i < fir_in_size_local; i++)
	{
		//fir_out0[k] = filter_ccf_imp(&fir_in0[i]);
		//fir_out1[k] = filter_ccf_imp(&fir_in1[i]);
		
		fir_out0[k] = filter_ccf_imp(&fir_in0[k]);
		fir_out1[k] = filter_ccf_imp(&fir_in1[k]);
		
		//fir_out0[k] = fir_in0[k];
		//fir_out1[k] = fir_in1[k];
		
		//k = k + 2*nfilters;
		//k = k + 2*INTERPOLATION;
		k = k + 2;
		//fir_out[i] = fir_in[i];
	}	
	return 1;
}
bufferType filter_ccf_imp(bufferType* fir_in) 
{
	static const bufferType N_UNROLL = 2;
	int	acc0 = 0;
	int	acc1 = 0;
    int sum = 0;
	
	bufferType i = 0;
	bufferType k = 0;
	bufferType n = (fir_coeff_size / N_UNROLL) * N_UNROLL;

	for (i = 0; i < n; i += N_UNROLL){
		acc0 += ((int)(fir_coeff[i + 0] *  fir_in[k + 0]) >> scaling_factor);
		//acc1 += (int)(fir_coeff[i + 1] *  fir_in[i + 1]);
		acc1 += ((int)(fir_coeff[i + 1] *  fir_in[k + 2]) >> scaling_factor);
		k = k + 2*N_UNROLL;
	}
	//k = 0;
	for (; i < fir_coeff_size; i++)
	{
		acc0 += ((int)(fir_coeff[i] *  fir_in[k]) >> scaling_factor);
		k = k + 2;
	}
    sum = (acc0 + acc1);
  	return ((bufferType)sum);
}

bufferType filter_fff_imp(bufferType* fir_in) 
{
	static const bufferType N_UNROLL = 2;
	bufferType	acc0 = 0;
	bufferType	acc1 = 0;

	bufferType i = 0;
	bufferType n = (fir_coeff_size / N_UNROLL) * N_UNROLL;

	for (i = 0; i < n; i += N_UNROLL){
		acc0 += (fir_coeff[i + 0] *  fir_in[i + 0]) >> scaling_factor;
		acc1 += (fir_coeff[i + 1] *  fir_in[i + 1]) >> scaling_factor;
	}

	for (; i < fir_coeff_size; i++)
		acc0 += (fir_coeff[i] *  fir_in[i]) >> scaling_factor;

  	return (bufferType) (acc0 + acc1);	
}

void DSP_fir_cplx_test (
    const short *restrict x,    /* Input array [nr+nh-1 elements] */
    const short *restrict h,    /* Coeff array [nh elements]      */
    short       *restrict r,    /* Output array [nr elements]     */
    int nh,                     /* Number of coefficients         */
    int nr                      /* Number of output samples       */
)
{
    int i, j;
    int imag0, real0;
    int imag1, real1;
    int imag_real_0;
    int imag_real_1;
    int h_10, h_01;

    double x_3210;

    /*--------------------------------------------------------------------*/
    /* _nasserts are used to inform the compiler that the input, filter,  */
    /* output arrays are word or double word aligned. In addition the  #  */
    /* filter taps and output samples is stated to be even.               */
    /*--------------------------------------------------------------------*/
    _nassert((int)nr >= 8);
    _nassert((int)nr % 4 == 0);
    _nassert((int)nh >= 4);
    _nassert((int)nh % 2 == 0);

    /*--------------------------------------------------------------------*/
    /* Inform the compiler that the following loop will iterate at least  */
    /* once and that the # output samples is a multiple of 4.             */
    /*--------------------------------------------------------------------*/
    #pragma MUST_ITERATE(4,,2)
    for (i = 0; i < 2*nr; i += 4) {
        /*----------------------------------------------------------------*/
        /* Zero out accumulators for 4 complex output samples             */
        /*----------------------------------------------------------------*/
        imag0 = real0 = imag1 = real1 = 0;

        /*----------------------------------------------------------------*/
        /* Inform compiler that filter taps is at least 4, and a multiple */
        /* of 2.                                                          */
        /*----------------------------------------------------------------*/
        _nassert((int)nr >= 8);
        _nassert((int)nr % 4 == 0);
        _nassert((int)nh >= 4);
        _nassert((int)nh % 2 == 0);
        #pragma MUST_ITERATE(4,,2)
        for (j = 0; j < 2*nh; j += 2) {
            /*------------------------------------------------------------*/
            /* Perform word-wide loads using intrinsic, swizzle using the */
            /* packlh2 instruction to exchange the lower/upper half words */
            /*------------------------------------------------------------*/
            h_10 = _mem4_const(&h[j]);
            h_01 = _packlh2(h_10, h_10);

            /*------------------------------------------------------------*/
            /* Load input data using aligned word wide loads.             */
            /*------------------------------------------------------------*/
            x_3210 = _memd8_const(&x[i - j]);

            /*------------------------------------------------------------*/
            /* Perform multiplies using complex data, filter taps and     */
            /* accumulate results using either dotp2/dotpn2 instr.        */
            /*------------------------------------------------------------*/
            real0 -= _dotpn2(_lo(x_3210), h_10);
            real1 -= _dotpn2(_hi(x_3210), h_10);

            imag0 += _dotp2 (_lo(x_3210), h_01);
            imag1 += _dotp2 (_hi(x_3210), h_01);
        }

        /*----------------------------------------------------------------*/
        /*  Shift out accumulated sum, and store as half words            */
        /*----------------------------------------------------------------*/
        imag_real_0 = _packh2(imag0 << 1, real0 << 1);
        imag_real_1 = _packh2(imag1 << 1, real1 << 1);
        _memd8(&r[i]) = _itod(imag_real_1, imag_real_0);
    }
}
