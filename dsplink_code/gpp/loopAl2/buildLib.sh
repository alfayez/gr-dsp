touch ${DSPLINK}/gpp/src/samples/loopAl2
#rm ${HOME}/oe/openembedded/recipes/gnuradio/gpp_lib/loopgppAl2.o
#rm ${HOME}/oe/openembedded/recipes/gnuradio/gpp_lib/gnuradio_beagleboard_dsp.h
#rm ../../../BUILD/EXPORT/DEBUG/loopgppAl2.o
make -s clean; make -s debug;

#rm ../../../BUILD/EXPORT/DEBUG/loopgppAl2.so.1
#rm ../../../BUILD/EXPORT/DEBUG/loopgppAl2.a
#rm ../../../BUILD/EXPORT/DEBUG/loopgppAl2.lib

cp ../../../BUILD/EXPORT/DEBUG/loopgppAl2.o ${HOME}/oe/openembedded/recipes/gnuradio/gpp_lib/
cp gnuradio_beagleboard_dsp.h ${HOME}/oe/openembedded/recipes/gnuradio/gpp_lib/

