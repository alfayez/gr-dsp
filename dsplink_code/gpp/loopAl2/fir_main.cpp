#include <stdio.h>
#include <string.h>
#include <math.h>
#include "cwt_support_func.h"
#include "gnuradio_beagleboard_dsp.h"

#include <stdio.h>
#include <stdlib.h>

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>

/*  ----------------------------------- Application Header            */
#include <loop_os.h>
#include <loop.h>







/** ============================================================================
 *  @file   main.c
 *
 *  @path   $(DSPLINK)/gpp/src/samples/loop/Linux/
 *
 *  @desc   Linux specific implementation of loop sample application's driver.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */


/*  ----------------------------------- OS Specific Headers           */
#include <stdio.h>
#include <stdlib.h>

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>

/*  ----------------------------------- Application Header            */
#include <loop_os.h>
#include <loop.h>



#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */


#if defined (DA8XXGEM)

/** ============================================================================
 *  @name   dspAddr
 *
 *  @desc   Address of c_int00 in the DSP executable.
 *  ============================================================================
 */
extern Uint32 LOOP_dspAddr ;

/** ============================================================================
 *  @name   shmAddr
 *
 *  @desc   Address of symbol DSPLINK_shmBaseAddres in the DSP executable.
 *  ============================================================================
 */
extern Uint32 LOOP_shmAddr ;

/** ============================================================================
 *  @name   argsAddr
 *
 *  @desc   Address of .args section in the DSP executable.
 *  ============================================================================
 */
extern Uint32 LOOP_argsAddr ;

/** ============================================================================
 *  @name   LINKCFG_config
 *
 *  @desc   Extern declaration to the default DSP/BIOS LINK configuration
 *          structure.
 *  ============================================================================
 */
extern  LINKCFG_Object LINKCFG_config ;
#endif


/** ============================================================================
 *  @func   main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
int dsp_init_function (std::string dsp_prog_name)
{
    	//Char8 * strProcessorId   = NULL ;
    	//int	   test_in_length    = 0;
    	//int iDebug		     = 0;
        		
	LOOP_Main (dsp_prog_name) ;
    	return 1 ;
}

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
