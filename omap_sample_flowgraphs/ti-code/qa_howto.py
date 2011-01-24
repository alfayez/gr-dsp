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
#import howto

class qa_howto (gr_unittest.TestCase):

    def setUp (self):
        self.tb = gr.top_block ()

    def tearDown (self):
        self.tb = None

    def test_002_square2_ff (self):
        #src_data = (7, -3, 4, -5.5, 2, 3, 5)
        #src_coeff = (1, 1, 2, 2, 3)
        src_data = (0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09)
        src_coeff = (0.10, 0.11, 0.12, 0.13, 0.14)
        scale = 100
        #expected_result = (9, 16, 30.25, 4, 9)
        #expected_result = (49, 9, 16, 30.20000076, 4, 9, 25)
        expected_result = (245, 320, 395, 470, 445, 400, 334, 246, 135)
        src = gr.vector_source_f (src_data)
        sqr = dsp.fir_fff (src_coeff, scale, scale)
        dst = gr.vector_sink_f ()
        

        mpoints = 4
        taps = gr.firdes.low_pass(1,
                                  1,
                                  1.0/mpoints * 0.4,
                                  1.0/mpoints * 0.1,
                                  gr.firdes.WIN_HANN)
        #print "The length of FILTER is" 
        #print len(taps)
        #print "The length of FILTER is %d." %len(taps)
        #print taps
        #howto.set_taps()


        self.tb.connect (src, sqr)
        self.tb.connect (sqr, dst)
        self.tb.run ()
        result_data = dst.data ()
        self.assertFloatTuplesAlmostEqual (expected_result, result_data, 9)
        
if __name__ == '__main__':
    gr_unittest.main ()
