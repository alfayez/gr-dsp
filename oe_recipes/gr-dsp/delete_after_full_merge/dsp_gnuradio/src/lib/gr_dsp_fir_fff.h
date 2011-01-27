/* -*- c++ -*- */
/*
 * Copyright 2004 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */
#ifndef INCLUDED_DSP_FIR_FFF_H
#define INCLUDED_DSP_FIR_FFF_H

#include <gr_sync_block.h>
#include <gnuradio_beagleboard_dsp.h>
#include <vector>
//typedef short bufferType;

class gr_dsp_fir_fff;

/*
 * We use boost::shared_ptr's instead of raw pointers for all access
 * to gr_blocks (and many other data structures).  The shared_ptr gets
 * us transparent reference counting, which greatly simplifies storage
 * management issues.  This is especially helpful in our hybrid
 * C++ / Python system.
 *
 * See http://www.boost.org/libs/smart_ptr/smart_ptr.htm
 *
 * As a convention, the _sptr suffix indicates a boost::shared_ptr
 */
typedef boost::shared_ptr<gr_dsp_fir_fff> gr_dsp_fir_fff_sptr;

/*!
 * \brief Return a shared_ptr to a new instance of howto_square2_ff.
 *
 * To avoid accidental use of raw pointers, howto_square2_ff's
 * constructor is private.  howto_make_square2_ff is the public
 * interface for creating new instances.
 */
gr_dsp_fir_fff_sptr gr_make_dsp_fir_fff (const std::vector<float> &taps, short scale_data, short &interpolation, bufferType input_sig, bufferType output_sig, bufferType dsp_init_flag, bufferType fir_id);

/*!
 * \brief square2 a stream of floats.
 * \ingroup block
 *
 * This uses the preferred technique: subclassing gr_sync_block.
 */
class gr_dsp_fir_fff : public gr_sync_block
{
private:
  // The friend declaration allows howto_make_square2_ff to
  // access the private constructor.

  friend gr_dsp_fir_fff_sptr gr_make_dsp_fir_fff (const std::vector<float> &taps, short scale_data, short &interpolation, bufferType input_sig, bufferType output_sig, bufferType dsp_init_flag, bufferType fir_id);

  gr_dsp_fir_fff (const std::vector<float> &taps, short scale_data, short &interpolation, bufferType input_sig, bufferType output_sig, bufferType dsp_init_flag, bufferType fir_id);  	// private constructor

  //protected:

  	
  public:
   ~gr_dsp_fir_fff ();	// public destructor
  
  std::vector<short>	d_taps;		// reversed taps  
  FILE *fp;
  
  // Where all the action really happens
  int	dsp_float_to_short( short &nsamples,
		std::vector<short> &taps_dest, 
		const std::vector<float> &taps_source, 
		const short &scale);
  
  short d_scale_data;
  bufferType d_input_sig;
  bufferType d_output_sig;
  bufferType d_fir_id;
  short d_interpolation;
  short d_decimation;
  bufferType d_ntaps;
  int copy_vector_to_buffer(short *out, const std::vector<short> in);

  int work (int noutput_items,
	    gr_vector_const_void_star &input_items,
	    gr_vector_void_star &output_items);
  //int howto_set_taps();
};

#endif /* INCLUDED_DSP_FIR_FFF_H */
