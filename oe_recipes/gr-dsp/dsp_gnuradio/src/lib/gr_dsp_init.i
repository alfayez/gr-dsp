/* -*- c++ -*- */

%include "gnuradio.i"			// the common stuff

%{
#include "gr_dsp_init.h"
%}

// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access howto_square_ff from python as howto.square_ff
 */
//GR_SWIG_BLOCK_MAGIC(gr,dsp_init);
%rename(dsp_init) gr_dsp_init;

int gr_dsp_init();


