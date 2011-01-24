#!/usr/bin/env python
#
# Copyright 2004,2007 Free Software Foundation, Inc.
# 
# This file is part of GNU Radio
# 
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
# 
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
# 

from gnuradio import gr, gr_unittest, blks2, eng_notation, optfir

from gnuradio import audio, howto

from gnuradio.eng_option import eng_option

from gnuradio.blks2impl.fm_emph import fm_deemph
from gnuradio.blks2impl.standard_squelch import standard_squelch

class cube_test (gr_unittest.TestCase):

    def setUp (self):
        self.tb = gr.top_block ()

    def tearDown (self):
        self.tb = None

    def test_001_fir_filter_fff (self):

        audio_rate = 32e3
        rx_baseband_bw = 5000
        width_of_transition_band = 0.35*rx_baseband_bw
        gr_decim = 8
        sink_volume = 10
        
        audio_coeffs = gr.firdes.low_pass (1.0,                  #gain
                                           audio_rate,      #sampling rate
                                           rx_baseband_bw,
                                           width_of_transition_band,
                                           gr.firdes.WIN_HAMMING)
        
        audio_filter = gr.fir_filter_fff(gr_decim, audio_coeffs)
       
        print "audio decim FIR filter tap length:", len(audio_coeffs)
        fh_tmp= open('analog_rx_decim_fir_coeff.txt','w')
        fh_tmp.write(str(audio_coeffs))
        fh_tmp.close()             

        
        audio_fin = gr.file_source(gr.sizeof_float, "audio_fin.dat", False)
        #audio_fout = gr.file_sink(gr.sizeof_float, "audio_fout_test.dat")
        scale = 10000
        audio_filter_dsp = howto.square2_ff (audio_coeffs, scale)
        scale_up = gr.multiply_const_ff (scale)
        to_short = gr.float_to_short ()
        scale_down = gr.multiply_const_ff (1/scale)
        to_float = gr.short_to_float ()
        
        deemph = fm_deemph (audio_rate)
        volume_control = gr.multiply_const_ff(sink_volume)
        audio_sink = audio.sink(int(audio_rate),"plughw:0,0")

        #self.tb.connect (audio_fin, audio_filter, deemph, volume_control, audio_sink)
        self.tb.connect (audio_fin, scale_up, to_short, audio_filter_dsp, to_float, scale_down, demph, volume_control, audio_sink)
        #self.tb.connect (audio_filter, audio_fout)
        self.tb.run ()

        #self.assertFloatTuplesAlmostEqual (expected_result, result_data, 6)
        
if __name__ == '__main__':
    gr_unittest.main ()
