/** ============================================================================
 *  @file   loop.c
 *
 *  @path   $(DSPLINK)/gpp/src/samples/loop/
 *
 *  @desc   This is a loop application which sends a buffer across the DSP
 *          processor and recieves a buffer back using DSP/BIOS LINK.
 *          The data buffer received is verified aginst the data sent to DSP.
 *          This application transfers only one buffer and no buffer(s) are
 *          queued.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */

/*  ----------------------------------- DSP/BIOS Link                   */
#include <dsplink.h>

/*  ----------------------------------- DSP/BIOS LINK API               */
#include <proc.h>
#include <chnl.h>
#include <pool.h>
#if defined (DA8XXGEM)
#include <loaderdefs.h>
#endif

/*  ----------------------------------- Application Header              */
#include <loop.h>
#include <loop_os.h>

#include <stdio.h>
#include <string.h>
#include <math.h>

#include "cwt_support_func.h"

typedef short bufferType;
bufferType fillVar = 0;
int stepSize=sizeof(bufferType)/sizeof(Char8);


#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */

int stall();

/*  ============================================================================
 *  @name   NUM_ARGS
 *
 *  @desc   Number of arguments specified to the DSP application.
 *  ============================================================================
 */
#define NUM_ARGS 2

/*  ============================================================================
 *  @name   XFER_CHAR
 *
 *  @desc   The value used to initialize the output buffer and used for
 *          validation against the input buffer recieved.
 *  ============================================================================
 */
#define XFER_CHAR   (Char8) 0xFF

/** ============================================================================
 *  @name   NUMBUFFERPOOLS
 *
 *  @desc   Number of buffer pools in this application.
 *  ============================================================================
 */
#define NUMBUFFERPOOLS 1

/** ============================================================================
 *  @name   NUMBUFS
 *
 *  @desc   Number of buffers in pool.
 *  ============================================================================
 */
#define NUMBUFS        4

/** ============================================================================
 *  @name   POOL_ID
 *
 *  @desc   Pool id for this application.
 *  ============================================================================
 */
#define POOL_ID        0

/*  ============================================================================
 *  @name   LOOP_BufferSize
 *
 *  @desc   Size of buffer to be used for data transfer.
 *  ============================================================================
 */
Uint32  LOOP_BufferSize ;


/** ============================================================================
 *  @name   LOOP_Buffers
 *
 *  @desc   Array of buffers used by the loop application.
 *          Length of array in this application is 1.
 *  ============================================================================
 */
STATIC Char8 * LOOP_Buffers [1] ;

/** ============================================================================
 *  @name   LOOP_IOReq
 *
 *  @desc   It gives information for adding or reclaiming a request.
 *  ============================================================================
 */
STATIC ChannelIOInfo LOOP_IOReq  ;
STATIC Char8* gpp_dsp_buff;
STATIC int dsp_mutex;
STATIC int dsp_stop_signal;
STATIC int dsp_initialized;
#if defined (DA8XXGEM)
/** ============================================================================
 *  @name   dspAddr
 *
 *  @desc   Address of c_int00 in the DSP executable.
 *  ============================================================================
 */
Uint32 LOOP_dspAddr ;

/** ============================================================================
 *  @name   shmAddr
 *
 *  @desc   Address of symbol DSPLINK_shmBaseAddres in the DSP executable.
 *  ============================================================================
 */
Uint32 LOOP_shmAddr ;

/** ============================================================================
 *  @name   argsAddr
 *
 *  @desc   Address of .args section in the DSP executable.
 *  ============================================================================
 */
Uint32 LOOP_argsAddr ;

/** ============================================================================
 *  @name   LINKCFG_config
 *
 *  @desc   Extern declaration to the default DSP/BIOS LINK configuration
 *          structure.
 *  ============================================================================
 */
extern  LINKCFG_Object LINKCFG_config ;

#endif


#if defined (VERIFY_DATA)
/** ----------------------------------------------------------------------------
 *  @func   LOOP_VerifyData
 *
 *  @desc   This function verifies the data-integrity of given buffer.
 *
 *  @arg    buf
 *              This is the pointer of the buffer whose contents are to be
 *              validated.
 *
 *  @ret    DSP_SOK
 *              Operation successfully completed.
 *          DSP_EFAIL
 *              Contents of the input buffer and the output buffer are
 *              different.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    XFER_CHAR
 *  ----------------------------------------------------------------------------
 */

NORMAL_API
DSP_STATUS
LOOP_VerifyData (IN Char8 * buf, gnuRadioType *gr_inst) ;
#endif /*  defined (VERIFY_DATA) */



/** ============================================================================
 *  @func   LOOP_Create
 *
 *  @desc   This function allocates and initializes resources used by
 *          this application.
 *
 *  @modif  LOOP_Buffers
 *  ============================================================================
 */
