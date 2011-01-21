/** ============================================================================
 *  @file   tskLoop.h
 *
 *  @path   $(DSPLINK)/dsp/src/samples/loop/
 *
 *  @desc   Header file for tskLoop application.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */








/////////////////////////////////////
////////////////////////
#define MAX_SIZE	4096
//#define MAX_SIZE	16394
#define ARRAY_SIZE	512
#define ADD_SIZE	10
//#define DEBUG_ARR_SIZE	5
//#define SCALE_FACTOR	4096
#define RF_DATA_OFFSET	1
//#define INTERPOLATION 1

#define SCALING_INDEX 		    0
#define INTERPOLATION_INDEX 	1
#define COEFF_INDEX 		    2
typedef short bufferType;


//struct gnuRadioDsp;

//bufferType* bufRes;
//bufferType* bufTemp;





#if !defined (TSKLOOP_)
#define TSKLOOP_

bufferType convolution(bufferType* in1, int length1, bufferType* in2, int length2, bufferType* out);

bufferType square(bufferType* in1, int length1, bufferType* out);

bufferType filter_fff_imp(bufferType* fir_in);

bufferType filter_ccf_imp(bufferType* fir_in);

bufferType fir_fff(bufferType* fir_in, bufferType fir_in_size_local, bufferType* fir_coeff, bufferType fir_coeff_size_local, bufferType* fir_out);

bufferType fir_ccf(bufferType* fir_in0, bufferType* fir_in1, bufferType fir_in_size_local, bufferType* fir_coeff, bufferType fir_coeff_size_local, bufferType* fir_out0, bufferType* fir_out1);

bufferType interp_fir_ccf(bufferType* fir_in0, bufferType* fir_in1, bufferType interpolation, bufferType fir_in_size_local, bufferType* fir_coeff, bufferType fir_coeff_size_local, bufferType* fir_out0, bufferType* fir_out1);

void DSP_fir_cplx_test (
    const short *restrict x,    /* Input array [nr+nh-1 elements] */
    const short *restrict h,    /* Coeff array [nh elements]      */
    short       *restrict r,    /* Output array [nr elements]     */
    int nh,                     /* Number of coefficients         */
    int nr                      /* Number of output samples       */
);

//extern bufferType buffLocal[MAX_SIZE];
//extern bufferType buffLocal2[MAX_SIZE];




#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */


/** ============================================================================
 *  @const  MAX_BUFFERS
 *
 *  @desc   Size of buffers array.
 *  ============================================================================
 */
#define MAX_BUFFERS            100

/** ============================================================================
 *  @const  TSK_NUM_BUFFERS
 *
 *  @desc   Number of buffers to allocate and use for transfer.
 *  ============================================================================
 */
#define TSK_NUM_BUFFERS          1


/** ============================================================================
 *  @name   TSKLOOP_TransferInfo
 *
 *  @desc   Structure used to keep various information needed by various phases
 *          of the application.
 *
 *  @field  inputStream
 *              Handle to input stream.
 *  @field  outputStream
 *              Handle to output stream.
 *  @field  numTransfers
 *              Number of transfers to be done.
 *  @field  bufferSize
 *              Buffer size information.
 *  @field  receivedSize
 *              Actual length of the buffer that was received.
 *  @field  numBuffers
 *              Number of valid buffers in "buffers" array.
 *  @field  buffers
 *              Array of buffer pointers.
 *  ============================================================================
 */
typedef struct TSKLOOP_TransferInfo_tag {
    SIO_Handle inputStream;
    SIO_Handle outputStream;
    Uint16     numTransfers;
    Uint32     bufferSize;
    Uint16     receivedSize;
    Uint16     numBuffers;
    Char *     buffers [MAX_BUFFERS];
} TSKLOOP_TransferInfo;


/** ============================================================================
 *  @func   TSKLOOP_create
 *
 *  @desc   Create phase function of TSKLOOP application.
 *
 *  @arg    transferInfo
 *              Information for transfer.
 *
 *  @ret    SYS_OK
 *              Successful operation.
 *          SYS_EBADIO
 *              Failure occured while doing IO.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    None
 *  ============================================================================
 */
Int TSKLOOP_create (TSKLOOP_TransferInfo ** transferInfo);
							  
/** ============================================================================
 *  @func   TSKLOOP_execute
 *
 *  @desc   Excecute phase function of TSKLOOP application.
 *
 *  @arg    transferInfo
 *              Information for transfer.
 *
 *  @ret    SYS_OK
 *              Successful operation.
 *          SYS_EBADIO
 *              Failure occured while doing IO.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    None
 *  ============================================================================
 */
Int TSKLOOP_execute (TSKLOOP_TransferInfo * transferInfo);

/** ============================================================================
 *  @func   TSKLOOP_delete
 *
 *  @desc   Delete phase function of TSKLOOP application.
 *
 *  @arg    transferInfo
 *              Information for transfer.
 *
 *  @ret    SYS_OK
 *              Successful operation.
 *          SYS_EBADIO
 *              Failure occured while doing IO.
 *
 *  @enter  None
 *
 *  @leave  None
 *
 *  @see    None
 *  ============================================================================
 */
Int TSKLOOP_delete (TSKLOOP_TransferInfo * transferInfo);





#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */


#endif /* !defined (TSKLOOP_) */
