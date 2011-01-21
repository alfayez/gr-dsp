#
# Copyright 2004,2005,2006,2008,2009 Free Software Foundation, Inc.
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

include $(top_srcdir)/Makefile.common

# C/C++ headers get installed in ${prefix}/include/gnuradio
grinclude_HEADERS =		\
	dsp_fir_fff.h	\
	dsp_fir_ccf.h \
	dsp_fir_ccf_fm_demod.h \
	dsp_fir_ccf_fm_demod_decim.h \
	dsp_init.h \
	dsp_clean.h
###################################
# SWIG Python interface and library

TOP_SWIG_IFILES = 		\
	dsp.i

# Install so that they end up available as:
#   import gnuradio.dsp
# This ends up at:
#   ${prefix}/lib/python${python_version}/site-packages/gnuradio
dsp_pythondir_category =	\
	gnuradio

# additional arguments to the SWIG command
#dsp_la_swig_args =		\
#	-g

# additional sources for the SWIG-generated library
dsp_la_swig_sources = 	\
	dsp_fir_fff.cc	\
	dsp_fir_ccf.cc	\
	dsp_fir_ccf_fm_demod.cc \
	dsp_fir_ccf_fm_demod_decim.cc \
	dsp_init.cc \
	dsp_clean.cc 
	
# additional arguments to the SWIG command
#dsp_la_swig_args =		\
#	$(SWIG_PYTHON_ARGS)

# additional libraries for linking with the SWIG-generated library
#dsp_la_swig_libadd =		\
#	libm.dylib

# additional LD flags for linking the SWIG-generated library
dsp_la_swig_ldflags =	\
	-L/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/gpp/BUILD/EXPORT/DEBUG \
	-lloopgppAl2
#	-L/opt/local/bin

# additional Python files to be installed along with the SWIG-generated one
#dsp_python =			\
#	__init__.py

# additional SWIG files to be installed
#dsp_swiginclude_headers =	\
#	nothing.i

include $(top_srcdir)/Makefile.swig

# add some of the variables generated inside the Makefile.swig.gen
BUILT_SOURCES = $(swig_built_sources)

# Do not distribute the output of SWIG
no_dist_files = $(swig_built_sources)

CPPFLAGS	= -I/home/alfayez/oe/tmp_beagleboard/staging/beagleboard-angstrom-linux-gnueabi/ti-dsplink-module/packages/dsplink/gpp/src/samples/loopAl2