NORMAL_API
DSP_STATUS
LOOP_Create (std::string  &dspExecutable,
             bufferType   &strBufferSize,
             int     	  &processorId,
	     gnuRadioType *gr_inst)
{
    DSP_STATUS          status                    = DSP_SOK   ;
    Char8 *             temp                      = NULL      ;
    Uint32              numArgs                   = 0         ;
    Uint32              numBufs [NUMBUFFERPOOLS]  = {NUMBUFS} ;
#if defined (DA8XXGEM)
    NOLOADER_ImageInfo  imageInfo ;
#endif

    ChannelAttrs  chnlAttrInput            ;
    ChannelAttrs  chnlAttrOutput           ;
    Uint16        i                        ;
    Char8 *       args [NUM_ARGS]          ;
    Char8 	  dspArg1[DSP_ARG_SIZE]	   ;
    Char8 	  dspArg2[DSP_ARG_SIZE]	   ;
    Uint32        size [NUMBUFFERPOOLS]    ;
    
    int		  temp_dsp_arg1		= 0;
    int		  temp_dsp_arg2		= 0;
#if defined (ZCPY_LINK)
    SMAPOOL_Attrs poolAttrs                ;
#endif /* if defined (ZCPY_LINK) */
    int iDebug=0;
    long int tempAddr = 0;

    memset(dspArg1, 0, sizeof(dspArg1));
    memset(dspArg2, 0, sizeof(dspArg2));
    
    printf ("Entered LOOP_Create ()\n") ;

    /*
     *  Create and initialize the proc object.
     */
    status = PROC_setup (NULL) ;

    /*
     *  Attach the Dsp with which the transfers have to be done.
     */
     #ifdef DEBUG
     printf("before PROC attach with processorId = %d\n", processorId);
     #endif
    if (DSP_SUCCEEDED (status)) {
        status = PROC_attach (processorId, NULL) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("PROC_attach failed . Status = [0x%x]\n", status) ;
        }
    }
    else {
        LOOP_1Print ("PROC_setup failed. Status =  [0x%x]\n", status) ;
    }
     #ifdef DEBUG
     printf("Open Pool with LOOP_BufferSize = %d numBufs = %d numBuffPools = %d\n", LOOP_BufferSize, numBufs[0], NUMBUFFERPOOLS);
     #endif
    /*
     *  Open the pool.
     */
    if (DSP_SUCCEEDED (status)) {
        size [0] = LOOP_BufferSize ;
        poolAttrs.bufSizes      = (Uint32 *) &size ;
        poolAttrs.numBuffers    = (Uint32 *) &numBufs ;
        poolAttrs.numBufPools   = NUMBUFFERPOOLS ;
#if defined (ZCPY_LINK)
        poolAttrs.exactMatchReq = TRUE ;
#endif /* if defined (ZCPY_LINK) */
        status = POOL_open (POOL_makePoolId(processorId, POOL_ID), &poolAttrs) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("POOL_open () failed. Status = [0x%x]\n",
                            status) ;
        }
    }
     #ifdef DEBUG
     printf("Load DSP Program\n");
     #endif
     printf("Load DSP Program\n");

    /*
     *  Load the executable on the DSP.
     */
    if (DSP_SUCCEEDED (status)) {
        numArgs  = NUM_ARGS         ;
        //args [0] = strBufferSize    ;
	//sprintf(
	//	dspArg1, 
	//	"%d", 
	//	gr_inst->buff_size*sizeof(bufferType));
	sprintf(
		dspArg1, 
		"%d", 
		DSP_BUFFER_SIZE);
	//sprintf(
	//	dspArg1, 
	//	"%d", 
	//	LOOP_BufferSize);
				
	sprintf(
		dspArg2, 
		"%d", 
		temp_dsp_arg2);
	args[0] = dspArg1;
	args[1] = dspArg2;	
	//args [1] = 10 ;
	#ifdef DEBUG
	printf("Sprintf result from %d to %s and arg[1] = %s\n", gr_inst->buff_size, args[0], args[1]);
	#endif
#if defined (DA8XXGEM)
	 #ifdef DEBUG
	 printf("DA8XXGEM = YES\n");
	 #endif
         if (LINKCFG_config.dspConfigs [processorId]->dspObject->doDspCtrl ==
                     DSP_BootMode_NoBoot) {
            imageInfo.dspRunAddr  = LOOP_dspAddr ;
            imageInfo.shmBaseAddr = LOOP_shmAddr ;
            imageInfo.argsAddr    = LOOP_argsAddr ;
            imageInfo.argsSize    = 50         ;
            status = PROC_load (processorId, (Char8 *) &imageInfo, numArgs, args) ;
        }
        else
#endif

        {
            //status = PROC_load (processorId, dspExecutable, numArgs, args) ;
	    #ifdef DEBUG
	    printf("Before PROC Load with processor = %d from class it's %d \n", processorId, gr_inst->dsp_instance.processorId);
	    printf("Before PROC Load with program name = %s numArgs = %d\n", (Char8*) gr_inst->dsp_instance.dsp_prog_name.c_str(), numArgs);
	    #endif
	    //numArgs=0;

	    status = PROC_load (processorId, (Char8*) gr_inst->dsp_instance.dsp_prog_name.c_str(), numArgs, args) ;
	    //status = PROC_load (processorId, (Char8*) gr_inst->dsp_instance.dsp_prog_name.c_str(), numArgs, NULL) ;
	    #ifdef DEBUG
	    printf("After PROC load\n");
	    #endif
        }
        if (DSP_FAILED (status)) {
            LOOP_1Print ("PROC_load failed. Status = [0x%x]\n", status) ;
        }

    }
     #ifdef DEBUG
     printf("Create Channel TO DSP\n");
     #endif
     
    /*
     *  Create a channel to DSP
     */
    if (DSP_SUCCEEDED (status)) {
        chnlAttrOutput.mode      = ChannelMode_Output     ;
        chnlAttrOutput.endianism = Endianism_Default      ;
        chnlAttrOutput.size      = ChannelDataSize_16bits ;

        status = CHNL_create (processorId, CHNL_ID_OUTPUT, &chnlAttrOutput) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("CHNL_create failed (output). Status = [0x%x]\n",
                         status) ;
        }
    }
     #ifdef DEBUG
     printf("Create Channel FROM DSP\n");
     #endif
    /*
     *  Create a channel from DSP
     */
    if (DSP_SUCCEEDED (status)) {
        chnlAttrInput.mode      = ChannelMode_Input      ;
        chnlAttrInput.endianism = Endianism_Default      ;
        chnlAttrInput.size      = ChannelDataSize_16bits ;

        status = CHNL_create (processorId, CHNL_ID_INPUT, &chnlAttrInput) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("CHNL_create failed (input). Status = [0x%x]\n",
                         status) ;
        }
    }
    #ifdef DEBUG
    printf("Allocate Buffers\n");
    printf("LOOP_BUFFERS = %d & LOOP_BUFFER_Size = %d\n", LOOP_Buffers, LOOP_BufferSize);
    #endif
    
    /*
     *  Allocate buffer(s) for data transfer to DSP.
     */
     
    if (DSP_SUCCEEDED (status)) {
        status = CHNL_allocateBuffer (processorId,
                                      CHNL_ID_OUTPUT,
                                      LOOP_Buffers,
                                      LOOP_BufferSize ,
                                      1) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("CHNL_allocateBuffer failed (output)."
                         " Status = [0x%x]\n",
                          status) ;
        }
    }
    #ifdef DEBUG
    printf("Init Buffers With Data\n");
    #endif
    /*
     *  Initialize the buffer with valid data.
     */

    if (DSP_SUCCEEDED (status)) {
	gpp_dsp_buff = LOOP_Buffers [0] ;
	memset(gpp_dsp_buff, 0, MAX_SIZE*sizeof(bufferType));
	
	//////////////////////////////////////////////////////////
	// HERE HERE HERE
	// INIT BUFFER with valid data
	//memcpy(temp, gr_inst.rfDataInt, sizeof(bufferType)*gr_inst.buff_size);
    }
    #ifdef DEBUG
    printf ("Leaving LOOP_Create ()\n") ;
    #endif

    return status ;
}


