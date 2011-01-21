/** ============================================================================
 *  @file   loop.cmd
 *
 *  @path   $(DSPLINK)/dsp/src/samples/loop/DspBios/5.XX/DM6437/
 *
 *  @desc   Application-specific linker command file.
 *
 *  @ver    1.61.03
 *  ============================================================================
 *  Copyright (c) Texas Instruments Incorporated 2002-2008
 *
 *  Use of this software is controlled by the terms and conditions found in the
 *  license agreement under which this software has been supplied or provided.
 *  ============================================================================
 */

/* Include the generated linker command file (Specify path from the sample
 * base path).
 */
SECTIONS {
.csl_vect: {} > DDR2
}
