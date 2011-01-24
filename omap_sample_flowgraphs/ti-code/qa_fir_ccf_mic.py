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

from gnuradio import gr, gr_unittest, dsp
from gnuradio import audio
#import howto

class qa_howto (gr_unittest.TestCase):

    def setUp(self): 
        self.tb = gr.top_block ()

    def tearDown (self):
        self.tb = None

    def test_002_square2_ff (self):
        
        scale_coeff = 1e4
        scale_data = 1e4
        scale_up_val   = [10]
        scale_down_val = 0.001
        dst = gr.vector_sink_f ()
        dst1 = gr.vector_sink_f ()
        ctof = gr.complex_to_float ()
 
        mpoints = 4
        #audio_rate = 44100
        #audio_rate = 32e3
        filter_rate = 44100
        audio_rate =  44100
        rx_baseband_bw = 5000
        width_of_transition_band = 0.35*rx_baseband_bw
        audio_coeffs = gr.firdes.low_pass(1,
                                  filter_rate,
                                  rx_baseband_bw,
                                  width_of_transition_band,
                                  gr.firdes.WIN_HAMMING)
       
        # HERE HERE
        sqr = dsp.fir_ccf (audio_coeffs, scale_data, 2)

        audio_output = "hw:0,0"
        audio_input = audio_output
        src_mic = audio.source (audio_rate, audio_input, True)
        #src_mic = audio.source (audio_rate, audio_input)
        dst_speaker = audio.sink (audio_rate, audio_input, True)
        #dst_speaker = audio.sink (audio_rate, audio_input)
        
        self.tb.connect (src_mic, (sqr, 0))
        self.tb.connect (src_mic, (sqr, 1))
        self.tb.connect ((sqr, 0), dst)
        self.tb.connect ((sqr, 1), dst1)
        #self.tb.connect (ctof, dst_speaker)

        self.tb.run ()
        #result_data = dst.data ()
        #print "HI"
        #print result_data
        #self.assertFloatTuplesAlmostEqual (expected_result, result_data, 6)
if __name__ == '__main__':    gr_unittest.main ()