/** ============================================================================
 *  @func   LOOP_Execute
 *
 *  @desc   This function implements the execute phase for this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API
DSP_STATUS
LOOP_Execute (Uint8 processorId, gnuRadioType *gr_inst)
{
    DSP_STATUS status = DSP_SOK ;
    Uint32     i=0, k=0, iDebug=0;
    int procStartVar=0;
    
    #ifdef DEBUG
    //LOOP_0Print ("Entered LOOP_Execute ()\n") ;
    printf("Entered Loop Execute\n");
    printf("processID = ");
    printf("%d\n", processorId);
    #endif
    
    /*
     *  Start execution on DSP.
     */
    status = PROC_start (processorId) ;

    #ifdef DEBUG
    printf("after PROC start with status = ");
    if (status == DSP_SOK)
    	printf("OK\n");
    else
    	printf("Failed \n");
    #endif

    /*
     *  Fill the IO Request structure
     *  It gives Information for adding or reclaiming an input request.
     */
     ///////////////////////
     /// HERE HERE
     // Setting buffer pointer
    if (DSP_SUCCEEDED (status)) {
        LOOP_IOReq.buffer = LOOP_Buffers [0] ;
        LOOP_IOReq.size   = LOOP_BufferSize   ;
    }
    else {
        LOOP_1Print ("PROC_start failed. Status = [0x%x]\n", status) ;
    }
#ifdef DEBUG
printf("Begin Loop\n");
printf("Before Conv\n");		
#endif
    
#ifdef DEBUG			
//square(gr_inst->rfDataInt, gr_inst->buff_size, gr_inst->rfDataOut);
#endif

#ifdef DEBUG
printf("Send Data to DSP\n");
printf("processorId = %d", processorId);
//printf("with gr_inst->rfDataInPtr[0] = %d", gr_inst->rfDataInPtr[0]);
//printf(" @ 0x%x", gr_inst->rfDataInPtr);
printf("and buff_size = %d\n", gr_inst->buff_size);

#endif
        // HERE HERE
//	transmit_data(processorId, gr_inst->rfDataInPtr, gr_inst->buff_size);
//       	receive_data(processorId, gr_inst->rfDataOutPtr, gr_inst->buff_size);

#if defined (VERIFY_DATA)
//verify_data(LOOP_IOReq.buffer, gr_inst);
#endif
	

        if (DSP_SUCCEEDED (status) && (i % 1000) == 0) {
            #ifdef DEBUG
            LOOP_1Print ("Transferred %ld buffers\n", i) ;
            #endif
        }
    #ifdef DEBUG    
    printf ("Leaving LOOP_Execute ()\n") ;
    #endif

    return status ;
}


/** ============================================================================
 *  @func   LOOP_Delete
 *
 *  @desc   This function releases resources allocated earlier by call to
 *          LOOP_Create ().
 *          During cleanup, the allocated resources are being freed
 *          unconditionally. Actual applications may require stricter check
 *          against return values for robustness.
 *
 *  @modif  LOOP_Buffers
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_Delete (Uint8 processorId)
{
    DSP_STATUS status    = DSP_SOK ;
    DSP_STATUS tmpStatus = DSP_SOK ;
    
    #ifdef DEBUG
    printf ("Entered LOOP_Delete ()\n") ;
    #endif

    /*
     *  Free the buffer(s) allocated for channel to DSP
     */
    printf("LOOP_BUFFERs = 0x%x\n", LOOP_Buffers);
    printf("LOOP_BUFFERs[0] = 0x%x\n", LOOP_Buffers[0]);
    
    tmpStatus = CHNL_freeBuffer (processorId,
                                 CHNL_ID_OUTPUT,
                                 (Char8 **)LOOP_Buffers,
                                 1) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        LOOP_1Print ("CHNL_freeBuffer () failed (output). Status = [0x%x]\n",
                     tmpStatus) ;
    }

    /*
     *  Delete both input and output channels
     */
    tmpStatus = CHNL_delete  (processorId, CHNL_ID_INPUT) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        LOOP_1Print ("CHNL_delete () failed (input). Status = [0x%x]\n",
                     tmpStatus) ;
    }
    tmpStatus = CHNL_delete  (processorId, CHNL_ID_OUTPUT) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        LOOP_1Print ("CHNL_delete () failed (output). Status = [0x%x]\n",
                     tmpStatus) ;
    }

    /*
     *  Stop execution on DSP.
     */
    status = PROC_stop (processorId) ;

    /*
     *  Close the pool
     */
    tmpStatus = POOL_close (POOL_makePoolId(processorId, POOL_ID)) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        LOOP_1Print ("POOL_close () failed. Status = [0x%x]\n",
                        tmpStatus) ;
    }

    /*
     *  Detach from the processor
     */
    tmpStatus = PROC_detach  (processorId) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        LOOP_1Print ("PROC_detach () failed. Status = [0x%x]\n", tmpStatus) ;
    }

    /*
     *  Destroy the PROC object.
     */
    tmpStatus = PROC_destroy () ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        LOOP_1Print ("PROC_destroy () failed. Status = [0x%x]\n", tmpStatus) ;
    }
    #ifdef DEBUG
    printf ("Leaving LOOP_Delete ()\n") ;
    #endif
}


