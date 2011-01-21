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

from gnuradio import gr, dsp
from gnuradio import audio
from gnuradio.eng_option import eng_option
from optparse import OptionParser

class my_top_block(gr.top_block):

    def __init__(self):
        gr.top_block.__init__(self)

        usage="%prog: [options] output_filename"
        parser = OptionParser(option_class=eng_option, usage=usage)
        parser.add_option("-I", "--audio-input", type="string", default="",
                          help="pcm input device name.  E.g., hw:0,0 or /dev/dsp")
        parser.add_option("-r", "--sample-rate", type="eng_float", default=48000,
                          help="set sample rate to RATE (48000)")
        parser.add_option("-N", "--nsamples", type="eng_float", default=None,
                          help="number of samples to collect [default=+inf]")
     
        (options, args) = parser.parse_args ()
        if len(args) != 1:
            parser.print_help()
            raise SystemExit, 1
        #filename = args[0]

        sample_rate = int(options.sample_rate)

        audio_coeffs = (
 0.00058729130373770002,
 0.0016584444738215582,
 0.0015819269921330031,
 0.0014607862142637573,
 0.00020681278261230754,
-0.0013001097961560814,
-0.00249802658603143,  
-0.0024276134129972843,
-0.00083069749014258953,
 0.0017562878158492619,
 0.003963761120687582,  
 0.0043075911442784871,
 0.0020710872871114866,
-0.0020172640629268932,
-0.005882026963765212,  
-0.0070692053073845166,
-0.0041954626649490937,
 0.0019311082705710714,
 0.0082980827342646387,
 0.011045923787287403,  
 0.0076530405054369872,
-0.0012102332109476402,
-0.011372099802214802,  
-0.016910189774436514,  
-0.013347352799620162,  
-0.00068013535845177706,
 0.015578754320259895,  
 0.026379517186832846,  
 0.023618496101893545,  
 0.0051085800414948012,
-0.022608534445133374,  
-0.045529642916534545,  
-0.047580556152787695,  
-0.018048092177406189,  
 0.042354392363985506,  
 0.11988807809069109,  
 0.19189052073753335,  
 0.2351677633079737,    
 0.2351677633079737,    
 0.19189052073753335,  
 0.11988807809069109,  
 0.042354392363985506,  
-0.018048092177406189,  
-0.047580556152787695,  
-0.045529642916534545,  
-0.022608534445133374,  
 0.0051085800414948012,
 0.023618496101893545,  
 0.026379517186832846,  
 0.015578754320259895,  
-0.00068013535845177706,
-0.013347352799620162,  
-0.016910189774436514,  
-0.011372099802214802,  
-0.0012102332109476402,
 0.0076530405054369872,
 0.011045923787287403,  
 0.0082980827342646387,
 0.0019311082705710714,
-0.0041954626649490937,
-0.0070692053073845166,
-0.005882026963765212,  
-0.0020172640629268932,
 0.0020710872871114866,
 0.0043075911442784871,
 0.003963761120687582,  
 0.0017562878158492619,
-0.00083069749014258953,
-0.0024276134129972843,
-0.00249802658603143,  
-0.0013001097961560814,
 0.00020681278261230754,
 0.0014607862142637573,
 0.0015819269921330031,
 0.0016584444738215582,
 0.00058729130373770002)	
        
        # initializes the DSP
        dsp.init()
        src = audio.source (sample_rate, options.audio_input)
        #dst = gr.file_sink (gr.sizeof_float, filename)
        dst = audio.sink (sample_rate, options.audio_output)
        audio_filter = dsp.fir_fff(1, audio_coeffs)
        # deletes DSP related buffers and resources
        # dsp.clean()        
        
        if options.nsamples is None:
            self.connect((src, 0), audio_filter, dst)
        else:
            head = gr.head(gr.sizeof_float, int(options.nsamples))
            self.connect((src, 0), head, audio_filter, dst)


if __name__ == '__main__':
    try:
        my_top_block().run()
    except KeyboardInterrupt:
        pass
