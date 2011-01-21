# Based on the "gr-spi_0.2.bb" Recipe

DESCRIPTION = "DSP source/sink blocks for GNU Radio"
SECTION = "apps"
PRIORITY = "optional"
LICENSE = "GPL"
DEPENDS = "linux-libc-headers"

PN = "gpp-lib"
PV = "0.1"

SRC_URI = "file://gpp_lib/loopgppAl2.o \
	file://gpp_lib/gnuradio_beagleboard_dsp.h"
S = "/home/alfayez/oe/tmp_beagleboard/work/armv7a-angstrom-linux-gnueabi/gpp-lib-0.1-r0/gpp_lib"

LIBLOOPGPPAL2_TARGET = ${STAGING_DIR_TARGET}/usr/lib


do_compile() {
	${CC} ${CFLAGS} ${LDFLAGS} -shared -Wl,-soname,libloopgppAl2.so.1 -o libloopgppAl2.so.1.0 loopgppAl2.o
}

do_install() {
        mkdir -p ${D}${libdir}
				
        cp ${S}/libloopgppAl2.so.1.0 ${D}${libdir}/libloopgppAl2.so.1.0
        #cp ${S}/libloopgppAl2.so.1.0 ${LIBLOOPGPPAL2_TARGET}/
	
	cd ${D}${libdir}
	ln -sf libloopgppAl2.so.1.0 libloopgppAl2.so
	ln -sf libloopgppAl2.so.1.0 libloopgppAl2.so.1

	#cd ${LIBLOOPGPPAL2_TARGET}
	#ln -sf libloopgppAl2.so.1.0 libloopgppAl2.so
	#ln -sf libloopgppAl2.so.1.0 libloopgppAl2.so.1
}
do_stage() {
	oe_libinstall -so -s libloopgppAl2 ${STAGING_LIBDIR}
	install -m 0644 ${S}/gnuradio_beagleboard_dsp.h ${STAGING_INCDIR}/

}

TARGET_CC_ARCH += "${LDFLAGS}"