/** ============================================================================
 *  @func   LOOP_Main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_Main (std::string dsp_prog_name)
{
    DSP_STATUS status       = DSP_SOK ;
    
    int i=0, iDebug=0;

#ifdef DEBUG
printf("IN DEBUG MODE !! \n");
#endif
    if (!dsp_initialized)
    {
    	//#ifdef DEBUG
    	printf("Initializing DSP it's empty :) \n");
    	//#endif
    	dsp_initialized = 1;
    }
    else
    {
        //#ifdef DEBUG
    	printf("Initializing DSP it's Busy ... clear it first \n");
    	//#endif
    	dsp_clean_function ();
    }
    
    printf ("=============== Sample Application : LOOP ==========\n") ;
    gnuRadioType gr_inst;
	
	// init MUTEX
	dsp_mutex = 0;
	dsp_stop_signal = 0;
	
	initDspParameters(&gr_inst.dsp_instance);
	gr_inst.dsp_instance.dsp_prog_name = dsp_prog_name;
	
	#ifdef DEBUG
	printf("Prog name is %s\n", gr_inst.dsp_instance.dsp_prog_name.c_str());
	#endif
	
	initDsp(gr_inst.dsp_instance.processorId);
	gr_inst.buff_size = 0;
	#ifdef DEBUG
	printf("check dsp parameters\n");
	#endif
		
	check_dsp_parameters(&gr_inst);

	#ifdef DEBUG
	printf("before specify executable with status ");
	if (status == DSP_SOK)
		printf("OK\n");
	else
		printf("NOT OK");
	#endif	
if (status == DSP_SOK) {
        /*
         *  Specify the dsp executable file name and the buffer size for
         *  loop creation phase.
         */
		#ifdef DEBUG
		printf("DSP executable =%s\n", gr_inst.dsp_instance.dsp_prog_name.c_str());
		#endif	
        if (DSP_SUCCEEDED (status)) {
             LOOP_1Print ("==== Executing sample for DSP processor Id %d ====\n",
                     gr_inst.dsp_instance.processorId) ;
            status = LOOP_Create (gr_inst.dsp_instance.dsp_prog_name,
                                  gr_inst.buff_size,
                                  gr_inst.dsp_instance.processorId,
				  &gr_inst) ;


           /*
            *  Execute the data transfer loop.
            */
            if (DSP_SUCCEEDED (status)) {
                status = LOOP_Execute (gr_inst.dsp_instance.processorId, &gr_inst) ;
            }

            /*
             *  Perform cleanup operation.
             */
            //LOOP_Delete (gr_inst.dsp_instance.processorId) ;
        }
    }
    else {
        status = DSP_EINVALIDARG ;
        printf ("ERROR! Invalid arguments specified for while executing "
                     "loop application\n") ;
    }

    printf ("====================================================\n") ;
}

#if defined (VERIFY_DATA)
/** ----------------------------------------------------------------------------
 *  @func   LOOP_VerifyData
 *
 *  @desc   This function verifies the data-integrity of given buffer.
 *
 *  @modif  None
 *  ----------------------------------------------------------------------------
 */

NORMAL_API
DSP_STATUS
LOOP_VerifyData (IN Char8 * buf, gnuRadioType *gr_inst)
{
    DSP_STATUS status = DSP_SOK ;
    Int16      i                ;
    bufferType buffCompare=0;
    short	j=0;
    

    /*
     *  Verify the data.
     */
    //for (i = 0 ; (i < LOOP_BufferSize) && (DSP_SUCCEEDED (status)) ; i=i+sizeof(bufferType)) {
    for (i = 0 ; (i < gr_inst->buff_size*sizeof(bufferType)) && (DSP_SUCCEEDED (status)) ; i=i+sizeof(bufferType)) {
        //if (*buf != i) {
	memcpy(&buffCompare, buf, sizeof(bufferType));
	//fillVar=(bufferType)j;
	fillVar=(bufferType)(gr_inst->rfDataInt[j]*5);
	if (gr_inst->rfDataOut[j] != buffCompare) {
            status = DSP_EFAIL ;
	    printf("I = %d GPP = %d DSP = %d FAIL\n", i, gr_inst->rfDataOut[j], buffCompare);
            memcpy(&buffCompare, buf+stepSize, sizeof(bufferType));
	    printf("I = %d GPP = %d DSP = %d FAIL\n", i, gr_inst->rfDataOut[j+1], buffCompare);	    
            memcpy(&buffCompare, buf+stepSize*2, sizeof(bufferType));
	    printf("I = %d GPP = %d DSP = %d FAIL\n", i, gr_inst->rfDataOut[j+2], buffCompare);	    
            memcpy(&buffCompare, buf+stepSize*3, sizeof(bufferType));
	    printf("I = %d GPP = %d DSP = %d FAIL\n", i, gr_inst->rfDataOut[j+3], buffCompare);	    
	    printf("buf[0]=%d buf[1]=%d buf[2]=%d\n buf[END-3]=%d buf[END-2]=%d buf[END-1]=%d buf[END]=%d\n", gr_inst->rfDataInt[0], gr_inst->rfDataInt[1], gr_inst->rfDataInt[2], gr_inst->rfDataInt[ARRAY_SIZE-4], gr_inst->rfDataInt[ARRAY_SIZE-3], gr_inst->rfDataInt[ARRAY_SIZE-2], gr_inst->rfDataInt[ARRAY_SIZE-1]);

        }
	else
	{
		if (j <10)
	     printf("I = %d GPP = %d DSP = %d SUCCESS\n", i, gr_inst->rfDataOut[j], buffCompare);
	}
	//buf++;
	buf = buf + stepSize;
	j++;
    }

    return status ;
}
#endif
int stall()
{

	char text[20];
	fputs("enter some text: ", stdout);
	fflush(stdout); /* http://c-faq.com/stdio/fflush.html */
	fgets(text, sizeof text, stdin);
	printf("text = \"%s\"\n", text);
	return 0;
}

