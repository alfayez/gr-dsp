ifconfig eth0 10.0.0.7 netmask 255.255.252.0
ifconfig usb0 192.168.1.1

insmod /lib/modules/2.6.32/kernel/drivers/dsp/dsplinkk.ko
insmod /lib/modules/2.6.32/kernel/drivers/dsp/lpm_omap3530.ko
insmod /lib/modules/2.6.32/kernel/drivers/dsp/cmemk.ko phys_start=0x8C900000 phys_end=0x8D900000 pools=20x4096,10x131072,2x1048576
insmod /lib/modules/2.6.32/kernel/drivers/dsp/sdmak.ko

#/usr/share/gnuradio/examples/usrp/usrp_test_loop_lfsr.py 
