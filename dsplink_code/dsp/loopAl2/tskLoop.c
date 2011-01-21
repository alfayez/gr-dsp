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
//#include <csl.h>
//#include <csl_cache.h>
#include <string.h>
#include "typedef.h"

#define GLOBAL_Q (14)
#include "IQmath.h"
#define PI 			3.14159F
#define M16_PI 		50.2655F
#define M16_2PI 	100.531F
#define Q14_16_PI 	823550
#define SENS_MOD	0.06135923F

#define IQ_FIXED_SCALE	16384
#define IQ_FIXED_SCALE_TX	16384

//#include <dsp_fir_cplx.h>

    //bufferType rf_data_in0[MAX_SIZE];
    //bufferType rf_data_in1[MAX_SIZE/2];
    bufferType rf_data_size = 0;    
    bufferType fir_coeff[MAX_DSP_BLOCKS][MAX_SIZE/2];
	bufferType filt_hist[MAX_SIZE/2];
	// Multiply by two because block assumes that the input array is rf_data_size + coeffs - 1
	bufferType buffer_interp[MAX_SIZE*2];
    bufferType fir_coeff_size[MAX_DSP_BLOCKS], scaling_factor[MAX_DSP_BLOCKS], interpolation_factor[MAX_DSP_BLOCKS], decimation_factor[MAX_DSP_BLOCKS],			   