int initDsp(int &processorId)
{
    Char8 * strBufferSize    = "5" ;
    Char8 * strNumIterations = "1" ;
#if defined (DA8XXGEM)
    Char8 * strDspAddr       = NULL ;
    Char8 * strShmAddr       = NULL ;
    Char8 * strArgsAddr      = NULL ;
#endif
	int iDebug = 0;

	if (processorId < MAX_PROCESSORS) {
	#if defined (DA8XXGEM)
            if (   LINKCFG_config.dspConfigs [processorId]->dspObject->doDspCtrl
                == DSP_BootMode_NoBoot) {
                /* strDspAddr(c_int00 address)  and .args address are not required
                 * for noboot mode.DSPLINK_shmBaseAddress address is not required to
                 * pass for  message sample. Because  DSPLINK_shmBaseAddress is
                 * defined in linker command file of  dsp side message sample.
                 */
                strShmAddr       = "0x0" ;
                strDspAddr       = "0x0" ;
                strArgsAddr      = "0x0" ;
                LOOP_shmAddr     = LOOP_Atoll (strShmAddr) ;
                LOOP_dspAddr     = LOOP_Atoll (strDspAddr) ;
                LOOP_argsAddr    = LOOP_Atoll (strArgsAddr) ;
                /* For No bootmode Hard coding the values
                 * since DSP side app is using the same values
                 */
                strBufferSize     = "1024";
                strNumIterations = "10000";

            }
	#endif
		return NO_ERROR;	
	}
	printf("ERROR DSP parameter\n");
	return ERROR_DSP_INIT;
}
int initDspParameters(struct dsp *dsp_instance)
{
	dsp_instance->dsp_prog_name 	= "";
	dsp_instance->processorId 	= 0;
}
//int check_dsp_parameters(struct dsp &dsp_instance)
int check_dsp_parameters(gnuRadioType *gnuradio_instance)
{
	DSP_STATUS status = DSP_SOK ;
	
	if (   (gnuradio_instance->dsp_instance.dsp_prog_name != "")) {
      //  && (gnuradio_instance->buff_size != 0)) {
		/*
		 *  Validate the buffer size and number of iterations specified.
		 */
		 
		//LOOP_BufferSize = DSPLINK_ALIGN (gnuradio_instance->buff_size,
		//                                 DSPLINK_BUF_ALIGN) ;
		LOOP_BufferSize = DSPLINK_ALIGN (DSP_BUFFER_SIZE,
		                                 DSPLINK_BUF_ALIGN) ;
		#ifdef DEBUG
		printf("Validate Loop Buffer Size = %d and buffer size = %d\n", LOOP_BufferSize, gnuradio_instance->buff_size);
		#endif	
		
		if (LOOP_BufferSize == 0) {
		    status = DSP_ESIZE ;
		    return ERROR_DSP_PARAMETER;
		}

		if (gnuradio_instance->dsp_instance.processorId >= MAX_DSPS) {
		    printf("==Error: Invalid processor id  specified %d ==\n",
		                 gnuradio_instance->dsp_instance.processorId) ;
		    status = DSP_EFAIL ;

			return ERROR_DSP_PARAMETER;
		}
		
		return NO_ERROR;
	}
	#ifdef DEBUG
	printf("ERROR check DSP parameters with program name = %s with loop buffer size%d\n", 
		gnuradio_instance->dsp_instance.dsp_prog_name.c_str(), LOOP_BufferSize);
	#endif
	return ERROR_DSP_PARAMETER;
}
DSP_STATUS transmit_data_fs(Uint8 processorId, const float *gpp_local, bufferType &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK ;
	int iDebug	  = 0;
	bufferType temp_short=0;
	float temp_float=0;
	//int k=d_ntaps*2-1;
	int k=3;
	short temp_short0=0;
	
	int scale_mult = pow(2, scale); 
	memcpy(gpp_dsp_buff, &buff_size, sizeof(bufferType));
	temp_short0 = (short)DSP_PROCESS;
	memcpy(&gpp_dsp_buff[sizeof(bufferType)], &temp_short0,  sizeof(bufferType));
	memcpy(&gpp_dsp_buff[2*sizeof(bufferType)], &block_id,  sizeof(bufferType));
	
	//printf("**************************************************************");
	//printf("D_NTAPS = %d wit k_init = %d", d_ntaps, k);
	//printf("**************************************************************");	
	for (int i=0; i<buff_size; i++)
	{
		temp_float = (gpp_local[i] * scale_mult);
		temp_short = (short) (temp_float);
		memcpy((short *)gpp_dsp_buff+(k), &temp_short, sizeof(bufferType));
		
		#ifdef DEBUG
		//for (iDebug=0; iDebug<buff_size; iDebug++)		
		//if (i < 5)
			printf("TX GPP ---> DSP   [%d]  = %d & scale = %d\n", i, temp_short, scale_mult);
		#endif	
		k++;
	}
	#ifdef DEBUG	
	//for (int i=0; i < 5; i++)
	//{
		//temp_short = (short) (gpp_local[i]*scale);
		
		//memcpy(gpp_dsp_buff+sizeof(buff_size)+sizeof(buff_size)*i, &temp_short, sizeof(bufferType));
	//	memcpy(&temp_short, (short *)gpp_dsp_buff+sizeof(buff_size)+i*sizeof(buff_size), sizeof(bufferType));
		//memcpy(gpp_local, (bufferType *) LOOP_IOReq.buffer, buff_size * sizeof(bufferType));
		//gpp_local[i] = ((float)temp_short)/scale;
	//	temp_float = ((float)temp_short);
		

		//for (iDebug=0; iDebug<buff_size; iDebug++)		
	//		printf("TX GPP ---> DSP   [%d]  = %f & scale = %f\n", i, temp_float, scale);
	//

	//}	        
	#endif		
	/*
         *  Send data to DSP.
         *  Issue 'filled' buffer to the channel.
         */
        status = CHNL_issue (processorId, CHNL_ID_OUTPUT, &LOOP_IOReq) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("CHNL_issue failed (output). Status = [0x%x]\n",
                          status) ;
        }

        /*
         *  Reclaim 'empty' buffer from the channel
         */
        #ifdef DEBUG
	printf("Wait for DSP\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_reclaim (processorId,
                                   CHNL_ID_OUTPUT,
                                   WAIT_FOREVER,
                                   &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_reclaim failed (output). Status = [0x%x]\n",
                             status) ;
            }
        }


	return status;


}

