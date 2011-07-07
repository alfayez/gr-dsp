# Based on the "gr-spi_0.2.bb" Recipe

DESCRIPTION = "DSP source/sink blocks for GNU Radio"
SECTION = "apps"
PRIORITY = "optional"
LICENSE = "GPL"
DEPENDS = " gnuradio python swig-native linux-libc-headers easyCom-gpp"
RDEPENDS = "gnuradio"

PN = "gr-dsp"
PV = "0.1"

SRC_URI = "file://gr-dsp-${PV}.tar.gz"
#   file://libloopgppAl2.so.1 
#   file://gnuradio_beagleboard_dsp.h"
	    
	    
#SRC_URI = "file://gr-dsp/gr-howto-write-a-block-3.2.2.tar.gz"
#S = "${WORKDIR}/${PN}-${PV}-r0"
#S = "${WORKDIR}/test-123"
S = "${WORKDIR}"

#S = "/home/alfayez/oe/tmp_beagleboard/work/armv7a-angstrom-linux-gnueabi/gr-dsp-0.1-r0"
inherit autotools

export BUILD_SYS
export HOST_SYS=${MULTIMACH_TARGET_SYS}

EXTRA_OECONF += "  --with-pythondir=/usr/lib/python2.6/site-packages \
  PYTHON_CPPFLAGS=-I${STAGING_INCDIR}/python2.6 \
  GNURADIO_CORE_INCLUDEDIR=${STAGING_INCDIR}/gnuradio \
"


do_configure_append() {

	find ${S} -name Makefile | xargs sed -i s:'-I/usr/include':'-I${STAGING_INCDIR}':g
	find ${S} -name Makefile | xargs sed -i s:'GNURADIO_CORE_INCLUDEDIR = /usr/include/gnuradio':'GNURADIO_CORE_INCLUDEDIR = ${STAGING_INCDIR}/gnuradio':g
	find ${S} -name Makefile | xargs sed -i s:'grincludedir = $(includedir)/gnuradio':'grincludedir = ${STAGING_INCDIR}/gnuradio':g
}

#do_compile_prepend () {
#	cp ${S}/gpp_lib/* ${S}/src/lib/
#}

FILES_${PN} += "\
   /usr/lib/python2.6/site-packages/gnuradio/dsp.pyc 	\
   /usr/lib/python2.6/site-packages/gnuradio/dsp.pyo 	\
   /usr/lib/python2.6/site-packages/gnuradio/dsp.py 	\
   /usr/lib/python2.6/site-packages/gnuradio/_dsp.la	\
   /usr/lib/python2.6/site-packages/gnuradio/_dsp.so 	\
"
FILES_${PN}-dev += "\
   /usr/include/gnuradio/dsp_* 	\
   /usr/include/gnuradio/swig/dsp_ \
"

PROVIDES += "gr-dsp"
#PACKAGES += "gr-dsp"

