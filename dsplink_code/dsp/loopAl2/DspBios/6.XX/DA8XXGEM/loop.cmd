/** ============================================================================
 *  @file   loop.cmd
 *
 *  @path   $(DSPLINK)/dsp/src/samples/loop/DspBios/6.XX/DA8XXGEM/
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

/* This directive ensures that the message sample can be used with a DSP
 * executable from which the symbol table has been stripped out.
 * In such scenario, the actual shared memory start address for the DRV
 * component must be used as the fill contents for this data section.
 */
SECTIONS {
    .data:DSPLINK_shmBaseAddress: fill=0xC3F05000 {} > SDRAM
}