DSP_STATUS transmit_data_cs(Uint8 processorId, const gr_complex *gpp_local0, bufferType buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK ;
	int iDebug	  = 0;
	bufferType temp_short0=0;
	bufferType temp_short1=0;
	float temp_float0=0;
	float temp_float1=0;
	int k=d_ntaps*2-1;
	int i=0;
	int j=0;
	int temp_buff_size = buff_size;
	int temp_interpolation=0;
	int scale_mult = pow(2, scale); 

	#ifdef DEBUG
	printf("write rf data to mem location = 0x%x\n", gpp_dsp_buff);
	#endif
	// to account for the I/O CCF filter alignment ... look at what K is initialized to !!
	//buff_size = buff_size + +d_ntaps*2-1;
	//memset(LOOP_IOReq.buffer, 0, DSP_BUFFER_SIZE);
		
	memcpy(gpp_dsp_buff, &buff_size, sizeof(bufferType));	
	temp_short0 = (short)DSP_PROCESS;
	memcpy(&gpp_dsp_buff[sizeof(bufferType)], &temp_short0,  sizeof(bufferType));
	memcpy(&gpp_dsp_buff[2*sizeof(bufferType)], &block_id,  sizeof(bufferType));
	//gpp_dsp_buff[0] = (bufferType)buff_size;
	//gpp_dsp_buff[sizeof(bufferType)] = (bufferType)DSP_PROCESS;
	//gpp_dsp_buff[2*sizeof(bufferType)] = block_id;
	
	#ifdef DEBUG
	printf("buff size  = %d\n", buff_size);
	printf("buff size array = 0x%x\n", gpp_dsp_buff[0], gpp_dsp_buff[1]);
	printf("block type = %d\n", gpp_dsp_buff[sizeof(bufferType)]);
	printf("d_ntaps    = %d\n", d_ntaps);
	#endif
	
	if (interp == 1)
	{
		temp_interpolation = interp;
		for (i=0; i<(temp_buff_size); i++)
		{
			// HERE HERE
			if (input_sig == (bufferType)FIXED_POINT)
			{
				temp_short0 = (short) (gpp_local0[i].real());
				temp_short1 = (short) (gpp_local0[i].imag());	
			
				#ifdef DEBUG
				printf("FIXED POINT OPTION\n");
				#endif
			}
			else
			{
				temp_float0 = (gpp_local0[i].real() * scale_mult);
				temp_short0 = (short) (temp_float0);
				temp_float1 = (gpp_local0[i].imag() * scale_mult);
				temp_short1 = (short) (temp_float1);
			
				#ifdef DEBUG
				printf("FLOATING POINT OPTION\n");		
				#endif
			}
			
			memcpy((short *)gpp_dsp_buff+k, &temp_short0, sizeof(buff_size));
			memcpy((short *)gpp_dsp_buff+(k+1), &temp_short1, sizeof(bufferType));

			#ifdef DEBUG
			//if (i < 5)
				printf("TX GPP ---> DSP   [%d]  = %d (%f) & %d (%f)\n", i, temp_short0, (float)(temp_short0 / scale), temp_short1, 
				(float)(temp_short1 / scale));
			#endif
			
			k = k + 2;
		}
	}
	else if (interp > 1)
	{
		//memset(gpp_dsp_buff, 0, sizeof(gpp_dsp_buff));
		temp_interpolation = interp;
		for (i=0; i<(temp_buff_size/interp); i++)
		{
			// HERE HERE
			if (input_sig == (bufferType)FIXED_POINT)
			{
				temp_short0 = (short) (gpp_local0[i].real());
				temp_short1 = (short) (gpp_local0[i].imag());	
			
				#ifdef DEBUG
				printf("FIXED POINT OPTION INTERP\n");
				#endif
			}
			else
			{
				temp_float0 = (gpp_local0[i].real() * scale_mult);
				temp_short0 = (short) (temp_float0);
				temp_float1 = (gpp_local0[i].imag() * scale_mult);
				temp_short1 = (short) (temp_float1);
			
				#ifdef DEBUG
				printf("FLOATING POINT OPTION INTERP\n");		
				#endif
			}
			// don't interpolate the old data points (history) just the new ones
			if ( k >= d_ntaps*2)
			{
				for (j=0; j < interp; j++)
				{
					memcpy((short *)gpp_dsp_buff+k, &temp_short0, sizeof(buff_size));
					memcpy((short *)gpp_dsp_buff+(k+1), &temp_short1, sizeof(bufferType));
					k = k + 2;
					//k = k + 2*interp;
				#ifdef DEBUG
				//if (i < 5)
					printf("TX GPP ---> DSP   [%d]  = %d (%f) & %d (%f)\n", i, temp_short0, (float)(temp_short0 / scale), temp_short1, 
					(float)(temp_short1 / scale));
				#endif
				
				}
			}
			else
			{
				memcpy((short *)gpp_dsp_buff+k, &temp_short0, sizeof(buff_size));
				memcpy((short *)gpp_dsp_buff+(k+1), &temp_short1, sizeof(bufferType));
				k = k + 2;
				#ifdef DEBUG
				//if (i < 5)
					printf("TX GPP ---> DSP   [%d]  = %d (%f) & %d (%f)\n", i, temp_short0, (float)(temp_short0 / scale), temp_short1, 
					(float)(temp_short1 / scale));
				#endif			
			}
		}	
	}
	else
		printf("ERROR: Interpolation must be >= 1\n");
	/*
         *  Send data to DSP.
         *  Issue 'filled' buffer to the channel.
         */
        status = CHNL_issue (processorId, CHNL_ID_OUTPUT, &LOOP_IOReq) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("CHNL_issue failed (output). Status = [0x%x]\n",
                          status) ;
        }

        /*
         *  Reclaim 'empty' buffer from the channel
         */
        #ifdef DEBUG
	printf("Wait for DSP\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_reclaim (processorId,
                                   CHNL_ID_OUTPUT,
                                   WAIT_FOREVER,
                                   &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_reclaim failed (output). Status = [0x%x]\n",
                             status) ;
            }
        }


	return status;


}


DSP_STATUS transmit_data(Uint8 processorId, const bufferTypeFloat *gpp_local, bufferType &buff_size, bufferType &interp, bufferType &decim, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK ;
	int iDebug	  = 0;
	
	printf("DSPLINK DEBUG gpp_dsp_buff = 0x%x\n", gpp_dsp_buff);
	memcpy(gpp_dsp_buff, &buff_size, sizeof(bufferType));
	memcpy(gpp_dsp_buff+sizeof(bufferType), gpp_local, sizeof(bufferType)*buff_size);		
#ifdef DEBUG
	printf("write Coeffs to mem location = 0x%x\n", gpp_dsp_buff);
for (iDebug=0; iDebug<buff_size; iDebug++)		
	printf("TX GPP ---> DSP   [%d]  = %d\n", iDebug, gpp_local[iDebug]);
#endif	
	
	/*
         *  Send data to DSP.
         *  Issue 'filled' buffer to the channel.
         */
        status = CHNL_issue (processorId, CHNL_ID_OUTPUT, &LOOP_IOReq) ;
        if (DSP_FAILED (status)) {
            LOOP_1Print ("CHNL_issue failed (output). Status = [0x%x]\n",
                          status) ;
        }

        /*
         *  Reclaim 'empty' buffer from the channel
         */
        #ifdef DEBUG
	printf("Wait for DSP\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_reclaim (processorId,
                                   CHNL_ID_OUTPUT,
                                   WAIT_FOREVER,
                                   &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_reclaim failed (output). Status = [0x%x]\n",
                             status) ;
            }
        }


	return status;
}

//DSP_STATUS receive_data(Uint8 processorId, bufferTypeFloat *gpp_local, const char *gpp_dsp, bufferType &buff_size)
DSP_STATUS receive_data(Uint8 processorId, bufferTypeFloat *gpp_local, bufferType &buff_size, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK ;
	int iDebug	  = 0;
        /*
         *  Receive data from DSP
         *  Issue 'empty' buffer to the channel.
         */
        #ifdef DEBUG 
	printf("Receive Data Back from DSP\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_issue (processorId, CHNL_ID_INPUT, &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_issue failed (input). Status = [0x%x]\n",
                             status) ;
            }
        }

        /*
         *  Reclaim 'filled' buffer from the channel
         */
        #ifdef DEBUG
	printf("Reclaim Channel\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_reclaim (processorId,
                                   CHNL_ID_INPUT,
                                   WAIT_FOREVER,
                                   &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_reclaim failed (input). Status = [0x%x]\n",
                             status) ;
            }
        }
        //memcpy(gr_inst->rfDataOutPtr, (bufferType *) LOOP_IOReq.buffer, gr_inst->buff_size * sizeof(gr_inst->rfDataOutPtr));
	memcpy(gpp_local, (bufferType *) LOOP_IOReq.buffer, buff_size * sizeof(bufferType));
	
