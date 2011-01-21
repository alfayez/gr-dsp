/** ============================================================================
 *  @file   loop_config.h
 *
 *  @path   $(DSPLINK)/dsp/src/samples/loop/
 *
 *  @desc   Header file containing configuration for the LOOP sample.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */


#if !defined (LOOP_CONFIG_)
#define LOOP_CONFIG_


#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */


/** ============================================================================
 *  @const  SAMPLE_POOL_ID
 *
 *  @desc   Pool identifier for this application.
 *  ============================================================================
 */
#define SAMPLE_POOL_ID  0

/** ============================================================================
 *  @const  DSPLINK_DRVNAME
 *
 *  @desc   Name of the DSPLINK driver. This is different based on whether the
 *          sample application uses TSKs or SWIs for data transfer.
 *  ============================================================================
 */
#if defined (SWI_MODE)
#define DSPLINK_DRVNAME  "/dsplink"
#endif

#if defined (TSK_MODE)
#define DSPLINK_DRVNAME  "/dio_dsplink"
#endif

/** ============================================================================
 *  @const  INPUT_CHNL_NAME
 *
 *  @desc   Name of the input channel, generated based on the DSPLINK driver
 *          name specified.
 *  ============================================================================
 */
#define INPUT_CHNL_NAME(drvName)  drvName ## "0"

/** ============================================================================
 *  @const  OUTPUT_CHNL_NAME
 *
 *  @desc   Name of the output channel, generated based on the DSPLINK driver
 *          name specified.
 *  ============================================================================
 */
#define OUTPUT_CHNL_NAME(drvName)  drvName ## "1"

/** ============================================================================
 *  @const  INPUT_CHANNEL
 *
 *  @desc   Name of the input channel.
 *  ============================================================================
 */
#define INPUT_CHANNEL             INPUT_CHNL_NAME(DSPLINK_DRVNAME)

/** ============================================================================
 *  @const  OUTPUT_CHANNEL
 *
 *  @desc   Name of the output channel.
 *  ============================================================================
 */
#define OUTPUT_CHANNEL            OUTPUT_CHNL_NAME(DSPLINK_DRVNAME)

#if defined (CHNL_PCPY_LINK)
/** ============================================================================
 *  @name   NUM_BUF_SIZES
 *
 *  @desc   Number of buffer pools to be configured for the pool.
 *  ============================================================================
 */
#define NUM_BUF_SIZES       1

/** ============================================================================
 *  @name   NUM_BUFFERS
 *
 *  @desc   Number of buffers to be allocated.
 *  ============================================================================
 */
#define NUM_BUFFERS         2

/** ============================================================================
 *  @name   SAMPLEPOOL_open
 *
 *  @desc   Macro over the allocator for opening a pool.
 *
 *  @arg    poolId
 *              Pool id.
 *  @arg    params
 *              Parameters.
 *
 *  @see    SAMPLEPOOL_close
 *  ============================================================================
 */
#define SAMPLEPOOL_open(poolId, params)                        \
        (((POOL->allocators [poolId]).fxns->open)              \
                (&(POOL->allocators [poolId].object),          \
                 params))

/** ============================================================================
 *  @name   SAMPLEPOOL_close
 *
 *  @desc   Macro over the allocator for closing a pool.
 *
 *  @arg    poolId
 *              Pool id.
 *
 *  @see    SAMPLEPOOL_open
 *  ============================================================================
 */
#define SAMPLEPOOL_close(poolId)                         \
        (((POOL->allocators [poolId]).fxns->close)       \
                (POOL->allocators [poolId].object))

/** ============================================================================
 *  @name   POOL
 *
 *  @desc   Configuration variable defined by the POOL component.
 *  ============================================================================
 */
extern POOL_Config  * POOL ;

/** ============================================================================
 *  @name   LOOP_Pools
 *
 *  @desc   Array of pools.
 *  ============================================================================
 */
extern POOL_Obj LOOP_Pools [] ;
#endif /* if defined (CHNL_PCPY_LINK) */


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */


#endif /* !defined (LOOP_CONFIG_) */
