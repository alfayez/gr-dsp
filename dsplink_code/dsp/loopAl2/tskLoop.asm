;******************************************************************************
;* TMS320C6x C/C++ Codegen                                         PC v6.0.21 *
;* Date/Time created: Mon Nov 15 02:06:34 2010                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --disable:=sploop --endian=little --hll_source=on --mem_model:code=far --mem_model:data=far --predefine_memory_model_macros --quiet --silicon_version=6500 --symdebug:dwarf 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64x+                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed 1st, size 2nd                                  *
;*                       Based on options: -o3, -ms0                          *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 129                         *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("tskLoop.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.0.21 Copyright (c) 1996-2008 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_rf_data_size+0,32
	.field  	0,16			; _rf_data_size @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iter_count+0,32
	.field  	0,32			; _iter_count @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_first_entry+0,32
	.field  	0,32			; _first_entry @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_stallVar+0,32
	.field  	1,32			; _stallVar @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_stallCount+0,32
	.field  	0,32			; _stallCount @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data1_real_short+0,32
	.field  	0,16			; _iq_data1_real_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data1_imag_short+0,32
	.field  	0,16			; _iq_data1_imag_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_result_short+0,32
	.field  	0,16			; _iq_result_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data2_real_short+0,32
	.field  	0,16			; _iq_data2_real_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_data2_imag_short+0,32
	.field  	0,16			; _iq_data2_imag_short @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_iq_result_short_2+0,32
	.field  	0,16			; _iq_result_short_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_int+0,32
	.field  	0,32			; _iq_int @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_frac+0,32
	.field  	0,32			; _iq_frac @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_int_2+0,32
	.field  	0,32			; _iq_int_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_frac_2+0,32
	.field  	0,32			; _iq_frac_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_0+0,32
	.field  	0,16			; _offset_0 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_1+0,32
	.field  	0,16			; _offset_1 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_2+0,32
	.field  	0,16			; _offset_2 @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_offset_3+0,32
	.field  	0,16			; _offset_3 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_phase+0,32
	.field  	0,32			; _iq_phase @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_iq_phase2+0,32
	.field  	0,32			; _iq_phase2 @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("_nassert")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("__nassert")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("memcpy")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
$C$DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$3


$C$DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_hi")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("__hi")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
$C$DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$7


$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("_lo")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("__lo")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("_itod")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("__itod")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
$C$DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("_dotp2")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("__dotp2")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$14


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("_dotpn2")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("__dotpn2")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$17


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("_mem2_const")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("__mem2_const")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("_mem4_const")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("__mem4_const")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$355)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("_memd8_const")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("__memd8_const")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$374)
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
$C$DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("_memd8")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("__memd8")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$370)
	.dwattr $C$DW$26, DW_AT_declaration
	.dwattr $C$DW$26, DW_AT_external
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$26


$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("_packh2")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("__packh2")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$28


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("_packlh2")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("__packlh2")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$31


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_MEM_free")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$34


$C$DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_MEM_valloc")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$38


$C$DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_create")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_SIO_create")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
$C$DW$45	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$381)
	.dwendtag $C$DW$43


$C$DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_delete")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_SIO_delete")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
$C$DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$48


$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_issue")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_SIO_issue")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$50


$C$DW$55	.dwtag  DW_TAG_subprogram, DW_AT_name("SIO_reclaim")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_SIO_reclaim")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
$C$DW$56	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$112)
	.dwendtag $C$DW$55


$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("SetReason")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_SetReason")
	.dwattr $C$DW$59, DW_AT_declaration
	.dwattr $C$DW$59, DW_AT_external
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$59


$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$65	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$66	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$63


$C$DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("_FtoIQN")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("__FtoIQN")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external
$C$DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$16)
$C$DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$67


$C$DW$70	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNmpy")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("__IQNmpy")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$70, DW_AT_declaration
	.dwattr $C$DW$70, DW_AT_external
$C$DW$71	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$73	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$70


$C$DW$74	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNrmpy")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("__IQNrmpy")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
$C$DW$75	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$290)
	.dwendtag $C$DW$74


$C$DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNdiv")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("__IQNdiv")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$290)
	.dwendtag $C$DW$78


$C$DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNsin")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("__IQNsin")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$82


$C$DW$85	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNcos")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("__IQNcos")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$85


$C$DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNatan2")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("__IQNatan2")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_external
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$88


$C$DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNint")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("__IQNint")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$92


$C$DW$95	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNfrac")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("__IQNfrac")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$95, DW_AT_declaration
	.dwattr $C$DW$95, DW_AT_external
$C$DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$95


$C$DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQNabs")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("__IQNabs")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$98, DW_AT_declaration
	.dwattr $C$DW$98, DW_AT_external
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
	.dwendtag $C$DW$98

$C$DW$100	.dwtag  DW_TAG_variable, DW_AT_name("SIO_ATTRS")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_SIO_ATTRS")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$380)
	.dwattr $C$DW$100, DW_AT_declaration
	.dwattr $C$DW$100, DW_AT_external
$C$DW$101	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$101, DW_AT_declaration
	.dwattr $C$DW$101, DW_AT_external
$C$DW$102	.dwtag  DW_TAG_variable, DW_AT_name("POOL")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_POOL")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$397)
	.dwattr $C$DW$102, DW_AT_declaration
	.dwattr $C$DW$102, DW_AT_external
	.global	_rf_data_size
_rf_data_size:	.usect	".far",2,2
$C$DW$103	.dwtag  DW_TAG_variable, DW_AT_name("rf_data_size")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_rf_data_size")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_addr _rf_data_size]
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$103, DW_AT_external
	.global	_fir_coeff
_fir_coeff:	.usect	".far",32768,8
$C$DW$104	.dwtag  DW_TAG_variable, DW_AT_name("fir_coeff")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_fir_coeff")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_addr _fir_coeff]
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$104, DW_AT_external
	.global	_filt_hist
_filt_hist:	.usect	".far",16384,8
$C$DW$105	.dwtag  DW_TAG_variable, DW_AT_name("filt_hist")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_filt_hist")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_addr _filt_hist]
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$105, DW_AT_external
	.global	_buffer_interp
_buffer_interp:	.usect	".far",65536,8
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("buffer_interp")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_buffer_interp")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_addr _buffer_interp]
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$106, DW_AT_external
	.global	_fir_coeff_size
_fir_coeff_size:	.usect	".far",4,8
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("fir_coeff_size")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_fir_coeff_size")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_addr _fir_coeff_size]
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$107, DW_AT_external
	.global	_scaling_factor
_scaling_factor:	.usect	".far",4,8
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("scaling_factor")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_scaling_factor")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_addr _scaling_factor]
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$108, DW_AT_external
	.global	_interpolation_factor
_interpolation_factor:	.usect	".far",4,8
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("interpolation_factor")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_interpolation_factor")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_addr _interpolation_factor]
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$109, DW_AT_external
	.global	_decimation_factor
_decimation_factor:	.usect	".far",4,8
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("decimation_factor")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_decimation_factor")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_addr _decimation_factor]
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$110, DW_AT_external
	.global	_block_type_array
_block_type_array:	.usect	".far",4,8
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("block_type_array")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_block_type_array")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_addr _block_type_array]
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$111, DW_AT_external
	.global	_iter_count
_iter_count:	.usect	".far",4,4
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("iter_count")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_iter_count")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_addr _iter_count]
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$112, DW_AT_external
	.global	_first_entry
_first_entry:	.usect	".far",4,4
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("first_entry")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_first_entry")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_addr _first_entry]
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$113, DW_AT_external
	.global	_stallVar
_stallVar:	.usect	".far",4,4
$C$DW$114	.dwtag  DW_TAG_variable, DW_AT_name("stallVar")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_stallVar")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_addr _stallVar]
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$114, DW_AT_external
	.global	_stallCount
_stallCount:	.usect	".far",4,4
$C$DW$115	.dwtag  DW_TAG_variable, DW_AT_name("stallCount")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_stallCount")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_addr _stallCount]
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$115, DW_AT_external
	.global	_iq_data1_real_short
_iq_data1_real_short:	.usect	".far",2,2
$C$DW$116	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_real_short")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_iq_data1_real_short")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_addr _iq_data1_real_short]
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$116, DW_AT_external
	.global	_iq_data1_imag_short
_iq_data1_imag_short:	.usect	".far",2,2
$C$DW$117	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_imag_short")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_iq_data1_imag_short")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_addr _iq_data1_imag_short]
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$117, DW_AT_external
	.global	_iq_result_short
_iq_result_short:	.usect	".far",2,2
$C$DW$118	.dwtag  DW_TAG_variable, DW_AT_name("iq_result_short")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_iq_result_short")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_addr _iq_result_short]
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$118, DW_AT_external
	.global	_iq_data2_real_short
_iq_data2_real_short:	.usect	".far",2,2
$C$DW$119	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_real_short")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_iq_data2_real_short")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_addr _iq_data2_real_short]
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$119, DW_AT_external
	.global	_iq_data2_imag_short
_iq_data2_imag_short:	.usect	".far",2,2
$C$DW$120	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_imag_short")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_iq_data2_imag_short")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_addr _iq_data2_imag_short]
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$120, DW_AT_external
	.global	_iq_result_short_2
_iq_result_short_2:	.usect	".far",2,2
$C$DW$121	.dwtag  DW_TAG_variable, DW_AT_name("iq_result_short_2")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_iq_result_short_2")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _iq_result_short_2]
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$121, DW_AT_external
	.global	_iq_scale
_iq_scale:	.usect	".far",4,4
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("iq_scale")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_iq_scale")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_addr _iq_scale]
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$122, DW_AT_external
	.global	_iq_conj
_iq_conj:	.usect	".far",4,4
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("iq_conj")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_iq_conj")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_addr _iq_conj]
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$123, DW_AT_external
	.global	_iq_data1_real
_iq_data1_real:	.usect	".far",4,4
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_real")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_iq_data1_real")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_addr _iq_data1_real]
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$124, DW_AT_external
	.global	_iq_data1_imag
_iq_data1_imag:	.usect	".far",4,4
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("iq_data1_imag")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_iq_data1_imag")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_addr _iq_data1_imag]
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$125, DW_AT_external
	.global	_iq_data2_real
_iq_data2_real:	.usect	".far",4,4
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_real")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_iq_data2_real")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_addr _iq_data2_real]
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$126, DW_AT_external
	.global	_iq_data2_imag
_iq_data2_imag:	.usect	".far",4,4
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("iq_data2_imag")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_iq_data2_imag")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_addr _iq_data2_imag]
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$127, DW_AT_external
	.global	_iq_result
_iq_result:	.usect	".far",4,4
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("iq_result")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_iq_result")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_addr _iq_result]
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$128, DW_AT_external
	.global	_iq_result2
_iq_result2:	.usect	".far",4,4
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("iq_result2")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_iq_result2")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_addr _iq_result2]
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$129, DW_AT_external
	.global	_iq_result_2
_iq_result_2:	.usect	".far",4,4
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("iq_result_2")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_iq_result_2")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_addr _iq_result_2]
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$130, DW_AT_external
	.global	_iq_result2_2
_iq_result2_2:	.usect	".far",4,4
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("iq_result2_2")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_iq_result2_2")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_addr _iq_result2_2]
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$131, DW_AT_external
	.global	_result1
_result1:	.usect	".far",4,4
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("result1")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_result1")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_addr _result1]
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$295)
	.dwattr $C$DW$132, DW_AT_external
	.global	_result2
_result2:	.usect	".far",4,4
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("result2")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_result2")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_addr _result2]
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$295)
	.dwattr $C$DW$133, DW_AT_external
	.global	_iq_int
_iq_int:	.usect	".far",4,4
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("iq_int")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_iq_int")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_addr _iq_int]
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$134, DW_AT_external
	.global	_iq_frac
_iq_frac:	.usect	".far",4,4
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("iq_frac")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_iq_frac")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_addr _iq_frac]
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$135, DW_AT_external
	.global	_iq_int_2
_iq_int_2:	.usect	".far",4,4
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("iq_int_2")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_iq_int_2")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_addr _iq_int_2]
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$136, DW_AT_external
	.global	_iq_frac_2
_iq_frac_2:	.usect	".far",4,4
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("iq_frac_2")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_iq_frac_2")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_addr _iq_frac_2]
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$137, DW_AT_external
	.global	_offset_0
_offset_0:	.usect	".far",2,2
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("offset_0")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_offset_0")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_addr _offset_0]
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$138, DW_AT_external
	.global	_offset_1
_offset_1:	.usect	".far",2,2
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("offset_1")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_offset_1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_addr _offset_1]
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$139, DW_AT_external
	.global	_offset_2
_offset_2:	.usect	".far",2,2
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("offset_2")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_offset_2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_addr _offset_2]
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$140, DW_AT_external
	.global	_offset_3
_offset_3:	.usect	".far",2,2
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("offset_3")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_offset_3")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_addr _offset_3]
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$141, DW_AT_external
	.global	_iq_phase
_iq_phase:	.usect	".far",4,4
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("iq_phase")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_iq_phase")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_addr _iq_phase]
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$142, DW_AT_external
	.global	_iq_phase2
_iq_phase2:	.usect	".far",4,4
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("iq_phase2")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_iq_phase2")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_addr _iq_phase2]
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$143, DW_AT_external
	.global	_iq_sensitivity_mod
_iq_sensitivity_mod:	.usect	".far",4,4
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("iq_sensitivity_mod")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_iq_sensitivity_mod")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_addr _iq_sensitivity_mod]
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$144, DW_AT_external
	.global	_fm_phase_limit
_fm_phase_limit:	.usect	".far",4,4
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("fm_phase_limit")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_fm_phase_limit")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_addr _fm_phase_limit]
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$145, DW_AT_external
	.global	_fm_2_phase_limit
_fm_2_phase_limit:	.usect	".far",4,4
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("fm_2_phase_limit")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_fm_2_phase_limit")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_addr _fm_2_phase_limit]
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$146, DW_AT_external
	.global	_d_phase_limit_temp
_d_phase_limit_temp:	.usect	".far",4,4
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("d_phase_limit_temp")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_d_phase_limit_temp")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_addr _d_phase_limit_temp]
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$147, DW_AT_external
	.global	_iq_iout
_iq_iout:	.usect	".far",4,4
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("iq_iout")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_iq_iout")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_addr _iq_iout]
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$148, DW_AT_external
	.global	_iq_qout
_iq_qout:	.usect	".far",4,4
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("iq_qout")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_iq_qout")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_addr _iq_qout]
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$149, DW_AT_external
	.global	_iq_in
_iq_in:	.usect	".far",4,4
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("iq_in")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_iq_in")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_addr _iq_in]
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$150, DW_AT_external
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("xferBufSize")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_xferBufSize")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$151, DW_AT_declaration
	.dwattr $C$DW$151, DW_AT_external
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("numTransfers")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_numTransfers")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$152, DW_AT_declaration
	.dwattr $C$DW$152, DW_AT_external
;	C:\ti-tools\C6000\bin\opt6x.exe C:\\DOCUME~1\\jemtest\\LOCALS~1\\Temp\\013643 C:\\DOCUME~1\\jemtest\\LOCALS~1\\Temp\\013645 
	.sect	".text"
	.global	_convolution

$C$DW$153	.dwtag  DW_TAG_subprogram, DW_AT_name("convolution")
	.dwattr $C$DW$153, DW_AT_low_pc(_convolution)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_convolution")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$153, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$153, DW_AT_TI_begin_line(0x2a7)
	.dwattr $C$DW$153, DW_AT_TI_begin_column(0x0c)
	.dwpsn	file "tskLoop.c",line 680,column 1,is_stmt,address _convolution

	.dwfde $C$DW$CIE, _convolution

;******************************************************************************
;* FUNCTION NAME: convolution                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,SP,B16,B17 *
;*   Regs Used         : A0,A3,A4,A5,A6,A8,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,DP,  *
;*                           SP,B16,B17                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_convolution:
;** --------------------------------------------------------------------------*
;**  	-----------------------    L$1 = length1+length2-1;
;** 681	-----------------------    i = 0;
;**  	-----------------------    #pragma MUST_ITERATE(10, 10, 10)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |680| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in1")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_in1")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg4]
$C$DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length1")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_length1")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg20]
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_name("in2")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_in2")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg6]
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_name("length2")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_length2")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg22]
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg8]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("$O$C2")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("$O$C2")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg22]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg21]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg3]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("in1")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_in1")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x35]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("length1")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_length1")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x36]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("in2")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_in2")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg25]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("length2")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_length2")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg22]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("out")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg23]
$C$DW$167	.dwtag  DW_TAG_variable, DW_AT_name("$O$L2")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("$O$L2")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg0]
$C$DW$168	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg4]

           ADD     .L2     B6,B4,B0
||         MV      .S2X    A6,B9             ; |680| 

           MV      .L2X    A4,B16            ; |680| 

           MV      .L2     B4,B17            ; |680| 
||         SUB     .L1X    B0,1,A4
||         MV      .S2X    A8,B7             ; |680| 

	.dwpsn	file "tskLoop.c",line 681,column 6,is_stmt
           ZERO    .L1     A3                ; |681| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L1
;** --------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_convolution$2$B:
;**	-----------------------g2:
;** 686	-----------------------    if ( length1 <= 0 ) goto g7;
	.dwpsn	file "tskLoop.c",line 686,column 13,is_stmt
           CMPGT   .L2     B17,0,B0          ; |686| 
   [!B0]   BNOP    .S1     $C$L5,5           ; |686| 
           ; BRANCHCC OCCURS {$C$L5}         ; |686| 
$C$DW$L$_convolution$2$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_convolution$3$B:
;** 688	-----------------------    L$2 = length1;
;** 686	-----------------------    j = 0;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g4:
;** 688	-----------------------    if ( (C$2 = i-j) < 0 ) goto g6;
;** 691	-----------------------    out[i] = out[i]+_mpy(in1[j], in2[C$2]);
;**	-----------------------g6:
;** 686	-----------------------    ++j;
;** 686	-----------------------    if ( --L$2 ) goto g4;
	.dwpsn	file "tskLoop.c",line 688,column 4,is_stmt
           MV      .L1X    B17,A5            ; |688| 
	.dwpsn	file "tskLoop.c",line 686,column 8,is_stmt

           ZERO    .L2     B5                ; |686| 
||         SUB     .L1     A5,1,A0
||         DINT                              ; interrupts off
||         MV      .D2X    A3,B4

           SUB     .L2X    A3,B5,B6          ; |688| 
           CMPLT   .L2     B6,0,B1           ; |688| (P) <0,1> 
$C$DW$L$_convolution$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 686
;*      Loop opening brace source line   : 687
;*      Loop closing brace source line   : 695
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 9
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        0     
;*      .D units                     0        4*    
;*      .M units                     0        1     
;*      .X cross paths               0        0     
;*      .T address paths             0        4*    
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 9  Did not find schedule
;*         ii = 10 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*                               | *********      *               |
;*       1: |*                               | ***** ***      *               |
;*       2: |*                               | ***** ***      *               |
;*       3: |*                               | ***** ***      *               |
;*       4: |*                               | ***** ***      *               |
;*       5: |*                               | ***** ***      *               |
;*       6: |*                               | ***** ***      *               |
;*       7: |*                               | ***** ***      *               |
;*       8: |*                               | *********      *               |
;*       9: |*                               |**********      *               |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C48:
;*   0              SUB     .L2     B4,B5,B6          ; |688| 
;*   1              CMPLT   .L2     B6,0,B1           ; |688| 
;*   2      [!B1]   LDH     .D2T2   *+B9[B6],B8       ; |691|  ^ 
;*   3      [!B1]   LDH     .D2T2   *+B16[B5],B3      ; |691|  ^ 
;*   4      [!B1]   LDH     .D2T2   *+B7[B4],B2       ; |691| 
;*   5              NOP             1
;*   6      [ A0]   BDEC    .S1     $C$C48,A0         ; |686| 
;*   7              NOP             1
;*   8              MPY     .M2     B3,B8,B6          ; |691|  ^ 
;*   9              ADD     .L2     1,B5,B5           ; |686| 
;*  10              ADD     .S2     B6,B2,B0          ; |691|  ^ 
;*  11      [!B1]   STH     .D2T2   B0,*+B7[B4]       ; |691|  ^ 
;*  12              ; BRANCHCC OCCURS {$C$C48}        ; |686| 
;*----------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP KERNEL
$C$DW$L$_convolution$5$B:
   [!B1]   LDH     .D2T2   *+B9[B6],B8       ; |691| <0,2>  ^ 
   [!B1]   LDH     .D2T2   *+B16[B5],B3      ; |691| <0,3>  ^ 
   [!B1]   LDH     .D2T2   *+B7[B4],B2       ; |691| <0,4> 
           NOP             1
   [ A0]   BDEC    .S1     $C$L3,A0          ; |686| <0,6> 
           NOP             1
           MPY     .M2     B3,B8,B6          ; |691| <0,8>  ^ 
           ADD     .L2     1,B5,B5           ; |686| <0,9> 

           ADD     .S2     B6,B2,B0          ; |691| <0,10>  ^ 
||         SUB     .L2     B4,B5,B6          ; |688| <1,0> 

   [!B1]   STH     .D2T2   B0,*+B7[B4]       ; |691| <0,11>  ^ 
||         CMPLT   .L2     B6,0,B1           ; |688| <1,1> 

$C$DW$L$_convolution$5$E:
;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_convolution$7$B:

           MV      .L1X    B4,A3
||         RINT                              ; interrupts on

$C$DW$L$_convolution$7$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_convolution$8$B:
;**	-----------------------g7:
;** 683	-----------------------    ++i;
;** 683	-----------------------    if ( --L$1 ) goto g2;
	.dwpsn	file "tskLoop.c",line 683,column 35,is_stmt
           ADD     .L1     1,A3,A3           ; |683| 
	.dwpsn	file "tskLoop.c",line 683,column 12,is_stmt

           SUB     .L2X    A4,1,B0           ; |683| 
||         SUB     .L1     A4,1,A4           ; |683| 

   [ B0]   BNOP    .S1     $C$L1,5           ; |683| 
           ; BRANCHCC OCCURS {$C$L1}         ; |683| 
$C$DW$L$_convolution$8$E:
;** --------------------------------------------------------------------------*
;** 697	-----------------------    return 1;
	.dwpsn	file "tskLoop.c",line 697,column 2,is_stmt
           MVK     .L1     0x1,A4            ; |697| 
	.dwpsn	file "tskLoop.c",line 699,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |699| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           NOP             4
           RETNOP  .S2     B3,5              ; |699| 
           ; BRANCH OCCURS {B3}              ; |699| 

$C$DW$169	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$169, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L1:1:1289804794")
	.dwattr $C$DW$169, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$169, DW_AT_TI_begin_line(0x2ab)
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x2b8)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$_convolution$2$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$_convolution$2$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$_convolution$3$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$_convolution$3$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$_convolution$7$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$_convolution$7$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$_convolution$8$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$_convolution$8$E)

$C$DW$174	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$174, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L3:2:1289804794")
	.dwattr $C$DW$174, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$174, DW_AT_TI_begin_line(0x2ae)
	.dwattr $C$DW$174, DW_AT_TI_end_line(0x2b7)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$_convolution$5$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$_convolution$5$E)
	.dwendtag $C$DW$174

	.dwendtag $C$DW$169

	.dwattr $C$DW$153, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x2bb)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	".text"
	.global	_DSP_fir_cplx_test

$C$DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP_fir_cplx_test")
	.dwattr $C$DW$176, DW_AT_low_pc(_DSP_fir_cplx_test)
	.dwattr $C$DW$176, DW_AT_high_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_DSP_fir_cplx_test")
	.dwattr $C$DW$176, DW_AT_external
	.dwattr $C$DW$176, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$176, DW_AT_TI_begin_line(0x2bc)
	.dwattr $C$DW$176, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "tskLoop.c",line 707,column 1,is_stmt,address _DSP_fir_cplx_test

	.dwfde $C$DW$CIE, _DSP_fir_cplx_test

;******************************************************************************
;* FUNCTION NAME: DSP_fir_cplx_test                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,*
;*                           A23,A24,A25,A26,A27,A28,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_DSP_fir_cplx_test:
;** --------------------------------------------------------------------------*
;** 707	-----------------------    x = x;
;** 707	-----------------------    h = h;
;** 707	-----------------------    r = r;
;** 737	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$74 = x-4;
;**  	-----------------------    U$133 = r;
;** 737	-----------------------    L$1 = nr*2+7>>3;
;**  	-----------------------    U$35 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 268435455, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |707| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STDW    .D2T1   A11:A10,*SP--     ; |707| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 11, -4
	.dwcfi	save_reg_to_mem, 10, -8
$C$DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg4]
$C$DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("h")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg20]
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_name("r")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_r")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg6]
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nh")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg22]
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("nr")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_nr")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg8]
$C$DW$182	.dwtag  DW_TAG_variable, DW_AT_name("$O$C18")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("$O$C18")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x35]
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("$O$C19")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("$O$C19")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("$O$C20")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("$O$C20")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x29]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("$O$C21")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("$O$C21")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x27]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("$O$C22")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("$O$C22")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x39]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("$O$C23")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("$O$C23")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("$O$C24")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("$O$C24")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x37]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("$O$I2")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("$O$I2")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg17]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("$O$I3")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("$O$I3")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg6]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("$O$I4")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("$O$I4")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg16]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("$O$I5")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("$O$I5")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg10]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("$O$I6")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("$O$I6")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg19]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("$O$I7")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("$O$I7")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg8]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("$O$I8")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("$O$I8")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg3]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("$O$I9")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("$O$I9")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg9]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("$O$I10")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("$O$I10")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg18]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("$O$I11")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("$O$I11")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg22]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("$O$I12")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("$O$I12")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg7]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("$O$I13")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("$O$I13")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x25]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("$O$I14")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("$O$I14")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg20]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("$O$I15")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("$O$I15")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg25]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("$O$I16")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("$O$I16")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg23]
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("$O$I17")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("$O$I17")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x26]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("h")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_h")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("x")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("nh")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_nh")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x30]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("nr")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_nr")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$352)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg1]
$C$DW$209	.dwtag  DW_TAG_variable, DW_AT_name("$O$L2")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("$O$L2")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg0]
$C$DW$210	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x31]
$C$DW$211	.dwtag  DW_TAG_variable, DW_AT_name("$O$U74")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("$O$U74")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$374)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$212	.dwtag  DW_TAG_variable, DW_AT_name("$O$U35")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("$O$U35")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$213	.dwtag  DW_TAG_variable, DW_AT_name("$O$U133")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("$O$U133")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$214	.dwtag  DW_TAG_variable, DW_AT_name("$O$U75")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("$O$U75")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg5]
$C$DW$215	.dwtag  DW_TAG_variable, DW_AT_name("$O$U37")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("$O$U37")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg21]
$C$DW$216	.dwtag  DW_TAG_variable, DW_AT_name("$O$U30")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("$O$U30")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg24]

           MV      .L2X    A6,B22            ; |707| 
||         MV      .L1X    B6,A27            ; |707| 

           MV      .L1X    B4,A24            ; |707| 
||         MV      .S1     A8,A1             ; |707| 
||         SUB     .D1     A4,4,A26
||         MV      .L2X    A4,B23            ; |707| 

	.dwpsn	file "tskLoop.c",line 737,column 9,is_stmt
           MVK     .L1     7,A0              ; |737| 
           ADDAH   .D1     A0,A1,A0          ; |737| 

           SHR     .S1     A0,3,A28          ; |737| 
||         ZERO    .L1     A25

;** --------------------------------------------------------------------------*
$C$L6:    
           MV      .L2X    A24,B8

           ADD     .L2X    A25,B23,B5
||         ADD     .L1     A25,A26,A3

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L7
;** --------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_DSP_fir_cplx_test$3$B:
;**	-----------------------g2:
;** 753	-----------------------    // LOOP BELOW UNROLLED BY FACTOR(2)
;**  	-----------------------    U$30 = h;
;**  	-----------------------    U$37 = x+U$35;
;**  	-----------------------    U$75 = U$74+U$35;
;** 753	-----------------------    L$2 = nh>>1;
;** 753	-----------------------    I$17 = I$16 = I$15 = I$14 = I$13 = I$12 = I$11 = I$10 = I$9 = I$8 = I$7 = I$6 = I$5 = I$4 = I$3 = I$2 = 0;
;**  	-----------------------    #pragma MUST_ITERATE(2, 1073741823, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4098u)
;**	-----------------------g3:
;** 765	-----------------------    C$20 = _memd8((void *)U$30);
;** 765	-----------------------    C$24 = _memd8((void *)U$37);
;** 765	-----------------------    I$2 -= _dotpn2((int)_lo(C$24), (int)_lo(C$20));
;** 766	-----------------------    I$4 -= _dotpn2((int)_hi(C$24), (int)_lo(C$20));
;** 768	-----------------------    C$23 = _packlh2(_lo(C$20), _lo(C$20));
;** 768	-----------------------    I$6 += _dotp2((int)_lo(C$24), (int)C$23);
;** 769	-----------------------    I$8 += _dotp2((int)_hi(C$24), (int)C$23);
;** 765	-----------------------    C$22 = _memd8((void *)((const double *)U$37+8));
;** 765	-----------------------    I$10 -= _dotpn2((int)_lo(C$22), (int)_lo(C$20));
;** 766	-----------------------    I$12 -= _dotpn2((int)_hi(C$22), (int)_lo(C$20));
;** 768	-----------------------    I$14 += _dotp2((int)_lo(C$22), (int)C$23);
;** 769	-----------------------    I$16 += _dotp2((int)_hi(C$22), (int)C$23);
;** 765	-----------------------    C$21 = _memd8((void *)U$75);
;** 765	-----------------------    I$3 -= _dotpn2((int)_lo(C$21), (int)_hi(C$20));
;** 766	-----------------------    I$5 -= _dotpn2((int)_hi(C$21), (int)_hi(C$20));
;** 768	-----------------------    C$19 = _packlh2(_hi(C$20), _hi(C$20));
;** 768	-----------------------    I$7 += _dotp2((int)_lo(C$21), (int)C$19);
;** 769	-----------------------    I$9 += _dotp2((int)_hi(C$21), (int)C$19);
;** 765	-----------------------    C$18 = _memd8((void *)((const double *)U$37+4));
;** 765	-----------------------    I$11 -= _dotpn2((int)_lo(C$18), (int)_hi(C$20));
;** 766	-----------------------    I$13 -= _dotpn2((int)_hi(C$18), (int)_hi(C$20));
;** 768	-----------------------    I$15 += _dotp2((int)_lo(C$18), (int)C$19);
;** 769	-----------------------    I$17 += _dotp2((int)_hi(C$18), (int)C$19);
;** 748	-----------------------    U$30 += 4;
;** 748	-----------------------    U$37 -= 4;
;** 748	-----------------------    U$75 -= 4;
;** 748	-----------------------    if ( --L$2 ) goto g3;
	.dwpsn	file "tskLoop.c",line 753,column 13,is_stmt

           ZERO    .L1     A10               ; |753| 