#ifdef DEBUG
for (iDebug=0; iDebug<buff_size; iDebug++)		
	printf("RX GPP <--- DSP   [%d]  = %d\n", iDebug, gpp_local[iDebug]);
#endif	
	
	return status;
}
DSP_STATUS receive_data_fs(Uint8 processorId, float *gpp_local, bufferType &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK ;
	int iDebug	  = 0;
	bufferType temp_short=0;
	bufferType scale_mult = pow(2, scale);
        /*
         *  Receive data from DSP
         *  Issue 'empty' buffer to the channel.
         */
        #ifdef DEBUG 
	printf("Receive Data Back from DSP\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_issue (processorId, CHNL_ID_INPUT, &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_issue failed (input). Status = [0x%x]\n",
                             status) ;
            }
        }

        /*
         *  Reclaim 'filled' buffer from the channel
         */
        #ifdef DEBUG
	printf("Reclaim Channel\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_reclaim (processorId,
                                   CHNL_ID_INPUT,
                                   WAIT_FOREVER,
                                   &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_reclaim failed (input). Status = [0x%x]\n",
                             status) ;
            }
        }
        
	for (int i=0; i<buff_size; i++)
	{
		//temp_short = (short) (gpp_local[i]*scale);
		
		//memcpy(gpp_dsp_buff+sizeof(buff_size)+sizeof(buff_size)*i, &temp_short, sizeof(bufferType));
		memcpy(&temp_short, (short *) LOOP_IOReq.buffer+i, sizeof(bufferType));
		//memcpy(gpp_local, (bufferType *) LOOP_IOReq.buffer, buff_size * sizeof(bufferType));
		//gpp_local[i] = ((float)temp_short)/scale;
		if (output_sig == (bufferType)FIXED_POINT)
		{
			//gpp_local0[i].real() = ((float)temp_short0);
			//gpp_local0[i].imag() = ((float)temp_short1);
			gpp_local[i] = (float)(temp_short);
			
			#ifdef DEBUG
			printf("FIXED POINT OPTION\n");
			#endif
		}
		else
		{
			//gpp_local0[i].real() = ((float)temp_short0 / scale_mult);
			//gpp_local0[i].imag() = ((float)temp_short1 / scale_mult);		
			gpp_local[i] = (float)((float)temp_short / (float)scale_mult);
			
			#ifdef DEBUG
			printf("FLOATING POINT OPTION\n");			
			#endif
		}
		
		#ifdef DEBUG
		//if (i < 5)
		//for (iDebug=0; iDebug<buff_size; iDebug++)		
			printf("RX GPP <--- DSP   [%d]  = %f (%d)\n", i, gpp_local[i], temp_short);
		#endif	

	}	        
        //memcpy(gr_inst->rfDataOutPtr, (bufferType *) LOOP_IOReq.buffer, gr_inst->buff_size * sizeof(gr_inst->rfDataOutPtr));
	//memcpy(gpp_local, (bufferType *) LOOP_IOReq.buffer, buff_size * sizeof(bufferType));
	
//#ifdef DEBUG
//for (iDebug=0; iDebug<buff_size; iDebug++)		
//	printf("RX GPP <--- DSP   [%d]  = %d\n", iDebug, gpp_local[iDebug]);
//#endif	
	
	return status;
}



DSP_STATUS receive_data_cs(Uint8 processorId, gr_complex *gpp_local0, bufferType buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK ;
	int iDebug	  = 0;
	int k=0;
	bufferType temp_short0=0;
	bufferType temp_short1=0;
	bufferType interpolation = INTERPOLATION;
	
	bufferType scale_mult = pow(2, scale);
	//	printf("scale mult = %d\n", scale_mult);
        /*
         *  Receive data from DSP
         *  Issue 'empty' buffer to the channel.
         */
        #ifdef DEBUG 
	printf("Receive Data Back from DSP\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_issue (processorId, CHNL_ID_INPUT, &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_issue failed (input). Status = [0x%x]\n",
                             status) ;
                if (status == DSP_SOK)
                	printf("DSP DSP_SOK\n");
                else if (status == DSP_EFAIL)
                        printf("DSP DSP_SOK\n");
                else if (status == DSP_EMEMORY)
                        printf("DSP DSP_SOK\n");
                else if (status == DSP_EINVALIDARG)
                        printf("DSP DSP_SOK\n");
                else
                	printf("OTHER\n");
            }
        }

        /*
         *  Reclaim 'filled' buffer from the channel
         */
        #ifdef DEBUG
	printf("Reclaim Channel CS\n");
        #endif
        
        if (DSP_SUCCEEDED (status)) {
            status = CHNL_reclaim (processorId,
                                   CHNL_ID_INPUT,
                                   WAIT_FOREVER,
                                   &LOOP_IOReq) ;
            if (DSP_FAILED (status)) {
                LOOP_1Print ("CHNL_reclaim failed (input). Status = [0x%x]\n",
                             status) ;
            }
        }
        
	for (int i=0; i<(buff_size); i=i+1)
	{
		//temp_short = (short) (gpp_local[i]*scale);
		
		//memcpy(gpp_dsp_buff+sizeof(buff_size)+sizeof(buff_size)*i, &temp_short, sizeof(bufferType));
		//memcpy(&temp_short0, (short *) LOOP_IOReq.buffer+k*sizeof(bufferType), sizeof(bufferType));
		//memcpy(&temp_short1, (short *) LOOP_IOReq.buffer+(k+1)*sizeof(bufferType), sizeof(bufferType));		
		
		memcpy(&temp_short0, (short *) LOOP_IOReq.buffer+k, sizeof(bufferType));
		memcpy(&temp_short1, (short *) LOOP_IOReq.buffer+(k+1), sizeof(bufferType));		
		
		//memcpy(gpp_local, (bufferType *) LOOP_IOReq.buffer, buff_size * sizeof(bufferType));
		//gpp_local[i] = ((float)temp_short)/scale;
		//gpp_local0[k] = ((float)temp_short0);
		//gpp_local0[k] = gpp_local0[i]/scale;
		//gpp_local0[k+1] = ((float)temp_short1);
		//gpp_local0[k+1] = gpp_local0[i]/scale;		

	//	gpp_local0[i].real() = ((float)temp_short0 / scale_mult);
	//	gpp_local0[i].imag() = ((float)temp_short1 / scale_mult);

		// HERE HERE HERE
		if (output_sig == (bufferType)FIXED_POINT)
		{
			gpp_local0[i].real() = ((float)temp_short0);
			gpp_local0[i].imag() = ((float)temp_short1);
			
			#ifdef DEBUG
			//printf("FIXED POINT OPTION\n");
			#endif
		}
		else
		{
			gpp_local0[i].real() = ((float)temp_short0 / scale_mult);
			gpp_local0[i].imag() = ((float)temp_short1 / scale_mult);		
			
			#ifdef DEBUG
			//printf("FLOATING POINT OPTION\n");			
			#endif
		}
			
		
		//gpp_local1[i] = ((float)temp_short1);
		//gpp_local1[i] = gpp_local1[i]/scale;
		k = k + 2;
		//#ifdef DEBUG
		//if (i < 5)
//		for (iDebug=0; iDebug<buff_size; iDebug++)		
//			printf("RX GPP <--- DSP   [%d]  = %f (%d) & %f (%d)\n", i, gpp_local0[i].real(), temp_short0, gpp_local0[i].imag(), temp_short1);
//			printf("(SHF) RX GPP <--- DSP   [%d]  = %f (%x) & %f (%x)\n", i, (float)(temp_short0 >> scale), temp_short0, (float)(temp_short0 >> scale), temp_short1);
		//#endif	

	}	        
        //memcpy(gr_inst->rfDataOutPtr, (bufferType *) LOOP_IOReq.buffer, gr_inst->buff_size * sizeof(gr_inst->rfDataOutPtr));
	//memcpy(gpp_local, (bufferType *) LOOP_IOReq.buffer, buff_size * sizeof(bufferType));
	#ifdef DEBUG
	printf("DONE RECEIVE CS\n");
	#endif
