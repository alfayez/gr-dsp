/* -*- c++ -*- */

%include "gnuradio.i"			// the common stuff

%{
#include "dsp_fir_ccf.h"
#include "dsp_fir_fff.h"
#include "dsp_fir_ccf_fm_demod.h"
#include "dsp_fir_ccf_fm_demod_decim.h"
#include "dsp_clean.h"
#include "dsp_init.h"
%}

// ----------------------------------------------------------------

/*
 * First arg is the package prefix.
 * Second arg is the name of the class minus the prefix.
 *
 * This does some behind-the-scenes magic so we can
 * access howto_square_ff from python as howto.square_ff
 */
GR_SWIG_BLOCK_MAGIC(dsp,fir_ccf);

dsp_fir_ccf_sptr dsp_make_fir_ccf (const std::vector<float> &taps, short scale_data, short interpolation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);

//enum io_sig_type {
//    FLOATING_POINT = 0,
//    FIXED_POINT = 1,
//  };
  
class dsp_fir_ccf : public gr_block
{
private:
  dsp_fir_ccf (const std::vector<float> &taps, short scale_data, short interpolation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
};

// ----------------------------------------------------------------
GR_SWIG_BLOCK_MAGIC(dsp,fir_ccf_fm_demod);

dsp_fir_ccf_fm_demod_sptr dsp_make_fir_ccf_fm_demod (const std::vector<float> &taps, short scale_data, short decimation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
  
class dsp_fir_ccf_fm_demod : public gr_block
{
private:
  dsp_fir_ccf_fm_demod (const std::vector<float> &taps, short scale_data, short decimation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
};

// ----------------------------------------------------------------
GR_SWIG_BLOCK_MAGIC(dsp,fir_ccf_fm_demod_decim);

dsp_fir_ccf_fm_demod_decim_sptr dsp_make_fir_ccf_fm_demod_decim (const std::vector<float> &taps, short scale_data, short decimation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
  
class dsp_fir_ccf_fm_demod_decim : public gr_block
{
private:
  dsp_fir_ccf_fm_demod_decim (const std::vector<float> &taps, short scale_data, short decimation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
};

// ----------------------------------------------------------------
%rename(clean) dsp_clean;
void dsp_clean();

// ----------------------------------------------------------------
%rename(init) dsp_init;
void dsp_init();

// ----------------------------------------------------------------

GR_SWIG_BLOCK_MAGIC(dsp,fir_fff);

dsp_fir_fff_sptr dsp_make_fir_fff (const std::vector<float> &taps, short scale_data, short interpolation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);

class dsp_fir_fff : public gr_sync_interpolator
{
private:
  dsp_fir_fff (const std::vector<float> &taps, short scale_data, short &interpolation, short input_sig, short output_sig, short dsp_init_flag, short fir_id);
  //void set_taps (const std::vector<float> &taps);
  //void howto_set_taps ();
};