||         ZERO    .S1     A9                ; |753| 
||         ZERO    .D1     A8                ; |753| 
||         ZERO    .L2     B3                ; |753| 
||         DINT                              ; interrupts off
||         ZERO    .D2     B9                ; |753| 

           ADD     .L1     8,A3,A5           ; undo prolog elim. side-effects
||         ZERO    .S1     A3                ; |753| 
||         ZERO    .D1     A17               ; |753| 
||         ZERO    .L2     B4                ; |753| 
||         ZERO    .S2     B6                ; |753| 
||         ZERO    .D2     B7                ; |753| 

           ZERO    .L2     B2                ; |753| 
||         ZERO    .L1     A6                ; |753| 
||         ZERO    .S1     A7                ; |753| 
||         MV      .D1X    B8,A4
||         ZERO    .S2     B0                ; |753| 
||         ZERO    .D2     B1                ; |753| 

           MVK     .L1     0x2,A1            ; init prolog collapse predicate
||         ZERO    .D1     A16               ; |753| 
||         SHR     .S1     A27,1,A0          ; |753| 

           MVK     .L1     0x1,A2            ; init prolog collapse predicate
$C$DW$L$_DSP_fir_cplx_test$3$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 748
;*      Loop opening brace source line   : 748
;*      Loop closing brace source line   : 770
;*      Loop Unroll Multiple             : 2x
;*      Known Minimum Trip Count         : 2                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 3
;*      Unpartitioned Resource Bound     : 8
;*      Partitioned Resource Bound(*)    : 8
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        0     
;*      .D units                     2        3     
;*      .M units                     8*       8*    
;*      .X cross paths               4        8*    
;*      .T address paths             5        5     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           2        0     (.L or .S unit)
;*      Addition ops (.LSD)          8        8     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             2        0     
;*      Bound(.L .S .D .LS .LSD)     5        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Schedule found with 3 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |************    **** ***        |**********      *  ***          |
;*       1: |************    ****  **        |**********      *  * *          |
;*       2: |************    *** ****        |**********      *  *            |
;*       3: |************    *** ***         |**********        **            |
;*       4: |************    **  ****        |**********      ****            |
;*       5: |************    **  ****        |**********      ****            |
;*       6: |************    **  ****        |**********      * ****          |
;*       7: |************    ********        |**********      *  ***          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Epilog not entirely removed
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 2
;*      Minimum required memory pad : 8 bytes
;*      Minimum threshold value     : -mh16
;*
;*      Minimum safe trip count     : 1 (after unrolling)
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C95:
;*   0              LDNDW   .D1T1   *A4++(8),A21:A20  ; |765| 
;*   1              LDNDW   .D2T2   *B5--(8),B19:B18  ; |765| 
;*   2              LDNDW   .D2T2   *+B5(12),B17:B16  ; |765| 
;*   3              NOP             1
;*   4              LDNDW   .D2T2   *+B5(16),B21:B20  ; |765| 
;*   5              LDNDW   .D1T1   *A5--(8),A19:A18  ; |765| 
;*   6              DOTPN2  .M2X    B18,A20,B8        ; |765| 
;*     ||           PACKLH2 .L1     A20,A20,A23       ; |768| 
;*     ||           PACKLH2 .S1     A21,A21,A22       ; |768| 
;*   7              DOTPN2  .M2X    B19,A20,B8        ; |766| 
;*     ||           DOTP2   .M1X    B17,A22,A11       ; |769| 
;*   8              DOTPN2  .M2X    B16,A21,B8        ; |765| 
;*     ||           DOTPN2  .M1X    B17,A21,A11       ; |766| 
;*   9              DOTP2   .M2X    B18,A23,B8        ; |768| 
;*     ||           DOTPN2  .M1X    B21,A20,A11       ; |766| 
;*  10              SUB     .L2     B1,B8,B1          ; |765| 
;*     ||           DOTPN2  .M2X    B20,A20,B8        ; |765| 
;*     ||           DOTPN2  .M1     A18,A21,A11       ; |765| 
;*  11              SUB     .L2     B0,B8,B0          ; |766| 
;*     ||           DOTP2   .M2X    B20,A23,B8        ; |768| 
;*     ||           DOTPN2  .M1     A19,A21,A11       ; |766| 
;*     ||           ADD     .L1     A11,A17,A17       ; |769| 
;*  12              DOTP2   .M2X    B21,A23,B8        ; |769| 
;*     ||           DOTP2   .M1     A19,A22,A11       ; |769| 
;*     ||           SUB     .L2     B6,B8,B6          ; |765| 
;*     ||           SUB     .L1     A16,A11,A16       ; |766| 
;*  13              ADD     .L2     B8,B3,B3          ; |768| 
;*     ||           DOTP2   .M1X    B19,A23,A11       ; |769| 
;*     ||           SUB     .L1     A7,A11,A7         ; |766| 
;*     ||           DOTP2   .M2X    B16,A22,B8        ; |768| 
;*     ||   [ A0]   BDEC    .S1     $C$C95,A0         ; |748| 
;*  14              SUB     .L2     B2,B8,B2          ; |765| 
;*     ||           SUB     .D1     A6,A11,A6         ; |765| 
;*     ||           DOTP2   .M1     A18,A22,A11       ; |768| 
;*  15              ADD     .L2     B8,B4,B4          ; |768| 
;*     ||           SUB     .L1     A10,A11,A10       ; |766| 
;*  16              ADD     .L2     B8,B7,B7          ; |769| 
;*     ||           ADD     .L1     A11,A9,A9         ; |769| 
;*  17              ADD     .L1     A11,A3,A3         ; |769| 
;*     ||           ADD     .L2     B8,B9,B9          ; |768| 
;*  18              ADD     .D1     A11,A8,A8         ; |768| 
;*  19              ; BRANCHCC OCCURS {$C$C95}        ; |748| 
;*----------------------------------------------------------------------------*
$C$L8:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L9:    ; PIPED LOOP KERNEL
$C$DW$L$_DSP_fir_cplx_test$5$B:

   [!A1]   SUB     .L2     B0,B8,B0          ; |766| <0,11> 
||         DOTP2   .M2X    B20,A23,B8        ; |768| <0,11> 
||         DOTPN2  .M1     A19,A21,A11       ; |766| <0,11> 
|| [!A1]   ADD     .L1     A11,A17,A17       ; |769| <0,11> 

   [!A1]   SUB     .L2     B6,B8,B6          ; |765| <0,12> 
||         DOTP2   .M2X    B21,A23,B8        ; |769| <0,12> 
||         DOTP2   .M1     A19,A22,A11       ; |769| <0,12> 
|| [!A1]   SUB     .L1     A16,A11,A16       ; |766| <0,12> 
|| [!A2]   LDNDW   .D2T2   *+B5(16),B21:B20  ; |765| <1,4> 

   [!A1]   ADD     .L2     B8,B3,B3          ; |768| <0,13> 
||         DOTP2   .M2X    B16,A22,B8        ; |768| <0,13> 
|| [ A0]   BDEC    .S1     $C$L9,A0          ; |748| <0,13> 
||         DOTP2   .M1X    B19,A23,A11       ; |769| <0,13> 
|| [!A1]   SUB     .L1     A7,A11,A7         ; |766| <0,13> 
||         LDNDW   .D1T1   *A5--(8),A19:A18  ; |765| <1,5> 

   [!A1]   SUB     .L2     B2,B8,B2          ; |765| <0,14> 
||         DOTP2   .M1     A18,A22,A11       ; |768| <0,14> 
|| [!A1]   SUB     .D1     A6,A11,A6         ; |765| <0,14> 
||         DOTPN2  .M2X    B18,A20,B8        ; |765| <1,6> 
||         PACKLH2 .L1     A20,A20,A23       ; |768| <1,6> 
||         PACKLH2 .S1     A21,A21,A22       ; |768| <1,6> 

   [!A1]   ADD     .L2     B8,B4,B4          ; |768| <0,15> 
|| [!A1]   SUB     .L1     A10,A11,A10       ; |766| <0,15> 
||         DOTPN2  .M2X    B19,A20,B8        ; |766| <1,7> 
||         DOTP2   .M1X    B17,A22,A11       ; |769| <1,7> 

   [!A1]   ADD     .L2     B8,B7,B7          ; |769| <0,16> 
|| [!A1]   ADD     .L1     A11,A9,A9         ; |769| <0,16> 
||         DOTPN2  .M2X    B16,A21,B8        ; |765| <1,8> 
||         DOTPN2  .M1X    B17,A21,A11       ; |766| <1,8> 
||         LDNDW   .D1T1   *A4++(8),A21:A20  ; |765| <2,0> 

   [!A1]   ADD     .L2     B8,B9,B9          ; |768| <0,17> 
|| [!A1]   ADD     .L1     A11,A3,A3         ; |769| <0,17> 
||         DOTP2   .M2X    B18,A23,B8        ; |768| <1,9> 
||         DOTPN2  .M1X    B21,A20,A11       ; |766| <1,9> 
||         LDNDW   .D2T2   *B5--(8),B19:B18  ; |765| <2,1> 

   [ A2]   SUB     .L1     A2,1,A2           ; <0,18> 
|| [ A1]   SUB     .S1     A1,1,A1           ; <0,18> 
|| [!A1]   ADD     .D1     A11,A8,A8         ; |768| <0,18> 
|| [!A2]   SUB     .L2     B1,B8,B1          ; |765| <1,10> 
||         DOTPN2  .M2X    B20,A20,B8        ; |765| <1,10> 
||         DOTPN2  .M1     A18,A21,A11       ; |765| <1,10> 
||         LDNDW   .D2T2   *+B5(12),B17:B16  ; |765| <2,2> 

$C$DW$L$_DSP_fir_cplx_test$5$E:
;** --------------------------------------------------------------------------*
$C$L10:    ; PIPED LOOP EPILOG
;** 777	-----------------------    _memd8((void *)U$133) = _itod(_packh2((unsigned)((I$8+I$9)*2), (unsigned)((I$4+I$5)*2)), _packh2((unsigned)((I$6+I$7)*2), (unsigned)((I$2+I$3)*2)));
;** 777	-----------------------    _memd8((void *)((double *)U$133+8)) = _itod(_packh2((unsigned)((I$16+I$17)*2), (unsigned)((I$12+I$13)*2)), _packh2((unsigned)((I$14+I$15)*2), (unsigned)((I$10+I$11)*2)));
;** 733	-----------------------    U$35 += 16;
;** 733	-----------------------    U$133 += 8;
;** 733	-----------------------    if ( --L$1 ) goto g2;
;**  	-----------------------    return;

           MV      .L2     B1,B5
||         SUB     .S2     B0,B8,B0          ; |766| (E) <2,11> 
||         DOTPN2  .M1     A19,A21,A4        ; |766| (E) <2,11> 
||         ADD     .L1     A11,A17,A17       ; |769| (E) <2,11> 
||         DOTP2   .M2X    B20,A23,B8        ; |768| (E) <2,11> 

           SUB     .L2     B6,B8,B6          ; |765| (E) <2,12> 
||         DOTP2   .M1     A19,A22,A4        ; |769| (E) <2,12> 
||         SUB     .S1     A16,A11,A16       ; |766| (E) <2,12> 
||         DOTP2   .M2X    B21,A23,B8        ; |769| (E) <2,12> 

           MV      .L1     A16,A5
||         ADD     .L2     B8,B3,B3          ; |768| (E) <2,13> 
||         DOTP2   .M2X    B16,A22,B8        ; |768| (E) <2,13> 
||         SUB     .S1     A7,A11,A7         ; |766| (E) <2,13> 
||         DOTP2   .M1X    B19,A23,A4        ; |769| (E) <2,13> 

           SUB     .L2     B2,B8,B18         ; |765| (E) <2,14> 
||         SUB     .L1     A6,A11,A6         ; |765| (E) <2,14> 
||         DOTP2   .M1     A18,A22,A3        ; |768| (E) <2,14> 

           SUB     .L1     A10,A4,A10        ; |766| (E) <2,15> 
||         ADD     .L2     B8,B4,B4          ; |768| (E) <2,15> 

           ADD     .L2     B8,B7,B7          ; |769| (E) <2,16> 
||         ADD     .L1     A4,A9,A9          ; |769| (E) <2,16> 

           RINT                              ; interrupts on
||         ADD     .S1     A4,A3,A4          ; |769| (E) <2,17> 
||         ADD     .L2     B8,B9,B9          ; |768| (E) <2,17> 

;** --------------------------------------------------------------------------*
$C$DW$L$_DSP_fir_cplx_test$7$B:
           ADD     .L1     A3,A8,A3          ; |768| (E) <2,18> 
	.dwpsn	file "tskLoop.c",line 777,column 9,is_stmt

           ADD     .L1     A5,A7,A7          ; |777| 
||         ADD     .S1X    A3,B3,A31         ; |777| 
||         ADD     .D1     A9,A4,A5          ; |777| 
||         ADD     .L2     B6,B18,B1         ; |777| 

           ADD     .L1     A7,A7,A3          ; |777| 
||         ADD     .S1X    A10,B0,A4         ; |777| 
||         ADD     .L2     B9,B4,B0          ; |777| 
||         ADD     .S2X    A17,B7,B4         ; |777| 
||         ADD     .D2     B1,B1,B1          ; |777| 
||         ADD     .D1     A5,A5,A5          ; |777| 

           ADD     .L1X    A6,B5,A7          ; |777| 
||         ADD     .L2     B4,B4,B0          ; |777| 
||         ADD     .S2     B0,B0,B4          ; |777| 
||         ADD     .S1     A4,A4,A6          ; |777| 
||         ADD     .D1     A31,A31,A4        ; |777| 

           PACKH2  .L2X    B0,A3,B1          ; |777| 
||         PACKH2  .S2     B4,B1,B0          ; |777| 
||         ADD     .L1     A7,A7,A3          ; |777| 
||         PACKH2  .S1     A5,A6,A7          ; |777| 

           PACKH2  .L1     A4,A3,A6          ; |777| 
||         STNDW   .D2T2   B1:B0,*+B22(8)    ; |777| 

           STNDW   .D2T1   A7:A6,*B22        ; |777| 
	.dwpsn	file "tskLoop.c",line 733,column 27,is_stmt

           ADDK    .S2     16,B22            ; |733| 
||         ADDK    .S1     16,A25            ; |733| 

	.dwpsn	file "tskLoop.c",line 733,column 17,is_stmt

           SUB     .L1     A28,1,A0          ; |733| 
||         SUB     .S1     A28,1,A28         ; |733| 

   [ A0]   BNOP    .S1     $C$L7,4           ; |733| 
|| [ A0]   MV      .L2X    A24,B8
|| [ A0]   ADD     .L1     A25,A26,A3

   [ A0]   ADD     .L2X    A25,B23,B5
           ; BRANCHCC OCCURS {$C$L7}         ; |733| 
$C$DW$L$_DSP_fir_cplx_test$7$E:
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 779,column 1,is_stmt
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3       ; |779| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           NOP             4
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$217	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$217, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L7:1:1289804794")
	.dwattr $C$DW$217, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x2dd)
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x309)
$C$DW$218	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$218, DW_AT_low_pc($C$DW$L$_DSP_fir_cplx_test$3$B)
	.dwattr $C$DW$218, DW_AT_high_pc($C$DW$L$_DSP_fir_cplx_test$3$E)
$C$DW$219	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$219, DW_AT_low_pc($C$DW$L$_DSP_fir_cplx_test$7$B)
	.dwattr $C$DW$219, DW_AT_high_pc($C$DW$L$_DSP_fir_cplx_test$7$E)

$C$DW$220	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$220, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L9:2:1289804794")
	.dwattr $C$DW$220, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x2ec)
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x302)
$C$DW$221	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$221, DW_AT_low_pc($C$DW$L$_DSP_fir_cplx_test$5$B)
	.dwattr $C$DW$221, DW_AT_high_pc($C$DW$L$_DSP_fir_cplx_test$5$E)
	.dwendtag $C$DW$220

	.dwendtag $C$DW$217

	.dwattr $C$DW$176, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$176, DW_AT_TI_end_line(0x30b)
	.dwattr $C$DW$176, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$176

	.sect	".text"
	.global	_TSKLOOP_execute

$C$DW$222	.dwtag  DW_TAG_subprogram, DW_AT_name("TSKLOOP_execute")
	.dwattr $C$DW$222, DW_AT_low_pc(_TSKLOOP_execute)
	.dwattr $C$DW$222, DW_AT_high_pc(0x00)
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_TSKLOOP_execute")
	.dwattr $C$DW$222, DW_AT_external
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$222, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$222, DW_AT_TI_begin_line(0x11b)
	.dwattr $C$DW$222, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "tskLoop.c",line 284,column 1,is_stmt,address _TSKLOOP_execute

	.dwfde $C$DW$CIE, _TSKLOOP_execute

;******************************************************************************
;* FUNCTION NAME: TSKLOOP_execute                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 0 Args + 68 Auto + 56 Save = 124 byte                *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TSKLOOP_execute:
;** --------------------------------------------------------------------------*
;** 286	-----------------------    buffer = *((char *(* const)[100])info+20);
;** 287	-----------------------    arg = 0;
;** 293	-----------------------    block_id = 0;
;** 294	-----------------------    block_type = block_id;
;** 303	-----------------------    iq_sensitivity_mod = _FtoIQN(0.06135923042893409729F, 14u);
;** 304	-----------------------    fm_phase_limit = _FtoIQN(50.265499114990234375F, 14u);
;** 305	-----------------------    fm_2_phase_limit = _FtoIQN(100.53099822998046875F, 14u);
;** 326	-----------------------    iq_scale = 16384;
;** 327	-----------------------    iq_conj = (-1);
;** 328	-----------------------    C$16 = &buffer_interp;
;** 328	-----------------------    memset(C$16, 0, 65536u);
;**  	-----------------------    K$38 = 341;
;**  	-----------------------    K$39 = 257;
;**  	-----------------------    K$40 = 348;
;**  	-----------------------    K$196 = 0xfffffffeu;
;**  	-----------------------    K$257 = 598;
;**  	-----------------------    K$260 = 613;
;**  	-----------------------    K$261 = 617;
;**  	-----------------------    K$150 = &decimation_factor[0];
;**  	-----------------------    K$130 = &fir_coeff;
;**  	-----------------------    K$74 = &interpolation_factor[0];
;**  	-----------------------    K$70 = &fir_coeff_size[0];
;**  	-----------------------    K$59 = &block_type_array[0];
;** 328	-----------------------    K$22 = C$16;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T1   A15,*SP--(8)      ; |284| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 15, 0
           STDW    .D2T2   B13:B12,*SP--     ; |284| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 29, -4
	.dwcfi	save_reg_to_mem, 28, -8
           STDW    .D2T2   B11:B10,*SP--     ; |284| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 27, -12
	.dwcfi	save_reg_to_mem, 26, -16
           STW     .D2T2   B3,*SP--(8)       ; |284| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 19, -24
           STW     .D2T1   A14,*SP--(8)      ; |284| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -32
           STDW    .D2T1   A13:A12,*SP--     ; |284| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 13, -36
	.dwcfi	save_reg_to_mem, 12, -40
           STDW    .D2T1   A11:A10,*SP--     ; |284| 
	.dwcfi	cfa_offset, 56
	.dwcfi	save_reg_to_mem, 11, -44
	.dwcfi	save_reg_to_mem, 10, -48
           ADDK    .S2     -72,SP            ; |284| 
	.dwcfi	cfa_offset, 72
$C$DW$223	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg4]
$C$DW$224	.dwtag  DW_TAG_variable, DW_AT_name("$O$C1")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("$O$C1")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg20]
$C$DW$225	.dwtag  DW_TAG_variable, DW_AT_name("$O$C2")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("$O$C2")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg16]
$C$DW$226	.dwtag  DW_TAG_variable, DW_AT_name("$O$C3")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("$O$C3")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg21]
$C$DW$227	.dwtag  DW_TAG_variable, DW_AT_name("$O$C4")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("$O$C4")
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg23]
$C$DW$228	.dwtag  DW_TAG_variable, DW_AT_name("$O$C5")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("$O$C5")
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg16]
$C$DW$229	.dwtag  DW_TAG_variable, DW_AT_name("$O$C6")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("$O$C6")
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg21]
$C$DW$230	.dwtag  DW_TAG_variable, DW_AT_name("$O$C7")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("$O$C7")
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg20]
$C$DW$231	.dwtag  DW_TAG_variable, DW_AT_name("$O$C8")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("$O$C8")
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg4]
$C$DW$232	.dwtag  DW_TAG_variable, DW_AT_name("$O$C9")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("$O$C9")
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$294)
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg12]
$C$DW$233	.dwtag  DW_TAG_variable, DW_AT_name("$O$C10")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("$O$C10")
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg19]
$C$DW$234	.dwtag  DW_TAG_variable, DW_AT_name("$O$C11")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("$O$C11")
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$234, DW_AT_location[DW_OP_reg16]
$C$DW$235	.dwtag  DW_TAG_variable, DW_AT_name("$O$C12")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("$O$C12")
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$235, DW_AT_location[DW_OP_reg22]
$C$DW$236	.dwtag  DW_TAG_variable, DW_AT_name("$O$C13")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("$O$C13")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg19]
$C$DW$237	.dwtag  DW_TAG_variable, DW_AT_name("$O$C14")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("$O$C14")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg0]
$C$DW$238	.dwtag  DW_TAG_variable, DW_AT_name("$O$C15")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("$O$C15")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg20]
$C$DW$239	.dwtag  DW_TAG_variable, DW_AT_name("$O$K38")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("$O$K38")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg20]
$C$DW$240	.dwtag  DW_TAG_variable, DW_AT_name("$O$K39")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("$O$K39")
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$240, DW_AT_location[DW_OP_reg4]
$C$DW$241	.dwtag  DW_TAG_variable, DW_AT_name("$O$K40")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("$O$K40")
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$241, DW_AT_location[DW_OP_reg20]
$C$DW$242	.dwtag  DW_TAG_variable, DW_AT_name("$O$K59")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("$O$K59")
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$242, DW_AT_location[DW_OP_breg31 28]
$C$DW$243	.dwtag  DW_TAG_variable, DW_AT_name("$O$K22")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("$O$K22")
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$243, DW_AT_location[DW_OP_breg31 36]
$C$DW$244	.dwtag  DW_TAG_variable, DW_AT_name("$O$K74")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("$O$K74")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_reg27]
$C$DW$245	.dwtag  DW_TAG_variable, DW_AT_name("$O$K70")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("$O$K70")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_reg26]
$C$DW$246	.dwtag  DW_TAG_variable, DW_AT_name("$O$U64")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("$O$U64")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_reg29]
$C$DW$247	.dwtag  DW_TAG_variable, DW_AT_name("$O$K130")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("$O$K130")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_breg31 32]
$C$DW$248	.dwtag  DW_TAG_variable, DW_AT_name("$O$K150")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("$O$K150")
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$248, DW_AT_location[DW_OP_breg31 40]
$C$DW$249	.dwtag  DW_TAG_variable, DW_AT_name("$O$K196")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("$O$K196")
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$249, DW_AT_location[DW_OP_reg16]
$C$DW$250	.dwtag  DW_TAG_variable, DW_AT_name("$O$U236")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("$O$U236")
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$250, DW_AT_location[DW_OP_reg17]
$C$DW$251	.dwtag  DW_TAG_variable, DW_AT_name("$O$K257")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("$O$K257")
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$251, DW_AT_location[DW_OP_reg20]
$C$DW$252	.dwtag  DW_TAG_variable, DW_AT_name("$O$K260")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("$O$K260")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg20]
$C$DW$253	.dwtag  DW_TAG_variable, DW_AT_name("$O$K261")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("$O$K261")
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$253, DW_AT_location[DW_OP_reg20]
$C$DW$254	.dwtag  DW_TAG_variable, DW_AT_name("$O$U223")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("$O$U223")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg20]
$C$DW$255	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg0]
$C$DW$256	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$388)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg10]
$C$DW$257	.dwtag  DW_TAG_variable, DW_AT_name("buffer")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_breg31 4]
$C$DW$258	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_breg31 8]
$C$DW$259	.dwtag  DW_TAG_variable, DW_AT_name("block_id")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_block_id")
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$259, DW_AT_location[DW_OP_breg31 12]
$C$DW$260	.dwtag  DW_TAG_variable, DW_AT_name("block_type")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_block_type")
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$260, DW_AT_location[DW_OP_breg31 14]
$C$DW$261	.dwtag  DW_TAG_variable, DW_AT_name("$O$v3")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("$O$v3")
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$261, DW_AT_location[DW_OP_reg4]
$C$DW$262	.dwtag  DW_TAG_variable, DW_AT_name("$O$v4")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("$O$v4")
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$262, DW_AT_location[DW_OP_reg4]
$C$DW$263	.dwtag  DW_TAG_variable, DW_AT_name("$O$v6")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("$O$v6")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg4]
$C$DW$264	.dwtag  DW_TAG_variable, DW_AT_name("$O$v7")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("$O$v7")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg21]
$C$DW$265	.dwtag  DW_TAG_variable, DW_AT_name("$O$v8")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("$O$v8")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg4]
$C$DW$266	.dwtag  DW_TAG_variable, DW_AT_name("$O$v9")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("$O$v9")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg2]
$C$DW$267	.dwtag  DW_TAG_variable, DW_AT_name("$O$v10")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("$O$v10")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg16]
$C$DW$268	.dwtag  DW_TAG_variable, DW_AT_name("$O$v11")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("$O$v11")
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$268, DW_AT_location[DW_OP_reg1]
$C$DW$269	.dwtag  DW_TAG_variable, DW_AT_name("$O$v12")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("$O$v12")
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$269, DW_AT_location[DW_OP_reg0]
$C$DW$270	.dwtag  DW_TAG_variable, DW_AT_name("$O$v15")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("$O$v15")
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$270, DW_AT_location[DW_OP_reg4]
$C$DW$271	.dwtag  DW_TAG_variable, DW_AT_name("$O$v18")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("$O$v18")
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$271, DW_AT_location[DW_OP_reg8]
$C$DW$272	.dwtag  DW_TAG_variable, DW_AT_name("$O$v19")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("$O$v19")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg19]
$C$DW$273	.dwtag  DW_TAG_variable, DW_AT_name("$O$s0")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("$O$s0")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg20]
$C$DW$274	.dwtag  DW_TAG_variable, DW_AT_name("$O$s12")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("$O$s12")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg3]
$C$DW$275	.dwtag  DW_TAG_variable, DW_AT_name("$O$s10")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("$O$s10")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg1]
$C$DW$276	.dwtag  DW_TAG_variable, DW_AT_name("$O$s15")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("$O$s15")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_reg16]
$C$DW$277	.dwtag  DW_TAG_variable, DW_AT_name("$O$s14")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("$O$s14")
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$277, DW_AT_location[DW_OP_reg16]
$C$DW$278	.dwtag  DW_TAG_variable, DW_AT_name("$O$s13")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("$O$s13")
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$278, DW_AT_location[DW_OP_reg16]
$C$DW$279	.dwtag  DW_TAG_variable, DW_AT_name("$O$U114")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("$O$U114")
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$279, DW_AT_location[DW_OP_reg25]
$C$DW$280	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$280, DW_AT_location[DW_OP_breg31 44]
$C$DW$281	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg16]
$C$DW$282	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg12]
$C$DW$283	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg28]
$C$DW$284	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg3]
$C$DW$285	.dwtag  DW_TAG_variable, DW_AT_name("nmadus")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_nmadus")
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$285, DW_AT_location[DW_OP_reg4]
$C$DW$286	.dwtag  DW_TAG_variable, DW_AT_name("nmadus")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_nmadus")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg3]
$C$DW$287	.dwtag  DW_TAG_variable, DW_AT_name("iq_temp")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_iq_temp")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_breg31 48]
$C$DW$288	.dwtag  DW_TAG_variable, DW_AT_name("iq_temp")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_iq_temp")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg11]
$C$DW$289	.dwtag  DW_TAG_variable, DW_AT_name("buffer_temp")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_buffer_temp")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg29]
$C$DW$290	.dwtag  DW_TAG_variable, DW_AT_name("buffer_temp")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_buffer_temp")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg29]
$C$DW$291	.dwtag  DW_TAG_variable, DW_AT_name("$O$v1")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("$O$v1")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg20]
$C$DW$292	.dwtag  DW_TAG_variable, DW_AT_name("$O$v1")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("$O$v1")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg20]
$C$DW$293	.dwtag  DW_TAG_variable, DW_AT_name("$O$v1")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("$O$v1")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg22]
$C$DW$294	.dwtag  DW_TAG_variable, DW_AT_name("$O$v5")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("$O$v5")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg4]
$C$DW$295	.dwtag  DW_TAG_variable, DW_AT_name("$O$v5")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("$O$v5")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg0]
$C$DW$296	.dwtag  DW_TAG_variable, DW_AT_name("$O$v22")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("$O$v22")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg19]
$C$DW$297	.dwtag  DW_TAG_variable, DW_AT_name("$O$v22")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("$O$v22")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg22]
           MV      .L1     A4,A10            ; |284| 
	.dwpsn	file "tskLoop.c",line 286,column 17,is_stmt
           LDW     .D1T1   *+A10(20),A0      ; |286| 
           NOP             4
           STW     .D2T1   A0,*+SP(4)        ; |286| 
	.dwpsn	file "tskLoop.c",line 287,column 17,is_stmt
           ZERO    .L1     A0                ; |287| 
           STW     .D2T1   A0,*+SP(8)        ; |287| 
	.dwpsn	file "tskLoop.c",line 293,column 14,is_stmt
           STH     .D2T1   A0,*+SP(12)       ; |293| 
	.dwpsn	file "tskLoop.c",line 294,column 14,is_stmt
           LDH     .D2T2   *+SP(12),B0       ; |294| 
           NOP             4
           STH     .D2T2   B0,*+SP(14)       ; |294| 
	.dwpsn	file "tskLoop.c",line 303,column 2,is_stmt
           MVKL    .S1     __FtoIQN,A3       ; |303| 
           MVKH    .S1     __FtoIQN,A3       ; |303| 
           MVKL    .S1     0x3d7b53d1,A4
           CALL    .S2X    A3                ; |303| 
           ADDKPC  .S2     $C$RL0,B3,3       ; |303| 

           MVKH    .S1     0x3d7b53d1,A4
||         MVK     .L2     0xe,B4            ; |303| 

$C$RL0:    ; CALL OCCURS {__FtoIQN}          ; |303| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B0             ; |303| 
||         MVKL    .S1     _iq_sensitivity_mod,A4

           MVKH    .S1     _iq_sensitivity_mod,A4

           STW     .D1T2   B0,*A4            ; |303| 
