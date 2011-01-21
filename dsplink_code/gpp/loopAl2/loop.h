/** ============================================================================
 *  @file   loop.h
 *
 *  @path   $(DSPLINK)/gpp/src/samples/loop/
 *
 *  @desc   Defines the configurable parameters for the loopback test which
 *          sends a buffer across the DSP processor and recieves a buffer back
 *          using DSP/BIOS LINK. It also does the data verification on the
 *          recieved buffer. In this application the transfer is done using
 *          only one buffer and no queueing of buffers is done.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */


#if !defined (LOOP_H)
#define LOOP_H

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>
#include "cwt_support_func.h"
#include "gnuradio_beagleboard_dsp.h"
#include <string.h>

#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */

/** ============================================================================
 *  @const  CHNL_ID_OUTPUT
 *
 *  @desc   ID of channel used to send data to DSP.
 *  ============================================================================
 */
#define CHNL_ID_OUTPUT     0


/** ============================================================================
 *  @const  CHNL_ID_INPUT
 *
 *  @desc   ID of channel used to receive data from DSP.
 *  ============================================================================
 */
#define CHNL_ID_INPUT      1


/** ============================================================================
 *  @func   LOOP_Create
 *
 *  @desc   This function allocates and initializes resources used by
 *          this application.
 *
 *  @arg    dspExecutable
 *              DSP executable name.
 *  @arg    bufferSize
 *              String representation of buffer size to be used
 *              for data transfer.
 *  @arg    strNumIterations
 *              Number of iterations a data buffer is transferred between
 *              GPP and DSP in string format.
 *
 *  @arg    processorId
 *             Id of the DSP Processor. 
 *
 *  @ret    DSP_SOK
 *              Operation Successfully completed.
 *          DSP_EFAIL
 *              Resource allocation failed.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    LOOP_Delete
 *  ============================================================================
 */
NORMAL_API
DSP_STATUS
LOOP_Create (std::string  &dspExecutable,
             bufferType   &strBufferSize,
             int          &processorId, 
	     gnuRadioType *gr_inst) ;


/** ============================================================================
 *  @func   LOOP_Execute
 *
 *  @desc   This function implements the execute phase for this application.
 *
 *  @arg    numIterations
 *              Number of iterations a data buffer is transferred between
 *              GPP and DSP in string format.
 *
 *  @ret    DSP_SOK
 *              Operation Successfully completed.
 *          DSP_EFAIL
 *              Loop execution failed.
 *
 *  @arg    processorId
 *             Id of the DSP Processor. 
 *
 *  @ret    DSP_SOK
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    LOOP_Delete , LOOP_Create
 *  ============================================================================
 */
NORMAL_API
DSP_STATUS
LOOP_Execute (IN Uint8 processorId, gnuRadioType *gr_inst) ;


/** ============================================================================
 *  @func   LOOP_Delete
 *
 *  @desc   This function releases resources allocated earlier by call to
 *          LOOP_Create ().
 *          During cleanup, the allocated resources are being freed
 *          unconditionally. Actual applications may require stricter check
 *          against return values for robustness.
 *
 *  @arg    processorId
 *             Id of the DSP Processor. 
 *
 *  @ret    DSP_SOK
 *
 *  @ret    DSP_SOK
 *              Operation Successfully completed.
 *          DSP_EFAIL
 *              Resource deallocation failed.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    LOOP_Create
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_Delete (Uint8 processorId) ;


/** ============================================================================
 *  @func   LOOP_Main
 *
 *  @desc   The OS independent driver function for the loop sample application.
 *
 *  @arg    dspExecutable
 *              Name of the DSP executable file.
 *  @arg    strBufferSize
 *              Buffer size to be used for data-transfer in string format.
 *  @arg    strNumIterations
 *              Number of iterations a data buffer is transferred between
 *              GPP and DSP in string format.
 *
 *  @arg    processorId
 *             Id of the DSP Processor in string format. 
 *
 *  @ret    DSP_SOK
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    LOOP_Create, LOOP_Execute, LOOP_Delete
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_Main (std::string dsp_prog_name) ;

#if defined (DA8XXGEM)
/** ============================================================================
 *  @func   LOOP_Main_DA8XX
 *
 *  @desc   The OS independent driver function for the loop sample application.
 *
 *  @arg    dspExecutable
 *              Name of the DSP executable file.
 *  @arg    strBufferSize
 *              Buffer size to be used for data-transfer in string format.
 *  @arg    strNumIterations
 *              Number of iterations a data buffer is transferred between
 *              GPP and DSP in string format.
 *  @arg    processorId
 *             Id of the DSP Processor in string format. 
 *  @arg    strDspAddr
 *             c_int00 address
 *  @arg    strShmAddr
 *             DSPLINK_shmBaseAddress address
 *  @arg    strArgsAddr
 *             .args section address
 *
 *  @ret    DSP_SOK
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    LOOP_Create, LOOP_Execute, LOOP_Delete
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_Main_DA8XX (IN Char8 * dspExecutable,
                 IN Char8 * strBuffersize,
                 IN Char8 * strNumIterations,
                 IN Char8 * processorId,
                 IN Char8 * strDspAddr,
                 IN Char8 * strShmAddr,
                 IN Char8 * strArgsAddr) ;
#endif


/** ============================================================================
 *  @func   LOOP_0Print
 *
 *  @desc   Print a message without any arguments.
 *          This is a OS specific function and is implemented in file:
 *              <GPPOS>\loop_os.c
 *
 *  @arg    str
 *              String message to be printed.
 *
 *  @ret    None
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    None
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_0Print (Char8 * str) ;


/** ============================================================================
 *  @func   LOOP_1Print
 *
 *  @desc   Print a message with one arguments.
 *          This is a OS specific function and is implemented in file:
 *              <GPPOS>\loop_os.c
 *
 *  @arg    str
 *              String message to be printed.
 *  @arg    arg
 *              Argument to be printed.
 *
 *  @ret    None
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    None
 *  ============================================================================
 */
NORMAL_API
Void
LOOP_1Print (Char8 * str, Uint32 arg) ;

#define DSP_ARG_SIZE	32
#define DSP_BUFFER_SIZE MAX_SIZE
#define INTERPOLATION	1
int check_dsp_parameters(gnuRadioType *gnuradio_instance);
int initDspParameters(struct dsp *dsp_instance);
int initDsp(int &processorId);

DSP_STATUS transmit_data(Uint8 processorId, const bufferTypeFloat *gpp_local, bufferType &buff_size, bufferType &interp, bufferType &decim, bufferType &block_id);
DSP_STATUS receive_data(Uint8 processorId, bufferTypeFloat *gpp_local, bufferType &buff_size, bufferType &block_id);


DSP_STATUS transmit_data_fs(Uint8 processorId, const float *gpp_local, bufferType &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id);
DSP_STATUS receive_data_fs (Uint8 processorId, float *gpp_local, bufferType &buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id);

DSP_STATUS transmit_data_cs(Uint8 processorId, const gr_complex *gpp_local0, bufferType buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &interp, bufferType &decim, bufferType d_ntaps, bufferType &block_id);
DSP_STATUS receive_data_cs (Uint8 processorId, gr_complex *gpp_local0,  bufferType buff_size, bufferType &scale, bufferType &input_sig, bufferType &output_sig, bufferType &block_id);



DSP_STATUS verify_data(IN Char8 * buf, gnuRadioType *gr_inst);
#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */


#endif /* !defined (LOOP_H) */
