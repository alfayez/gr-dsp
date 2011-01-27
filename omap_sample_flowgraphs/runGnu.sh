lpmOFF.xv5T
lpmON.xv5T
#./filter_test_new.py
#./filter_test_new.py > log.out
#./filter_test_vector_src.py > log.out

#./run_tests > log.out
#./run_tests

#./qa_howto.py > log.out
#./qa_howto_mic.py > log.out

#./qa_fir_ccf.py > log.out
#./qa_fir_ccf2.py > log.out
#./qa_fir_ccf2.py
#./qa_fir_ccf_mic.py > log.out

#./qa_fir_ccf3.py > log.out
#opcontrol --no-vmlinux
#opcontrol --start
#export GR_SCHEDULER=TPB
./qa_fir_ccf3.py
#opcontrol --dump
#opreport
#opcontrol --stop

#./qa_howto_mic.py
#./loopgppAl2 loopAl2.out 8192 1  