||         STW     .D2T1   A4,*+SP(16)       ; |303| 

	.dwpsn	file "tskLoop.c",line 304,column 2,is_stmt
           MVKL    .S1     __FtoIQN,A3       ; |304| 
           MVKH    .S1     __FtoIQN,A3       ; |304| 
           MVKL    .S1     0x42490fdf,A4
           CALL    .S2X    A3                ; |304| 
           ADDKPC  .S2     $C$RL1,B3,3       ; |304| 

           MVKH    .S1     0x42490fdf,A4
||         MVK     .L2     0xe,B4            ; |304| 

$C$RL1:    ; CALL OCCURS {__FtoIQN}          ; |304| 
           MVKL    .S2     _fm_phase_limit,B4
           MVKH    .S2     _fm_phase_limit,B4
           STW     .D2T1   A4,*B4            ; |304| 
           STW     .D2T2   B4,*+SP(20)       ; |304| 
	.dwpsn	file "tskLoop.c",line 305,column 2,is_stmt
           MVKL    .S2     __FtoIQN,B5       ; |305| 
           MVKH    .S2     __FtoIQN,B5       ; |305| 
           CALL    .S2     B5                ; |305| 
           MVKL    .S1     0x42c90fdf,A4
           ADDKPC  .S2     $C$RL2,B3,2       ; |305| 

           MVKH    .S1     0x42c90fdf,A4
||         MVK     .L2     0xe,B4            ; |305| 

$C$RL2:    ; CALL OCCURS {__FtoIQN}          ; |305| 
           MVKL    .S2     _fm_2_phase_limit,B4
           MVKH    .S2     _fm_2_phase_limit,B4
           STW     .D2T1   A4,*B4            ; |305| 
           STW     .D2T2   B4,*+SP(24)       ; |305| 
	.dwpsn	file "tskLoop.c",line 326,column 5,is_stmt

           MVK     .S2     0x0,B0
||         MVKL    .S1     _iq_scale,A4

           MVKH    .S1     _iq_scale,A4
||         SET     .S2     B0,0xe,0xe,B0

           STW     .D1T2   B0,*A4            ; |326| 
	.dwpsn	file "tskLoop.c",line 327,column 5,is_stmt
           MVKL    .S1     _iq_conj,A4

           MVKH    .S1     _iq_conj,A4
||         MVK     .L1     -1,A0             ; |327| 

           STW     .D1T1   A0,*A4            ; |327| 
	.dwpsn	file "tskLoop.c",line 328,column 5,is_stmt
           MVKL    .S2     _memset,B5        ; |328| 
           MVKH    .S2     _memset,B5        ; |328| 
           CALL    .S2     B5                ; |328| 
           MVKL    .S2     _buffer_interp,B11
           MVKH    .S2     _buffer_interp,B11
           MVK     .S1     0x0,A6
           ADDKPC  .S2     $C$RL3,B3,0       ; |328| 

           MV      .L1X    B11,A4            ; |328| 
||         SET     .S1     A6,0x10,0x10,A6
||         ZERO    .L2     B4                ; |328| 

$C$RL3:    ; CALL OCCURS {_memset}           ; |328| 
;** --------------------------------------------------------------------------*
           MVKL    .S2     _fir_coeff,B5

           MVKL    .S1     _decimation_factor,A3
||         MVKL    .S2     _block_type_array,B4

           MVKH    .S2     _fir_coeff,B5
||         MVKL    .S1     _interpolation_factor,A5

           MVKH    .S1     _decimation_factor,A3
||         MVKH    .S2     _block_type_array,B4
||         STW     .D2T2   B11,*+SP(36)      ; |328| 

           STW     .D2T2   B5,*+SP(32)
||         MVKH    .S1     _interpolation_factor,A5

           STW     .D2T1   A3,*+SP(40)
||         MV      .L1X    B4,A4
||         MVKL    .S2     _fir_coeff_size,B10

           STW     .D2T1   A4,*+SP(28)
||         MV      .L2X    A5,B11
||         MVKH    .S2     _fir_coeff_size,B10

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L11
;** --------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_TSKLOOP_execute$4$B:
;**	-----------------------g2:
;** 331	-----------------------    if ( status = SIO_issue((*info).inputStream, *&buffer, (*info).bufferSize, arg) ) goto g6;
	.dwpsn	file "tskLoop.c",line 331,column 9,is_stmt
           MVKL    .S2     _SIO_issue,B5     ; |331| 
           MVKH    .S2     _SIO_issue,B5     ; |331| 

           CALL    .S2     B5                ; |331| 
||         LDW     .D1T1   *A10,A4           ; |331| 
||         LDW     .D2T2   *+SP(8),B6        ; |331| 

           LDW     .D1T1   *+A10(12),A6      ; |331| 
||         LDW     .D2T2   *+SP(4),B4        ; |331| 

           ADDKPC  .S2     $C$RL4,B3,3       ; |331| 
$C$RL4:    ; CALL OCCURS {_SIO_issue}        ; |331| 
$C$DW$L$_TSKLOOP_execute$4$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$5$B:
           MV      .L1     A4,A0             ; |331| 

   [ A0]   BNOP    .S1     $C$L12,5          ; |331| 
||         STW     .D2T1   A0,*+SP(44)       ; |331| 

           ; BRANCHCC OCCURS {$C$L12}        ; |331| 
$C$DW$L$_TSKLOOP_execute$5$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$6$B:
;** 336	-----------------------    if ( (nmadus = SIO_reclaim((*info).inputStream, &buffer, &arg)) < 0 ) goto g5;
	.dwpsn	file "tskLoop.c",line 336,column 13,is_stmt
           MVKL    .S2     _SIO_reclaim,B5   ; |336| 
           MVKH    .S2     _SIO_reclaim,B5   ; |336| 
           CALL    .S2     B5                ; |336| 
           LDW     .D1T1   *A10,A4           ; |336| 
           ADDKPC  .S2     $C$RL5,B3,2       ; |336| 

           ADD     .L2     4,SP,B4           ; |336| 
||         ADD     .L1X    8,SP,A6           ; |336| 

$C$RL5:    ; CALL OCCURS {_SIO_reclaim}      ; |336| 
$C$DW$L$_TSKLOOP_execute$6$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$7$B:
;** 344	-----------------------    (*info).receivedSize = nmadus;
;** 344	-----------------------    goto g7;
           CMPLT   .L1     A4,0,A0           ; |336| 
	.dwpsn	file "tskLoop.c",line 344,column 17,is_stmt

   [!A0]   BNOP    .S1     $C$L13,5          ; |344| 
|| [!A0]   STH     .D1T1   A4,*+A10(16)      ; |344| 

           ; BRANCHCC OCCURS {$C$L13}        ; |344| 
$C$DW$L$_TSKLOOP_execute$7$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$8$B:
;**	-----------------------g5:
;** 340	-----------------------    status = -nmadus;
;** 341	-----------------------    SetReason(K$39, K$38, status);
;** 342	-----------------------    goto g7;
	.dwpsn	file "tskLoop.c",line 340,column 17,is_stmt
           NEG     .L1     A4,A0             ; |340| 
           STW     .D2T1   A0,*+SP(44)       ; |340| 
	.dwpsn	file "tskLoop.c",line 341,column 17,is_stmt

           MV      .L1     A0,A6             ; |341| 
||         MVKL    .S2     _SetReason,B5     ; |341| 

           MVKH    .S2     _SetReason,B5     ; |341| 
           CALL    .S2     B5                ; |341| 
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           MVK     .S2     0x55,B4
           SET     .S2     B4,0x8,0x8,B4
           ADDKPC  .S2     $C$RL6,B3,0       ; |341| 
$C$RL6:    ; CALL OCCURS {_SetReason}        ; |341| 
$C$DW$L$_TSKLOOP_execute$8$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$9$B:
	.dwpsn	file "tskLoop.c",line 342,column 13,is_stmt
           BNOP    .S1     $C$L13,5          ; |342| 
           ; BRANCH OCCURS {$C$L13}          ; |342| 
$C$DW$L$_TSKLOOP_execute$9$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$_TSKLOOP_execute$10$B:
;**	-----------------------g6:
;** 348	-----------------------    SetReason(K$39, K$40, status);
	.dwpsn	file "tskLoop.c",line 348,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |348| 
           MVKH    .S1     _SetReason,A3     ; |348| 
           MVK     .S2     0x5c,B4
           CALL    .S2X    A3                ; |348| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL7,B3,0       ; |348| 
           MV      .L1     A0,A6             ; |348| 
$C$RL7:    ; CALL OCCURS {_SetReason}        ; |348| 
$C$DW$L$_TSKLOOP_execute$10$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$_TSKLOOP_execute$11$B:
;**	-----------------------g7:
;** 352	-----------------------    if ( status ) goto g33;
	.dwpsn	file "tskLoop.c",line 352,column 2,is_stmt
           LDW     .D2T1   *+SP(44),A0
           NOP             4
   [ A0]   BNOP    .S1     $C$L28,5          ; |352| 
           ; BRANCHCC OCCURS {$C$L28}        ; |352| 
$C$DW$L$_TSKLOOP_execute$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$12$B:
;** 357	-----------------------    memcpy(&block_type, buffer+2, 2u);
;** 358	-----------------------    memcpy(&block_id, buffer+4, 2u);
;** 363	-----------------------    v$19 = (int)block_type;
;** 363	-----------------------    if ( block_type != 1 ) goto g26;
	.dwpsn	file "tskLoop.c",line 357,column 4,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |357| 
           ADD     .L1X    14,SP,A31         ; |357| 
           NOP             3
           ADD     .L1X    2,B0,A4           ; |357| 
           LDB     .D1T1   *+A4(1),A0        ; |357| 
           LDB     .D1T1   *A4,A1            ; |357| 
           NOP             3
           STB     .D1T1   A0,*+A31(1)       ; |357| 
           STB     .D1T1   A1,*A31           ; |357| 
	.dwpsn	file "tskLoop.c",line 358,column 13,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |358| 
           ADD     .L2     12,SP,B31         ; |358| 
           NOP             3
           ADD     .L2     4,B0,B4           ; |358| 
           LDB     .D2T2   *+B4(1),B0        ; |358| 
           LDB     .D2T2   *B4,B1            ; |358| 
           NOP             3
           STB     .D2T2   B0,*+B31(1)       ; |358| 
           STB     .D2T2   B1,*B31           ; |358| 
	.dwpsn	file "tskLoop.c",line 363,column 7,is_stmt
           LDH     .D2T2   *+SP(14),B0       ; |363| 
           LDH     .D2T2   *+SP(14),B3       ; |363| 
           NOP             3
           CMPEQ   .L2     B0,1,B0           ; |363| 
   [!B0]   BNOP    .S1     $C$L22,5          ; |363| 
           ; BRANCHCC OCCURS {$C$L22}        ; |363| 
$C$DW$L$_TSKLOOP_execute$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$13$B:
;** 395	-----------------------    rf_data_size = v$18 = (short)_mem4((void *)buffer);
;** 402	-----------------------    v$22 = (int)block_id;
;** 402	-----------------------    if ( K$59[block_id] != 4 ) goto g16;
	.dwpsn	file "tskLoop.c",line 395,column 4,is_stmt
           LDW     .D2T2   *+SP(4),B4        ; |395| 
           MVKL    .S2     _rf_data_size,B12
           MVKH    .S2     _rf_data_size,B12
           NOP             2
           LDNW    .D2T2   *B4,B0            ; |395| 
           NOP             4
           EXT     .S2     B0,16,16,B0       ; |395| 
           STH     .D2T2   B0,*B12           ; |395| 
           MV      .L1X    B0,A8             ; |395| 
	.dwpsn	file "tskLoop.c",line 402,column 4,is_stmt
           LDH     .D2T2   *+SP(12),B4       ; |402| 
           LDW     .D2T2   *+SP(28),B5
           LDH     .D2T2   *+SP(12),B3       ; |402| 
           NOP             3
           LDH     .D2T2   *+B5[B4],B0       ; |402| 
           NOP             4
           CMPEQ   .L2     B0,4,B0           ; |402| 
   [!B0]   BNOP    .S1     $C$L17,5          ; |402| 
           ; BRANCHCC OCCURS {$C$L17}        ; |402| 
$C$DW$L$_TSKLOOP_execute$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$14$B:
;** 406	-----------------------    iq_temp = *&buffer+4;
;** 408	-----------------------    C$15 = (int)block_id;
;** 408	-----------------------    buffer_temp = (K$70[C$15]/K$74[C$15]<<3)+K$22;
;** 416	-----------------------    if ( !v$18 ) goto g13;
	.dwpsn	file "tskLoop.c",line 406,column 5,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |406| 
           NOP             4
           ADD     .L2     4,B0,B0           ; |406| 
           STW     .D2T2   B0,*+SP(48)       ; |406| 
	.dwpsn	file "tskLoop.c",line 408,column 5,is_stmt
           LDH     .D2T2   *+SP(12),B4       ; |408| 
           MVKL    .S1     __divi,A3         ; |408| 
           MVKH    .S1     __divi,A3         ; |408| 
           NOP             2

           CALL    .S2X    A3                ; |408| 
||         LDH     .D2T1   *+B10[B4],A4      ; |408| 

           LDH     .D2T2   *+B11[B4],B4      ; |408| 
           ADDKPC  .S2     $C$RL8,B3,3       ; |408| 
$C$RL8:    ; CALL OCCURS {__divi}            ; |408| 
$C$DW$L$_TSKLOOP_execute$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$15$B:
           LDW     .D2T2   *+SP(36),B1       ; |408| 
           MV      .L2X    A4,B0             ; |408| 
           NOP             3
           ADDAD   .D2     B1,B0,B13         ; |408| 
	.dwpsn	file "tskLoop.c",line 416,column 15,is_stmt
           MV      .L1     A8,A0
   [!A0]   BNOP    .S1     $C$L15,5          ; |416| 
           ; BRANCHCC OCCURS {$C$L15}        ; |416| 
$C$DW$L$_TSKLOOP_execute$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$16$B:
;** 416	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	file "tskLoop.c",line 416,column 10,is_stmt

           LDW     .D2T1   *+SP(16),A30      ; |422| 
||         MVKL    .S1     _iq_result,A3
||         MVKL    .S2     _iq_in,B31
||         ZERO    .L1     A12               ; |416| 

           MVKL    .S1     _iq_iout,A31
||         MVKL    .S2     _iq_qout,B4

           MVKH    .S1     _iq_result,A3
||         MVKH    .S2     _iq_in,B31

           MVKH    .S1     _iq_iout,A31
||         MVKH    .S2     _iq_qout,B4
||         STW     .D2T1   A3,*+SP(52)       ; |427| 

           MVKL    .S1     _iq_int_2,A13
||         STW     .D2T1   A31,*+SP(56)      ; |424| 

           MVKL    .S1     _iq_int,A14
||         STW     .D2T1   A30,*+SP(64)      ; |418| 

           MVKL    .S1     _iq_result2,A15
||         STW     .D2T2   B31,*+SP(68)      ; |418| 

           MVKL    .S1     _iq_phase,A11
||         STW     .D2T2   B4,*+SP(60)       ; |425| 

           MVKH    .S1     _iq_int_2,A13
           MVKH    .S1     _iq_int,A14
           MVKH    .S1     _iq_result2,A15
           MVKH    .S1     _iq_phase,A11
$C$DW$L$_TSKLOOP_execute$16$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L14:    
$C$DW$L$_TSKLOOP_execute$17$B:
;**	-----------------------g12:
;** 418	-----------------------    s$0 = *iq_temp++;
;** 418	-----------------------    iq_in = s$0;
;** 422	-----------------------    iq_phase = v$3 = _IQNrmpy(iq_sensitivity_mod, (int)s$0, 14u)+iq_phase;
;** 424	-----------------------    iq_iout = _IQNcos(v$3, 14u);
;** 425	-----------------------    iq_qout = v$4 = _IQNsin(iq_phase, 14u);
;** 427	-----------------------    iq_result = C$14 = iq_iout<<14;
;** 428	-----------------------    iq_result2 = v$4<<14;
;** 429	-----------------------    iq_int = _IQNint(C$14, 14u);
;** 430	-----------------------    iq_int_2 = _IQNint(iq_result2, 14u);
;** 436	-----------------------    memcpy((void *)buffer_temp, &iq_int, 2u);
;** 437	-----------------------    memcpy(buffer_temp+2, &iq_int_2, 2u);
;** 457	-----------------------    buffer_temp += K$74[block_id]*4;
;** 416	-----------------------    if ( (unsigned)rf_data_size > (++i) ) goto g12;
	.dwpsn	file "tskLoop.c",line 418,column 6,is_stmt
           LDW     .D2T2   *+SP(48),B5
           NOP             4
           LDH     .D2T2   *B5++,B4          ; |418| 
           STW     .D2T2   B5,*+SP(48)       ; |418| 
           LDW     .D2T2   *+SP(68),B5
           NOP             4
           STW     .D2T2   B4,*B5            ; |418| 
	.dwpsn	file "tskLoop.c",line 422,column 6,is_stmt
           LDW     .D2T1   *+SP(64),A4       ; |422| 
           MVKL    .S1     __IQNrmpy,A3      ; |422| 
           MVKH    .S1     __IQNrmpy,A3      ; |422| 
           MVK     .L1     0xe,A6            ; |422| 
           CALL    .S2X    A3                ; |422| 
           LDW     .D1T1   *A4,A4            ; |422| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |422| 
$C$RL9:    ; CALL OCCURS {__IQNrmpy}         ; |422| 
$C$DW$L$_TSKLOOP_execute$17$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$18$B:
           LDW     .D1T1   *A11,A0           ; |422| 
           NOP             4
           ADD     .L1     A0,A4,A4          ; |422| 
           STW     .D1T1   A4,*A11           ; |422| 
	.dwpsn	file "tskLoop.c",line 424,column 6,is_stmt
           MVKL    .S2     __IQNcos,B5       ; |424| 
           MVKH    .S2     __IQNcos,B5       ; |424| 
           CALL    .S2     B5                ; |424| 
           ADDKPC  .S2     $C$RL10,B3,3      ; |424| 
           MVK     .L2     0xe,B4            ; |424| 
$C$RL10:   ; CALL OCCURS {__IQNcos}          ; |424| 

           MV      .L1     A4,A0             ; |424| 
||         LDW     .D2T1   *+SP(56),A4       ; |424| 

           NOP             4
           STW     .D1T1   A0,*A4            ; |424| 
	.dwpsn	file "tskLoop.c",line 425,column 6,is_stmt
           MVKL    .S1     __IQNsin,A3       ; |425| 
           MVKH    .S1     __IQNsin,A3       ; |425| 
           LDW     .D1T1   *A11,A4           ; |425| 
           CALL    .S2X    A3                ; |425| 
           ADDKPC  .S2     $C$RL11,B3,3      ; |425| 
           MVK     .L2     0xe,B4            ; |425| 
$C$RL11:   ; CALL OCCURS {__IQNsin}          ; |425| 
           LDW     .D2T2   *+SP(60),B4       ; |425| 
           NOP             4
           STW     .D2T1   A4,*B4            ; |425| 
	.dwpsn	file "tskLoop.c",line 427,column 6,is_stmt
           LDW     .D2T1   *+SP(56),A5
           NOP             4
           LDW     .D1T1   *A5,A0            ; |427| 
           LDW     .D2T1   *+SP(52),A5       ; |427| 
           NOP             3
           SHL     .S1     A0,14,A0          ; |427| 
           STW     .D1T1   A0,*A5            ; |427| 
	.dwpsn	file "tskLoop.c",line 428,column 6,is_stmt
           SHL     .S1     A4,14,A1          ; |428| 
           STW     .D1T1   A1,*A15           ; |428| 
	.dwpsn	file "tskLoop.c",line 429,column 6,is_stmt
           MVKL    .S2     __IQNint,B5       ; |429| 
           MVKH    .S2     __IQNint,B5       ; |429| 
           CALL    .S2     B5                ; |429| 
           ADDKPC  .S2     $C$RL12,B3,3      ; |429| 

           MV      .L1     A0,A4             ; |429| 
||         MVK     .L2     0xe,B4            ; |429| 

$C$RL12:   ; CALL OCCURS {__IQNint}          ; |429| 
           STW     .D1T1   A4,*A14           ; |429| 
	.dwpsn	file "tskLoop.c",line 430,column 6,is_stmt
           MVKL    .S1     __IQNint,A3       ; |430| 
           MVKH    .S1     __IQNint,A3       ; |430| 
           LDW     .D1T1   *A15,A4           ; |430| 
           CALL    .S2X    A3                ; |430| 
           ADDKPC  .S2     $C$RL13,B3,3      ; |430| 
           MVK     .L2     0xe,B4            ; |430| 
$C$RL13:   ; CALL OCCURS {__IQNint}          ; |430| 
$C$DW$L$_TSKLOOP_execute$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$19$B:
           STW     .D1T1   A4,*A13           ; |430| 
	.dwpsn	file "tskLoop.c",line 436,column 7,is_stmt
           LDH     .D1T2   *A14,B0           ; |436| 
           NOP             4
           STH     .D2T2   B0,*B13           ; |436| 
	.dwpsn	file "tskLoop.c",line 437,column 7,is_stmt
           LDH     .D1T1   *A13,A0           ; |437| 
           ADD     .L1X    2,B13,A4          ; |437| 
           NOP             3
           STH     .D1T1   A0,*A4            ; |437| 
	.dwpsn	file "tskLoop.c",line 457,column 6,is_stmt
           LDH     .D2T2   *+SP(12),B4       ; |457| 
           NOP             4
           LDH     .D2T2   *+B11[B4],B0      ; |457| 
           NOP             4
           ADDAW   .D2     B13,B0,B13        ; |457| 
	.dwpsn	file "tskLoop.c",line 416,column 15,is_stmt
           LDH     .D2T2   *B12,B0           ; |416| 
           ADD     .L1     1,A12,A12         ; |416| 
           NOP             3
           CMPGTU  .L2X    B0,A12,B0         ; |416| 
   [ B0]   BNOP    .S1     $C$L14,5          ; |416| 
           ; BRANCHCC OCCURS {$C$L14}        ; |416| 
$C$DW$L$_TSKLOOP_execute$19$E:
;** --------------------------------------------------------------------------*
$C$L15:    
$C$DW$L$_TSKLOOP_execute$20$B:
;**	-----------------------g13:
;** 464	-----------------------    if ( _IQNabs(iq_phase) > fm_phase_limit ) goto g15;
	.dwpsn	file "tskLoop.c",line 464,column 5,is_stmt
           MVKL    .S2     __IQNabs,B4       ; |464| 

           MVKH    .S2     __IQNabs,B4       ; |464| 
||         MVKL    .S1     _iq_phase,A11

           CALL    .S2     B4                ; |464| 
||         MVKH    .S1     _iq_phase,A11

           LDW     .D1T1   *A11,A4           ; |464| 
           ADDKPC  .S2     $C$RL14,B3,3      ; |464| 
$C$RL14:   ; CALL OCCURS {__IQNabs}          ; |464| 
$C$DW$L$_TSKLOOP_execute$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$21$B:
           LDW     .D2T2   *+SP(20),B4       ; |464| 
           NOP             4
           LDW     .D2T2   *B4,B0            ; |464| 
           NOP             4
           CMPGT   .L2X    A4,B0,B0          ; |464| 

   [ B0]   B       .S1     $C$L16            ; |464| 
|| [!B0]   LDH     .D2T2   *+SP(12),B3
|| [!B0]   MV      .L2     B12,B4

   [!B0]   BNOP    .S1     $C$L17,4
|| [!B0]   LDH     .D2T1   *B4,A8

           ; BRANCHCC OCCURS {$C$L16}        ; |464| 
$C$DW$L$_TSKLOOP_execute$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$22$B:
;**  	-----------------------    v$18 = (int)rf_data_size;
;**  	-----------------------    v$22 = (int)block_id;
;**  	-----------------------    goto g16;
           NOP             1
           ; BRANCH OCCURS {$C$L17} 
$C$DW$L$_TSKLOOP_execute$22$E:
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$_TSKLOOP_execute$23$B:
;**	-----------------------g15:
;** 466	-----------------------    d_phase_limit_temp = v$6 = _IQNdiv(iq_phase, fm_2_phase_limit, 14u);
;** 467	-----------------------    iq_phase = iq_phase-_IQNmpy(v$6, fm_2_phase_limit, 14u);
;** 467	-----------------------    v$18 = (int)rf_data_size;
;** 467	-----------------------    v$22 = (int)block_id;
	.dwpsn	file "tskLoop.c",line 466,column 6,is_stmt
           LDW     .D2T2   *+SP(24),B13      ; |466| 
           MVKL    .S1     __IQNdiv,A3       ; |466| 
           MVKH    .S1     __IQNdiv,A3       ; |466| 
           LDW     .D1T1   *A11,A4           ; |466| 
           CALL    .S2X    A3                ; |466| 
           LDW     .D2T2   *B13,B4           ; |466| 
           ADDKPC  .S2     $C$RL15,B3,2      ; |466| 
           MVK     .L1     0xe,A6            ; |466| 
$C$RL15:   ; CALL OCCURS {__IQNdiv}          ; |466| 
$C$DW$L$_TSKLOOP_execute$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$24$B:
           MVKL    .S2     _d_phase_limit_temp,B4
           MVKH    .S2     _d_phase_limit_temp,B4
           STW     .D2T1   A4,*B4            ; |466| 
	.dwpsn	file "tskLoop.c",line 467,column 6,is_stmt
           MVKL    .S2     __IQNmpy,B5       ; |467| 
           MVKH    .S2     __IQNmpy,B5       ; |467| 

           CALL    .S2     B5                ; |467| 
||         MV      .L2     B13,B4            ; |467| 

           LDW     .D2T2   *B4,B4            ; |467| 
           ADDKPC  .S2     $C$RL16,B3,2      ; |467| 
           MVK     .L1     0xe,A6            ; |467| 
$C$RL16:   ; CALL OCCURS {__IQNmpy}          ; |467| 
$C$DW$L$_TSKLOOP_execute$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$25$B:

           MV      .L1     A4,A1             ; |467| 
||         MV      .S1     A11,A4            ; |467| 

           LDW     .D1T1   *A4,A0            ; |467| 
           LDH     .D2T2   *+SP(12),B3       ; |467| 
           MV      .L2     B12,B4
           LDH     .D2T1   *B4,A8            ; |467| 
           NOP             1
           SUB     .L1     A0,A1,A0          ; |467| 
           STW     .D1T1   A0,*A4            ; |467| 
$C$DW$L$_TSKLOOP_execute$25$E:
;** --------------------------------------------------------------------------*
$C$L17:    
$C$DW$L$_TSKLOOP_execute$26$B:
;**	-----------------------g16:
;** 470	-----------------------    v$1 = v$22;
;**  	-----------------------    U$64 = *&buffer;
;** 470	-----------------------    if ( (C$13 = K$74[v$1]) < 2 ) goto g19;
	.dwpsn	file "tskLoop.c",line 470,column 4,is_stmt
           MV      .L2     B3,B4             ; |470| 
           LDH     .D2T2   *+B11[B4],B3      ; |470| 
           LDW     .D2T2   *+SP(28),B5
           LDW     .D2T2   *+SP(4),B13
           NOP             2
           CMPLT   .L2     B3,2,B0           ; |470| 

   [ B0]   BNOP    .S1     $C$L18,3          ; |470| 
||         MV      .L2     B0,B2             ; |470| branch predicate copy
||         MV      .S2     B0,B1             ; guard predicate rewrite
|| [!B0]   LDH     .D2T2   *+B5[B4],B0       ; |470| 

   [ B2]   MV      .L2     B13,B5
   [!B1]   CMPEQ   .L2     B0,4,B0           ; |470| 
           ; BRANCHCC OCCURS {$C$L18}        ; |470| 
$C$DW$L$_TSKLOOP_execute$26$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$27$B:
;** 470	-----------------------    v$7 = U$64;
;** 470	-----------------------    if ( K$59[v$1] != 4 ) goto g20;

   [!B0]   BNOP    .S1     $C$L18,5          ; |470| 
||         MV      .L2     B13,B5            ; |470| 

           ; BRANCHCC OCCURS {$C$L18}        ; |470| 
$C$DW$L$_TSKLOOP_execute$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$28$B:
;** 484	-----------------------    C$12 = K$70[v$1];
;** 484	-----------------------    DSP_fir_cplx_test(C$12*4+K$22-4, (v$1<<14)+K$130, v$7, (int)C$12, _mpy(C$13, v$18)-C$12);
;** 512	-----------------------    goto g21;
	.dwpsn	file "tskLoop.c",line 484,column 5,is_stmt

           LDH     .D2T2   *+B10[B4],B6      ; |484| 
||         MVKL    .S1     _DSP_fir_cplx_test,A3 ; |484| 
||         MV      .L2X    A8,B0
||         SHL     .S2     B4,14,B31         ; |484| 

           LDW     .D2T2   *+SP(36),B1       ; |484| 
||         MPY     .M2     B3,B0,B0          ; |484| 

           MVKH    .S1     _DSP_fir_cplx_test,A3 ; |484| 
           LDW     .D2T2   *+SP(32),B2       ; |484| 
           CALL    .S2X    A3                ; |484| 
           SHL     .S2     B6,2,B3

           ADD     .L2     B1,B3,B3
||         SUB     .S2     B0,B6,B1          ; |484| 

           MV      .L1X    B5,A6             ; |484| 

           MV      .L1X    B1,A8             ; |484| 
||         ADD     .L2     B2,B31,B4         ; |484| 

           SUB     .L1X    B3,4,A4           ; |484| 
||         ADDKPC  .S2     $C$RL17,B3,0      ; |484| 

$C$RL17:   ; CALL OCCURS {_DSP_fir_cplx_test}  ; |484| 
$C$DW$L$_TSKLOOP_execute$28$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$29$B:
;**	-----------------------g19:
;**  	-----------------------    v$7 = U$64;
	.dwpsn	file "tskLoop.c",line 512,column 4,is_stmt
           BNOP    .S1     $C$L19,5          ; |512| 
           ; BRANCH OCCURS {$C$L19}          ; |512| 
$C$DW$L$_TSKLOOP_execute$29$E:
;** --------------------------------------------------------------------------*
$C$L18:    
$C$DW$L$_TSKLOOP_execute$30$B:
;**	-----------------------g20:
;** 515	-----------------------    C$11 = K$70[v$1];
;** 515	-----------------------    DSP_fir_cplx_test(C$11*4+v$7-4, (v$1<<14)+K$130, v$7, (int)C$11, v$18);
	.dwpsn	file "tskLoop.c",line 515,column 5,is_stmt

           LDH     .D2T2   *+B10[B4],B0      ; |515| 
||         MVKL    .S1     _DSP_fir_cplx_test,A3 ; |515| 

           MVKH    .S1     _DSP_fir_cplx_test,A3 ; |515| 
           LDW     .D2T2   *+SP(32),B3       ; |515| 
           CALL    .S2X    A3                ; |515| 
           SHL     .S2     B4,14,B2          ; |515| 

           SHL     .S2     B0,2,B1
