
rm /usr/lib/python2.6/site-packages/gnuradio/dsp.py
rm /usr/lib/python2.6/site-packages/gnuradio/dsp.pyc
rm /usr/lib/python2.6/site-packages/gnuradio/dsp.pyo
rm /usr/lib/python2.6/lib-dynload/_dsp.so
rm /usr/lib/python2.6/lib-dynload/_dsp.la

mount /dev/sda1 /mnt/usbthumb
cp /mnt/usbthumb/packages/gr-dsp/gr-dsp_0.1-r0.1_armv7a.ipk /packageInstall/gr_dsp/gr-dsp_0.1-r0.1_armv7a.ipk
cp /mnt/usbthumb/packages/gr-dsp/gr-dsp-dev_0.1-r0.1_armv7a.ipk /packageInstall/gr_dsp/gr-dsp-dev_0.1-r0.1_armv7a.ipk
cp /mnt/usbthumb/ti-code/loopAl2.out /home/root/ti-code/loopAl2.out
cp /mnt/usbthumb/ti-code/loopAl2.out /home/root/pscr_framework_new/loopAl2.out
cp /mnt/usbthumb/ti-code/filter_test_vector_src.py /home/root/ti-code/filter_test_vector_src.py

#cp /mnt/usbthumb/ti-code/audio_fin.dat /home/root/ti-code/audio_fin.dat
#cp /mnt/usbthumb/ti-code/filter_test_new.py /home/root/ti-code/filter_test_new.py

opkg install -force-reinstall /packageInstall/gr_dsp/gr-dsp_0.1-r0.1_armv7a.ipk
#opkg install -force-reinstall /packageInstall/gr_dsp/gr-dsp-dev_0.1-r0.1_armv7a.ipk


mv /usr/lib/python2.6/packages/gnuradio/dsp.py /usr/lib/python2.6/site-packages/gnuradio/dsp.py
mv /usr/lib/python2.6/packages/gnuradio/dsp.pyc /usr/lib/python2.6/site-packages/gnuradio/dsp.pyc
mv /usr/lib/python2.6/packages/gnuradio/dsp.pyo /usr/lib/python2.6/site-packages/gnuradio/dsp.pyo
mv /usr/lib/python2.6/packages/gnuradio/_dsp.so /usr/lib/python2.6/lib-dynload/_dsp.so
mv /usr/lib/python2.6/packages/gnuradio/_dsp.la /usr/lib/python2.6/lib-dynload/_dsp.la

umount /mnt/usbthumb
