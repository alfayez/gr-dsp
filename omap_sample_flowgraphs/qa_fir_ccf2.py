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
        src_data0 = (
0.01+0.11j, 
0.02+0.22j, 
0.03+0.33j, 
0.04+0.44j, 
0.05+0.55j, 
0.06+0.66j, 
0.07+0.77j, 
0.08+0.88j, 
0.09+0.99j
)
        src_coeff = (0.101, 0.102, 0.103, 0.104, 0.105)
        scale = 15
        expected_result = (245, 320, 395, 470, 445, 400, 334, 246, 135)
        src0 = gr.vector_source_c (src_data0)
        dsp.init()
        # dsp.fir_ccf (
	#	       coefficients, 
				# Q formatted can be between Q0 -> Q14
	#	       scaling factor  = [0, 15]
	#	       interpolation factor
				# currently not implemented "properly" a.k.a don't use just yet
        #              input signature
				# 0 = normalized input
				# 1 = scaled by a factor equal "scale"
        #              output signature
				# 0 = normalized input
				# 1 = scaled by a factor equal "scale"
	# 		initialize DSP (set to 0 use dsp.init() instead
				# 1 = yes
				# 0 = no
        #		block ID
				# 1 or 0 to uniquly identify block instance for now there's support for only two blocks
        ccf_filt = dsp.fir_ccf (src_coeff, scale, 1, 0, 0, 0, 0)

       # gccf = gr.interp_fir_filter_ccf (1, src_coeff)
        
        
        dst0 = gr.vector_sink_c ()
        dst1 = gr.vector_sink_c ()
        
        self.tb.connect ((src0, 0), ccf_filt)
        self.tb.connect (ccf_filt, dst0)

        self.tb.run ()
        result_data0 = dst0.data ()
        result_data1 = dst1.data ()
        print "Result DSP "
        dsp.clean()
        
if __name__ == '__main__':
    gr_unittest.main ()