||         MV      .L2     B0,B6             ; |515| 

           ADD     .L2     B5,B1,B1
           MV      .L1X    B5,A6             ; |515| 

           SUB     .L1X    B1,4,A4           ; |515| 
||         ADD     .L2     B3,B2,B4          ; |515| 
||         ADDKPC  .S2     $C$RL18,B3,0      ; |515| 

$C$RL18:   ; CALL OCCURS {_DSP_fir_cplx_test}  ; |515| 
$C$DW$L$_TSKLOOP_execute$30$E:
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$_TSKLOOP_execute$31$B:
;**	-----------------------g21:
;** 523	-----------------------    v$1 = (int)block_id;
;** 523	-----------------------    if ( (C$10 = K$59[block_id]) == 2 ) goto g23;
	.dwpsn	file "tskLoop.c",line 523,column 4,is_stmt
           LDW     .D2T2   *+SP(28),B5
           LDH     .D2T2   *+SP(12),B4       ; |523| 
           NOP             4
           LDH     .D2T2   *+B5[B4],B3       ; |523| 
           LDH     .D2T2   *+SP(12),B4       ; |523| 
           NOP             3
           CMPEQ   .L2     B3,2,B0           ; |523| 

           MV      .S2     B0,B1             ; guard predicate rewrite
|| [ B0]   B       .S1     $C$L20            ; |523| 
|| [!B0]   CMPEQ   .L2     B3,3,B0           ; |523| 

   [ B1]   MVK     .L2     0x1,B0            ; |523| nullify predicate
   [!B0]   BNOP    .S1     $C$L29,3          ; |523| 
           ; BRANCHCC OCCURS {$C$L20}        ; |523| 
$C$DW$L$_TSKLOOP_execute$31$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$32$B:
;** 523	-----------------------    if ( C$10 != 3 ) goto g34;
           NOP             2
           ; BRANCHCC OCCURS {$C$L29}        ; |523| 
$C$DW$L$_TSKLOOP_execute$32$E:
;** --------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$_TSKLOOP_execute$33$B:
;**	-----------------------g23:
;** 535	-----------------------    iq_temp = U$64;
;** 536	-----------------------    buffer_temp = iq_temp;
;** 540	-----------------------    s$13 = K$150[v$1];
;** 540	-----------------------    offset_1 = s$13;
;** 541	-----------------------    offset_2 = v$8 = (short)(s$13*2);
;** 542	-----------------------    offset_3 = _mpy(s$13, 3);
;** 545	-----------------------    if ( (unsigned)rf_data_size == 2u ) goto g34;
	.dwpsn	file "tskLoop.c",line 535,column 5,is_stmt
           MV      .L1X    B13,A11           ; |535| 
	.dwpsn	file "tskLoop.c",line 536,column 5,is_stmt
	.dwpsn	file "tskLoop.c",line 540,column 5,is_stmt
           LDW     .D2T2   *+SP(40),B5
           MVKL    .S2     _offset_1,B31
           MVKH    .S2     _offset_1,B31
           NOP             2
           LDH     .D2T2   *+B5[B4],B0       ; |540| 
           NOP             4

           STH     .D2T2   B0,*B31           ; |540| 
||         MV      .L1X    B0,A0             ; |540| Define a twin register

	.dwpsn	file "tskLoop.c",line 541,column 5,is_stmt
           EXT     .S1     A0,17,16,A4       ; |541| 

           MVKL    .S1     _offset_2,A5
||         MV      .L1     A4,A0             ; |541| 

           MVKH    .S1     _offset_2,A5
           STH     .D1T1   A0,*A5            ; |541| 
	.dwpsn	file "tskLoop.c",line 542,column 5,is_stmt

           MVKL    .S2     _offset_3,B4
||         MPY     .M2     B0,3,B0           ; |542| 

           MVKH    .S2     _offset_3,B4
           STH     .D2T2   B0,*B4            ; |542| 
	.dwpsn	file "tskLoop.c",line 545,column 15,is_stmt
           MV      .L2     B12,B4
           LDH     .D2T2   *B4,B0            ; |545| 
           NOP             4
           CMPEQ   .L2     B0,2,B0           ; |545| 
   [ B0]   BNOP    .S1     $C$L29,5          ; |545| 
           ; BRANCHCC OCCURS {$C$L29}        ; |545| 
$C$DW$L$_TSKLOOP_execute$33$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$34$B:
;** 545	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	file "tskLoop.c",line 545,column 10,is_stmt
           ZERO    .L2     B12               ; |545| 
$C$DW$L$_TSKLOOP_execute$34$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L21:    
$C$DW$L$_TSKLOOP_execute$35$B:
;**	-----------------------g25:
;** 547	-----------------------    s$10 = iq_temp[1];
;** 547	-----------------------    v$9 = (int)(iq_data1_real_short = *iq_temp);
;** 548	-----------------------    v$10 = (int)(iq_data1_imag_short = s$10);
;** 549	-----------------------    s$12 = iq_temp[v$8+1];
;** 549	-----------------------    v$11 = (int)(iq_data2_real_short = iq_temp[v$8]);
;** 550	-----------------------    v$12 = (int)(iq_data2_imag_short = s$12);
;** 552	-----------------------    iq_data1_real = v$9;
;** 553	-----------------------    iq_data1_imag = v$10;
;** 554	-----------------------    iq_data2_real = v$11;
;** 555	-----------------------    iq_data2_imag = v$12;
;** 559	-----------------------    iq_result_2 = v$15 = _IQNmpy(v$9, v$12, 14u);
;** 560	-----------------------    iq_result_2 = v$15 -= _IQNmpy(iq_data1_imag, iq_data2_real, 14u);
;** 562	-----------------------    iq_int_2 = _IQNint(v$15, 14u);
;** 563	-----------------------    iq_frac_2 = _IQNfrac(iq_result_2, 14u);
;** 567	-----------------------    iq_result = C$9 = _IQNmpy(iq_data1_real, iq_data2_real, 14u);
;** 568	-----------------------    iq_result = v$5 = _IQNmpy(iq_data1_imag, iq_data2_imag, 14u)+C$9;
;** 570	-----------------------    iq_int = _IQNint(v$5, 14u);
;** 571	-----------------------    iq_frac = _IQNfrac(iq_result, 14u);
;** 573	-----------------------    iq_result = v$5 = _IQNatan2(iq_result_2, iq_result, 14u);
;** 575	-----------------------    iq_int = _IQNint(v$5, 14u);
;** 576	-----------------------    iq_frac = _IQNfrac(iq_result, 14u);
	.dwpsn	file "tskLoop.c",line 547,column 6,is_stmt
           LDH     .D1T1   *A11,A0           ; |547| 
           LDH     .D1T1   *+A11(2),A1       ; |547| 
           MVKL    .S1     _iq_data1_real_short,A5
           MVKH    .S1     _iq_data1_real_short,A5
           NOP             1

           STH     .D1T1   A0,*A5            ; |547| 
||         MV      .L1     A0,A2             ; |547| 

	.dwpsn	file "tskLoop.c",line 548,column 6,is_stmt

           MVKL    .S1     _iq_data1_imag_short,A5
||         MV      .L1     A1,A0             ; |548| 
||         MV      .L2X    A1,B0             ; |548| 

           MVKH    .S1     _iq_data1_imag_short,A5
           STH     .D1T1   A0,*A5            ; |548| 
	.dwpsn	file "tskLoop.c",line 549,column 6,is_stmt
           LDH     .D1T1   *+A11[A4],A0      ; |549| 
           ADDAH   .D1     A11,A4,A4         ; |549| 
           LDH     .D1T1   *+A4(2),A3        ; |549| 
           MVKL    .S2     _iq_data2_real_short,B4
           MVKH    .S2     _iq_data2_real_short,B4

           STH     .D2T1   A0,*B4            ; |549| 
||         MV      .L1     A0,A1             ; |549| 

	.dwpsn	file "tskLoop.c",line 550,column 6,is_stmt
           MVKL    .S2     _iq_data2_imag_short,B4

           MVKH    .S2     _iq_data2_imag_short,B4
||         MV      .L2X    A3,B1             ; |550| 
||         MV      .L1     A3,A0             ; |550| 

           STH     .D2T2   B1,*B4            ; |550| 
	.dwpsn	file "tskLoop.c",line 552,column 6,is_stmt
           MVKL    .S2     _iq_data1_real,B4
           MVKH    .S2     _iq_data1_real,B4
           STW     .D2T1   A2,*B4            ; |552| 
	.dwpsn	file "tskLoop.c",line 553,column 6,is_stmt
           MVKL    .S2     _iq_data1_imag,B4
           MVKH    .S2     _iq_data1_imag,B4
           STW     .D2T2   B0,*B4            ; |553| 
	.dwpsn	file "tskLoop.c",line 554,column 6,is_stmt
           MVKL    .S1     _iq_data2_real,A4
           MVKH    .S1     _iq_data2_real,A4
           STW     .D1T1   A1,*A4            ; |554| 
	.dwpsn	file "tskLoop.c",line 555,column 6,is_stmt
           MVKL    .S2     _iq_data2_imag,B4
           MVKH    .S2     _iq_data2_imag,B4
           STW     .D2T1   A0,*B4            ; |555| 
	.dwpsn	file "tskLoop.c",line 559,column 6,is_stmt
           MVKL    .S1     __IQNmpy,A3       ; |559| 
           MVKH    .S1     __IQNmpy,A3       ; |559| 
           MV      .L2X    A0,B4             ; |559| 
           CALL    .S2X    A3                ; |559| 
           MV      .L1     A2,A4             ; |559| 
           ADDKPC  .S2     $C$RL19,B3,2      ; |559| 
           MVK     .L1     0xe,A6            ; |559| 
$C$RL19:   ; CALL OCCURS {__IQNmpy}          ; |559| 
$C$DW$L$_TSKLOOP_execute$35$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$36$B:
           MVKL    .S2     _iq_result_2,B4

           MVKH    .S2     _iq_result_2,B4
||         MV      .L1     A4,A12            ; |559| 

           STW     .D2T1   A12,*B4           ; |559| 
	.dwpsn	file "tskLoop.c",line 560,column 6,is_stmt
           MVKL    .S2     __IQNmpy,B5       ; |560| 
           MVKL    .S2     _iq_data2_real,B4
           MVKH    .S2     __IQNmpy,B5       ; |560| 

           MVKL    .S1     _iq_data1_imag,A4
||         MVKH    .S2     _iq_data2_real,B4

           CALL    .S2     B5                ; |560| 
||         MVKH    .S1     _iq_data1_imag,A4

           LDW     .D1T1   *A4,A4            ; |560| 
||         LDW     .D2T2   *B4,B4            ; |560| 

           ADDKPC  .S2     $C$RL20,B3,2      ; |560| 
           MVK     .L1     0xe,A6            ; |560| 
$C$RL20:   ; CALL OCCURS {__IQNmpy}          ; |560| 
           MVKL    .S2     _iq_result_2,B4

           MVKH    .S2     _iq_result_2,B4
||         SUB     .L1     A12,A4,A4         ; |560| 

           STW     .D2T1   A4,*B4            ; |560| 
	.dwpsn	file "tskLoop.c",line 562,column 6,is_stmt
           MVKL    .S1     __IQNint,A3       ; |562| 
           MVKH    .S1     __IQNint,A3       ; |562| 
           MVK     .L2     0xe,B4            ; |562| 
           CALL    .S2X    A3                ; |562| 
           ADDKPC  .S2     $C$RL21,B3,4      ; |562| 
$C$RL21:   ; CALL OCCURS {__IQNint}          ; |562| 

           MV      .L1     A4,A0             ; |562| 
||         MVKL    .S1     _iq_int_2,A4

           MVKH    .S1     _iq_int_2,A4
           STW     .D1T1   A0,*A4            ; |562| 
	.dwpsn	file "tskLoop.c",line 563,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |563| 
           MVKH    .S1     __IQNfrac,A3      ; |563| 
           MVKL    .S1     _iq_result_2,A4

           CALL    .S2X    A3                ; |563| 
||         MVKH    .S1     _iq_result_2,A4

           LDW     .D1T1   *A4,A4            ; |563| 
           ADDKPC  .S2     $C$RL22,B3,2      ; |563| 
           MVK     .L2     0xe,B4            ; |563| 
$C$RL22:   ; CALL OCCURS {__IQNfrac}         ; |563| 
           MVKL    .S2     _iq_frac_2,B4
           MVKH    .S2     _iq_frac_2,B4
           STW     .D2T1   A4,*B4            ; |563| 
	.dwpsn	file "tskLoop.c",line 567,column 6,is_stmt
           MVKL    .S1     __IQNmpy,A3       ; |567| 

           MVKH    .S1     __IQNmpy,A3       ; |567| 
||         MVKL    .S2     _iq_data2_real,B4

           MVKL    .S1     _iq_data1_real,A4
||         MVKH    .S2     _iq_data2_real,B4

           CALL    .S2X    A3                ; |567| 
||         MVKH    .S1     _iq_data1_real,A4

           LDW     .D2T2   *B4,B4            ; |567| 
||         LDW     .D1T1   *A4,A4            ; |567| 

           ADDKPC  .S2     $C$RL23,B3,2      ; |567| 
           MVK     .L1     0xe,A6            ; |567| 
$C$RL23:   ; CALL OCCURS {__IQNmpy}          ; |567| 
           MVKL    .S2     _iq_result,B4

           MVKH    .S2     _iq_result,B4
||         MV      .L1     A4,A12            ; |567| 

           STW     .D2T1   A12,*B4           ; |567| 
	.dwpsn	file "tskLoop.c",line 568,column 6,is_stmt
           MVKL    .S2     __IQNmpy,B5       ; |568| 
           MVKL    .S2     _iq_data2_imag,B4
           MVKH    .S2     __IQNmpy,B5       ; |568| 

           MVKL    .S1     _iq_data1_imag,A4
||         MVKH    .S2     _iq_data2_imag,B4

           CALL    .S2     B5                ; |568| 
||         MVKH    .S1     _iq_data1_imag,A4

           LDW     .D2T2   *B4,B4            ; |568| 
||         LDW     .D1T1   *A4,A4            ; |568| 

           ADDKPC  .S2     $C$RL24,B3,2      ; |568| 
           MVK     .L1     0xe,A6            ; |568| 
$C$RL24:   ; CALL OCCURS {__IQNmpy}          ; |568| 
           MVKL    .S1     _iq_result,A5

           MVKH    .S1     _iq_result,A5
||         ADD     .L1     A12,A4,A4         ; |568| 

           STW     .D1T1   A4,*A5            ; |568| 
	.dwpsn	file "tskLoop.c",line 570,column 6,is_stmt
           MVKL    .S1     __IQNint,A3       ; |570| 
           MVKH    .S1     __IQNint,A3       ; |570| 
           MVK     .L2     0xe,B4            ; |570| 
           CALL    .S2X    A3                ; |570| 
           ADDKPC  .S2     $C$RL25,B3,4      ; |570| 
$C$RL25:   ; CALL OCCURS {__IQNint}          ; |570| 
           MVKL    .S2     _iq_int,B4
           MVKH    .S2     _iq_int,B4
           STW     .D2T1   A4,*B4            ; |570| 
	.dwpsn	file "tskLoop.c",line 571,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |571| 
           MVKH    .S1     __IQNfrac,A3      ; |571| 
           MVKL    .S1     _iq_result,A4

           CALL    .S2X    A3                ; |571| 
||         MVKH    .S1     _iq_result,A4

           LDW     .D1T1   *A4,A4            ; |571| 
           ADDKPC  .S2     $C$RL26,B3,2      ; |571| 
           MVK     .L2     0xe,B4            ; |571| 
$C$RL26:   ; CALL OCCURS {__IQNfrac}         ; |571| 
           MVKL    .S2     _iq_frac,B4
           MVKH    .S2     _iq_frac,B4
           STW     .D2T1   A4,*B4            ; |571| 
	.dwpsn	file "tskLoop.c",line 573,column 6,is_stmt
           MVKL    .S1     __IQNatan2,A3     ; |573| 

           MVKH    .S1     __IQNatan2,A3     ; |573| 
||         MVKL    .S2     _iq_result,B4

           MVKL    .S1     _iq_result_2,A4
||         MVKH    .S2     _iq_result,B4

           CALL    .S2X    A3                ; |573| 
||         MVKH    .S1     _iq_result_2,A4

           LDW     .D2T2   *B4,B4            ; |573| 
||         LDW     .D1T1   *A4,A4            ; |573| 

           ADDKPC  .S2     $C$RL27,B3,2      ; |573| 
           MVK     .L1     0xe,A6            ; |573| 
$C$RL27:   ; CALL OCCURS {__IQNatan2}        ; |573| 

           MV      .L1     A4,A0             ; |573| 
||         MVKL    .S1     _iq_result,A4

           MVKH    .S1     _iq_result,A4
           STW     .D1T1   A0,*A4            ; |573| 
	.dwpsn	file "tskLoop.c",line 575,column 6,is_stmt
           MVKL    .S2     __IQNint,B5       ; |575| 
           MVKH    .S2     __IQNint,B5       ; |575| 
           CALL    .S2     B5                ; |575| 
           ADDKPC  .S2     $C$RL28,B3,3      ; |575| 

           MVK     .L2     0xe,B4            ; |575| 
||         MV      .L1     A0,A4             ; |575| 

$C$RL28:   ; CALL OCCURS {__IQNint}          ; |575| 

           MV      .L1     A4,A0             ; |575| 
||         MVKL    .S1     _iq_int,A4

           MVKH    .S1     _iq_int,A4
           STW     .D1T1   A0,*A4            ; |575| 
	.dwpsn	file "tskLoop.c",line 576,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |576| 
           MVKH    .S1     __IQNfrac,A3      ; |576| 
           MVKL    .S1     _iq_result,A4

           CALL    .S2X    A3                ; |576| 
||         MVKH    .S1     _iq_result,A4

           LDW     .D1T1   *A4,A4            ; |576| 
           ADDKPC  .S2     $C$RL29,B3,2      ; |576| 
           MVK     .L2     0xe,B4            ; |576| 
$C$RL29:   ; CALL OCCURS {__IQNfrac}         ; |576| 
$C$DW$L$_TSKLOOP_execute$36$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$37$B:
;** 580	-----------------------    iq_result2 = C$8 = iq_result<<14;
;** 582	-----------------------    iq_int = _IQNint(C$8, 14u);
;** 583	-----------------------    iq_frac = _IQNfrac(iq_result2, 14u);
;** 586	-----------------------    iq_result_short = iq_int;
;** 587	-----------------------    memcpy((void *)buffer_temp, &iq_result_short, 2u);
;** 588	-----------------------    v$8 = (int)offset_2;
;** 588	-----------------------    iq_temp += v$8*2;
;** 545	-----------------------    i += (unsigned)offset_1;
;** 589	-----------------------    ++buffer_temp;
;** 545	-----------------------    if ( i < (unsigned)rf_data_size+K$196 ) goto g25;
           MVKL    .S2     _iq_frac,B4
           MVKH    .S2     _iq_frac,B4
           STW     .D2T1   A4,*B4            ; |576| 
	.dwpsn	file "tskLoop.c",line 580,column 6,is_stmt
           MVKL    .S1     _iq_result,A4
           MVKH    .S1     _iq_result,A4
           LDW     .D1T1   *A4,A0            ; |580| 
           MVKL    .S1     _iq_result2,A5
           MVKH    .S1     _iq_result2,A5
           NOP             2
           SHL     .S1     A0,14,A4          ; |580| 
           STW     .D1T1   A4,*A5            ; |580| 
	.dwpsn	file "tskLoop.c",line 582,column 6,is_stmt
           MVKL    .S2     __IQNint,B5       ; |582| 
           MVKH    .S2     __IQNint,B5       ; |582| 
           CALL    .S2     B5                ; |582| 
           ADDKPC  .S2     $C$RL30,B3,3      ; |582| 
           MVK     .L2     0xe,B4            ; |582| 
$C$RL30:   ; CALL OCCURS {__IQNint}          ; |582| 
$C$DW$L$_TSKLOOP_execute$37$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$38$B:
           MVKL    .S2     _iq_int,B4
           MVKH    .S2     _iq_int,B4
           STW     .D2T1   A4,*B4            ; |582| 
	.dwpsn	file "tskLoop.c",line 583,column 6,is_stmt
           MVKL    .S1     __IQNfrac,A3      ; |583| 
           MVKH    .S1     __IQNfrac,A3      ; |583| 
           MVKL    .S1     _iq_result2,A4

           CALL    .S2X    A3                ; |583| 
||         MVKH    .S1     _iq_result2,A4

           LDW     .D1T1   *A4,A4            ; |583| 
           ADDKPC  .S2     $C$RL31,B3,2      ; |583| 
           MVK     .L2     0xe,B4            ; |583| 
$C$RL31:   ; CALL OCCURS {__IQNfrac}         ; |583| 
$C$DW$L$_TSKLOOP_execute$38$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$39$B:
           MVKL    .S2     _iq_frac,B4
           MVKH    .S2     _iq_frac,B4
           STW     .D2T1   A4,*B4            ; |583| 
	.dwpsn	file "tskLoop.c",line 586,column 6,is_stmt
           MVKL    .S2     _iq_int,B4
           MVKH    .S2     _iq_int,B4
           LDH     .D2T2   *B4,B0            ; |586| 
           MVKL    .S1     _iq_result_short,A4
           MVKH    .S1     _iq_result_short,A4
           NOP             2
           STH     .D1T2   B0,*A4            ; |586| 
	.dwpsn	file "tskLoop.c",line 587,column 6,is_stmt
           MV      .L2X    A4,B4
           LDH     .D2T2   *B4,B0            ; |587| 
           NOP             4
           STH     .D2T2   B0,*B13           ; |587| 
	.dwpsn	file "tskLoop.c",line 588,column 6,is_stmt
           MVKL    .S1     _offset_2,A4
           MVKH    .S1     _offset_2,A4
           LDH     .D1T1   *A4,A4            ; |588| 
           NOP             4
           ADDAH   .D1     A11,A4,A11        ; |588| 
	.dwpsn	file "tskLoop.c",line 545,column 37,is_stmt
           MVKL    .S2     _offset_1,B4
           MVKH    .S2     _offset_1,B4
           LDH     .D2T2   *B4,B0            ; |545| 
           NOP             4
           ADD     .L2     B0,B12,B12        ; |545| 
	.dwpsn	file "tskLoop.c",line 589,column 6,is_stmt
           ADD     .L2     2,B13,B13         ; |589| 
	.dwpsn	file "tskLoop.c",line 545,column 15,is_stmt
           MVKL    .S2     _rf_data_size,B4
           MVKH    .S2     _rf_data_size,B4
           LDH     .D2T2   *B4,B1            ; |545| 
           MVK     .L2     0xfffffffe,B0
           NOP             3
           ADD     .L2     B0,B1,B0          ; |545| 
           CMPLTU  .L2     B12,B0,B0         ; |545| 
   [ B0]   B       .S1     $C$L21            ; |545| 
   [!B0]   BNOP    .S1     $C$L29,4          ; |545| 
           ; BRANCHCC OCCURS {$C$L21}        ; |545| 
$C$DW$L$_TSKLOOP_execute$39$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$40$B:
;** 545	-----------------------    goto g34;
           NOP             1
           ; BRANCH OCCURS {$C$L29}          ; |545| 
$C$DW$L$_TSKLOOP_execute$40$E:
;** --------------------------------------------------------------------------*
$C$L22:    
$C$DW$L$_TSKLOOP_execute$41$B:
;**	-----------------------g26:
;** 365	-----------------------    v$1 = v$22 = (int)block_id;
;** 365	-----------------------    C$7 = (int)block_id;
;** 365	-----------------------    scaling_factor[C$7] = _mem4((void *)(buffer+6));
;** 366	-----------------------    K$74[C$7] = _mem4((void *)(buffer+8));
;** 367	-----------------------    K$150[C$7] = _mem4((void *)(buffer+10));
;** 368	-----------------------    s$14 = (short)_mem4((void *)(buffer+12));
;** 369	-----------------------    C$6 = &K$70[block_id];
;** 369	-----------------------    *C$6 = s$14;
;** 369	-----------------------    K$59[C$7] = v$19;
;** 375	-----------------------    s$15 = (short)(s$14*2);
;** 376	-----------------------    U$223 = C$6;
;** 376	-----------------------    *U$223 = C$5 = s$15;
;** 377	-----------------------    if ( !s$15 ) goto g29;
	.dwpsn	file "tskLoop.c",line 365,column 7,is_stmt
           LDW     .D2T2   *+SP(4),B0        ; |365| 
           LDH     .D2T2   *+SP(12),B4       ; |365| 
           MVKL    .S2     _scaling_factor,B5
           MVKH    .S2     _scaling_factor,B5
           LDH     .D2T2   *+SP(12),B6       ; |365| 
           ADD     .L1X    6,B0,A4           ; |365| 
           LDNW    .D1T1   *A4,A0            ; |365| 
           NOP             4
           STH     .D2T1   A0,*+B5[B4]       ; |365| 
	.dwpsn	file "tskLoop.c",line 366,column 4,is_stmt
           MV      .L2     B0,B5
           LDNW    .D2T2   *+B5(8),B0        ; |366| 
           NOP             4
           STH     .D2T2   B0,*+B11[B4]      ; |366| 
	.dwpsn	file "tskLoop.c",line 367,column 4,is_stmt

           MVK     .L2     10,B7
||         LDW     .D2T2   *+SP(40),B31

           ADD     .L2     B7,B5,B7
           LDNW    .D2T2   *B7,B0            ; |367| 
           NOP             4
           STH     .D2T2   B0,*+B31[B4]      ; |367| 
	.dwpsn	file "tskLoop.c",line 368,column 4,is_stmt
           LDNW    .D2T2   *+B5(12),B0       ; |368| 
           NOP             4
           EXT     .S2     B0,16,16,B0       ; |368| 
	.dwpsn	file "tskLoop.c",line 369,column 4,is_stmt
           LDH     .D2T2   *+SP(12),B1       ; |369| 
           LDW     .D2T2   *+SP(28),B7       ; |369| 
           NOP             3
           ADDAH   .D2     B10,B1,B5         ; |369| 
           STH     .D2T2   B0,*B5            ; |369| 
           STH     .D2T2   B3,*+B7[B4]       ; |369| 
	.dwpsn	file "tskLoop.c",line 375,column 4,is_stmt
           EXT     .S2     B0,17,16,B0       ; |375| 
	.dwpsn	file "tskLoop.c",line 376,column 4,is_stmt
           MV      .L2     B5,B4             ; |376| 
           STH     .D2T2   B0,*B4            ; |376| 
	.dwpsn	file "tskLoop.c",line 377,column 14,is_stmt

   [!B0]   BNOP    .S1     $C$L26,4          ; |377| 
|| [ B0]   LDW     .D2T2   *+SP(4),B4

   [ B0]   ADD     .L2     14,B4,B1
           ; BRANCHCC OCCURS {$C$L26}        ; |377| 
$C$DW$L$_TSKLOOP_execute$41$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$42$B:
;**  	-----------------------    U$236 = buffer+14u;
;** 379	-----------------------    L$1 = (unsigned)C$5+1>>1;
;** 377	-----------------------    i = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 1099511627775, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g28:
;** 379	-----------------------    memcpy(((v$1<<13)+i)*2+K$130, U$236, 2u);
;** 377	-----------------------    v$1 = v$22 = (int)block_id;
;** 381	-----------------------    U$236 += 2;
;** 377	-----------------------    i += 2u;
;** 377	-----------------------    if ( --L$1 ) goto g28;
	.dwpsn	file "tskLoop.c",line 379,column 8,is_stmt
           ADD     .L2     1,B0,B4           ; |379| 
           SHRU    .S2     B4,1,B4           ; |379| 
	.dwpsn	file "tskLoop.c",line 377,column 9,is_stmt

           ZERO    .L1     A3                ; |377| 
||         LDW     .D2T2   *+SP(32),B2
||         MV      .S1X    B1,A4
||         DINT                              ; interrupts off
||         MVK     .D1     0x1,A1            ; init prolog collapse predicate
||         MV      .L2     B6,B3

           MV      .L1X    B4,A0
           SUB     .L2X    A3,2,B0
$C$DW$L$_TSKLOOP_execute$42$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 377
;*      Loop opening brace source line   : 378
;*      Loop closing brace source line   : 382
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 10
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        0     
;*      .S units                     1        1     
;*      .D units                     2        4*    
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             4*       1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          0        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     1        3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 10 Did not find schedule
;*         ii = 11 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |**  *                           |* **           *                |
;*       1: |**  *                           |***            *                |
;*       2: |**  *                           |***            *                |
;*       3: |** **                           |* * *          *                |
;*       4: |** **                           |* * *          *                |
;*       5: |**  *                           |* *            *                |
;*       6: |**  *                           |* *            *                |
;*       7: |**  *                           |* *            *                |
;*       8: |**  *                           |* *            *                |
;*       9: |**  *                           |* *            *                |
;*      10: |**  *                           |***            *                |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Collapsed prolog stages     : 1
;*      Minimum required memory pad : 2 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  SUB             A0,1,A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C168:
;*   0              LDB     .D1T1   *A4++(2),A3       ; |379| 
;*   1              LDB     .D1T1   *-A4(1),A3        ; |379| 
;*   2              SHL     .S2     B3,13,B1          ; |379|  ^ 
;*   3              ADD     .L2     B0,B1,B1          ; |379|  ^ 
;*   4              ADDAH   .D2     B2,B1,B4          ; |379|  ^ 
;*   5              STB     .D2T1   A3,*B4            ; |379|  ^ 
;*   6              STB     .D2T1   A3,*+B4(1)        ; |379|  ^ 
;*   7              LDH     .D2T2   *+SP(12),B1       ; |377|  ^ 
;*     ||   [ A0]   BDEC    .S1     $C$C168,A0        ; |377| 
;*   8              NOP             4
;*  12              MV      .S2     B1,B3             ; |377|  ^ 
;*     ||           ADD     .L2     2,B0,B0           ; |377| 
;*  13              ; BRANCHCC OCCURS {$C$C168}       ; |377| 
;*----------------------------------------------------------------------------*
$C$L23:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L24:    ; PIPED LOOP KERNEL
$C$DW$L$_TSKLOOP_execute$44$B:
           SHL     .S2     B3,13,B1          ; |379| <0,2>  ^ 
           ADD     .L2     B0,B1,B1          ; |379| <0,3>  ^ 
           ADDAH   .D2     B2,B1,B4          ; |379| <0,4>  ^ 
   [!A1]   STB     .D2T1   A3,*B4            ; |379| <0,5>  ^ 
   [!A1]   STB     .D2T1   A3,*+B4(1)        ; |379| <0,6>  ^ 

   [ A0]   BDEC    .S1     $C$L24,A0         ; |377| <0,7> 
