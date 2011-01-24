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

class qa_howto (gr_unittest.TestCase):

    def setUp (self):
        self.tb = gr.top_block ()

    def tearDown (self):
        self.tb = None

    def test_002_square2_ff (self):
        #src_data = (7, -3, 4, -5.5, 2, 3, 5)
        #src_coeff = (1, 1, 2, 2, 3)
        src_data0 = (0.01+0.11j, 0.02+0.22j, 0.03+0.33j, 0.04+0.44j, 0.05+0.55j, 0.06+0.66j, 0.07+0.77j, 0.08+0.88j, 0.09+0.99j)
        #src_data1 = (0.11, 0.22, 0.33, 0.44, 0.55, 0.66, 0.77, 0.88, 0.99)
        src_coeff = (0.101, 0.102, 0.103, 0.104, 0.105)
        scale = 1000
        #expected_result = (9, 16, 30.25, 4, 9)
        #expected_result = (49, 9, 16, 30.20000076, 4, 9, 25)
        expected_result = (245, 320, 395, 470, 445, 400, 334, 246, 135)
        src0 = gr.vector_source_c (src_data0)
        #src1 = gr.vector_source_f (src_data1)
        
        #sqr = dsp.fir_ccf (src_coeff, scale, 2)

        ftoc = gr.float_to_complex ()
        ctof = gr.complex_to_float ()
        gccf = gr.interp_fir_filter_ccf (2, src_coeff)
        
        
        dst0 = gr.vector_sink_c ()
        #dst1 = gr.vector_sink_f ()
        

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


        #self.tb.connect (src0, (sqr, 0))
        #self.tb.connect (src1, (sqr, 1))
        #self.tb.connect ((sqr, 0), dst0)
        #self.tb.connect ((sqr, 1), dst1)
        
        #self.tb.connect (src0, (ftoc, 0))
        #self.tb.connect (src1, (ftoc, 1))
        #self.tb.connect (ftoc, gccf)
        #self.tb.connect (gccf, ctof)
        #self.tb.connect ((ctof, 0), dst0)
        #self.tb.connect ((ctof, 1), dst1)
                
        self.tb.connect (src0, gccf)
        self.tb.connect (gccf, dst0)

        #self.tb.connect (src0, sqr)
        #self.tb.connect (sqr, dst0)

        self.tb.run ()
        result_data0 = dst0.data ()
        print result_data0
        #self.assertFloatTuplesAlmostEqual (expected_result, result_data, 9)
        
if __name__ == '__main__':
    gr_unittest.main ()