block_type_array[MAX_DSP_BLOCKS];
    int     iter_count=0;
    int		first_entry = 0;
    int		stallVar=1, stallCount=0;
    short	iq_data1_real_short=0, iq_data1_imag_short=0, iq_result_short=0;
	short	iq_data2_real_short=0, iq_data2_imag_short=0, iq_result_short_2=0;
    
	//////////////////////////////////////////
	////////       FM DEMOD VARIABLES       //////
	//////////////////////////////////////////
	_iq14	iq_scale, iq_conj;
	_iq14	iq_data1_real, iq_data1_imag;
	_iq14	iq_data2_real, iq_data2_imag;
	_iq14	iq_result,     iq_result2, 		 iq_result_2, iq_result2_2;
	_iq		result1, result2;
	int		iq_int=0,iq_frac=0,iq_int_2=0,iq_frac_2=0;
	short   offset_0=0, offset_1=0, offset_2=0, offset_3=0;	
	//////////////////////////////////////////
	////////       FM MOD VARIABLES       //////
	//////////////////////////////////////////
	_iq14	iq_phase=_IQtoIQ14(0), iq_phase2=_IQtoIQ14(0), iq_sensitivity_mod, fm_phase_limit, fm_2_phase_limit, d_phase_limit_temp;
	_iq14	iq_iout, iq_qout, iq_in;
	
	//////////////////////////////////////////
	////////       DEEMPH VARIABLES      // //////
	//////////////////////////////////////////
	
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
    memset(fir_coeff,            0, sizeof(fir_coeff));
    memset(fir_coeff_size,       0, sizeof(fir_coeff_size));
    memset(scaling_factor,       0, sizeof(scaling_factor));
    memset(interpolation_factor, 0, sizeof(interpolation_factor));
	memset(decimation_factor,    0, sizeof(decimation_factor));
	memset(block_type_array,	 0, sizeof(block_type_array));
	memset(filt_hist,			 0, sizeof(filt_hist));
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
    Uint32      i=0,k=0, l=0, hist_count=0, hist_count_cpy=0;
    Int         nmadus ;
	bufferType	temp_zero=0;
	bufferType  fir_interp_div = 0;
	bufferType  fir_interp_rem = 0;
	bufferType  block_id = 0;
	bufferType  block_type = 0;
	bufferType* iq_temp=NULL;
	bufferType* coeff_temp=NULL;
	bufferType* buffer_temp=NULL;
	bufferType* filt_hist_cpy_ptr = NULL;

	bufferType  temp_short0=0;
	bufferType interpLim=0;
	
	iq_sensitivity_mod = _FtoIQ14(SENS_MOD);
	fm_phase_limit 	   = _FtoIQ14(M16_PI);
	fm_2_phase_limit   = _FtoIQ14(M16_2PI);
	
	
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
	//while (stallVar)
		//stallCount++;

				iq_scale    = _IQtoIQ14(IQ_FIXED_SCALE);
				iq_conj		= _IQtoIQ14(-1);
				memset(buffer_interp, 0, sizeof(buffer_interp));
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
	
	if (status == SYS_OK) 
	{    
			//block_type = _mem2_const(buffer+sizeof(bufferType)*(DSP_BLOCK_TYPE_INDEX+1));
            //block_id   = _mem2_const(buffer+sizeof(bufferType)*(DSP_BLOCK_ID_INDEX+1));
			
			memcpy(&block_type, buffer+sizeof(bufferType)*(DSP_BLOCK_TYPE_INDEX+1), sizeof(bufferType));
            memcpy(&block_id, buffer+sizeof(bufferType)*(DSP_BLOCK_ID_INDEX+1), sizeof(bufferType));
			
			//memcpy(&block_type,     buffer+sizeof(bufferType)*(DSP_BLOCK_TYPE_INDEX+1),      sizeof(bufferType));
     	    //memcpy(&block_id,       buffer+sizeof(bufferType)*(DSP_BLOCK_ID_INDEX+1),        sizeof(bufferType));

	     if (block_type != DSP_PROCESS)
	     {
		    scaling_factor[block_id]       = _mem2_const(buffer+sizeof(bufferType)*(SCALING_INDEX+1));
			interpolation_factor[block_id] = _mem2_const(buffer+sizeof(bufferType)*(INTERPOLATION_INDEX+1));
			decimation_factor[block_id]    = _mem2_const(buffer+sizeof(bufferType)*(DECIMATION_INDEX+1));
			fir_coeff_size[block_id]       = _mem2_const(buffer+sizeof(bufferType)*(COEFF_INDEX+1));
			block_type_array[block_id]	   = block_type;
	        //memcpy(&scaling_factor[block_id], buffer+sizeof(bufferType)*(SCALING_INDEX+1),             sizeof(bufferType));
	     	//memcpy(&interpolation_factor[block_id], buffer+sizeof(bufferType)*(INTERPOLATION_INDEX+1), sizeof(bufferType));
	        //memcpy(&fir_coeff_size[block_id], buffer+sizeof(bufferType)*(COEFF_INDEX+1),               sizeof(bufferType));
	     	
			// HERE HERE
			fir_coeff_size[block_id] = fir_coeff_size[block_id]*2;
			k=0;
			for (i=0; i < fir_coeff_size[block_id]; i=i+2)
			{ 
			    memcpy(&fir_coeff[block_id][i], buffer+sizeof(bufferType)*(COEFF_INDEX+2+k), sizeof(bufferType));
				//memcpy(fir_coeff, buffer+sizeof(bufferType)*(COEFF_INDEX+2), sizeof(bufferType)*fir_coeff_size);
				k = k + 1;
			}
		
			if (interpolation_factor[block_id] > 1)
			{
				fir_interp_div = fir_coeff_size[block_id] / interpolation_factor[block_id];
				fir_interp_rem = fir_coeff_size[block_id] % interpolation_factor[block_id];
				if (fir_interp_rem != 0)
					fir_coeff_size[block_id] = (fir_interp_div+1) * interpolation_factor[block_id];
			}			
			fir_coeff_size[block_id] = fir_coeff_size[block_id]/2;
	     }
	     else
	     {
			rf_data_size = _mem2_const(&buffer[0]);
	//		if (interpolation_factor[block_id] > 1)
	//			if (rf_data_size < 1158)
					k=0;
			// MANIPULATE ARRAY
			//HAL_CACHE_WBALL;
			// FM Modulation
			if (block_type_array[block_id] == CCF_FM_MOD_INIT)
			{
				//iq_temp     = (bufferType *) buffer+((fir_coeff_size[block_id]-1)*2);
				//iq_temp     = (bufferType *) buffer+((fir_coeff_size[block_id]-1)*2);
				iq_temp     = (bufferType *) buffer+2;
				//buffer_temp = (bufferType *) buffer_interp+((fir_coeff_size[block_id]-1)*2);
				buffer_temp = (bufferType *) buffer_interp+((fir_coeff_size[block_id]/interpolation_factor[block_id])*2*2);
				
						//_iq14	iq_phase, iq_sensitivity_mod;
						//_iq14	iq_iout, iq_qout;
				interpLim  = fir_coeff_size[block_id];
				filt_hist_cpy_ptr = filt_hist;
				hist_count=0;
				hist_count_cpy=0;
				for (i=0; i < (rf_data_size); i=i+1)
				{
					temp_short0 = *iq_temp;
					//if (temp_short0 != 0)
					//	temp_short0 = temp_short0;
					iq_in = _IQtoIQ14(temp_short0); 
					iq_phase += _IQ14rmpy(iq_sensitivity_mod, iq_in);
					//iq_phase2 = _IQ14div(iq_phase, _IQ14(IQ_FIXED_SCALE));
					iq_iout = _IQcos(iq_phase);
					iq_qout = _IQsin(iq_phase);
					
					iq_result  = _IQmpyI32(iq_iout, IQ_FIXED_SCALE_TX);
					iq_result2 = _IQmpyI32(iq_qout, IQ_FIXED_SCALE_TX);
					iq_int   = _IQint(iq_result);
					iq_int_2 = _IQint(iq_result2);

					//iq_int   = _IQint(iq_iout);
					//iq_int_2 = _IQint(iq_qout);
					//for (k=0; k < interpolation_factor[block_id]*2; k=k+2)
					//{
						memcpy(buffer_temp, 		&iq_int,   sizeof(buffer_temp[0]));
						memcpy(buffer_temp+1, 	&iq_int_2, sizeof(buffer_temp[0]));
						// HIST COPY
						// HERE HERE
						/*
						if (hist_count > ( 
											(rf_data_size*2) -
											(fir_coeff_size[block_id])/interpolation_factor[block_id])
										)
						{
							memcpy(filt_hist_cpy_ptr, 		&iq_int,   sizeof(filt_hist[0]));
							memcpy(filt_hist_cpy_ptr+1, 		&iq_int_2, sizeof(filt_hist[0]));
							filt_hist_cpy_ptr		= filt_hist_cpy_ptr + 2*interpolation_factor[block_id];
							hist_count_cpy = hist_count_cpy + 2;
						}
						hist_count = hist_count + 2;
						*/
					//}
	
					iq_temp			= iq_temp + 1;
					//if (i > interpLim)
					buffer_temp 			= buffer_temp + 2*interpolation_factor[block_id];
					
					
				//	else
				//		buffer_temp 	= buffer_temp + 2;
				}
				// limit d_phase to  [-16*pi , +16*pi]
				if(_IQ14abs(iq_phase) > fm_phase_limit)
				{
					d_phase_limit_temp = _IQ14div(iq_phase, fm_2_phase_limit);
					iq_phase = iq_phase - _IQ14mpy(d_phase_limit_temp, fm_2_phase_limit);
				}
			}
			if ( (interpolation_factor[block_id] > 1) && (block_type_array[block_id] == CCF_FM_MOD_INIT))
			{
				//memset(iq_temp, 0, sizeof(iq_temp));
				//iq_temp     = (bufferType *) buffer+((fir_coeff_size[block_id]-1)*2);
				//buffer_temp = (bufferType *) buffer+((fir_coeff_size[block_id]-1)*2)*2;
				//buffer_temp = (bufferType *) buffer_interp;
				//for (i=0,k=0; i<rf_data_size; i++, k = k + interpolation_factor[block_id])
				//{
				//		memcpy(iq_temp, buffer_temp, sizeof(buffer_temp[0]));
				//		memcpy(iq_temp+1, buffer_temp+1, sizeof(buffer_temp[0]));
				//		iq_temp = iq_temp + interpolation_factor[block_id];
				//		buffer_temp = buffer_temp + 2;
				//		
				//}
				DSP_fir_cplx_test ((short *)buffer_interp+((fir_coeff_size[block_id]-1)*2), 
									fir_coeff[block_id], 
									(short *)buffer, 
									fir_coeff_size[block_id],
									(rf_data_size)*interpolation_factor[block_id]-(fir_coeff_size[block_id]));
									//3828);
									//(rf_data_size)*2*interpolation_factor[block_id]+fir_coeff_size[block_id]*2*interpolation_factor[block_id]);
				
				//memcpy(buffer, buffer_interp, sizeof(bufferType)*rf_data_size*2*interpolation_factor[block_id]);
				buffer_temp = (bufferType *) buffer_interp;
				//memcpy(buffer_temp, iq_temp, sizeof(bufferType)*(fir_coeff_size[block_id]-1)*2);
				
				
				// HERE HERE HERE
				// FIXME FIXME
				// ENABLE for proper history
				//memcpy(buffer_temp, filt_hist, sizeof(bufferType)*(fir_coeff_size[block_id])*2);
	//			memcpy(buffer_temp, filt_hist, sizeof(bufferType)*(fir_coeff_size[block_id]/interpolation_factor[block_id])*2*2);
				
				
				//memset(buffer_interp, 0, sizeof(buffer_interp));
				//for (i=0; i < (fir_coeff_size[block_id]-1)*2; i++)
				//{
				//	memcpy(buffer_temp, iq_temp, sizeof(buffer_interp[0]));
				//	iq_temp++;
				//	buffer_temp++;
				//}
				
			}
			else			
			{
				DSP_fir_cplx_test ((short *)buffer+((fir_coeff_size[block_id]-1)*2), 
									fir_coeff[block_id], 
									(short *)buffer, 
									fir_coeff_size[block_id], 
									rf_data_size);
			}
			
			// FM Demod block with decimation
			if ( (block_type_array[block_id] == CCF_FM_DEMOD_DECIM_INIT)  || 
				 (block_type_array[block_id] == CCF_FM_DEMOD_DEEMPH_INIT)
				)
			{
			//iter_count++;
			//if (iter_count ==10)
			//{
			//	while (stallVar)
			//		stallCount++;
			//}
				//iq_scale    = _IQtoIQ14(8192);

				iq_temp     = (bufferType *) buffer;
				buffer_temp = (bufferType *) buffer;
				//iq_temp	    += (fir_coeff_size[block_id]*2-2);
				
				
				offset_1=decimation_factor[block_id]; 
				offset_2=2*decimation_factor[block_id]; 
				offset_3=3*decimation_factor[block_id];
				
				//#pragma MUST_ITERATE(4,,2)
				for (i=0; i < (rf_data_size-2); i=i+offset_1)
				{
					iq_data1_real_short = *(iq_temp);
					iq_data1_imag_short = *(iq_temp+1);
					iq_data2_real_short = *(iq_temp+offset_2);
					iq_data2_imag_short = *(iq_temp+offset_2+1);
					
					iq_data1_real = _IQtoIQ14(iq_data1_real_short); 
					iq_data1_imag = _IQtoIQ14(iq_data1_imag_short);
					iq_data2_real = _IQtoIQ14(iq_data2_real_short); 
					iq_data2_imag = _IQtoIQ14(iq_data2_imag_short);
					
					// imag part
					//iq_data2_2  = _IQmpy(iq_data2_2, iq_conj);
					iq_result_2 = _IQmpy(iq_data1_real, iq_data2_imag);
					iq_result_2 -= _IQmpy(iq_data1_imag, iq_data2_real);
					//result1	= _IQ29toIQ(iq_result2);
					iq_int_2  = _IQint(iq_result_2);
					iq_frac_2 = _IQfrac(iq_result_2);
					//iq_result = _IQmpyIQX();
					// real part
					//iq_data2 = _IQmpy(iq_data2, iq_conj);
					iq_result   = _IQmpy(iq_data1_real, iq_data2_real);
					iq_result   += _IQmpy(iq_data1_imag, iq_data2_imag);
					//result1	= _IQ29toIQ(iq_result);
					iq_int  = _IQint(iq_result);
					iq_frac = _IQfrac(iq_result);
					
					iq_result = _IQatan2(iq_result_2, iq_result);
					//iq_result_2 = _IQatan2(iq_data1_2, iq_data2_2);			
					iq_int  = _IQint(iq_result);
					iq_frac = _IQfrac(iq_result);

					//iq_result2 = _IQmpy(iq_result, iq_scale);
					// multiply by an extra factor to amplify demodulated FM signal
					iq_result2 = _IQmpyI32(iq_result, IQ_FIXED_SCALE);
					//iq_result2 = iq_result << 14;
					iq_int  = _IQint(iq_result2);
					iq_frac = _IQfrac(iq_result2);
					
					//iq_result_short = (short)_IQint(iq_result);
					iq_result_short = iq_int;
					memcpy(buffer_temp, &iq_result_short, sizeof(iq_result_short));
					iq_temp			+= offset_2;
					buffer_temp 	+= 1;
				}
			}

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
    //#pragma MUST_ITERATE(500)
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