|| [!A1]   LDH     .D2T2   *+SP(12),B1       ; |377| <0,7>  ^ 

           NOP             3
           LDB     .D1T1   *A4++(2),A3       ; |379| <1,0> 

   [ A1]   SUB     .L1     A1,1,A1           ; <0,12> 
||         ADD     .L2     2,B0,B0           ; |377| <0,12> 
|| [!A1]   MV      .S2     B1,B3             ; |377| <0,12>  ^ 
||         LDB     .D1T1   *-A4(1),A3        ; |379| <1,1> 

$C$DW$L$_TSKLOOP_execute$44$E:
;** --------------------------------------------------------------------------*
$C$L25:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$46$B:

           MV      .L2     B1,B6
||         RINT                              ; interrupts on
||         STW     .D2T2   B2,*+SP(32)

$C$DW$L$_TSKLOOP_execute$46$E:
;** --------------------------------------------------------------------------*
$C$L26:    
$C$DW$L$_TSKLOOP_execute$47$B:
;**	-----------------------g29:
;** 384	-----------------------    U$114 = v$22*2;
;** 384	-----------------------    if ( (C$4 = K$74[v$22]) < 2 ) goto g32;
	.dwpsn	file "tskLoop.c",line 384,column 4,is_stmt
           LDH     .D2T2   *+B11[B6],B7      ; |384| 
           ADD     .L2     B6,B6,B9          ; |384| 
           NOP             3
           CMPLT   .L2     B7,2,B0           ; |384| 
   [ B0]   BNOP    .S1     $C$L27,5          ; |384| 
           ; BRANCHCC OCCURS {$C$L27}        ; |384| 
$C$DW$L$_TSKLOOP_execute$47$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$48$B:
;** 388	-----------------------    C$3 = K$70[v$22];
;** 388	-----------------------    if ( !(short)(C$3%C$4) ) goto g32;
	.dwpsn	file "tskLoop.c",line 388,column 5,is_stmt

           MVKL    .S2     __remi,B8         ; |388| 
||         LDH     .D2T2   *+B10[B6],B5      ; |388| 

           MVKH    .S2     __remi,B8         ; |388| 
           CALL    .S2     B8                ; |388| 
           ADDKPC  .S2     $C$RL32,B3,2      ; |388| 
           MV      .L1X    B5,A4             ; |388| 
           MV      .L2     B7,B4             ; |388| 
$C$RL32:   ; CALL OCCURS {__remi}            ; |388| 
$C$DW$L$_TSKLOOP_execute$48$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$49$B:
           EXT     .S1     A4,16,16,A0       ; |388| 
   [!A0]   BNOP    .S1     $C$L27,5          ; |388| 
           ; BRANCHCC OCCURS {$C$L27}        ; |388| 
$C$DW$L$_TSKLOOP_execute$49$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$50$B:
;** 389	-----------------------    K$70[v$22] = _mpy(C$3/C$4+1, C$4);
	.dwpsn	file "tskLoop.c",line 389,column 6,is_stmt
           MVKL    .S1     __divi,A3         ; |389| 
           MVKH    .S1     __divi,A3         ; |389| 
           MV      .L1X    B5,A4             ; |389| 
           CALL    .S2X    A3                ; |389| 
           MV      .L2     B7,B4             ; |389| 
           ADDKPC  .S2     $C$RL33,B3,3      ; |389| 
$C$RL33:   ; CALL OCCURS {__divi}            ; |389| 
$C$DW$L$_TSKLOOP_execute$50$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$51$B:
           ADD     .L1     1,A4,A0           ; |389| 
           NOP             1
           MPY     .M2X    A0,B7,B0          ; |389| 
           NOP             1
           STH     .D2T2   B0,*+B10[B6]      ; |389| 
$C$DW$L$_TSKLOOP_execute$51$E:
;** --------------------------------------------------------------------------*
$C$L27:    
$C$DW$L$_TSKLOOP_execute$52$B:
;**	-----------------------g32:
;** 391	-----------------------    C$1 = K$70+U$114;
;** 391	-----------------------    C$2 = *C$1;
;** 391	-----------------------    *C$1 = ((unsigned)C$2>>31)+C$2>>1;
;** 392	-----------------------    goto g34;
	.dwpsn	file "tskLoop.c",line 391,column 4,is_stmt
           ADD     .L2     B9,B10,B4         ; |391| 
           LDH     .D2T2   *B4,B0            ; |391| 
           NOP             4
           SHRU    .S2     B0,31,B1          ; |391| 
           ADD     .L2     B0,B1,B0          ; |391| 
           SHR     .S2     B0,1,B0           ; |391| 
           STH     .D2T2   B0,*B4            ; |391| 
	.dwpsn	file "tskLoop.c",line 392,column 7,is_stmt
           BNOP    .S1     $C$L29,5          ; |392| 
           ; BRANCH OCCURS {$C$L29}          ; |392| 
$C$DW$L$_TSKLOOP_execute$52$E:
;** --------------------------------------------------------------------------*
$C$L28:    
$C$DW$L$_TSKLOOP_execute$53$B:
;**	-----------------------g33:
;** 598	-----------------------    SetReason(K$39, K$257, status);
	.dwpsn	file "tskLoop.c",line 598,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |598| 
           MVKH    .S1     _SetReason,A3     ; |598| 
           MVK     .S2     0x56,B4
           CALL    .S2X    A3                ; |598| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL34,B3,0      ; |598| 
           MV      .L1     A0,A6             ; |598| 
$C$RL34:   ; CALL OCCURS {_SetReason}        ; |598| 
$C$DW$L$_TSKLOOP_execute$53$E:
;** --------------------------------------------------------------------------*
$C$L29:    
$C$DW$L$_TSKLOOP_execute$54$B:
;**	-----------------------g34:
;** 601	-----------------------    if ( status ) goto g2;
	.dwpsn	file "tskLoop.c",line 601,column 9,is_stmt
           LDW     .D2T1   *+SP(44),A0
           NOP             4
   [ A0]   BNOP    .S1     $C$L11,5          ; |601| 
           ; BRANCHCC OCCURS {$C$L11}        ; |601| 
$C$DW$L$_TSKLOOP_execute$54$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$55$B:
;** 602	-----------------------    if ( status = SIO_issue((*info).outputStream, *&buffer, (unsigned)(*info).receivedSize, arg) ) goto g38;
	.dwpsn	file "tskLoop.c",line 602,column 13,is_stmt
           MVKL    .S2     _SIO_issue,B5     ; |602| 
           MVKH    .S2     _SIO_issue,B5     ; |602| 

           CALL    .S2     B5                ; |602| 
||         LDW     .D2T2   *+SP(4),B4        ; |602| 
||         LDW     .D1T1   *+A10(4),A4       ; |602| 

           LDW     .D2T2   *+SP(8),B6        ; |602| 
||         LDHU    .D1T1   *+A10(16),A6      ; |602| 

           ADDKPC  .S2     $C$RL35,B3,3      ; |602| 
$C$RL35:   ; CALL OCCURS {_SIO_issue}        ; |602| 
$C$DW$L$_TSKLOOP_execute$55$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$56$B:
           MV      .L2X    A4,B0             ; |602| 
   [ B0]   BNOP    .S1     $C$L30,5          ; |602| 
           ; BRANCHCC OCCURS {$C$L30}        ; |602| 
$C$DW$L$_TSKLOOP_execute$56$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$57$B:
;** 608	-----------------------    if ( (nmadus = SIO_reclaim((*info).outputStream, &buffer, &arg)) >= 0 ) goto g2;
	.dwpsn	file "tskLoop.c",line 608,column 17,is_stmt
           MVKL    .S2     _SIO_reclaim,B5   ; |608| 
           MVKH    .S2     _SIO_reclaim,B5   ; |608| 
           CALL    .S2     B5                ; |608| 
           LDW     .D1T1   *+A10(4),A4       ; |608| 
           ADDKPC  .S2     $C$RL36,B3,2      ; |608| 

           ADD     .L2     4,SP,B4           ; |608| 
||         ADD     .L1X    8,SP,A6           ; |608| 

$C$RL36:   ; CALL OCCURS {_SIO_reclaim}      ; |608| 
$C$DW$L$_TSKLOOP_execute$57$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$58$B:

           CMPLT   .L1     A4,0,A0           ; |608| 
||         MV      .S1     A4,A3             ; |608| 

   [!A0]   BNOP    .S1     $C$L11,5          ; |608| 
           ; BRANCHCC OCCURS {$C$L11}        ; |608| 
$C$DW$L$_TSKLOOP_execute$58$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$59$B:
;** 613	-----------------------    SetReason(K$39, K$260, -nmadus);
;** 613	-----------------------    goto g2;
	.dwpsn	file "tskLoop.c",line 613,column 21,is_stmt
           MVKL    .S2     _SetReason,B5     ; |613| 
           MVKH    .S2     _SetReason,B5     ; |613| 
           CALL    .S2     B5                ; |613| 
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           MVK     .S2     0x65,B4
           SET     .S2     B4,0x9,0x9,B4

           ADDKPC  .S2     $C$RL37,B3,0      ; |613| 
||         NEG     .L1     A3,A6             ; |613| 

$C$RL37:   ; CALL OCCURS {_SetReason}        ; |613| 
$C$DW$L$_TSKLOOP_execute$59$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$60$B:
           BNOP    .S1     $C$L11,5          ; |613| 
           ; BRANCH OCCURS {$C$L11}          ; |613| 
$C$DW$L$_TSKLOOP_execute$60$E:
;** --------------------------------------------------------------------------*
$C$L30:    
$C$DW$L$_TSKLOOP_execute$61$B:
;**	-----------------------g38:
;** 617	-----------------------    SetReason(K$39, K$261, status);
;** 617	-----------------------    goto g2;
	.dwpsn	file "tskLoop.c",line 617,column 17,is_stmt
           MVKL    .S1     _SetReason,A3     ; |617| 
           MVKH    .S1     _SetReason,A3     ; |617| 
           MVK     .S2     0x69,B4
           CALL    .S2X    A3                ; |617| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL38,B3,0      ; |617| 
           MV      .L1X    B0,A6             ; |617| 
$C$RL38:   ; CALL OCCURS {_SetReason}        ; |617| 
$C$DW$L$_TSKLOOP_execute$61$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_execute$62$B:
           BNOP    .S1     $C$L11,5          ; |617| 
           ; BRANCH OCCURS {$C$L11}          ; |617| 
$C$DW$L$_TSKLOOP_execute$62$E:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	cfa_offset, 48
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 29
	.dwcfi	restore_reg, 28
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 0

$C$DW$298	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$298, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L11:1:1289804794")
	.dwattr $C$DW$298, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$298, DW_AT_TI_begin_line(0x149)
	.dwattr $C$DW$298, DW_AT_TI_end_line(0x26c)
$C$DW$299	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$299, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$4$B)
	.dwattr $C$DW$299, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$4$E)
$C$DW$300	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$300, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$61$B)
	.dwattr $C$DW$300, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$61$E)
$C$DW$301	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$301, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$59$B)
	.dwattr $C$DW$301, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$59$E)
$C$DW$302	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$302, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$55$B)
	.dwattr $C$DW$302, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$55$E)
$C$DW$303	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$303, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$56$B)
	.dwattr $C$DW$303, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$56$E)
$C$DW$304	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$304, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$57$B)
	.dwattr $C$DW$304, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$57$E)
$C$DW$305	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$305, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$50$B)
	.dwattr $C$DW$305, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$50$E)
$C$DW$306	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$306, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$48$B)
	.dwattr $C$DW$306, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$48$E)
$C$DW$307	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$307, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$42$B)
	.dwattr $C$DW$307, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$42$E)
$C$DW$308	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$308, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$41$B)
	.dwattr $C$DW$308, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$41$E)
$C$DW$309	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$309, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$46$B)
	.dwattr $C$DW$309, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$46$E)
$C$DW$310	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$310, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$47$B)
	.dwattr $C$DW$310, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$47$E)
$C$DW$311	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$311, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$49$B)
	.dwattr $C$DW$311, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$49$E)
$C$DW$312	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$312, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$51$B)
	.dwattr $C$DW$312, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$51$E)
$C$DW$313	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$313, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$34$B)
	.dwattr $C$DW$313, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$34$E)
$C$DW$314	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$314, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$23$B)
	.dwattr $C$DW$314, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$23$E)
$C$DW$315	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$315, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$24$B)
	.dwattr $C$DW$315, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$24$E)
$C$DW$316	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$316, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$16$B)
	.dwattr $C$DW$316, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$16$E)
$C$DW$317	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$317, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$14$B)
	.dwattr $C$DW$317, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$14$E)
$C$DW$318	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$318, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$15$B)
	.dwattr $C$DW$318, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$15$E)
$C$DW$319	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$319, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$20$B)
	.dwattr $C$DW$319, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$20$E)
$C$DW$320	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$320, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$21$B)
	.dwattr $C$DW$320, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$21$E)
$C$DW$321	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$321, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$8$B)
	.dwattr $C$DW$321, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$8$E)
$C$DW$322	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$322, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$5$B)
	.dwattr $C$DW$322, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$5$E)
$C$DW$323	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$323, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$6$B)
	.dwattr $C$DW$323, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$6$E)
$C$DW$324	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$324, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$7$B)
	.dwattr $C$DW$324, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$7$E)
$C$DW$325	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$325, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$9$B)
	.dwattr $C$DW$325, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$9$E)
$C$DW$326	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$326, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$10$B)
	.dwattr $C$DW$326, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$10$E)
$C$DW$327	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$327, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$11$B)
	.dwattr $C$DW$327, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$11$E)
$C$DW$328	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$328, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$12$B)
	.dwattr $C$DW$328, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$12$E)
$C$DW$329	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$329, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$13$B)
	.dwattr $C$DW$329, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$13$E)
$C$DW$330	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$330, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$22$B)
	.dwattr $C$DW$330, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$22$E)
$C$DW$331	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$331, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$25$B)
	.dwattr $C$DW$331, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$25$E)
$C$DW$332	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$332, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$26$B)
	.dwattr $C$DW$332, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$26$E)
$C$DW$333	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$333, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$27$B)
	.dwattr $C$DW$333, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$27$E)
$C$DW$334	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$334, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$28$B)
	.dwattr $C$DW$334, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$28$E)
$C$DW$335	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$335, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$29$B)
	.dwattr $C$DW$335, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$29$E)
$C$DW$336	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$336, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$30$B)
	.dwattr $C$DW$336, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$30$E)
$C$DW$337	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$337, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$31$B)
	.dwattr $C$DW$337, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$31$E)
$C$DW$338	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$338, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$32$B)
	.dwattr $C$DW$338, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$32$E)
$C$DW$339	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$339, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$33$B)
	.dwattr $C$DW$339, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$33$E)
$C$DW$340	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$340, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$40$B)
	.dwattr $C$DW$340, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$40$E)
$C$DW$341	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$341, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$52$B)
	.dwattr $C$DW$341, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$52$E)
$C$DW$342	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$342, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$53$B)
	.dwattr $C$DW$342, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$53$E)
$C$DW$343	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$343, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$62$B)
	.dwattr $C$DW$343, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$62$E)
$C$DW$344	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$344, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$60$B)
	.dwattr $C$DW$344, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$60$E)
$C$DW$345	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$345, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$58$B)
	.dwattr $C$DW$345, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$58$E)
$C$DW$346	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$346, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$54$B)
	.dwattr $C$DW$346, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$54$E)

$C$DW$347	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$347, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L24:2:1289804794")
	.dwattr $C$DW$347, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$347, DW_AT_TI_begin_line(0x179)
	.dwattr $C$DW$347, DW_AT_TI_end_line(0x17e)
$C$DW$348	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$348, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$44$B)
	.dwattr $C$DW$348, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$44$E)
	.dwendtag $C$DW$347


$C$DW$349	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$349, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L21:2:1289804794")
	.dwattr $C$DW$349, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$349, DW_AT_TI_begin_line(0x221)
	.dwattr $C$DW$349, DW_AT_TI_end_line(0x24e)
$C$DW$350	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$350, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$35$B)
	.dwattr $C$DW$350, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$35$E)
$C$DW$351	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$351, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$36$B)
	.dwattr $C$DW$351, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$36$E)
$C$DW$352	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$352, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$37$B)
	.dwattr $C$DW$352, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$37$E)
$C$DW$353	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$353, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$38$B)
	.dwattr $C$DW$353, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$38$E)
$C$DW$354	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$354, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$39$B)
	.dwattr $C$DW$354, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$39$E)
	.dwendtag $C$DW$349


$C$DW$355	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$355, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L14:2:1289804794")
	.dwattr $C$DW$355, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$355, DW_AT_TI_begin_line(0x1a0)
	.dwattr $C$DW$355, DW_AT_TI_end_line(0x1ce)
$C$DW$356	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$356, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$17$B)
	.dwattr $C$DW$356, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$17$E)
$C$DW$357	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$357, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$18$B)
	.dwattr $C$DW$357, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$18$E)
$C$DW$358	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$358, DW_AT_low_pc($C$DW$L$_TSKLOOP_execute$19$B)
	.dwattr $C$DW$358, DW_AT_high_pc($C$DW$L$_TSKLOOP_execute$19$E)
	.dwendtag $C$DW$355

	.dwendtag $C$DW$298

	.dwattr $C$DW$222, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$222, DW_AT_TI_end_line(0x26e)
	.dwattr $C$DW$222, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$222

	.sect	".text"
	.global	_TSKLOOP_delete

$C$DW$359	.dwtag  DW_TAG_subprogram, DW_AT_name("TSKLOOP_delete")
	.dwattr $C$DW$359, DW_AT_low_pc(_TSKLOOP_delete)
	.dwattr $C$DW$359, DW_AT_high_pc(0x00)
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_TSKLOOP_delete")
	.dwattr $C$DW$359, DW_AT_external
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$359, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$359, DW_AT_TI_begin_line(0x27b)
	.dwattr $C$DW$359, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "tskLoop.c",line 636,column 1,is_stmt,address _TSKLOOP_delete

	.dwfde $C$DW$CIE, _TSKLOOP_delete

;******************************************************************************
;* FUNCTION NAME: TSKLOOP_delete                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 32 Save = 32 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TSKLOOP_delete:
;** --------------------------------------------------------------------------*
;** 643	-----------------------    C$13 = (*info).inputStream;
;** 643	-----------------------    if ( C$13 == NULL ) goto g4;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |636| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STDW    .D2T1   A13:A12,*SP--     ; |636| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 13, -4
	.dwcfi	save_reg_to_mem, 12, -8
           STDW    .D2T1   A11:A10,*SP--     ; |636| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 11, -12
	.dwcfi	save_reg_to_mem, 10, -16
$C$DW$360	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$360, DW_AT_location[DW_OP_reg4]
$C$DW$361	.dwtag  DW_TAG_variable, DW_AT_name("$O$C10")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("$O$C10")
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$394)
	.dwattr $C$DW$361, DW_AT_location[DW_OP_reg4]
$C$DW$362	.dwtag  DW_TAG_variable, DW_AT_name("$O$C11")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("$O$C11")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg0]
$C$DW$363	.dwtag  DW_TAG_variable, DW_AT_name("$O$C12")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("$O$C12")
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$363, DW_AT_location[DW_OP_reg0]
$C$DW$364	.dwtag  DW_TAG_variable, DW_AT_name("$O$C13")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("$O$C13")
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$364, DW_AT_location[DW_OP_reg0]
$C$DW$365	.dwtag  DW_TAG_variable, DW_AT_name("j")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$365, DW_AT_location[DW_OP_reg11]
$C$DW$366	.dwtag  DW_TAG_variable, DW_AT_name("freeStatus")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_freeStatus")
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$366, DW_AT_location[DW_OP_reg4]
$C$DW$367	.dwtag  DW_TAG_variable, DW_AT_name("tmpStatus")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_tmpStatus")
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$367, DW_AT_location[DW_OP_reg6]
$C$DW$368	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$368, DW_AT_location[DW_OP_reg12]
$C$DW$369	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$388)
	.dwattr $C$DW$369, DW_AT_location[DW_OP_reg10]
$C$DW$370	.dwtag  DW_TAG_variable, DW_AT_name("$O$U9")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("$O$U9")
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$370, DW_AT_location[DW_OP_reg13]
           MV      .L1     A4,A10            ; |636| 
	.dwpsn	file "tskLoop.c",line 643,column 5,is_stmt
           LDW     .D1T1   *A10,A0           ; |643| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L31,5          ; |643| 
           ; BRANCHCC OCCURS {$C$L31}        ; |643| 
;** --------------------------------------------------------------------------*
;** 644	-----------------------    if ( !(status = SIO_delete(C$13)) ) goto g5;
	.dwpsn	file "tskLoop.c",line 644,column 9,is_stmt
           MVKL    .S2     _SIO_delete,B4    ; |644| 
           MVKH    .S2     _SIO_delete,B4    ; |644| 
           CALL    .S2     B4                ; |644| 
           ADDKPC  .S2     $C$RL39,B3,3      ; |644| 
           MV      .L1     A0,A4             ; |644| 
$C$RL39:   ; CALL OCCURS {_SIO_delete}       ; |644| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |644| 
||         MV      .S1     A4,A12            ; |644| 

   [!A0]   BNOP    .S1     $C$L32,5          ; |644| 
           ; BRANCHCC OCCURS {$C$L32}        ; |644| 
;** --------------------------------------------------------------------------*
;** 646	-----------------------    SetReason(257, 646, status);
;** 646	-----------------------    goto g5;
	.dwpsn	file "tskLoop.c",line 646,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |646| 
           MVKH    .S1     _SetReason,A3     ; |646| 
           MVK     .S2     0x86,B4
           CALL    .S2X    A3                ; |646| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL40,B3,0      ; |646| 
           MV      .L1     A12,A6            ; |646| 
$C$RL40:   ; CALL OCCURS {_SetReason}        ; |646| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L32,5          ; |646| 
           ; BRANCH OCCURS {$C$L32}          ; |646| 
;** --------------------------------------------------------------------------*
$C$L31:    
;**	-----------------------g4:
;** 637	-----------------------    status = 0;
	.dwpsn	file "tskLoop.c",line 637,column 13,is_stmt
           ZERO    .L1     A12               ; |637| 
;** --------------------------------------------------------------------------*
$C$L32:    
;**	-----------------------g5:
;** 651	-----------------------    C$12 = (*info).outputStream;
;** 651	-----------------------    if ( C$12 == NULL ) goto g8;
	.dwpsn	file "tskLoop.c",line 651,column 5,is_stmt
           LDW     .D1T1   *+A10(4),A0       ; |651| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L33,5          ; |651| 
           ; BRANCHCC OCCURS {$C$L33}        ; |651| 
;** --------------------------------------------------------------------------*
;** 652	-----------------------    tmpStatus = SIO_delete(C$12);
;** 653	-----------------------    if ( !((status == 0)&(tmpStatus != 0)) ) goto g8;
	.dwpsn	file "tskLoop.c",line 652,column 9,is_stmt
           MVKL    .S2     _SIO_delete,B4    ; |652| 
           MVKH    .S2     _SIO_delete,B4    ; |652| 
           CALL    .S2     B4                ; |652| 
           ADDKPC  .S2     $C$RL41,B3,3      ; |652| 
           MV      .L1     A0,A4             ; |652| 
$C$RL41:   ; CALL OCCURS {_SIO_delete}       ; |652| 
;** --------------------------------------------------------------------------*
           EXTU    .S1     A4,16,16,A6       ; |652| 
	.dwpsn	file "tskLoop.c",line 653,column 9,is_stmt

           CMPEQ   .L1     A6,0,A0           ; |653| 
||         MV      .S1     A12,A1            ; |653| 

           XOR     .S1     1,A0,A1           ; |653| 
||         CMPEQ   .L1     A1,0,A0           ; |653| 

           AND     .L1     A1,A0,A0          ; |653| 
   [!A0]   BNOP    .S1     $C$L33,5          ; |653| 
           ; BRANCHCC OCCURS {$C$L33}        ; |653| 
;** --------------------------------------------------------------------------*
;** 654	-----------------------    status = tmpStatus;
;** 655	-----------------------    SetReason(257, 655, (int)tmpStatus);
	.dwpsn	file "tskLoop.c",line 654,column 13,is_stmt
           MV      .L1     A6,A12            ; |654| 
	.dwpsn	file "tskLoop.c",line 655,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |655| 
           MVKH    .S1     _SetReason,A3     ; |655| 
           MVK     .S2     0x8f,B4
           CALL    .S2X    A3                ; |655| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL42,B3,1      ; |655| 
$C$RL42:   ; CALL OCCURS {_SetReason}        ; |655| 
;** --------------------------------------------------------------------------*
$C$L33:    
;**	-----------------------g8:
;**  	-----------------------    U$9 = status == 0;
;** 660	-----------------------    if ( !(*info).numBuffers ) goto g12;
           CMPEQ   .L1     A12,0,A13
	.dwpsn	file "tskLoop.c",line 660,column 5,is_stmt
           LDHU    .D1T1   *+A10(18),A0      ; |660| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L35,5          ; |660| 
           ; BRANCHCC OCCURS {$C$L35}        ; |660| 
;** --------------------------------------------------------------------------*
;** 661	-----------------------    j = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	file "tskLoop.c",line 661,column 14,is_stmt
           ZERO    .L1     A11               ; |661| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L34:    
$C$DW$L$_TSKLOOP_delete$13$B:
;**	-----------------------g10:
;** 662	-----------------------    C$11 = *(j*4+(char *(* const)[100])info+20);
;** 662	-----------------------    if ( C$11 == NULL ) goto g12;
	.dwpsn	file "tskLoop.c",line 662,column 14,is_stmt
           ADDAW   .D1     A10,A11,A4        ; |662| 
           LDW     .D1T1   *+A4(20),A0       ; |662| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L35,5          ; |662| 
           ; BRANCHCC OCCURS {$C$L35}        ; |662| 
$C$DW$L$_TSKLOOP_delete$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_delete$14$B:
;** 664	-----------------------    C$10 = (*POOL).allocators;
;** 664	-----------------------    (*(*(*C$10).fxns).free)((*C$10).object, (void *)C$11, (*info).bufferSize);
;** 663	-----------------------    if ( (*info).numBuffers > (++j) ) goto g10;
	.dwpsn	file "tskLoop.c",line 664,column 13,is_stmt
           MVKL    .S1     _POOL,A4
           MVKH    .S1     _POOL,A4
           LDW     .D1T1   *A4,A4            ; |664| 
           LDW     .D1T1   *+A10(12),A6      ; |664| 
           MV      .L2X    A0,B4             ; |664| 
           NOP             2
           LDW     .D1T1   *A4,A4            ; |664| 
           NOP             4
           LDW     .D1T1   *+A4(4),A5        ; |664| 
           LDW     .D1T1   *+A4(12),A4       ; |664| 
           NOP             3
           LDW     .D1T1   *+A5(12),A3       ; |664| 
           NOP             4
           CALL    .S2X    A3                ; |664| 
           ADDKPC  .S2     $C$RL43,B3,4      ; |664| 
$C$RL43:   ; CALL OCCURS {A3}                ; |664| 
$C$DW$L$_TSKLOOP_delete$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_delete$15$B:
	.dwpsn	file "tskLoop.c",line 663,column 14,is_stmt
           LDHU    .D1T1   *+A10(18),A1      ; |663| 
           ADD     .L1     1,A11,A0          ; |663| 
           EXTU    .S1     A0,16,16,A11      ; |663| 
           NOP             2
           CMPGTU  .L1     A1,A11,A0         ; |663| 
   [ A0]   BNOP    .S1     $C$L34,5          ; |663| 
           ; BRANCHCC OCCURS {$C$L34}        ; |663| 
$C$DW$L$_TSKLOOP_delete$15$E:
;** --------------------------------------------------------------------------*
$C$L35:    
;**	-----------------------g12:
;** 669	-----------------------    freeStatus = MEM_free(DDR2, (void * const)info, 420u);
;** 671	-----------------------    if ( !((freeStatus != 1)&U$9) ) goto g14;
	.dwpsn	file "tskLoop.c",line 669,column 5,is_stmt
           MVKL    .S2     _MEM_free,B5      ; |669| 

           MVKH    .S2     _MEM_free,B5      ; |669| 
||         MVKL    .S1     _DDR2,A4

           CALL    .S2     B5                ; |669| 
||         MVKH    .S1     _DDR2,A4

           LDW     .D1T1   *A4,A4            ; |669| 
           MVK     .S1     0xa4,A6
           ADDKPC  .S2     $C$RL44,B3,1      ; |669| 

           SET     .S1     A6,0x8,0x8,A6
||         MV      .L2X    A10,B4            ; |669| 

$C$RL44:   ; CALL OCCURS {_MEM_free}         ; |669| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 671,column 5,is_stmt
           CMPEQ   .L1     A4,1,A0           ; |671| 
           XOR     .L1     1,A0,A0           ; |671| 
           AND     .L1     A13,A0,A0         ; |671| 
   [!A0]   BNOP    .S1     $C$L36,5          ; |671| 
           ; BRANCHCC OCCURS {$C$L36}        ; |671| 
;** --------------------------------------------------------------------------*
;** 673	-----------------------    SetReason(257, 673, 2);
;** 672	-----------------------    status = 2;
	.dwpsn	file "tskLoop.c",line 673,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |673| 
           MVKH    .S1     _SetReason,A3     ; |673| 
           MVK     .S2     0xa1,B4
           CALL    .S2X    A3                ; |673| 
           SET     .S2     B4,0x9,0x9,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL45,B3,0      ; |673| 
           MVK     .L1     0x2,A6            ; |673| 
$C$RL45:   ; CALL OCCURS {_SetReason}        ; |673| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 672,column 9,is_stmt
           MVK     .L1     0x2,A0            ; |672| 
           MV      .L1     A0,A12            ; |672| 
;** --------------------------------------------------------------------------*
$C$L36:    
;**	-----------------------g14:
;** 676	-----------------------    return status;
	.dwpsn	file "tskLoop.c",line 676,column 5,is_stmt
           MV      .L1     A12,A4
	.dwpsn	file "tskLoop.c",line 677,column 1,is_stmt
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T2   *++SP(8),B3       ; |677| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$371	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$371, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L34:1:1289804794")
	.dwattr $C$DW$371, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$371, DW_AT_TI_begin_line(0x295)
	.dwattr $C$DW$371, DW_AT_TI_end_line(0x299)
$C$DW$372	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$372, DW_AT_low_pc($C$DW$L$_TSKLOOP_delete$13$B)
	.dwattr $C$DW$372, DW_AT_high_pc($C$DW$L$_TSKLOOP_delete$13$E)
$C$DW$373	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$373, DW_AT_low_pc($C$DW$L$_TSKLOOP_delete$14$B)
	.dwattr $C$DW$373, DW_AT_high_pc($C$DW$L$_TSKLOOP_delete$14$E)