//#ifdef DEBUG
//for (iDebug=0; iDebug<buff_size; iDebug++)		
//	printf("RX GPP <--- DSP   [%d]  = %d\n", iDebug, gpp_local0[iDebug].real(), gpp_local0[iDebug].imag());
//#endif	
	
	return status;
}





DSP_STATUS verify_data(IN Char8 * buf, gnuRadioType *gr_inst)
{
	DSP_STATUS status = DSP_SOK;
        /*
         *  Verify correctness of data received.
         */
        if (DSP_SUCCEEDED (status)) {
            status = LOOP_VerifyData (LOOP_IOReq.buffer, gr_inst) ;
            if (DSP_FAILED (status)) {
                #ifdef DEBUG
                printf ("Data integrity failed\n") ;
                #endif
            }
        }
        
        return status;
}
int transmit_data_dsp(const short *gpp_local, short &buff_size, short &interp, bufferType &decim, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK;
	
	status = transmit_data(PROCESSOR_ID, gpp_local, buff_size, interp, decim, block_id);

	if (status == DSP_SOK)
		return NO_ERROR;
	else
		return ERROR_DSP_TX;
}
int receive_data_dsp(short *gpp_local, short &buff_size, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK;
	
	status = receive_data(PROCESSOR_ID, gpp_local, buff_size, block_id);
	if (status == DSP_SOK)
		return NO_ERROR;
	else
		return ERROR_DSP_RX;
}

int transmit_data_dsp_fs(const float *gpp_local, short &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK;
	
	//printf("DSP FS SCALE DATA = %f and buffer size = %d\n", scale_data, buff_size);
	//	LOOP_1Print ("DSP FS SCALE DATA = %x\n",
	//	  scale) ;
	//    LOOP_1Print ("DSP FS Buff Size = %d\n",
	//	  buff_size) ;		  
		  
	status = transmit_data_fs(PROCESSOR_ID, gpp_local, buff_size, scale, input_sig, output_sig, interp, decim, d_ntaps, block_id);

	if (status == DSP_SOK)
		return NO_ERROR;
	else
		return ERROR_DSP_TX;

}

int receive_data_dsp_fs(float *gpp_local, short &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK;
	
	status = receive_data_fs(PROCESSOR_ID, gpp_local, buff_size, scale, input_sig, output_sig, block_id);

	if (status == DSP_SOK)
		return NO_ERROR;
	else
		return ERROR_DSP_TX;

}

int transmit_data_dsp_cs(const gr_complex *gpp_local0, short buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK;
	
	#ifdef DEBUG
	printf("DSP CS SCALE DATA = %d and buffer size = %d\n", scale, (int)buff_size);
	#endif
	//	LOOP_1Print ("DSP FS SCALE DATA = %x\n",
	//	  scale) ;
	//    LOOP_1Print ("DSP FS Buff Size = %d\n",
	//	  buff_size) ;		  
		  
	status = transmit_data_cs(PROCESSOR_ID, gpp_local0, buff_size, scale, input_sig, output_sig, interp, decim, d_ntaps, block_id);

	if (status == DSP_SOK)
		return NO_ERROR;
	else
		return ERROR_DSP_TX;

}

int receive_data_dsp_cs(gr_complex *gpp_local0, short buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id)
{
	DSP_STATUS status = DSP_SOK;
	
	status = receive_data_cs(PROCESSOR_ID, gpp_local0, buff_size, scale, input_sig, output_sig, block_id);

	if (status == DSP_SOK)
		return NO_ERROR;
	else
		return ERROR_DSP_TX;

}
bool dsp_clean_function ()
{
	if (dsp_initialized)
	{
		//#ifdef DEBUG
		printf("Cleaning DSP with dsp_initialized=%d\n", dsp_initialized);
		//#endif
		
		dsp_initialized=0;
		LOOP_Delete (PROCESSOR_ID);
	}
	else
	{
		printf("You're clearing the DSP without even using it :(\n");
	}
	
	return 1;
}

int set_mutex()
{
	if (dsp_mutex == 0)
	{
		dsp_mutex = 1;
		return 1;
	}
	else
		return 0;
}
int clear_mutex()
{
	dsp_mutex = 0;
	
	if (dsp_mutex == 0)
		return 1;
	else
		return 0;
}
#if defined (__cplusplus)

}
#endif /* defined (__cplusplus) */
