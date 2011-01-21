gmake -s clean
del C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\BUILD\OMAP3530_0\EXPORT\DEBUG\loopAl2.out
del C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\BUILD\OMAP3530_0\EXPORT\DEBUG\loopAl2.out
gmake -s debug
copy C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\BUILD\OMAP3530_0\EXPORT\DEBUG\loopAl2.out C:\CCStudio_v3.3\MyProjects\milcom_beagleboard
copy C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\*.c C:\CCStudio_v3.3\MyProjects\milcom_beagleboard
copy C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\*.h C:\CCStudio_v3.3\MyProjects\milcom_beagleboard
copy C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\*.asm C:\CCStudio_v3.3\MyProjects\milcom_beagleboard

#copy C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\BUILD\OMAP3530_0\EXPORT\DEBUG\loopAl2.out E:\ti-code