$C$DW$374	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$374, DW_AT_low_pc($C$DW$L$_TSKLOOP_delete$15$B)
	.dwattr $C$DW$374, DW_AT_high_pc($C$DW$L$_TSKLOOP_delete$15$E)
	.dwendtag $C$DW$371

	.dwattr $C$DW$359, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$359, DW_AT_TI_end_line(0x2a5)
	.dwattr $C$DW$359, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$359

	.sect	".text"
	.global	_TSKLOOP_create

$C$DW$375	.dwtag  DW_TAG_subprogram, DW_AT_name("TSKLOOP_create")
	.dwattr $C$DW$375, DW_AT_low_pc(_TSKLOOP_create)
	.dwattr $C$DW$375, DW_AT_high_pc(0x00)
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_TSKLOOP_create")
	.dwattr $C$DW$375, DW_AT_external
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$375, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$375, DW_AT_TI_begin_line(0xa9)
	.dwattr $C$DW$375, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "tskLoop.c",line 170,column 1,is_stmt,address _TSKLOOP_create

	.dwfde $C$DW$CIE, _TSKLOOP_create

;******************************************************************************
;* FUNCTION NAME: TSKLOOP_create                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,A17,   *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Local Frame Size  : 0 Args + 28 Auto + 40 Save = 68 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TSKLOOP_create:
;** --------------------------------------------------------------------------*
;** 198	-----------------------    *infoPtr = C$14 = (struct _TSKLOOP_TransferInfo_tag *)MEM_valloc(DDR2, 420u, 128u, 0);
;** 202	-----------------------    U$5 = C$14;
;** 202	-----------------------    if ( U$5 ) goto g3;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B11,*SP--(8)      ; |170| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 27, 0
           STW     .D2T2   B10,*SP--(8)      ; |170| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 26, -8
           STW     .D2T2   B3,*SP--(8)       ; |170| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 19, -16
           STW     .D2T1   A14,*SP--(8)      ; |170| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -24
           STDW    .D2T1   A13:A12,*SP--     ; |170| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 13, -28
	.dwcfi	save_reg_to_mem, 12, -32
           STDW    .D2T1   A11:A10,*SP--     ; |170| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 11, -36
	.dwcfi	save_reg_to_mem, 10, -40
           ADDK    .S2     -32,SP            ; |170| 
	.dwcfi	cfa_offset, 32
$C$DW$376	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$284)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_reg4]
$C$DW$377	.dwtag  DW_TAG_variable, DW_AT_name("$O$C10")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("$O$C10")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$394)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg4]
$C$DW$378	.dwtag  DW_TAG_variable, DW_AT_name("$O$C11")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("$O$C11")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$394)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg4]
$C$DW$379	.dwtag  DW_TAG_variable, DW_AT_name("$O$C12")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("$O$C12")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg26]
$C$DW$380	.dwtag  DW_TAG_variable, DW_AT_name("$O$C13")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("$O$C13")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg0]
$C$DW$381	.dwtag  DW_TAG_variable, DW_AT_name("$O$C14")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("$O$C14")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg0]
$C$DW$382	.dwtag  DW_TAG_variable, DW_AT_name("$O$v4")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("$O$v4")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg20]
$C$DW$383	.dwtag  DW_TAG_variable, DW_AT_name("$O$v3")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("$O$v3")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg3]
$C$DW$384	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg11]
$C$DW$385	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg27]
$C$DW$386	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg12]
$C$DW$387	.dwtag  DW_TAG_variable, DW_AT_name("infoPtr")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$387)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg10]
$C$DW$388	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg12]
$C$DW$389	.dwtag  DW_TAG_variable, DW_AT_name("$O$U68")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("$O$U68")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg13]
$C$DW$390	.dwtag  DW_TAG_variable, DW_AT_name("$O$U50")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("$O$U50")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg26]
$C$DW$391	.dwtag  DW_TAG_variable, DW_AT_name("$O$K2")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("$O$K2")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg16]
$C$DW$392	.dwtag  DW_TAG_variable, DW_AT_name("$O$U5")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("$O$U5")
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg0]
$C$DW$393	.dwtag  DW_TAG_variable, DW_AT_name("attrs")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$380)
	.dwattr $C$DW$393, DW_AT_location[DW_OP_breg31 4]
           MV      .L1     A4,A10            ; |170| 
	.dwpsn	file "tskLoop.c",line 198,column 5,is_stmt
           MVKL    .S1     _MEM_valloc,A3    ; |198| 

           MVKH    .S1     _MEM_valloc,A3    ; |198| 
||         MVKL    .S2     _DDR2,B10

           MVKH    .S2     _DDR2,B10
           CALL    .S2X    A3                ; |198| 
           LDW     .D2T1   *B10,A4           ; |198| 
           MVK     .S2     0xa4,B4
           SET     .S2     B4,0x8,0x8,B4
           ADDKPC  .S2     $C$RL46,B3,0      ; |198| 

           MVK     .S1     0x80,A6           ; |198| 
||         ZERO    .L2     B6                ; |198| 

$C$RL46:   ; CALL OCCURS {_MEM_valloc}       ; |198| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |198| 
           STW     .D1T1   A0,*A10           ; |198| 
	.dwpsn	file "tskLoop.c",line 202,column 5,is_stmt
   [ A0]   BNOP    .S1     $C$L37,5          ; |202| 
           ; BRANCHCC OCCURS {$C$L37}        ; |202| 
;** --------------------------------------------------------------------------*
;** 172	-----------------------    info = NULL;
;** 203	-----------------------    status = 1;
;** 204	-----------------------    goto g4;
	.dwpsn	file "tskLoop.c",line 172,column 29,is_stmt
           ZERO    .L2     B11               ; |172| 
	.dwpsn	file "tskLoop.c",line 203,column 9,is_stmt
           MVK     .L2     0x1,B0            ; |203| 
           NOP             1
           MV      .L1X    B0,A12            ; |203| 
	.dwpsn	file "tskLoop.c",line 204,column 5,is_stmt
           BNOP    .S1     $C$L38,5          ; |204| 
           ; BRANCH OCCURS {$C$L38}          ; |204| 
;** --------------------------------------------------------------------------*
$C$L37:    
;**	-----------------------g3:
;** 206	-----------------------    info = U$5;
;** 171	-----------------------    status = 0;
	.dwpsn	file "tskLoop.c",line 206,column 9,is_stmt
           MV      .L2X    A0,B11            ; |206| 
	.dwpsn	file "tskLoop.c",line 171,column 29,is_stmt
           ZERO    .L1     A12               ; |171| 
;** --------------------------------------------------------------------------*
$C$L38:    
;**	-----------------------g4:
;** 209	-----------------------    v$3 = xferBufSize;
;** 209	-----------------------    v$4 = DDR2;
;** 209	-----------------------    if ( status ) goto g7;
	.dwpsn	file "tskLoop.c",line 209,column 5,is_stmt

           MVKL    .S1     _xferBufSize,A4
||         MV      .L2     B10,B4

           MV      .L2X    A12,B0            ; |209| 
||         MVKH    .S1     _xferBufSize,A4
||         LDW     .D2T2   *B4,B4            ; |209| 

   [ B0]   BNOP    .S1     $C$L39,5          ; |209| 
||         LDW     .D1T1   *A4,A3            ; |209| 

           ; BRANCHCC OCCURS {$C$L39}        ; |209| 
;** --------------------------------------------------------------------------*
;** 211	-----------------------    (*info).numTransfers = numTransfers;
;** 212	-----------------------    (*info).bufferSize = v$3;
;** 213	-----------------------    (*info).numBuffers = C$13 = 1u;
;** 216	-----------------------    attrs = SIO_ATTRS;
;** 217	-----------------------    attrs.nbufs = (*info).numBuffers;
;** 218	-----------------------    attrs.segid = v$4;
;** 219	-----------------------    attrs.align = K$2 = 128u;
;** 220	-----------------------    attrs.flush = C$13;
;** 221	-----------------------    attrs.model = 1u;
;** 222	-----------------------    attrs.timeout = 0xffffffffu;
;** 225	-----------------------    (*info).inputStream = SIO_create("/dio_dsplink0", 0, (*info).bufferSize, &attrs);
;** 229	-----------------------    (*info).outputStream = SIO_create("/dio_dsplink1", 1, (*info).bufferSize, &attrs);
;** 234	-----------------------    if ( !(((*info).inputStream == NULL)|((*info).outputStream == NULL)) ) goto g7;
	.dwpsn	file "tskLoop.c",line 211,column 9,is_stmt
           MVKL    .S1     _numTransfers,A4
           MVKH    .S1     _numTransfers,A4
           LDHU    .D1T2   *A4,B0            ; |211| 
           NOP             4
           STH     .D2T2   B0,*+B11(8)       ; |211| 
	.dwpsn	file "tskLoop.c",line 212,column 9,is_stmt
           STW     .D2T1   A3,*+B11(12)      ; |212| 
	.dwpsn	file "tskLoop.c",line 213,column 9,is_stmt
           MVK     .L1     0x1,A0            ; |213| 
           STH     .D2T1   A0,*+B11(18)      ; |213| 
	.dwpsn	file "tskLoop.c",line 216,column 9,is_stmt
           MVKL    .S2     _SIO_ATTRS,B5
           MVKH    .S2     _SIO_ATTRS,B5
           LDNDW   .D2T2   *+B5(16),B1:B0    ; |216| 
           LDNDW   .D2T2   *+B5(8),B3:B2     ; |216| 
           LDNDW   .D2T2   *B5,B7:B6         ; |216| 
           LDW     .D2T2   *+B5(24),B5       ; |216| 
           ADD     .L1X    4,SP,A4           ; |216| 
           STNDW   .D1T2   B1:B0,*+A4(16)    ; |216| 
           STNDW   .D1T2   B3:B2,*+A4(8)     ; |216| 
           STNDW   .D1T2   B7:B6,*A4         ; |216| 
           STW     .D1T2   B5,*+A4(24)       ; |216| 
	.dwpsn	file "tskLoop.c",line 217,column 9,is_stmt
           LDHU    .D2T2   *+B11(18),B0      ; |217| 
           NOP             4
           STW     .D2T2   B0,*+SP(4)        ; |217| 
	.dwpsn	file "tskLoop.c",line 218,column 9,is_stmt
           STW     .D2T2   B4,*+SP(8)        ; |218| 
	.dwpsn	file "tskLoop.c",line 219,column 9,is_stmt
           MVK     .S2     0x80,B0           ; |219| 
           STW     .D2T2   B0,*+SP(12)       ; |219| 
	.dwpsn	file "tskLoop.c",line 220,column 9,is_stmt
           STH     .D2T1   A0,*+SP(16)       ; |220| 
	.dwpsn	file "tskLoop.c",line 221,column 9,is_stmt
           MVK     .L1     1,A0              ; |221| 
           STW     .D2T1   A0,*+SP(20)       ; |221| 
	.dwpsn	file "tskLoop.c",line 222,column 9,is_stmt
           ADD     .L1     -2,A0,A0
           STW     .D2T1   A0,*+SP(24)       ; |222| 
	.dwpsn	file "tskLoop.c",line 225,column 9,is_stmt

           MVKL    .S1     _SIO_create,A3    ; |225| 
||         LDW     .D2T1   *+B11(12),A6      ; |225| 
||         ADD     .L2     4,SP,B6           ; |225| 

           MVKH    .S1     _SIO_create,A3    ; |225| 
           MVKL    .S1     $C$SL1+0,A4       ; |225| 

           CALL    .S2X    A3                ; |225| 
||         MVKH    .S1     $C$SL1+0,A4       ; |225| 

           ADDKPC  .S2     $C$RL47,B3,3      ; |225| 
           ZERO    .L2     B4                ; |225| 
$C$RL47:   ; CALL OCCURS {_SIO_create}       ; |225| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*B11           ; |225| 
	.dwpsn	file "tskLoop.c",line 229,column 9,is_stmt
           MVKL    .S2     _SIO_create,B5    ; |229| 
           MVKH    .S2     _SIO_create,B5    ; |229| 
           CALL    .S2     B5                ; |229| 
           LDW     .D2T1   *+B11(12),A6      ; |229| 
           MVKL    .S1     $C$SL2+0,A4       ; |229| 
           ADDKPC  .S2     $C$RL48,B3,1      ; |229| 

           MVKH    .S1     $C$SL2+0,A4       ; |229| 
||         MVK     .L2     0x1,B4            ; |229| 
||         ADD     .S2     4,SP,B6           ; |229| 

$C$RL48:   ; CALL OCCURS {_SIO_create}       ; |229| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+B11(4)       ; |229| 
	.dwpsn	file "tskLoop.c",line 234,column 9,is_stmt
           LDW     .D2T2   *B11,B0           ; |234| 
           ZERO    .L2     B4                ; |234| 
           NOP             3
   [!B0]   MVK     .L2     0x1,B4            ; |234| 
;** --------------------------------------------------------------------------*
           LDW     .D2T2   *+B11(4),B0       ; |234| 
           ZERO    .L2     B3                ; |234| 
           NOP             3
   [!B0]   MVK     .L2     0x1,B3            ; |234| 
;** --------------------------------------------------------------------------*
           OR      .L2     B3,B4,B0          ; |234| 
   [!B0]   BNOP    .S1     $C$L39,5          ; |234| 
           ; BRANCHCC OCCURS {$C$L39}        ; |234| 
;** --------------------------------------------------------------------------*
;** 236	-----------------------    status = 1;
	.dwpsn	file "tskLoop.c",line 236,column 13,is_stmt
           MVK     .L2     0x1,B0            ; |236| 
           NOP             1
           MV      .L1X    B0,A12            ; |236| 
;** --------------------------------------------------------------------------*
$C$L39:    
;**	-----------------------g7:
;** 241	-----------------------    if ( status ) goto g16;
	.dwpsn	file "tskLoop.c",line 241,column 5,is_stmt
           MV      .L1     A12,A0
   [ A0]   BNOP    .S1     $C$L44,5          ; |241| 
           ; BRANCHCC OCCURS {$C$L44}        ; |241| 
;** --------------------------------------------------------------------------*
;** 242	-----------------------    if ( !(((*info).numBuffers != 0)&(status == 0)) ) goto g16;
;** 242	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	file "tskLoop.c",line 242,column 14,is_stmt
           LDHU    .D2T2   *+B11(18),B0      ; |242| 
           ZERO    .L1     A11               ; |242| 
           MV      .L2X    A12,B1            ; |242| 
           NOP             2
           CMPEQ   .L2     B0,0,B0           ; |242| 

           XOR     .S2     1,B0,B1           ; |242| 
||         CMPEQ   .L2     B1,0,B0           ; |242| 

           AND     .L2     B0,B1,B0          ; |242| 

   [!B0]   BNOP    .S1     $C$L44,5          ; |242| 
|| [ B0]   MV      .L2X    A11,B0

           ; BRANCHCC OCCURS {$C$L44}        ; |242| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L40
;** --------------------------------------------------------------------------*
$C$L40:    
$C$DW$L$_TSKLOOP_create$14$B:
;**	-----------------------g10:
;** 243	-----------------------    U$50 = C$12 = i*4+(char *(*)[100])info+20;
;** 243	-----------------------    C$11 = (*POOL).allocators;
;** 243	-----------------------    if ( !(status = (*(*(*C$11).fxns).alloc)((*C$11).object, C$12, (*info).bufferSize)) ) goto g15;
	.dwpsn	file "tskLoop.c",line 243,column 13,is_stmt
           MVKL    .S1     _POOL,A10
           MVKH    .S1     _POOL,A10
           LDW     .D1T1   *A10,A4           ; |243| 
           LDW     .D2T1   *+B11(12),A6      ; |243| 
           ADDAW   .D2     B11,B0,B0         ; |243| 
           ADD     .D2     B0,20,B10         ; |243| 
           MV      .L2     B10,B4            ; |243| 
           LDW     .D1T1   *A4,A4            ; |243| 
           NOP             4
           LDW     .D1T1   *+A4(4),A5        ; |243| 
           LDW     .D1T1   *+A4(12),A4       ; |243| 
           NOP             3
           LDW     .D1T1   *+A5(8),A0        ; |243| 
           NOP             4
           CALL    .S2X    A0                ; |243| 
           ADDKPC  .S2     $C$RL49,B3,4      ; |243| 
$C$RL49:   ; CALL OCCURS {A0}                ; |243| 
$C$DW$L$_TSKLOOP_create$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$15$B:

           MV      .L1     A4,A0             ; |243| 
||         MV      .S1     A4,A12            ; |243| 

   [!A0]   BNOP    .S1     $C$L43,5          ; |243| 
           ; BRANCHCC OCCURS {$C$L43}        ; |243| 
$C$DW$L$_TSKLOOP_create$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$16$B:
;** 247	-----------------------    if ( !i ) goto g14;
	.dwpsn	file "tskLoop.c",line 247,column 30,is_stmt
           MV      .L1     A11,A0

   [!A0]   BNOP    .S1     $C$L42,4          ; |247| 
|| [ A0]   ADD     .D2     B11,20,B0

   [ A0]   MV      .L1X    B0,A13            ; Define a twin register
           ; BRANCHCC OCCURS {$C$L42}        ; |247| 
$C$DW$L$_TSKLOOP_create$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$17$B:
;**  	-----------------------    U$68 = (char **)info+20;
;** 248	-----------------------    L$1 = (int)i;
;**  	-----------------------    #pragma MUST_ITERATE(1, 65536, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	file "tskLoop.c",line 248,column 21,is_stmt
           LDW     .D1T1   *A10,A4           ; |248| 
           ZERO    .L1     A14               ; |251| 
           MV      .L1     A11,A12           ; |248| 
           NOP             2
           LDW     .D1T1   *A4,A4            ; |248| 
$C$DW$L$_TSKLOOP_create$17$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*----------------------------------------------------------------------------*
$C$L41:    
$C$DW$L$_TSKLOOP_create$18$B:
;**	-----------------------g13:
;** 248	-----------------------    C$10 = (*POOL).allocators;
;** 248	-----------------------    (*(*(*C$10).fxns).free)((*C$10).object, *U$50, (*info).bufferSize);
;** 251	-----------------------    *U$68++ = NULL;
;** 247	-----------------------    if ( --L$1 ) goto g13;
           LDW     .D2T1   *+B11(12),A6      ; |248| 
           LDW     .D2T2   *B10,B4           ; |248| 
           NOP             2
           LDW     .D1T1   *+A4(4),A5        ; |248| 
           LDW     .D1T1   *+A4(12),A4       ; |248| 
           NOP             3
           LDW     .D1T1   *+A5(12),A0       ; |248| 
           NOP             4
           CALL    .S2X    A0                ; |248| 
           ADDKPC  .S2     $C$RL50,B3,4      ; |248| 
$C$RL50:   ; CALL OCCURS {A0}                ; |248| 
$C$DW$L$_TSKLOOP_create$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$_TSKLOOP_create$19$B:
	.dwpsn	file "tskLoop.c",line 251,column 21,is_stmt
           STW     .D1T1   A14,*A13++        ; |251| 
	.dwpsn	file "tskLoop.c",line 247,column 30,is_stmt

           SUB     .L1     A12,1,A0          ; |247| 
||         SUB     .S1     A12,1,A12         ; |247| 

   [ A0]   BNOP    .S1     $C$L41,4          ; |247| 
|| [ A0]   LDW     .D1T1   *A10,A4           ; |248| 

   [ A0]   LDW     .D1T1   *A4,A4            ; |248| 
           ; BRANCHCC OCCURS {$C$L41}        ; |247| 
$C$DW$L$_TSKLOOP_create$19$E:
;** --------------------------------------------------------------------------*
$C$L42:    
$C$DW$L$_TSKLOOP_create$20$B:
;**	-----------------------g14:
;** 253	-----------------------    status = 1;
	.dwpsn	file "tskLoop.c",line 253,column 17,is_stmt
           MVK     .L2     0x1,B0            ; |253| 
           NOP             1
           MV      .L1X    B0,A12            ; |253| 
$C$DW$L$_TSKLOOP_create$20$E:
;** --------------------------------------------------------------------------*
$C$L43:    
$C$DW$L$_TSKLOOP_create$21$B:
;**	-----------------------g15:
;** 242	-----------------------    if ( ((++i) < (*info).numBuffers)&(status == 0) ) goto g10;
	.dwpsn	file "tskLoop.c",line 242,column 69,is_stmt
           LDHU    .D2T2   *+B11(18),B1      ; |242| 
           NOP             1
           ADD     .L1     1,A11,A0          ; |242| 
           EXTU    .S1     A0,16,16,A0       ; |242| 
           CMPEQ   .L2X    A12,0,B0          ; |242| 
           CMPLTU  .L2X    A0,B1,B1          ; |242| 
           AND     .L2     B0,B1,B0          ; |242| 
   [ B0]   BNOP    .S1     $C$L40,2          ; |242| 
           MV      .L1     A0,A11            ; |242| 
           NOP             1
   [ B0]   MV      .L2X    A11,B0
           ; BRANCHCC OCCURS {$C$L40}        ; |242| 
$C$DW$L$_TSKLOOP_create$21$E:
;** --------------------------------------------------------------------------*
$C$L44:    
;**	-----------------------g16:
;** 261	-----------------------    memset(&fir_coeff, 0, 32768u);
;** 262	-----------------------    memset(&fir_coeff_size, 0, 4u);
;** 263	-----------------------    memset(&scaling_factor, 0, 4u);
;** 264	-----------------------    memset(&interpolation_factor, 0, 4u);
;** 265	-----------------------    memset(&decimation_factor, 0, 4u);
;** 266	-----------------------    memset(&block_type_array, 0, 4u);
;** 267	-----------------------    memset(&filt_hist, 0, 16384u);
;** 268	-----------------------    return status;
	.dwpsn	file "tskLoop.c",line 261,column 5,is_stmt
           MVKL    .S1     _memset,A3        ; |261| 
           MVKH    .S1     _memset,A3        ; |261| 
           MVKL    .S2     _fir_coeff,B5
           CALL    .S2X    A3                ; |261| 
           MVKH    .S2     _fir_coeff,B5
           MVK     .S1     0x0,A6
           ADDKPC  .S2     $C$RL51,B3,1      ; |261| 

           MV      .L1X    B5,A4             ; |261| 
||         SET     .S1     A6,0xf,0xf,A6
||         ZERO    .L2     B4                ; |261| 

$C$RL51:   ; CALL OCCURS {_memset}           ; |261| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 262,column 5,is_stmt
           MVKL    .S1     _memset,A3        ; |262| 
           MVKH    .S1     _memset,A3        ; |262| 
           MVKL    .S1     _fir_coeff_size,A4
           CALL    .S2X    A3                ; |262| 
           ADDKPC  .S2     $C$RL52,B3,3      ; |262| 

           MVKH    .S1     _fir_coeff_size,A4
||         ZERO    .L2     B4                ; |262| 
||         MVK     .L1     0x4,A6            ; |262| 

$C$RL52:   ; CALL OCCURS {_memset}           ; |262| 
	.dwpsn	file "tskLoop.c",line 263,column 5,is_stmt
           MVKL    .S1     _memset,A3        ; |263| 
           MVKH    .S1     _memset,A3        ; |263| 
           MVKL    .S2     _scaling_factor,B5
           CALL    .S2X    A3                ; |263| 
           MVKH    .S2     _scaling_factor,B5
           ADDKPC  .S2     $C$RL53,B3,2      ; |263| 

           MV      .L1X    B5,A4             ; |263| 
||         ZERO    .L2     B4                ; |263| 
||         MVK     .S1     0x4,A6            ; |263| 

$C$RL53:   ; CALL OCCURS {_memset}           ; |263| 
	.dwpsn	file "tskLoop.c",line 264,column 5,is_stmt
           MVKL    .S2     _memset,B5        ; |264| 
           MVKH    .S2     _memset,B5        ; |264| 
           CALL    .S2     B5                ; |264| 
           MVKL    .S1     _interpolation_factor,A4
           ADDKPC  .S2     $C$RL54,B3,2      ; |264| 

           MVKH    .S1     _interpolation_factor,A4
||         ZERO    .L2     B4                ; |264| 
||         MVK     .L1     0x4,A6            ; |264| 

$C$RL54:   ; CALL OCCURS {_memset}           ; |264| 
	.dwpsn	file "tskLoop.c",line 265,column 2,is_stmt
           MVKL    .S1     _memset,A3        ; |265| 
           MVKH    .S1     _memset,A3        ; |265| 
           MVKL    .S2     _decimation_factor,B5
           CALL    .S2X    A3                ; |265| 
           MVKH    .S2     _decimation_factor,B5
           ADDKPC  .S2     $C$RL55,B3,2      ; |265| 

           MV      .L1X    B5,A4             ; |265| 
||         ZERO    .L2     B4                ; |265| 
||         MVK     .S1     0x4,A6            ; |265| 

$C$RL55:   ; CALL OCCURS {_memset}           ; |265| 
	.dwpsn	file "tskLoop.c",line 266,column 2,is_stmt
           MVKL    .S1     _memset,A3        ; |266| 
           MVKH    .S1     _memset,A3        ; |266| 
           MVKL    .S2     _block_type_array,B5
           CALL    .S2X    A3                ; |266| 
           MVKH    .S2     _block_type_array,B5
           ADDKPC  .S2     $C$RL56,B3,2      ; |266| 

           MV      .L1X    B5,A4             ; |266| 
||         ZERO    .L2     B4                ; |266| 
||         MVK     .S1     0x4,A6            ; |266| 

$C$RL56:   ; CALL OCCURS {_memset}           ; |266| 
	.dwpsn	file "tskLoop.c",line 267,column 2,is_stmt
           MVKL    .S2     _memset,B5        ; |267| 
           MVKH    .S2     _memset,B5        ; |267| 
           CALL    .S2     B5                ; |267| 
           MVKL    .S1     _filt_hist,A4
           MVK     .S1     0x0,A6
           MVKH    .S1     _filt_hist,A4
           ADDKPC  .S2     $C$RL57,B3,0      ; |267| 

           SET     .S1     A6,0xe,0xe,A6
||         ZERO    .L2     B4                ; |267| 

$C$RL57:   ; CALL OCCURS {_memset}           ; |267| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "tskLoop.c",line 268,column 5,is_stmt
           MV      .L1     A12,A4
	.dwpsn	file "tskLoop.c",line 269,column 1,is_stmt
           ADDK    .S2     32,SP             ; |269| 
	.dwcfi	cfa_offset, 0
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T1   *++SP(8),A14
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 14
           LDW     .D2T2   *++SP(8),B3
           NOP             2
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 19
           LDW     .D2T2   *++SP(8),B10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 26
           LDW     .D2T2   *++SP(8),B11      ; |269| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 27
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$394	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$394, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L40:1:1289804794")
	.dwattr $C$DW$394, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$394, DW_AT_TI_begin_line(0xf2)
	.dwattr $C$DW$394, DW_AT_TI_end_line(0xff)
$C$DW$395	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$395, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$14$B)
	.dwattr $C$DW$395, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$14$E)
$C$DW$396	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$396, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$17$B)
	.dwattr $C$DW$396, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$17$E)
$C$DW$397	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$397, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$16$B)
	.dwattr $C$DW$397, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$16$E)
$C$DW$398	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$398, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$15$B)
	.dwattr $C$DW$398, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$15$E)
$C$DW$399	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$399, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$20$B)
	.dwattr $C$DW$399, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$20$E)
$C$DW$400	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$400, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$21$B)
	.dwattr $C$DW$400, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$21$E)

$C$DW$401	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$401, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\tskLoop.asm:$C$L41:2:1289804794")
	.dwattr $C$DW$401, DW_AT_TI_begin_file("tskLoop.c")
	.dwattr $C$DW$401, DW_AT_TI_begin_line(0xf7)
	.dwattr $C$DW$401, DW_AT_TI_end_line(0xfc)
$C$DW$402	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$402, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$18$B)
	.dwattr $C$DW$402, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$18$E)
$C$DW$403	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$403, DW_AT_low_pc($C$DW$L$_TSKLOOP_create$19$B)
	.dwattr $C$DW$403, DW_AT_high_pc($C$DW$L$_TSKLOOP_create$19$E)
	.dwendtag $C$DW$401

	.dwendtag $C$DW$394

	.dwattr $C$DW$375, DW_AT_TI_end_file("tskLoop.c")
	.dwattr $C$DW$375, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$375, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$375

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
$C$SL1:	.string	"/dio_dsplink0",0
$C$SL2:	.string	"/dio_dsplink1",0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_SIO_create
	.global	_SIO_delete
	.global	_SIO_issue
	.global	_SIO_reclaim
	.global	_SetReason
	.global	_memset
	.global	__FtoIQN
	.global	__IQNmpy
	.global	__IQNrmpy
	.global	__IQNdiv
	.global	__IQNsin
	.global	__IQNcos
	.global	__IQNatan2
	.global	__IQNint
	.global	__IQNfrac
	.global	__IQNabs
	.global	_SIO_ATTRS
	.global	_DDR2
	.global	_POOL
	.global	_xferBufSize
	.global	_numTransfers
	.global	__divi
	.global	__remi

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$65	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$T$88	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)

$C$DW$T$206	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$206, DW_AT_language(DW_LANG_C)
$C$DW$404	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$405	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$406	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$407	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$84)
	.dwendtag $C$DW$T$206


$C$DW$T$209	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$209, DW_AT_language(DW_LANG_C)
$C$DW$408	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$409	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
$C$DW$410	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$209


$C$DW$T$210	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)
$C$DW$411	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
$C$DW$412	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$413	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$210

$C$DW$T$214	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$214, DW_AT_address_class(0x20)

$C$DW$T$25	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$414	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$24)
	.dwendtag $C$DW$T$25

$C$DW$T$26	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$T$92	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
$C$DW$415	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$T$92

$C$DW$T$93	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Close")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
$C$DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Post")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)

$C$DW$T$98	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
$C$DW$416	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$417	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$418	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$98

$C$DW$T$99	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x20)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Free")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)

$C$DW$T$102	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
$C$DW$T$103	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Init")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
$C$DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtInit")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
$C$DW$T$216	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tinit")
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)

$C$DW$T$126	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
$C$DW$419	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
$C$DW$420	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$126

$C$DW$T$127	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x20)
$C$DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Fxn")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
$C$DW$T$207	.dwtag  DW_TAG_const_type
$C$DW$T$208	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$T$208, DW_AT_address_class(0x20)

$C$DW$T$217	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$217, DW_AT_language(DW_LANG_C)
$C$DW$421	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$217


$C$DW$T$218	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
$C$DW$422	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$423	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$424	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$218


$C$DW$T$225	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$225, DW_AT_language(DW_LANG_C)
$C$DW$425	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$222)
$C$DW$426	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$222)
$C$DW$427	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$224)
$C$DW$428	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$429	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$225


$C$DW$T$227	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C)
$C$DW$430	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$T$227

$C$DW$T$228	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$228, DW_AT_address_class(0x20)
$C$DW$T$229	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Fxn")
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$229, DW_AT_language(DW_LANG_C)
$C$DW$T$4	.dwtag  DW_TAG_base_type, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$230	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$230, DW_AT_address_class(0x20)
$C$DW$T$234	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$T$234, DW_AT_address_class(0x20)
$C$DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$236	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$236, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$236, DW_AT_language(DW_LANG_C)
$C$DW$T$237	.dwtag  DW_TAG_typedef, DW_AT_name("SmUns")
	.dwattr $C$DW$T$237, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$237, DW_AT_language(DW_LANG_C)
$C$DW$T$238	.dwtag  DW_TAG_typedef, DW_AT_name("SmBits")
	.dwattr $C$DW$T$238, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$238, DW_AT_language(DW_LANG_C)
$C$DW$T$239	.dwtag  DW_TAG_typedef, DW_AT_name("Byte")
	.dwattr $C$DW$T$239, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$T$239, DW_AT_language(DW_LANG_C)
$C$DW$T$240	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackEntry")
	.dwattr $C$DW$T$240, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$240, DW_AT_language(DW_LANG_C)
$C$DW$T$241	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$240)
	.dwattr $C$DW$T$241, DW_AT_address_class(0x20)
$C$DW$T$242	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackPtr")
	.dwattr $C$DW$T$242, DW_AT_type(*$C$DW$T$241)
	.dwattr $C$DW$T$242, DW_AT_language(DW_LANG_C)
$C$DW$T$243	.dwtag  DW_TAG_typedef, DW_AT_name("Uchar8")
	.dwattr $C$DW$T$243, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$243, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$220	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$T$8)
$C$DW$T$221	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$T$221, DW_AT_address_class(0x20)
$C$DW$T$222	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$221)
$C$DW$T$223	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$223, DW_AT_address_class(0x20)
$C$DW$T$224	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$T$223)
$C$DW$T$248	.dwtag  DW_TAG_typedef, DW_AT_name("bufferType")
	.dwattr $C$DW$T$248, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$248, DW_AT_language(DW_LANG_C)
$C$DW$T$249	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$249, DW_AT_address_class(0x20)
$C$DW$T$250	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$250, DW_AT_type(*$C$DW$T$249)

$C$DW$T$251	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
$C$DW$431	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$249)
$C$DW$432	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$433	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$249)
$C$DW$434	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$435	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$249)
	.dwendtag $C$DW$T$251


$C$DW$T$252	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$252, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$252, DW_AT_byte_size(0x4000)
$C$DW$436	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$436, DW_AT_upper_bound(0x1fff)
	.dwendtag $C$DW$T$252


$C$DW$T$253	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$253, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$253, DW_AT_byte_size(0x8000)
$C$DW$437	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$437, DW_AT_upper_bound(0x01)
$C$DW$438	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$438, DW_AT_upper_bound(0x1fff)
	.dwendtag $C$DW$T$253


$C$DW$T$254	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$254, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$254, DW_AT_byte_size(0x10000)
$C$DW$439	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$439, DW_AT_upper_bound(0x7fff)
	.dwendtag $C$DW$T$254


$C$DW$T$255	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$255, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$255, DW_AT_byte_size(0x04)
$C$DW$440	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$440, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$255

$C$DW$T$256	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$256, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$256, DW_AT_language(DW_LANG_C)
$C$DW$T$257	.dwtag  DW_TAG_typedef, DW_AT_name("MdInt")
	.dwattr $C$DW$T$257, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$257, DW_AT_language(DW_LANG_C)
$C$DW$T$258	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$258, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$258, DW_AT_language(DW_LANG_C)
$C$DW$T$259	.dwtag  DW_TAG_typedef, DW_AT_name("I16_IQ")
	.dwattr $C$DW$T$259, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$259, DW_AT_language(DW_LANG_C)
$C$DW$T$260	.dwtag  DW_TAG_typedef, DW_AT_name("Word16")
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$260, DW_AT_language(DW_LANG_C)

$C$DW$T$262	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$262, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$262, DW_AT_byte_size(0x4000)
$C$DW$441	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$441, DW_AT_upper_bound(0x1fff)
	.dwendtag $C$DW$T$262

$C$DW$T$264	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$T$264, DW_AT_address_class(0x20)
$C$DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)

$C$DW$T$54	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$442	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$443	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$53)
	.dwendtag $C$DW$T$54

$C$DW$T$55	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x20)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tready")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)

$C$DW$T$154	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
$C$DW$444	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$445	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$39)
	.dwendtag $C$DW$T$154

$C$DW$T$155	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_address_class(0x20)
$C$DW$T$156	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Pend")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)

$C$DW$T$267	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$267, DW_AT_language(DW_LANG_C)
$C$DW$446	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$447	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$448	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$267

$C$DW$T$82	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
$C$DW$T$167	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtError")
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$167, DW_AT_language(DW_LANG_C)
$C$DW$T$268	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Id")
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$268, DW_AT_language(DW_LANG_C)
$C$DW$T$269	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$269, DW_AT_type(*$C$DW$T$9)
$C$DW$T$270	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$T$270, DW_AT_address_class(0x20)

$C$DW$T$271	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$T$271, DW_AT_language(DW_LANG_C)
$C$DW$449	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$T$271

$C$DW$T$272	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns")
	.dwattr $C$DW$T$272, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$272, DW_AT_language(DW_LANG_C)
$C$DW$T$273	.dwtag  DW_TAG_typedef, DW_AT_name("MdBits")
	.dwattr $C$DW$T$273, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$273, DW_AT_language(DW_LANG_C)
$C$DW$T$274	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$274, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$274, DW_AT_language(DW_LANG_C)
$C$DW$T$275	.dwtag  DW_TAG_typedef, DW_AT_name("U16_IQ")
	.dwattr $C$DW$T$275, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$275, DW_AT_language(DW_LANG_C)
$C$DW$T$276	.dwtag  DW_TAG_typedef, DW_AT_name("Uword16")
	.dwattr $C$DW$T$276, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$276, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
$C$DW$450	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
	.dwendtag $C$DW$T$36

$C$DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tclose")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tissue")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Treclaim")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$112	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

$C$DW$T$41	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
$C$DW$451	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$452	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$39)
$C$DW$453	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$41

$C$DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tctrl")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)

$C$DW$T$45	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
$C$DW$454	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$455	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$44)
	.dwendtag $C$DW$T$45

$C$DW$T$46	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_address_class(0x20)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tidle")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$456	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$35)
$C$DW$457	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Topen")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$59	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$60	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)

$C$DW$T$89	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
$C$DW$458	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$459	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$T$89

$C$DW$T$90	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Open")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)

$C$DW$T$95	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
$C$DW$460	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$461	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$462	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
	.dwendtag $C$DW$T$95

$C$DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_address_class(0x20)
$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Alloc")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
$C$DW$T$139	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$22)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Mode")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)

$C$DW$T$171	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$171, DW_AT_language(DW_LANG_C)
$C$DW$463	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
	.dwendtag $C$DW$T$171

$C$DW$T$172	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$172, DW_AT_address_class(0x20)
$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtOpen")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
$C$DW$T$174	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtClose")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)

$C$DW$T$176	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$176, DW_AT_language(DW_LANG_C)
$C$DW$464	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
$C$DW$465	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
$C$DW$466	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$44)
$C$DW$467	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$175)
$C$DW$468	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
	.dwendtag $C$DW$T$176

$C$DW$T$177	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$177, DW_AT_address_class(0x20)
$C$DW$T$178	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtLocate")
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_language(DW_LANG_C)

$C$DW$T$179	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$179, DW_AT_language(DW_LANG_C)
$C$DW$469	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
$C$DW$470	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$165)
	.dwendtag $C$DW$T$179

$C$DW$T$180	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$180, DW_AT_address_class(0x20)
$C$DW$T$181	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtRelease")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)

$C$DW$T$184	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
$C$DW$471	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$170)
$C$DW$472	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$183)
	.dwendtag $C$DW$T$184

$C$DW$T$185	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$T$185, DW_AT_address_class(0x20)
$C$DW$T$186	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtPut")
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)

$C$DW$T$279	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$279, DW_AT_language(DW_LANG_C)
$C$DW$473	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$T$279


$C$DW$T$280	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$280, DW_AT_language(DW_LANG_C)
$C$DW$474	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$475	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$65)
$C$DW$476	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$477	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$280


$C$DW$T$281	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$281, DW_AT_language(DW_LANG_C)
$C$DW$478	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
$C$DW$479	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$88)
$C$DW$480	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$112)
	.dwendtag $C$DW$T$281


$C$DW$T$285	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$285, DW_AT_language(DW_LANG_C)
$C$DW$481	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$284)
	.dwendtag $C$DW$T$285


$C$DW$T$286	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$286, DW_AT_language(DW_LANG_C)
$C$DW$482	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$283)
	.dwendtag $C$DW$T$286

$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("LgInt")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
$C$DW$T$204	.dwtag  DW_TAG_typedef, DW_AT_name("I32_IQ")
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C)

$C$DW$T$288	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$288, DW_AT_language(DW_LANG_C)
$C$DW$483	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$16)
$C$DW$484	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$T$288


$C$DW$T$289	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$289, DW_AT_language(DW_LANG_C)
$C$DW$485	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$486	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$487	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$T$289


$C$DW$T$291	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$291, DW_AT_language(DW_LANG_C)
$C$DW$488	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$489	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$490	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$290)
	.dwendtag $C$DW$T$291


$C$DW$T$292	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$292, DW_AT_language(DW_LANG_C)
$C$DW$491	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
$C$DW$492	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$287)
	.dwendtag $C$DW$T$292


$C$DW$T$293	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$293, DW_AT_language(DW_LANG_C)
$C$DW$493	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
	.dwendtag $C$DW$T$293

$C$DW$T$294	.dwtag  DW_TAG_typedef, DW_AT_name("_iq14")
	.dwattr $C$DW$T$294, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$294, DW_AT_language(DW_LANG_C)
$C$DW$T$295	.dwtag  DW_TAG_typedef, DW_AT_name("_iq")
	.dwattr $C$DW$T$295, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$295, DW_AT_language(DW_LANG_C)
$C$DW$T$296	.dwtag  DW_TAG_typedef, DW_AT_name("_iq31")
	.dwattr $C$DW$T$296, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$296, DW_AT_language(DW_LANG_C)
$C$DW$T$297	.dwtag  DW_TAG_typedef, DW_AT_name("_iq30")
	.dwattr $C$DW$T$297, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$297, DW_AT_language(DW_LANG_C)
$C$DW$T$298	.dwtag  DW_TAG_typedef, DW_AT_name("_iq29")
	.dwattr $C$DW$T$298, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$298, DW_AT_language(DW_LANG_C)
$C$DW$T$299	.dwtag  DW_TAG_typedef, DW_AT_name("_iq28")
	.dwattr $C$DW$T$299, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$299, DW_AT_language(DW_LANG_C)
$C$DW$T$300	.dwtag  DW_TAG_typedef, DW_AT_name("_iq27")
	.dwattr $C$DW$T$300, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$300, DW_AT_language(DW_LANG_C)
$C$DW$T$301	.dwtag  DW_TAG_typedef, DW_AT_name("_iq26")
	.dwattr $C$DW$T$301, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$301, DW_AT_language(DW_LANG_C)
$C$DW$T$302	.dwtag  DW_TAG_typedef, DW_AT_name("_iq25")
	.dwattr $C$DW$T$302, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$302, DW_AT_language(DW_LANG_C)
$C$DW$T$303	.dwtag  DW_TAG_typedef, DW_AT_name("_iq24")
	.dwattr $C$DW$T$303, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$303, DW_AT_language(DW_LANG_C)
$C$DW$T$304	.dwtag  DW_TAG_typedef, DW_AT_name("_iq23")
	.dwattr $C$DW$T$304, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$304, DW_AT_language(DW_LANG_C)
$C$DW$T$305	.dwtag  DW_TAG_typedef, DW_AT_name("_iq22")
	.dwattr $C$DW$T$305, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$305, DW_AT_language(DW_LANG_C)
$C$DW$T$306	.dwtag  DW_TAG_typedef, DW_AT_name("_iq21")
	.dwattr $C$DW$T$306, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$306, DW_AT_language(DW_LANG_C)
$C$DW$T$307	.dwtag  DW_TAG_typedef, DW_AT_name("_iq20")
	.dwattr $C$DW$T$307, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$307, DW_AT_language(DW_LANG_C)
$C$DW$T$308	.dwtag  DW_TAG_typedef, DW_AT_name("_iq19")
	.dwattr $C$DW$T$308, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$308, DW_AT_language(DW_LANG_C)
$C$DW$T$309	.dwtag  DW_TAG_typedef, DW_AT_name("_iq18")
	.dwattr $C$DW$T$309, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$309, DW_AT_language(DW_LANG_C)
$C$DW$T$310	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17")
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C)
$C$DW$T$311	.dwtag  DW_TAG_typedef, DW_AT_name("_iq16")
	.dwattr $C$DW$T$311, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$311, DW_AT_language(DW_LANG_C)
$C$DW$T$312	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15")
	.dwattr $C$DW$T$312, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$312, DW_AT_language(DW_LANG_C)
$C$DW$T$313	.dwtag  DW_TAG_typedef, DW_AT_name("_iq13")
	.dwattr $C$DW$T$313, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$313, DW_AT_language(DW_LANG_C)
$C$DW$T$314	.dwtag  DW_TAG_typedef, DW_AT_name("_iq12")
	.dwattr $C$DW$T$314, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$314, DW_AT_language(DW_LANG_C)
$C$DW$T$315	.dwtag  DW_TAG_typedef, DW_AT_name("_iq11")
	.dwattr $C$DW$T$315, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$315, DW_AT_language(DW_LANG_C)
$C$DW$T$316	.dwtag  DW_TAG_typedef, DW_AT_name("_iq10")
	.dwattr $C$DW$T$316, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$316, DW_AT_language(DW_LANG_C)
$C$DW$T$317	.dwtag  DW_TAG_typedef, DW_AT_name("_iq9")
	.dwattr $C$DW$T$317, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$317, DW_AT_language(DW_LANG_C)
$C$DW$T$318	.dwtag  DW_TAG_typedef, DW_AT_name("_iq8")
	.dwattr $C$DW$T$318, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$318, DW_AT_language(DW_LANG_C)
$C$DW$T$319	.dwtag  DW_TAG_typedef, DW_AT_name("_iq7")
	.dwattr $C$DW$T$319, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$319, DW_AT_language(DW_LANG_C)
$C$DW$T$320	.dwtag  DW_TAG_typedef, DW_AT_name("_iq6")
	.dwattr $C$DW$T$320, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$320, DW_AT_language(DW_LANG_C)
$C$DW$T$321	.dwtag  DW_TAG_typedef, DW_AT_name("_iq5")
	.dwattr $C$DW$T$321, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$321, DW_AT_language(DW_LANG_C)
$C$DW$T$322	.dwtag  DW_TAG_typedef, DW_AT_name("_iq4")
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$322, DW_AT_language(DW_LANG_C)
$C$DW$T$323	.dwtag  DW_TAG_typedef, DW_AT_name("_iq3")
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$323, DW_AT_language(DW_LANG_C)
$C$DW$T$324	.dwtag  DW_TAG_typedef, DW_AT_name("_iq2")
	.dwattr $C$DW$T$324, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$324, DW_AT_language(DW_LANG_C)
$C$DW$T$325	.dwtag  DW_TAG_typedef, DW_AT_name("_iq1")
	.dwattr $C$DW$T$325, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$325, DW_AT_language(DW_LANG_C)
$C$DW$T$326	.dwtag  DW_TAG_typedef, DW_AT_name("_iq0")
	.dwattr $C$DW$T$326, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$326, DW_AT_language(DW_LANG_C)

$C$DW$T$327	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$327, DW_AT_language(DW_LANG_C)
$C$DW$494	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$495	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$327

$C$DW$T$328	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$328, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$328, DW_AT_language(DW_LANG_C)
$C$DW$T$329	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$329, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$329, DW_AT_language(DW_LANG_C)
$C$DW$T$330	.dwtag  DW_TAG_typedef, DW_AT_name("Word32")
	.dwattr $C$DW$T$330, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$330, DW_AT_language(DW_LANG_C)
$C$DW$T$352	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$352, DW_AT_type(*$C$DW$T$10)
$C$DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$357	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_IntState")
	.dwattr $C$DW$T$357, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$357, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)

$C$DW$T$162	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x08)
$C$DW$496	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$496, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$162

$C$DW$T$165	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Queue")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
$C$DW$T$175	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$175, DW_AT_address_class(0x20)
$C$DW$T$133	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_sizep")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$T$197	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns")
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
$C$DW$T$287	.dwtag  DW_TAG_typedef, DW_AT_name("U32_IQ")
	.dwattr $C$DW$T$287, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$287, DW_AT_language(DW_LANG_C)
$C$DW$T$290	.dwtag  DW_TAG_typedef, DW_AT_name("Uword32")
	.dwattr $C$DW$T$290, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$290, DW_AT_language(DW_LANG_C)
$C$DW$T$354	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$354, DW_AT_type(*$C$DW$T$11)
$C$DW$T$355	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$354)
	.dwattr $C$DW$T$355, DW_AT_address_class(0x20)

$C$DW$T$356	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$355)
	.dwattr $C$DW$T$356, DW_AT_language(DW_LANG_C)
$C$DW$497	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$T$356


$C$DW$T$358	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$358, DW_AT_language(DW_LANG_C)
$C$DW$498	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$17)
	.dwendtag $C$DW$T$358


$C$DW$T$359	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$359, DW_AT_language(DW_LANG_C)
$C$DW$499	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$500	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$359

$C$DW$T$360	.dwtag  DW_TAG_typedef, DW_AT_name("LgBits")
	.dwattr $C$DW$T$360, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$360, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$361	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$361, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$361, DW_AT_language(DW_LANG_C)
$C$DW$T$362	.dwtag  DW_TAG_typedef, DW_AT_name("Word40")
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$362, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$363	.dwtag  DW_TAG_typedef, DW_AT_name("Uword40")
	.dwattr $C$DW$T$363, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$363, DW_AT_language(DW_LANG_C)
$C$DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$364	.dwtag  DW_TAG_typedef, DW_AT_name("I64_IQ")
	.dwattr $C$DW$T$364, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$364, DW_AT_language(DW_LANG_C)
$C$DW$T$365	.dwtag  DW_TAG_typedef, DW_AT_name("Word64")
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$365, DW_AT_language(DW_LANG_C)
$C$DW$T$15	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$366	.dwtag  DW_TAG_typedef, DW_AT_name("U64_IQ")
	.dwattr $C$DW$T$366, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$366, DW_AT_language(DW_LANG_C)
$C$DW$T$367	.dwtag  DW_TAG_typedef, DW_AT_name("Uword64")
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$367, DW_AT_language(DW_LANG_C)
$C$DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$368	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$368, DW_AT_language(DW_LANG_C)
$C$DW$T$369	.dwtag  DW_TAG_typedef, DW_AT_name("Fword32")
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$369, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$370	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$370, DW_AT_address_class(0x20)

$C$DW$T$371	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$370)
	.dwattr $C$DW$T$371, DW_AT_language(DW_LANG_C)
$C$DW$501	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$371


$C$DW$T$372	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$372, DW_AT_language(DW_LANG_C)
$C$DW$502	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
$C$DW$503	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$372

$C$DW$T$373	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$373, DW_AT_type(*$C$DW$T$17)
$C$DW$T$374	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$373)
	.dwattr $C$DW$T$374, DW_AT_address_class(0x20)

$C$DW$T$375	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$374)
	.dwattr $C$DW$T$375, DW_AT_language(DW_LANG_C)
$C$DW$504	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$208)
	.dwendtag $C$DW$T$375

$C$DW$T$18	.dwtag  DW_TAG_base_type, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$505	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("next")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$506	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("prev")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$20

$C$DW$T$19	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$19, DW_AT_address_class(0x20)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x10)
$C$DW$507	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$507, DW_AT_name("wListElem")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$508	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$508, DW_AT_name("wCount")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$509	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$509, DW_AT_name("fxn")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$23	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$23, DW_AT_address_class(0x20)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$30	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
$C$DW$T$376	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$376, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$376, DW_AT_language(DW_LANG_C)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$85	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_address_class(0x20)

$C$DW$T$86	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x190)
$C$DW$510	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$510, DW_AT_upper_bound(0x63)
	.dwendtag $C$DW$T$86

$C$DW$T$377	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$377, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$377, DW_AT_language(DW_LANG_C)
$C$DW$T$378	.dwtag  DW_TAG_typedef, DW_AT_name("SmInt")
	.dwattr $C$DW$T$378, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$378, DW_AT_language(DW_LANG_C)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x20)
$C$DW$511	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$511, DW_AT_name("job")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$512	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$512, DW_AT_name("count")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$513	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$513, DW_AT_name("pendQ")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$514	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$514, DW_AT_name("name")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$33

$C$DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$52, DW_AT_address_class(0x20)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
$C$DW$T$379	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$379, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$379, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("DEV_Fxns")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x1c)
$C$DW$515	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$515, DW_AT_name("close")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$516	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$516, DW_AT_name("ctrl")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$517	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$517, DW_AT_name("idle")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_idle")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$518	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$518, DW_AT_name("issue")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_issue")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$519	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$519, DW_AT_name("open")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$520	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$520, DW_AT_name("ready")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$521	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$521, DW_AT_name("reclaim")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_reclaim")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$58

$C$DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Fxns")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$T$75	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x20)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("DEV_Callback")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x0c)
$C$DW$522	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$522, DW_AT_name("fxn")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$523	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$523, DW_AT_name("arg0")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$524	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$524, DW_AT_name("arg1")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$62

$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Callback")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$68	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)
$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Callback")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$78	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x20)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("DEV_Obj")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x4c)
$C$DW$525	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$525, DW_AT_name("todevice")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_todevice")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$526	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$526, DW_AT_name("fromdevice")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_fromdevice")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$527	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$527, DW_AT_name("bufsize")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_bufsize")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$528	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$528, DW_AT_name("nbufs")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$529	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$529, DW_AT_name("segid")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_segid")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$530	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$530, DW_AT_name("mode")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$531	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$531, DW_AT_name("devid")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$532	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$532, DW_AT_name("params")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$533	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$533, DW_AT_name("object")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$534	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$534, DW_AT_name("fxns")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$535	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$535, DW_AT_name("timeout")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$536	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$536, DW_AT_name("align")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_align")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$537	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$537, DW_AT_name("callback")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_callback")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$69

$C$DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Handle")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Obj")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("DEV_Frame")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x20)
$C$DW$538	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$538, DW_AT_name("link")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$539	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$539, DW_AT_name("addr")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$540	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$540, DW_AT_name("size")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$541	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$541, DW_AT_name("misc")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_misc")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$542	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$542, DW_AT_name("arg")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$543	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$543, DW_AT_name("cmd")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$544	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$544, DW_AT_name("status")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$71

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("SIO_Obj")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x64)
$C$DW$545	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$545, DW_AT_name("dobj")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_dobj")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$546	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$546, DW_AT_name("flush")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_flush")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$547	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$547, DW_AT_name("framelist")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_framelist")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$548	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$548, DW_AT_name("standardFrame")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_standardFrame")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$549	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$549, DW_AT_name("model")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_model")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$550	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$550, DW_AT_name("pfxns")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_pfxns")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$76

$C$DW$T$80	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$80, DW_AT_address_class(0x20)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Handle")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)

$C$DW$T$382	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$382, DW_AT_language(DW_LANG_C)
$C$DW$551	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$32)
$C$DW$552	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$22)
$C$DW$553	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$64)
$C$DW$554	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$381)
	.dwendtag $C$DW$T$382

$C$DW$T$385	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Obj")
	.dwattr $C$DW$T$385, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$385, DW_AT_language(DW_LANG_C)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("SIO_Attrs")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x1c)
$C$DW$555	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$555, DW_AT_name("nbufs")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$556	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$556, DW_AT_name("segid")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_segid")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$557	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$557, DW_AT_name("align")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_align")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$558	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$558, DW_AT_name("flush")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_flush")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$559	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$559, DW_AT_name("model")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_model")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$560	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$560, DW_AT_name("timeout")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$561	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$561, DW_AT_name("callback")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_callback")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$79

$C$DW$T$380	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Attrs")
	.dwattr $C$DW$T$380, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$380, DW_AT_language(DW_LANG_C)
$C$DW$T$381	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$380)
	.dwattr $C$DW$T$381, DW_AT_address_class(0x20)

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("TSKLOOP_TransferInfo_tag")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x1a4)
$C$DW$562	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$562, DW_AT_name("inputStream")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_inputStream")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$563	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$563, DW_AT_name("outputStream")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_outputStream")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$564	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$564, DW_AT_name("numTransfers")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_numTransfers")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$565	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$565, DW_AT_name("bufferSize")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$566	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$566, DW_AT_name("receivedSize")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_receivedSize")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$567	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$567, DW_AT_name("numBuffers")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_numBuffers")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$568	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$568, DW_AT_name("buffers")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_buffers")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$87

$C$DW$T$282	.dwtag  DW_TAG_typedef, DW_AT_name("TSKLOOP_TransferInfo")
	.dwattr $C$DW$T$282, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$282, DW_AT_language(DW_LANG_C)
$C$DW$T$283	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$282)
	.dwattr $C$DW$T$283, DW_AT_address_class(0x20)
$C$DW$T$284	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$T$284, DW_AT_address_class(0x20)
$C$DW$T$387	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$387, DW_AT_type(*$C$DW$T$284)
$C$DW$T$388	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$388, DW_AT_type(*$C$DW$T$283)
$C$DW$T$389	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$389, DW_AT_address_class(0x20)

$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_name("POOL_Fxns")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x10)
$C$DW$569	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$569, DW_AT_name("open")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$570	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$570, DW_AT_name("close")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$571	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$571, DW_AT_name("alloc")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_alloc")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$572	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$572, DW_AT_name("free")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$101

$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Fxns")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
$C$DW$T$106	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_address_class(0x20)

$C$DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$107, DW_AT_name("POOL_Obj")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x10)
$C$DW$573	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$573, DW_AT_name("initFxn")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_initFxn")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$574	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$574, DW_AT_name("fxns")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$575	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$575, DW_AT_name("params")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$576	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$576, DW_AT_name("object")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$107

$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Obj")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
$C$DW$T$109	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x20)
$C$DW$T$394	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$394, DW_AT_address_class(0x20)
$C$DW$T$395	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Handle")
	.dwattr $C$DW$T$395, DW_AT_type(*$C$DW$T$394)
	.dwattr $C$DW$T$395, DW_AT_language(DW_LANG_C)

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("POOL_Config")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x08)
$C$DW$577	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$577, DW_AT_name("allocators")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_allocators")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$578	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$578, DW_AT_name("numAllocators")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_numAllocators")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$110

$C$DW$T$396	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Config")
	.dwattr $C$DW$T$396, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$396, DW_AT_language(DW_LANG_C)
$C$DW$T$397	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$396)
	.dwattr $C$DW$T$397, DW_AT_address_class(0x20)

$C$DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$111, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x10)
$C$DW$579	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$579, DW_AT_name("seqnum")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$580	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$580, DW_AT_name("val1")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_val1")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$581	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$581, DW_AT_name("val2")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_val2")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$582	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$582, DW_AT_name("val3")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_val3")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$111

$C$DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
$C$DW$T$114	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_address_class(0x20)

$C$DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$115, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x18)
$C$DW$583	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$583, DW_AT_name("bufend")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$584	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$584, DW_AT_name("flag")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$585	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$585, DW_AT_name("seqnum")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$586	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$586, DW_AT_name("curptr")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_curptr")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$587	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$587, DW_AT_name("lenmask")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_lenmask")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$588	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$588, DW_AT_name("bufbeg")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_bufbeg")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$115

$C$DW$T$399	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$399, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$399, DW_AT_language(DW_LANG_C)
$C$DW$T$400	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$400, DW_AT_address_class(0x20)
$C$DW$T$401	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Handle")
	.dwattr $C$DW$T$401, DW_AT_type(*$C$DW$T$400)
	.dwattr $C$DW$T$401, DW_AT_language(DW_LANG_C)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x0c)
$C$DW$589	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$589, DW_AT_name("fxn")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$590	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$590, DW_AT_name("arg1")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$591	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$591, DW_AT_name("arg0")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$116

$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
$C$DW$T$402	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$402, DW_AT_address_class(0x20)
$C$DW$T$403	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Handle")
	.dwattr $C$DW$T$403, DW_AT_type(*$C$DW$T$402)
	.dwattr $C$DW$T$403, DW_AT_language(DW_LANG_C)

$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x0c)
$C$DW$592	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$592, DW_AT_name("num")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$593	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$593, DW_AT_name("acc")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$594	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$594, DW_AT_name("max")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$118

$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
$C$DW$T$124	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_address_class(0x20)
$C$DW$T$404	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$404, DW_AT_address_class(0x20)
$C$DW$T$405	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Handle")
	.dwattr $C$DW$T$405, DW_AT_type(*$C$DW$T$404)
	.dwattr $C$DW$T$405, DW_AT_language(DW_LANG_C)

$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x10)
$C$DW$595	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$595, DW_AT_name("spsave")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_spsave")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$596	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$596, DW_AT_name("stkBottom")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_stkBottom")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$597	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$597, DW_AT_name("stkTop")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_stkTop")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$598	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$598, DW_AT_name("inhwi")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_inhwi")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$119

$C$DW$T$406	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$406, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$406, DW_AT_language(DW_LANG_C)

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x0c)
$C$DW$599	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$599, DW_AT_name("intrMask")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_intrMask")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$600	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$600, DW_AT_name("ccMask")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$601	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$601, DW_AT_name("arg")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$120

$C$DW$T$407	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$407, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$407, DW_AT_language(DW_LANG_C)

$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x24)
$C$DW$602	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$602, DW_AT_name("runfxn")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_runfxn")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$603	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$603, DW_AT_name("execfxn")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_execfxn")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$604	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$604, DW_AT_name("curmask")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_curmask")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$605	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$605, DW_AT_name("curset")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_curset")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$606	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$606, DW_AT_name("lock")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$607	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$607, DW_AT_name("curmbox")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_curmbox")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$608	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$608, DW_AT_name("curfxn")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_curfxn")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$609	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$609, DW_AT_name("rdybeg")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_rdybeg")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$610	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$610, DW_AT_name("inswi")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_inswi")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$121

$C$DW$T$408	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$408, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$408, DW_AT_language(DW_LANG_C)

$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x2c)
$C$DW$611	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$611, DW_AT_name("lock")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$612	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$612, DW_AT_name("ready")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$613	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$613, DW_AT_name("mask")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$614	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$614, DW_AT_name("link")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$615	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$615, DW_AT_name("initkey")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_initkey")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$616	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$616, DW_AT_name("mailbox")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$617	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$617, DW_AT_name("fxnobj")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$618	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$618, DW_AT_name("stslock")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_stslock")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$619	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$619, DW_AT_name("sts")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$125

$C$DW$T$409	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$409, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$409, DW_AT_language(DW_LANG_C)
$C$DW$T$410	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$410, DW_AT_address_class(0x20)
$C$DW$T$411	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Handle")
	.dwattr $C$DW$T$411, DW_AT_type(*$C$DW$T$410)
	.dwattr $C$DW$T$411, DW_AT_language(DW_LANG_C)

$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x14)
$C$DW$620	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$620, DW_AT_name("fxn")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$621	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$621, DW_AT_name("arg0")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$622	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$622, DW_AT_name("arg1")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$623	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$623, DW_AT_name("priority")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$624	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$624, DW_AT_name("mailbox")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$129

$C$DW$T$412	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$412, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$412, DW_AT_language(DW_LANG_C)

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x10)
$C$DW$625	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$625, DW_AT_name("ABORTFXN")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_ABORTFXN")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$626	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$626, DW_AT_name("ERRORFXN")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_ERRORFXN")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$627	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$627, DW_AT_name("EXITFXN")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$628	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$628, DW_AT_name("PUTCFXN")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_PUTCFXN")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$130

$C$DW$T$413	.dwtag  DW_TAG_typedef, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$413, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$413, DW_AT_language(DW_LANG_C)

$C$DW$T$131	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$131, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x04)
$C$DW$629	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$629, DW_AT_name("space")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$131

$C$DW$T$414	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$414, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$414, DW_AT_language(DW_LANG_C)

$C$DW$T$132	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$132, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x04)
$C$DW$630	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$630, DW_AT_name("MALLOCSEG")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_MALLOCSEG")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$132

$C$DW$T$415	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$415, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$415, DW_AT_language(DW_LANG_C)

$C$DW$T$134	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$134, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x0c)
$C$DW$631	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$631, DW_AT_name("base")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$632	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$632, DW_AT_name("length")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$633	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$633, DW_AT_name("space")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$134

$C$DW$T$416	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$416, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$416, DW_AT_language(DW_LANG_C)

$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x10)
$C$DW$634	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$634, DW_AT_name("size")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$635	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$635, DW_AT_name("used")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$636	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$636, DW_AT_name("length")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$637	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$637, DW_AT_name("space")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$135

$C$DW$T$417	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$417, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$T$417, DW_AT_language(DW_LANG_C)

$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x08)
$C$DW$638	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$638, DW_AT_name("next")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$639	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$639, DW_AT_name("size")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$137

$C$DW$T$136	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$136, DW_AT_address_class(0x20)
$C$DW$T$418	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$418, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$418, DW_AT_language(DW_LANG_C)

$C$DW$T$138	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$138, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x04)
$C$DW$640	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$640, DW_AT_name("dummy")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$138

$C$DW$T$419	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$419, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$419, DW_AT_language(DW_LANG_C)

$C$DW$T$140	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$140, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x38)
$C$DW$641	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$641, DW_AT_name("ready")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$642	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$642, DW_AT_name("alarm")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$643	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$643, DW_AT_name("setpri")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$644	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$644, DW_AT_name("queue")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$645	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$645, DW_AT_name("priority")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$646	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$646, DW_AT_name("mask")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$647	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$647, DW_AT_name("sp")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$648	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$648, DW_AT_name("timeout")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$649	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$649, DW_AT_name("mode")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$650	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$650, DW_AT_name("sts")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$651	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$651, DW_AT_name("signalled")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$140

$C$DW$T$149	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
$C$DW$T$420	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$420, DW_AT_address_class(0x20)
$C$DW$T$421	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Handle")
	.dwattr $C$DW$T$421, DW_AT_type(*$C$DW$T$420)
	.dwattr $C$DW$T$421, DW_AT_language(DW_LANG_C)

$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x30)
$C$DW$652	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$652, DW_AT_name("alarm")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$653	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$653, DW_AT_name("setpri")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$654	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$654, DW_AT_name("queue")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$655	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$655, DW_AT_name("priority")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$656	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$656, DW_AT_name("mask")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$657	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$657, DW_AT_name("sp")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$658	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$658, DW_AT_name("timeout")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$659	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$659, DW_AT_name("mode")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$660	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$660, DW_AT_name("sts")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$661	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$661, DW_AT_name("signalled")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$141

$C$DW$T$422	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$422, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$422, DW_AT_language(DW_LANG_C)

$C$DW$T$142	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$142, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x0c)
$C$DW$662	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$662, DW_AT_name("link")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$663	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$663, DW_AT_name("type")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$142

$C$DW$T$423	.dwtag  DW_TAG_typedef, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$423, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$423, DW_AT_language(DW_LANG_C)

$C$DW$T$143	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$143, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x08)
$C$DW$664	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$664, DW_AT_name("type")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$665	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$665, DW_AT_name("name")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$143

$C$DW$T$424	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$424, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$424, DW_AT_language(DW_LANG_C)

$C$DW$T$144	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$144, DW_AT_name("DEV_Device")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x18)
$C$DW$666	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$666, DW_AT_name("name")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$667	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$667, DW_AT_name("fxns")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$668	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$668, DW_AT_name("devid")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$669	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$669, DW_AT_name("params")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$670	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$670, DW_AT_name("type")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$671	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$671, DW_AT_name("devp")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_devp")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$144

$C$DW$T$425	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Device")
	.dwattr $C$DW$T$425, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$425, DW_AT_language(DW_LANG_C)

$C$DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$145, DW_AT_name("DEV_Attrs")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x10)
$C$DW$672	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$672, DW_AT_name("devid")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$673	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$673, DW_AT_name("params")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$674	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$674, DW_AT_name("type")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$675	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$675, DW_AT_name("devp")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_devp")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$145

$C$DW$T$426	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Attrs")
	.dwattr $C$DW$T$426, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$426, DW_AT_language(DW_LANG_C)

$C$DW$T$146	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$146, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x20)
$C$DW$676	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$676, DW_AT_name("status")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$677	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$677, DW_AT_name("kount")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_kount")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$678	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$678, DW_AT_name("period")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_period")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$679	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$679, DW_AT_name("nticks")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_nticks")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$680	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$680, DW_AT_name("fxnobj")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$681	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$681, DW_AT_name("sts")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$146

$C$DW$T$427	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$427, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$427, DW_AT_language(DW_LANG_C)
$C$DW$T$428	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$428, DW_AT_address_class(0x20)
$C$DW$T$429	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Handle")
	.dwattr $C$DW$T$429, DW_AT_type(*$C$DW$T$428)
	.dwattr $C$DW$T$429, DW_AT_language(DW_LANG_C)

$C$DW$T$147	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$147, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x20)
$C$DW$682	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$682, DW_AT_name("STACKSEG")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_STACKSEG")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$683	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$683, DW_AT_name("PRIORITY")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_PRIORITY")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$684	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$684, DW_AT_name("STACKSIZE")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_STACKSIZE")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$685	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$685, DW_AT_name("CREATEFXN")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_CREATEFXN")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$686	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$686, DW_AT_name("DELETEFXN")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_DELETEFXN")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$687	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$687, DW_AT_name("EXITFXN")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$688	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$688, DW_AT_name("SWITCHFXN")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_SWITCHFXN")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$689	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$689, DW_AT_name("READYFXN")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_READYFXN")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$147

$C$DW$T$430	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$430, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$430, DW_AT_language(DW_LANG_C)

$C$DW$T$148	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$148, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x1c)
$C$DW$690	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$690, DW_AT_name("priority")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$691	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$691, DW_AT_name("stack")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$692	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$692, DW_AT_name("stacksize")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$693	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$693, DW_AT_name("stackseg")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$694	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$694, DW_AT_name("environ")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$695	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$695, DW_AT_name("name")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$696	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$696, DW_AT_name("exitflag")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$697	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$697, DW_AT_name("initstackflag")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_initstackflag")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$148

$C$DW$T$151	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)

$C$DW$T$150	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$150, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x54)
$C$DW$698	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$698, DW_AT_name("kobj")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_kobj")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$699	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$699, DW_AT_name("stack")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$700	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$700, DW_AT_name("stacksize")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$701	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$701, DW_AT_name("stackseg")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$702	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$702, DW_AT_name("name")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$703	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$703, DW_AT_name("environ")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$704	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$704, DW_AT_name("errno")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_errno")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$705	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$705, DW_AT_name("exitflag")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$150

$C$DW$T$431	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$431, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$431, DW_AT_language(DW_LANG_C)
$C$DW$T$432	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$432, DW_AT_address_class(0x20)
$C$DW$T$433	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Handle")
	.dwattr $C$DW$T$433, DW_AT_type(*$C$DW$T$432)
	.dwattr $C$DW$T$433, DW_AT_language(DW_LANG_C)

$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x28)
$C$DW$706	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$706, DW_AT_name("attrs")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$707	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$707, DW_AT_name("mode")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$708	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$708, DW_AT_name("sp")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$709	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$709, DW_AT_name("used")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$153

$C$DW$T$434	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$434, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$434, DW_AT_language(DW_LANG_C)

$C$DW$T$158	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$158, DW_AT_name("MSGQ_Obj")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x1c)
$C$DW$710	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$710, DW_AT_name("name")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$711	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$711, DW_AT_name("queue")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$712	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$712, DW_AT_name("notifyHandle")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_notifyHandle")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$713	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$713, DW_AT_name("pend")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_pend")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$714	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$714, DW_AT_name("post")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_post")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$715	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$715, DW_AT_name("status")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$158

$C$DW$T$192	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Obj")
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$192, DW_AT_language(DW_LANG_C)
$C$DW$T$193	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$T$193, DW_AT_address_class(0x20)
$C$DW$T$435	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$435, DW_AT_address_class(0x20)
$C$DW$T$436	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Handle")
	.dwattr $C$DW$T$436, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$T$436, DW_AT_language(DW_LANG_C)

$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("MSGQ_Attrs")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x0c)
$C$DW$716	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$716, DW_AT_name("notifyHandle")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_notifyHandle")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$717	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$717, DW_AT_name("pend")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_pend")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$718	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$718, DW_AT_name("post")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_post")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$159

$C$DW$T$437	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Attrs")
	.dwattr $C$DW$T$437, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$437, DW_AT_language(DW_LANG_C)

$C$DW$T$160	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$160, DW_AT_name("MSGQ_LocateAttrs")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x04)
$C$DW$719	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$719, DW_AT_name("timeout")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$160

$C$DW$T$438	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_LocateAttrs")
	.dwattr $C$DW$T$438, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$438, DW_AT_language(DW_LANG_C)

$C$DW$T$161	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$161, DW_AT_name("MSGQ_LocateAsyncAttrs")
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x08)
$C$DW$720	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$720, DW_AT_name("poolId")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_poolId")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$721	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$721, DW_AT_name("arg")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$161

$C$DW$T$439	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_LocateAsyncAttrs")
	.dwattr $C$DW$T$439, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$439, DW_AT_language(DW_LANG_C)

$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("MSGQ_MsgHeader")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x14)
$C$DW$722	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$722, DW_AT_name("reserved")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_reserved")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$723	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$723, DW_AT_name("srcProcId")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_srcProcId")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$724	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$724, DW_AT_name("poolId")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_poolId")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$725	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$725, DW_AT_name("size")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$726	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$726, DW_AT_name("dstId")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_dstId")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$727	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$727, DW_AT_name("srcId")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_srcId")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$728	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$728, DW_AT_name("msgId")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_msgId")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$163

$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MsgHeader")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
$C$DW$T$182	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$182, DW_AT_address_class(0x20)
$C$DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Msg")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)

$C$DW$T$166	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$166, DW_AT_name("MSGQ_AsyncLocateMsg")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x1c)
$C$DW$729	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$729, DW_AT_name("header")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$730	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$730, DW_AT_name("msgqQueue")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_msgqQueue")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$731	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$731, DW_AT_name("arg")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$166

$C$DW$T$440	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_AsyncLocateMsg")
	.dwattr $C$DW$T$440, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$440, DW_AT_language(DW_LANG_C)

$C$DW$T$168	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$168, DW_AT_name("MSGQ_AsyncErrorMsg")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x1c)
$C$DW$732	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$732, DW_AT_name("header")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$733	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$733, DW_AT_name("errorType")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_errorType")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$734	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$734, DW_AT_name("mqtId")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_mqtId")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$735	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$735, DW_AT_name("parameter")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_parameter")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$168

$C$DW$T$441	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_AsyncErrorMsg")
	.dwattr $C$DW$T$441, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$441, DW_AT_language(DW_LANG_C)

$C$DW$T$187	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$187, DW_AT_name("MSGQ_TransportFxns")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x14)
$C$DW$736	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$736, DW_AT_name("open")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$737	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$737, DW_AT_name("close")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$738	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$738, DW_AT_name("locate")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_locate")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$739	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$739, DW_AT_name("release")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_release")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$740	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$740, DW_AT_name("put")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_put")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$187

$C$DW$T$189	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportFxns")
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
$C$DW$T$190	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$T$190, DW_AT_address_class(0x20)

$C$DW$T$191	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$191, DW_AT_name("MSGQ_TransportObj")
	.dwattr $C$DW$T$191, DW_AT_byte_size(0x14)
$C$DW$741	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$741, DW_AT_name("initFxn")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_initFxn")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$742	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$742, DW_AT_name("fxns")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$743	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$743, DW_AT_name("params")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$744	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$744, DW_AT_name("object")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$745	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$745, DW_AT_name("procId")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_procId")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$191

$C$DW$T$169	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$169, DW_AT_address_class(0x20)
$C$DW$T$170	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportHandle")
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
$C$DW$T$194	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportObj")
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C)
$C$DW$T$195	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$T$195, DW_AT_address_class(0x20)

$C$DW$T$196	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$196, DW_AT_name("MSGQ_Config")
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x18)
$C$DW$746	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$746, DW_AT_name("msgqQueues")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_msgqQueues")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$747	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$747, DW_AT_name("transports")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_transports")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$748	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$748, DW_AT_name("numMsgqQueues")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_numMsgqQueues")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$749	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$749, DW_AT_name("numProcessors")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_numProcessors")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$750	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$750, DW_AT_name("startUninitialized")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_startUninitialized")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$751	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$751, DW_AT_name("errorQueue")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_errorQueue")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$752	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$752, DW_AT_name("errorPoolId")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_errorPoolId")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$196

$C$DW$T$442	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Config")
	.dwattr $C$DW$T$442, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$442, DW_AT_language(DW_LANG_C)

$C$DW$T$198	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$198, DW_AT_name("CHNL_Irp_tag")
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x1c)
$C$DW$753	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$753, DW_AT_name("link")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$754	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$754, DW_AT_name("buffer")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$755	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$755, DW_AT_name("arg")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$756	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$756, DW_AT_name("size")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$757	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$757, DW_AT_name("iocStatus")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_iocStatus")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$758	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$758, DW_AT_name("chnlId")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_chnlId")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$198

$C$DW$T$443	.dwtag  DW_TAG_typedef, DW_AT_name("CHNL_Irp")
	.dwattr $C$DW$T$443, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$T$443, DW_AT_language(DW_LANG_C)

$C$DW$T$199	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x04)
$C$DW$759	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_0K"), DW_AT_const_value(0x00)
$C$DW$760	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_4K"), DW_AT_const_value(0x01)
$C$DW$761	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_8K"), DW_AT_const_value(0x02)
$C$DW$762	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_16K"), DW_AT_const_value(0x03)
$C$DW$763	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1_32K"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$199

$C$DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_L1_Size")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C)

$C$DW$T$201	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x04)
$C$DW$764	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_0K"), DW_AT_const_value(0x00)
$C$DW$765	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_32K"), DW_AT_const_value(0x01)
$C$DW$766	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_64K"), DW_AT_const_value(0x02)
$C$DW$767	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_128K"), DW_AT_const_value(0x03)
$C$DW$768	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_256K"), DW_AT_const_value(0x04)
$C$DW$769	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_512K"), DW_AT_const_value(0x05)
$C$DW$770	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2_1024K"), DW_AT_const_value(0x06)
	.dwendtag $C$DW$T$201

$C$DW$T$202	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_L2_Size")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_language(DW_LANG_C)

$C$DW$T$203	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$203, DW_AT_name("BCACHE_Size")
	.dwattr $C$DW$T$203, DW_AT_byte_size(0x0c)
$C$DW$771	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$771, DW_AT_name("l1psize")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_l1psize")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$772	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$772, DW_AT_name("l1dsize")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_l1dsize")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$773	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$773, DW_AT_name("l2size")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_l2size")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$203

$C$DW$T$444	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Size")
	.dwattr $C$DW$T$444, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$T$444, DW_AT_language(DW_LANG_C)

$C$DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x08)
$C$DW$774	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$774, DW_AT_name("acc")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$775	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$775, DW_AT_name("p")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_p")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$205

$C$DW$T$445	.dwtag  DW_TAG_typedef, DW_AT_name("word64")
	.dwattr $C$DW$T$445, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$445, DW_AT_language(DW_LANG_C)

$C$DW$T$446	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$446, DW_AT_byte_size(0x04)
$C$DW$776	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_INIT"), DW_AT_const_value(0x00)
$C$DW$777	.dwtag  DW_TAG_enumerator, DW_AT_name("DSP_PROCESS"), DW_AT_const_value(0x01)
$C$DW$778	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_FM_DEMOD_DECIM_INIT"), DW_AT_const_value(0x02)
$C$DW$779	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_FM_DEMOD_DEEMPH_INIT"), DW_AT_const_value(0x03)
$C$DW$780	.dwtag  DW_TAG_enumerator, DW_AT_name("CCF_FM_MOD_INIT"), DW_AT_const_value(0x04)
	.dwendtag $C$DW$T$446


$C$DW$T$447	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$447, DW_AT_byte_size(0x04)
$C$DW$781	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_NORMAL"), DW_AT_const_value(0x00)
$C$DW$782	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_FREEZE"), DW_AT_const_value(0x01)
$C$DW$783	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_BYPASS"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$447

$C$DW$T$448	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Mode")
	.dwattr $C$DW$T$448, DW_AT_type(*$C$DW$T$447)
	.dwattr $C$DW$T$448, DW_AT_language(DW_LANG_C)

$C$DW$T$449	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$449, DW_AT_byte_size(0x04)
$C$DW$784	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1D"), DW_AT_const_value(0x00)
$C$DW$785	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L1P"), DW_AT_const_value(0x01)
$C$DW$786	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_L2"), DW_AT_const_value(0x02)
	.dwendtag $C$DW$T$449

$C$DW$T$450	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Level")
	.dwattr $C$DW$T$450, DW_AT_type(*$C$DW$T$449)
	.dwattr $C$DW$T$450, DW_AT_language(DW_LANG_C)

$C$DW$T$451	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$451, DW_AT_byte_size(0x04)
$C$DW$787	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_MAR_DISABLE"), DW_AT_const_value(0x00)
$C$DW$788	.dwtag  DW_TAG_enumerator, DW_AT_name("BCACHE_MAR_ENABLE"), DW_AT_const_value(0x01)
	.dwendtag $C$DW$T$451

$C$DW$T$452	.dwtag  DW_TAG_typedef, DW_AT_name("BCACHE_Mar")
	.dwattr $C$DW$T$452, DW_AT_type(*$C$DW$T$451)
	.dwattr $C$DW$T$452, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 228
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwcfi	undefined, 128
	.dwcfi	undefined, 129
	.dwcfi	undefined, 130
	.dwcfi	undefined, 131
	.dwcfi	undefined, 132
	.dwcfi	undefined, 133
	.dwcfi	undefined, 134
	.dwcfi	undefined, 135
	.dwcfi	undefined, 136
	.dwcfi	undefined, 137
	.dwcfi	undefined, 138
	.dwcfi	undefined, 139
	.dwcfi	undefined, 140
	.dwcfi	undefined, 141
	.dwcfi	undefined, 142
	.dwcfi	undefined, 143
	.dwcfi	undefined, 144
	.dwcfi	undefined, 145
	.dwcfi	undefined, 146
	.dwcfi	undefined, 147
	.dwcfi	undefined, 148
	.dwcfi	undefined, 149
	.dwcfi	undefined, 150
	.dwcfi	undefined, 151
	.dwcfi	undefined, 152
	.dwcfi	undefined, 153
	.dwcfi	undefined, 154
	.dwcfi	undefined, 155
	.dwcfi	undefined, 156
	.dwcfi	undefined, 157
	.dwcfi	undefined, 158
	.dwcfi	undefined, 159
	.dwcfi	undefined, 160
	.dwcfi	undefined, 161
	.dwcfi	undefined, 162
	.dwcfi	undefined, 163
	.dwcfi	undefined, 164
	.dwcfi	undefined, 165
	.dwcfi	undefined, 166
	.dwcfi	undefined, 167
	.dwcfi	undefined, 168
	.dwcfi	undefined, 169
	.dwcfi	undefined, 170
	.dwcfi	undefined, 171
	.dwcfi	undefined, 172
	.dwcfi	undefined, 173
	.dwcfi	undefined, 174
	.dwcfi	undefined, 175
	.dwcfi	undefined, 176
	.dwcfi	undefined, 177
	.dwcfi	undefined, 178
	.dwcfi	undefined, 179
	.dwcfi	undefined, 180
	.dwcfi	undefined, 181
	.dwcfi	undefined, 182
	.dwcfi	undefined, 183
	.dwcfi	undefined, 184
	.dwcfi	undefined, 185
	.dwcfi	undefined, 186
	.dwcfi	undefined, 187
	.dwcfi	undefined, 188
	.dwcfi	undefined, 189
	.dwcfi	undefined, 190
	.dwcfi	undefined, 191
	.dwcfi	undefined, 192
	.dwcfi	undefined, 193
	.dwcfi	undefined, 194
	.dwcfi	undefined, 195
	.dwcfi	undefined, 196
	.dwcfi	undefined, 197
	.dwcfi	undefined, 198
	.dwcfi	undefined, 199
	.dwcfi	undefined, 200
	.dwcfi	undefined, 201
	.dwcfi	undefined, 202
	.dwcfi	undefined, 203
	.dwcfi	undefined, 204
	.dwcfi	undefined, 205
	.dwcfi	undefined, 206
	.dwcfi	undefined, 207
	.dwcfi	undefined, 208
	.dwcfi	undefined, 209
	.dwcfi	undefined, 210
	.dwcfi	undefined, 211
	.dwcfi	undefined, 212
	.dwcfi	undefined, 213
	.dwcfi	undefined, 214
	.dwcfi	undefined, 215
	.dwcfi	undefined, 216
	.dwcfi	undefined, 217
	.dwcfi	undefined, 218
	.dwcfi	undefined, 219
	.dwcfi	undefined, 220
	.dwcfi	undefined, 221
	.dwcfi	undefined, 222
	.dwcfi	undefined, 223
	.dwcfi	undefined, 224
	.dwcfi	undefined, 225
	.dwcfi	undefined, 226
	.dwcfi	undefined, 227
	.dwcfi	undefined, 228
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$789	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$789, DW_AT_location[DW_OP_reg0]
$C$DW$790	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$790, DW_AT_location[DW_OP_reg1]
$C$DW$791	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$791, DW_AT_location[DW_OP_reg2]
$C$DW$792	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$792, DW_AT_location[DW_OP_reg3]
$C$DW$793	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$793, DW_AT_location[DW_OP_reg4]
$C$DW$794	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$794, DW_AT_location[DW_OP_reg5]
$C$DW$795	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$795, DW_AT_location[DW_OP_reg6]
$C$DW$796	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$796, DW_AT_location[DW_OP_reg7]
$C$DW$797	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$797, DW_AT_location[DW_OP_reg8]
$C$DW$798	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$798, DW_AT_location[DW_OP_reg9]
$C$DW$799	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$799, DW_AT_location[DW_OP_reg10]
$C$DW$800	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$800, DW_AT_location[DW_OP_reg11]
$C$DW$801	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$801, DW_AT_location[DW_OP_reg12]
$C$DW$802	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$802, DW_AT_location[DW_OP_reg13]
$C$DW$803	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$803, DW_AT_location[DW_OP_reg14]
$C$DW$804	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$804, DW_AT_location[DW_OP_reg15]
$C$DW$805	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$805, DW_AT_location[DW_OP_reg16]
$C$DW$806	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$806, DW_AT_location[DW_OP_reg17]
$C$DW$807	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$807, DW_AT_location[DW_OP_reg18]
$C$DW$808	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$808, DW_AT_location[DW_OP_reg19]
$C$DW$809	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$809, DW_AT_location[DW_OP_reg20]
$C$DW$810	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$810, DW_AT_location[DW_OP_reg21]
$C$DW$811	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$811, DW_AT_location[DW_OP_reg22]
$C$DW$812	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$812, DW_AT_location[DW_OP_reg23]
$C$DW$813	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$813, DW_AT_location[DW_OP_reg24]
$C$DW$814	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$814, DW_AT_location[DW_OP_reg25]
$C$DW$815	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$815, DW_AT_location[DW_OP_reg26]
$C$DW$816	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$816, DW_AT_location[DW_OP_reg27]
$C$DW$817	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$817, DW_AT_location[DW_OP_reg28]
$C$DW$818	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$818, DW_AT_location[DW_OP_reg29]
$C$DW$819	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$819, DW_AT_location[DW_OP_reg30]
$C$DW$820	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$820, DW_AT_location[DW_OP_reg31]
$C$DW$821	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$821, DW_AT_location[DW_OP_regx 0x20]
$C$DW$822	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$822, DW_AT_location[DW_OP_regx 0x21]
$C$DW$823	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$823, DW_AT_location[DW_OP_regx 0x22]
$C$DW$824	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$824, DW_AT_location[DW_OP_regx 0x23]
$C$DW$825	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$825, DW_AT_location[DW_OP_regx 0x24]
$C$DW$826	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$826, DW_AT_location[DW_OP_regx 0x25]
$C$DW$827	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$827, DW_AT_location[DW_OP_regx 0x26]
$C$DW$828	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$828, DW_AT_location[DW_OP_regx 0x27]
$C$DW$829	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$829, DW_AT_location[DW_OP_regx 0x28]
$C$DW$830	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$830, DW_AT_location[DW_OP_regx 0x29]
$C$DW$831	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$831, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$832	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$832, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$833	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$833, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$834	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$834, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$835	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$835, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$836	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$836, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$837	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$837, DW_AT_location[DW_OP_regx 0x30]
$C$DW$838	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$838, DW_AT_location[DW_OP_regx 0x31]
$C$DW$839	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$839, DW_AT_location[DW_OP_regx 0x32]
$C$DW$840	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$840, DW_AT_location[DW_OP_regx 0x33]
$C$DW$841	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$841, DW_AT_location[DW_OP_regx 0x34]
$C$DW$842	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$842, DW_AT_location[DW_OP_regx 0x35]
$C$DW$843	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$843, DW_AT_location[DW_OP_regx 0x36]
$C$DW$844	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$844, DW_AT_location[DW_OP_regx 0x37]
$C$DW$845	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$845, DW_AT_location[DW_OP_regx 0x38]
$C$DW$846	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$846, DW_AT_location[DW_OP_regx 0x39]
$C$DW$847	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$847, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$848	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$848, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$849	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$849, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$850	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$850, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$851	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$851, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$852	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$852, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$853	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$853, DW_AT_location[DW_OP_regx 0x40]
$C$DW$854	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$854, DW_AT_location[DW_OP_regx 0x41]
$C$DW$855	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$855, DW_AT_location[DW_OP_regx 0x42]
$C$DW$856	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$856, DW_AT_location[DW_OP_regx 0x43]
$C$DW$857	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$857, DW_AT_location[DW_OP_regx 0x44]
$C$DW$858	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$858, DW_AT_location[DW_OP_regx 0x45]
$C$DW$859	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$859, DW_AT_location[DW_OP_regx 0x46]
$C$DW$860	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$860, DW_AT_location[DW_OP_regx 0x47]
$C$DW$861	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$861, DW_AT_location[DW_OP_regx 0x48]
$C$DW$862	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$862, DW_AT_location[DW_OP_regx 0x49]
$C$DW$863	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$863, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$864	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$864, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$865	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$865, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$866	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$866, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$867	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$867, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$868	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$868, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$869	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$869, DW_AT_location[DW_OP_regx 0x50]
$C$DW$870	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$870, DW_AT_location[DW_OP_regx 0x51]
$C$DW$871	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$871, DW_AT_location[DW_OP_regx 0x52]
$C$DW$872	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$872, DW_AT_location[DW_OP_regx 0x53]
$C$DW$873	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$873, DW_AT_location[DW_OP_regx 0x54]
$C$DW$874	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$874, DW_AT_location[DW_OP_regx 0x55]
$C$DW$875	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$875, DW_AT_location[DW_OP_regx 0x56]
$C$DW$876	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$876, DW_AT_location[DW_OP_regx 0x57]
$C$DW$877	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$877, DW_AT_location[DW_OP_regx 0x58]
$C$DW$878	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$878, DW_AT_location[DW_OP_regx 0x59]
$C$DW$879	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$879, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$880	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$880, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$881	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$881, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$882	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$882, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$883	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$883, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$884	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$884, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$885	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$885, DW_AT_location[DW_OP_regx 0x60]
$C$DW$886	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$886, DW_AT_location[DW_OP_regx 0x61]
$C$DW$887	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$887, DW_AT_location[DW_OP_regx 0x62]
$C$DW$888	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$888, DW_AT_location[DW_OP_regx 0x63]
$C$DW$889	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$889, DW_AT_location[DW_OP_regx 0x64]
$C$DW$890	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$890, DW_AT_location[DW_OP_regx 0x65]
$C$DW$891	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$891, DW_AT_location[DW_OP_regx 0x66]
$C$DW$892	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$892, DW_AT_location[DW_OP_regx 0x67]
$C$DW$893	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$893, DW_AT_location[DW_OP_regx 0x68]
$C$DW$894	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$894, DW_AT_location[DW_OP_regx 0x69]
$C$DW$895	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$895, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$896	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$896, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$897	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$897, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$898	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$898, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$899	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$899, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$900	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$900, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$901	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$901, DW_AT_location[DW_OP_regx 0x70]
$C$DW$902	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$902, DW_AT_location[DW_OP_regx 0x71]
$C$DW$903	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$903, DW_AT_location[DW_OP_regx 0x72]
$C$DW$904	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$904, DW_AT_location[DW_OP_regx 0x73]
$C$DW$905	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$905, DW_AT_location[DW_OP_regx 0x74]
$C$DW$906	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$906, DW_AT_location[DW_OP_regx 0x75]
$C$DW$907	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$907, DW_AT_location[DW_OP_regx 0x76]
$C$DW$908	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$908, DW_AT_location[DW_OP_regx 0x77]
$C$DW$909	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$909, DW_AT_location[DW_OP_regx 0x78]
$C$DW$910	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$910, DW_AT_location[DW_OP_regx 0x79]
$C$DW$911	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$911, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$912	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$912, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$913	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$913, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$914	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$914, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$915	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$915, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$916	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$916, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$917	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$917, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

