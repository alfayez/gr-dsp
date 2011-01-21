;******************************************************************************
;* TMS320C6x C/C++ Codegen                                         PC v6.0.21 *
;* Date/Time created: Mon Nov 15 02:06:36 2010                                *
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
	.dwattr $C$DW$CU, DW_AT_name("swiLoop.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.0.21 Copyright (c) 1996-2008 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SWI_andn")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_SWI_andn")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$85)
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("SWI_create")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_SWI_create")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$314)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("SWI_delete")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_SWI_delete")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_free")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_MEM_free")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$8


$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("MEM_valloc")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_MEM_valloc")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
$C$DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$12


$C$DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("GIO_create")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_GIO_create")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
$C$DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$54)
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$279)
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$324)
	.dwendtag $C$DW$17


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("GIO_delete")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_GIO_delete")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$79)
	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("GIO_submit")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_GIO_submit")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$79)
$C$DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$281)
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$282)
	.dwendtag $C$DW$25


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("SetReason")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_SetReason")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$31

$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("SWI_ATTRS")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_SWI_ATTRS")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$313)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
$C$DW$36	.dwtag  DW_TAG_variable, DW_AT_name("GIO_ATTRS")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_GIO_ATTRS")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$36, DW_AT_declaration
	.dwattr $C$DW$36, DW_AT_external
$C$DW$37	.dwtag  DW_TAG_variable, DW_AT_name("DDR2")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_DDR2")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_variable, DW_AT_name("POOL")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_POOL")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$341)
	.dwattr $C$DW$38, DW_AT_declaration
	.dwattr $C$DW$38, DW_AT_external
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("xferBufSize")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_xferBufSize")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
;	C:\ti-tools\C6000\bin\opt6x.exe C:\\DOCUME~1\\jemtest\\LOCALS~1\\Temp\\049883 C:\\DOCUME~1\\jemtest\\LOCALS~1\\Temp\\049885 
	.sect	".text"

$C$DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("writeFinishCb")
	.dwattr $C$DW$40, DW_AT_low_pc(_writeFinishCb)
	.dwattr $C$DW$40, DW_AT_high_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_writeFinishCb")
	.dwattr $C$DW$40, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$40, DW_AT_TI_begin_line(0x1a2)
	.dwattr $C$DW$40, DW_AT_TI_begin_column(0x0d)
	.dwpsn	file "swiLoop.c",line 419,column 1,is_stmt,address _writeFinishCb

	.dwfde $C$DW$CIE, _writeFinishCb

;******************************************************************************
;* FUNCTION NAME: writeFinishCb                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_writeFinishCb:
;** --------------------------------------------------------------------------*
;** 420	-----------------------    info = (struct _SWILOOP_TransferInfo_tag *)arg;
;** 425	-----------------------    (*info).outputBuffer = (char * const)bufp;
;** 427	-----------------------    if ( !status ) goto g3;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |419| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |419| 
	.dwcfi	save_reg_to_mem, 10, -4
$C$DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg4]
$C$DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg20]
$C$DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufp")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_bufp")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg6]
$C$DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg22]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg10]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg4]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$289)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg16]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("bufp")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_bufp")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg6]
           MV      .L2     B4,B0             ; |419| 
	.dwpsn	file "swiLoop.c",line 420,column 27,is_stmt
           MV      .L1     A4,A10            ; |420| 
	.dwpsn	file "swiLoop.c",line 425,column 5,is_stmt
           STW     .D1T1   A6,*+A10(28)      ; |425| 
	.dwpsn	file "swiLoop.c",line 427,column 5,is_stmt
   [!B0]   BNOP    .S1     $C$L1,5           ; |427| 
           ; BRANCHCC OCCURS {$C$L1}         ; |427| 
;** --------------------------------------------------------------------------*
;** 428	-----------------------    SetReason(257, 428, status);
	.dwpsn	file "swiLoop.c",line 428,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |428| 
           MVKH    .S1     _SetReason,A3     ; |428| 
           MVK     .S2     0xac,B4
           CALL    .S2X    A3                ; |428| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL0,B3,0       ; |428| 
           MV      .L1X    B0,A6             ; |428| 
$C$RL0:    ; CALL OCCURS {_SetReason}        ; |428| 
;** --------------------------------------------------------------------------*
$C$L1:    
;**	-----------------------g3:
;** 431	-----------------------    SWI_andn((*info).swi, 2u);
;** 432	-----------------------    return;
	.dwpsn	file "swiLoop.c",line 431,column 5,is_stmt
           MVKL    .S2     _SWI_andn,B5      ; |431| 
           MVKH    .S2     _SWI_andn,B5      ; |431| 
           CALL    .S2     B5                ; |431| 
           LDW     .D1T1   *+A10(36),A4      ; |431| 
           ADDKPC  .S2     $C$RL1,B3,2       ; |431| 
           MVK     .L2     0x2,B4            ; |431| 
$C$RL1:    ; CALL OCCURS {_SWI_andn}         ; |431| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 432,column 1,is_stmt
           LDW     .D2T1   *+SP(4),A10       ; |432| 
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3       ; |432| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5              ; |432| 
           ; BRANCH OCCURS {B3}              ; |432| 
	.dwattr $C$DW$40, DW_AT_TI_end_file("swiLoop.c")
	.dwattr $C$DW$40, DW_AT_TI_end_line(0x1b0)
	.dwattr $C$DW$40, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$40

	.sect	".text"

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("readFinishCb")
	.dwattr $C$DW$49, DW_AT_low_pc(_readFinishCb)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_readFinishCb")
	.dwattr $C$DW$49, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x189)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x0d)
	.dwpsn	file "swiLoop.c",line 394,column 1,is_stmt,address _readFinishCb

	.dwfde $C$DW$CIE, _readFinishCb

;******************************************************************************
;* FUNCTION NAME: readFinishCb                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_readFinishCb:
;** --------------------------------------------------------------------------*
;** 395	-----------------------    info = (struct _SWILOOP_TransferInfo_tag *)arg;
;** 398	-----------------------    (*info).inputBuffer = (char * const)bufp;
;** 400	-----------------------    (*info).readWords = size;
;** 401	-----------------------    if ( !status ) goto g3;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |394| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |394| 
	.dwcfi	save_reg_to_mem, 10, -4
$C$DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg4]
$C$DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("status")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg20]
$C$DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("bufp")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_bufp")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg6]
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("size")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg22]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg10]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("arg")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg4]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$289)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg16]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("bufp")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_bufp")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg6]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("size")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$305)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg22]
           MV      .L2     B4,B0             ; |394| 
	.dwpsn	file "swiLoop.c",line 395,column 28,is_stmt
           MV      .L1     A4,A10            ; |395| 
	.dwpsn	file "swiLoop.c",line 398,column 5,is_stmt
           STW     .D1T1   A6,*+A10(24)      ; |398| 
	.dwpsn	file "swiLoop.c",line 400,column 5,is_stmt
           STH     .D1T2   B6,*+A10(32)      ; |400| 
	.dwpsn	file "swiLoop.c",line 401,column 5,is_stmt
   [!B0]   BNOP    .S1     $C$L2,5           ; |401| 
           ; BRANCHCC OCCURS {$C$L2}         ; |401| 
;** --------------------------------------------------------------------------*
;** 402	-----------------------    SetReason(257, 402, status);
	.dwpsn	file "swiLoop.c",line 402,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |402| 
           MVKH    .S1     _SetReason,A3     ; |402| 
           MVK     .S2     0x92,B4
           CALL    .S2X    A3                ; |402| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL2,B3,0       ; |402| 
           MV      .L1X    B0,A6             ; |402| 
$C$RL2:    ; CALL OCCURS {_SetReason}        ; |402| 
;** --------------------------------------------------------------------------*
$C$L2:    
;**	-----------------------g3:
;** 405	-----------------------    SWI_andn((*info).swi, 1u);
;** 406	-----------------------    return;
	.dwpsn	file "swiLoop.c",line 405,column 5,is_stmt
           MVKL    .S2     _SWI_andn,B5      ; |405| 
           MVKH    .S2     _SWI_andn,B5      ; |405| 
           CALL    .S2     B5                ; |405| 
           LDW     .D1T1   *+A10(36),A4      ; |405| 
           ADDKPC  .S2     $C$RL3,B3,2       ; |405| 
           MVK     .L2     0x1,B4            ; |405| 
$C$RL3:    ; CALL OCCURS {_SWI_andn}         ; |405| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 406,column 1,is_stmt
           LDW     .D2T1   *+SP(4),A10       ; |406| 
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3       ; |406| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5              ; |406| 
           ; BRANCH OCCURS {B3}              ; |406| 
	.dwattr $C$DW$49, DW_AT_TI_end_file("swiLoop.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x196)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"

$C$DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("loopbackSWI")
	.dwattr $C$DW$59, DW_AT_low_pc(_loopbackSWI)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_loopbackSWI")
	.dwattr $C$DW$59, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$59, DW_AT_TI_begin_line(0x1bd)
	.dwattr $C$DW$59, DW_AT_TI_begin_column(0x0d)
	.dwpsn	file "swiLoop.c",line 446,column 1,is_stmt,address _loopbackSWI

	.dwfde $C$DW$CIE, _loopbackSWI

;******************************************************************************
;* FUNCTION NAME: loopbackSWI                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,DP,SP,A16,A17,A18,A19,A20,A21,*
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 4 Auto + 24 Save = 28 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_loopbackSWI:
;** --------------------------------------------------------------------------*
;** 448	-----------------------    info = (struct _SWILOOP_TransferInfo_tag *)arg0;
;** 449	-----------------------    numWordsToWrite = C$1 = (*info).readWords;
;** 456	-----------------------    if ( !C$1 ) goto g4;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B10,*SP--(8)      ; |446| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 26, 0
           STW     .D2T2   B3,*SP--(8)       ; |446| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 19, -8
           STDW    .D2T1   A11:A10,*SP--     ; |446| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 11, -12
	.dwcfi	save_reg_to_mem, 10, -16
           SUB     .L2     SP,8,SP           ; |446| 
	.dwcfi	cfa_offset, 8
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg0")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg4]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("arg1")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg20]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("$O$C1")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("$O$C1")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg4]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("iomStatus")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_iomStatus")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg26]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("numWordsToWrite")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_numWordsToWrite")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg31 4]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg11]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg10]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("arg0")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$278)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg4]
	.dwpsn	file "swiLoop.c",line 448,column 28,is_stmt
           MV      .L1     A4,A11            ; |448| 
	.dwpsn	file "swiLoop.c",line 449,column 28,is_stmt
           LDHU    .D1T1   *+A11(32),A0      ; |449| 
           NOP             4
           STW     .D2T1   A0,*+SP(4)        ; |449| 
	.dwpsn	file "swiLoop.c",line 456,column 18,is_stmt
   [!A0]   BNOP    .S1     $C$L6,5           ; |456| 
           ; BRANCHCC OCCURS {$C$L6}         ; |456| 
;** --------------------------------------------------------------------------*
;** 456	-----------------------    i = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(4096u)
;**	-----------------------g3:
;** 457	-----------------------    *((*info).outputBuffer+i) = *((*info).inputBuffer+i);
;** 456	-----------------------    if ( (unsigned)(*info).readWords > (++i) ) goto g3;
	.dwpsn	file "swiLoop.c",line 456,column 10,is_stmt
           MV      .L1     A11,A5
           LDW     .D1T1   *+A5(24),A6       ; |457| (P) <0,0>  ^ 
           ZERO    .L1     A3                ; |456| 
           MV      .L2X    A11,B6
           LDW     .D2T2   *+B6(28),B5       ; |457| (P) <0,0> 
           DINT                              ; interrupts off
           LDB     .D1T1   *+A6[A3],A0       ; |457| (P) <0,5>  ^ 
           ZERO    .L2     B4                ; |456| 
           ADD     .L1     1,A3,A4           ; |456| (P) <0,5> Define a twin register
           NOP             2

           STB     .D2T1   A0,*+B5[B4]       ; |457| (P) <0,10>  ^ 
||         ADD     .L2     1,B4,B4           ; |456| (P) <0,10> 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop source line                 : 456
;*      Loop opening brace source line   : 456
;*      Loop closing brace source line   : 458
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 11
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 3
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     0        1     
;*      .S units                     1        0     
;*      .D units                     3*       2     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             3*       2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          1        1     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     2        2     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Unsafe schedule for irregular loop
;*         ii = 11 Did not find schedule
;*         ii = 12 Unsafe schedule for irregular loop
;*         ii = 12 Unsafe schedule for irregular loop
;*         ii = 12 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*   **                          |    * *                         |
;*       1: |*   **                          |    * *                         |
;*       2: |*   **                          |    * *                         |
;*       3: |*   **                          |    * *                         |
;*       4: |*   **                          |    * *                         |
;*       5: |*   **                          |*   * *                         |
;*       6: |*   ***                         |*   ***                         |
;*       7: |*   **                          |*   ***                         |
;*       8: |*   **                          |*   ***                         |
;*       9: |*   **                          |*   ***                         |
;*      10: |*   **                          |*   ***                         |
;*      11: |*   **                          |*   ***                         |
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
;*                  MVK             0x1,B0
;*                  MV              A4,B4
;*                  MV              A5,B6
;*                  ZERO            A0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C44:
;*   0              LDW     .D1T1   *+A5(24),A6       ; |457|  ^ 
;*     ||           LDW     .D2T2   *+B6(28),B5       ; |457| 
;*   1              NOP             4
;*   5      [ B0]   LDB     .D1T1   *+A6[A4],A0       ; |457|  ^ 
;*     ||           ADD     .L1     1,A4,A4           ; |456| Define a twin register
;*   6              NOP             4
;*  10      [ B0]   STB     .D2T1   A0,*+B5[B4]       ; |457|  ^ 
;*     ||           ADD     .L2     1,B4,B4           ; |456| 
;*  11              LDHU    .D1T2   *+A5(32),B0       ; |456| 
;*  12              NOP             4
;*  16              CMPGTU  .L2     B0,B4,B0          ; |456| 
;*  17      [ B0]   B       .S1     $C$C44            ; |456| 
;*  18              NOP             5
;*  23              ; BRANCHCC OCCURS {$C$C44}        ; |456| 
;*----------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L4:    ; PIPED LOOP KERNEL
$C$DW$L$_loopbackSWI$4$B:
           LDHU    .D1T2   *+A5(32),B0       ; |456| <0,11> 

           LDW     .D2T2   *+B6(28),B5       ; |457| <1,0> 
||         LDW     .D1T1   *+A5(24),A6       ; |457| <1,0>  ^ 

           NOP             3
           CMPGTU  .L2     B0,B4,B0          ; |456| <0,16> 

   [ B0]   BNOP    .S1     $C$L4,4           ; |456| <0,17> 
||         ADD     .L1     1,A4,A4           ; |456| <1,5> Define a twin register
|| [ B0]   LDB     .D1T1   *+A6[A4],A0       ; |457| <1,5>  ^ 

           ADD     .L2     1,B4,B4           ; |456| <1,10> 
|| [ B0]   STB     .D2T1   A0,*+B5[B4]       ; |457| <1,10>  ^ 

$C$DW$L$_loopbackSWI$4$E:
;** --------------------------------------------------------------------------*
$C$L5:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*

           RINT                              ; interrupts on
||         MV      .L1     A5,A11

;** --------------------------------------------------------------------------*
$C$L6:    
;**	-----------------------g4:
;** 461	-----------------------    if ( (iomStatus = GIO_submit((*info).gioInputChan, 0u, (*info).inputBuffer, (unsigned short *)info+40, (struct _GIO_AppCallback *)info+8)) != 1 ) goto g6;
;** 447	-----------------------    status = 0;
;**  	-----------------------    goto g7;
	.dwpsn	file "swiLoop.c",line 461,column 5,is_stmt
           MVKL    .S2     _GIO_submit,B5    ; |461| 
           MVKH    .S2     _GIO_submit,B5    ; |461| 

           CALL    .S2     B5                ; |461| 
||         LDW     .D1T1   *+A11(24),A6      ; |461| 

           LDW     .D1T1   *A11,A4           ; |461| 
           ADDAD   .D1     A11,5,A1          ; |461| 
           ADDKPC  .S2     $C$RL4,B3,1       ; |461| 

           MV      .L2X    A1,B6             ; |461| 
||         ZERO    .S2     B4                ; |461| 
||         ADD     .L1     8,A11,A8          ; |461| 

$C$RL4:    ; CALL OCCURS {_GIO_submit}       ; |461| 
;** --------------------------------------------------------------------------*

           MV      .L2X    A4,B10            ; |461| 
||         CMPEQ   .L1     A4,1,A0           ; |461| 

	.dwpsn	file "swiLoop.c",line 447,column 28,is_stmt

   [ A0]   BNOP    .S1     $C$L7,5
|| [ A0]   ZERO    .L1     A10               ; |447| 

           ; BRANCHCC OCCURS {$C$L7} 
;** --------------------------------------------------------------------------*
;**	-----------------------g6:
;** 469	-----------------------    SetReason(257, 469, 6);
;** 468	-----------------------    status = 6;
	.dwpsn	file "swiLoop.c",line 469,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |469| 
           MVKH    .S1     _SetReason,A3     ; |469| 
           MVK     .S2     0xd5,B4
           CALL    .S2X    A3                ; |469| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL5,B3,0       ; |469| 
           MVK     .L1     0x6,A6            ; |469| 
$C$RL5:    ; CALL OCCURS {_SetReason}        ; |469| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 468,column 9,is_stmt
           MVK     .L2     0x6,B0            ; |468| 
           NOP             1
           MV      .L1X    B0,A10            ; |468| 
;** --------------------------------------------------------------------------*
$C$L7:    
;**	-----------------------g7:
;** 473	-----------------------    if ( status ) goto g9;
	.dwpsn	file "swiLoop.c",line 473,column 5,is_stmt
           MV      .L1     A10,A0
   [ A0]   BNOP    .S1     $C$L8,5           ; |473| 
           ; BRANCHCC OCCURS {$C$L8}         ; |473| 
;** --------------------------------------------------------------------------*
;** 474	-----------------------    iomStatus = GIO_submit((*info).gioOutputChan, 1u, (*info).outputBuffer, &numWordsToWrite, (struct _GIO_AppCallback *)info+16);
	.dwpsn	file "swiLoop.c",line 474,column 9,is_stmt
           MVKL    .S2     _GIO_submit,B5    ; |474| 
           MVKH    .S2     _GIO_submit,B5    ; |474| 

           CALL    .S2     B5                ; |474| 
||         LDW     .D1T1   *+A11(4),A4       ; |474| 

           LDW     .D1T1   *+A11(28),A6      ; |474| 
           ADD     .D1     A11,16,A0         ; |474| 
           ADDKPC  .S2     $C$RL6,B3,1       ; |474| 

           MV      .L1     A0,A8             ; |474| 
||         ADD     .L2     4,SP,B6           ; |474| 
||         MVK     .S2     0x1,B4            ; |474| 

$C$RL6:    ; CALL OCCURS {_GIO_submit}       ; |474| 
;** --------------------------------------------------------------------------*
           MV      .L2X    A4,B10            ; |474| 
;** --------------------------------------------------------------------------*
$C$L8:    
;**	-----------------------g9:
;** 480	-----------------------    if ( iomStatus == 1 ) goto g11;
	.dwpsn	file "swiLoop.c",line 480,column 5,is_stmt
           CMPEQ   .L2     B10,1,B0          ; |480| 
   [ B0]   BNOP    .S1     $C$L9,5           ; |480| 
           ; BRANCHCC OCCURS {$C$L9}         ; |480| 
;** --------------------------------------------------------------------------*
;** 482	-----------------------    SetReason(257, 482, 6);
;**	-----------------------g11:
;**  	-----------------------    return;
	.dwpsn	file "swiLoop.c",line 482,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |482| 
           MVKH    .S1     _SetReason,A3     ; |482| 
           MVK     .S2     0xe2,B4
           CALL    .S2X    A3                ; |482| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL7,B3,0       ; |482| 
           MVK     .L1     0x6,A6            ; |482| 
$C$RL7:    ; CALL OCCURS {_SetReason}        ; |482| 
;** --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "swiLoop.c",line 484,column 1,is_stmt
           ADD     .L2     8,SP,SP           ; |484| 
	.dwcfi	cfa_offset, 0
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3
           NOP             3
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 19
           LDW     .D2T2   *++SP(8),B10      ; |484| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 

$C$DW$69	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$69, DW_AT_name("C:\ti-tools\ti-dsplink-module\packages\dsplink\dsp\src\samples\loopAl2\swiLoop.asm:$C$L4:1:1289804796")
	.dwattr $C$DW$69, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$69, DW_AT_TI_begin_line(0x1c8)
	.dwattr $C$DW$69, DW_AT_TI_end_line(0x1ca)
$C$DW$70	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$70, DW_AT_low_pc($C$DW$L$_loopbackSWI$4$B)
	.dwattr $C$DW$70, DW_AT_high_pc($C$DW$L$_loopbackSWI$4$E)
	.dwendtag $C$DW$69

	.dwattr $C$DW$59, DW_AT_TI_end_file("swiLoop.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x1e4)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text"
	.global	_SWILOOP_execute

$C$DW$71	.dwtag  DW_TAG_subprogram, DW_AT_name("SWILOOP_execute")
	.dwattr $C$DW$71, DW_AT_low_pc(_SWILOOP_execute)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_SWILOOP_execute")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "swiLoop.c",line 298,column 1,is_stmt,address _SWILOOP_execute

	.dwfde $C$DW$CIE, _SWILOOP_execute

;******************************************************************************
;* FUNCTION NAME: SWILOOP_execute                                             *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_SWILOOP_execute:
;** --------------------------------------------------------------------------*
;** 303	-----------------------    if ( GIO_submit((*info).gioInputChan, 0u, (*info).inputBuffer, (unsigned short * const)info+40, (struct _GIO_AppCallback *)info+8) != 1 ) goto g3;
;** 299	-----------------------    status = 0;
;**  	-----------------------    goto g4;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |298| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STDW    .D2T1   A11:A10,*SP--     ; |298| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 11, -4
	.dwcfi	save_reg_to_mem, 10, -8
$C$DW$72	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg4]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg11]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$332)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg10]
           MV      .L1     A4,A10            ; |298| 
	.dwpsn	file "swiLoop.c",line 303,column 5,is_stmt
           MVKL    .S2     _GIO_submit,B5    ; |303| 
           MVKH    .S2     _GIO_submit,B5    ; |303| 

           CALL    .S2     B5                ; |303| 
||         LDW     .D1T1   *+A10(24),A6      ; |303| 

           LDW     .D1T1   *A10,A4           ; |303| 
           ADDAD   .D1     A10,5,A1          ; |303| 
           ADDKPC  .S2     $C$RL8,B3,1       ; |303| 

           MV      .L2X    A1,B6             ; |303| 
||         ADD     .L1     8,A10,A8          ; |303| 
||         ZERO    .S2     B4                ; |303| 

$C$RL8:    ; CALL OCCURS {_GIO_submit}       ; |303| 
;** --------------------------------------------------------------------------*
           CMPEQ   .L1     A4,1,A0           ; |303| 
	.dwpsn	file "swiLoop.c",line 299,column 9,is_stmt

   [ A0]   BNOP    .S1     $C$L10,5
|| [ A0]   ZERO    .L1     A11               ; |299| 

           ; BRANCHCC OCCURS {$C$L10} 
;** --------------------------------------------------------------------------*
;**	-----------------------g3:
;** 311	-----------------------    SetReason(257, 311, 6);
;** 310	-----------------------    status = 6;
	.dwpsn	file "swiLoop.c",line 311,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |311| 
           MVKH    .S1     _SetReason,A3     ; |311| 
           MVK     .S2     0x37,B4
           CALL    .S2X    A3                ; |311| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL9,B3,0       ; |311| 
           MVK     .L1     0x6,A6            ; |311| 
$C$RL9:    ; CALL OCCURS {_SetReason}        ; |311| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 310,column 9,is_stmt
           MVK     .L1     0x6,A11           ; |310| 
;** --------------------------------------------------------------------------*
$C$L10:    
;**	-----------------------g4:
;** 316	-----------------------    SWI_andn((*info).swi, 2u);
;** 318	-----------------------    return status;
	.dwpsn	file "swiLoop.c",line 316,column 5,is_stmt
           MVKL    .S2     _SWI_andn,B5      ; |316| 
           MVKH    .S2     _SWI_andn,B5      ; |316| 
           CALL    .S2     B5                ; |316| 
           LDW     .D1T1   *+A10(36),A4      ; |316| 
           ADDKPC  .S2     $C$RL10,B3,2      ; |316| 
           MVK     .L2     0x2,B4            ; |316| 
$C$RL10:   ; CALL OCCURS {_SWI_andn}         ; |316| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 318,column 5,is_stmt
           MV      .L1     A11,A4            ; |318| 
	.dwpsn	file "swiLoop.c",line 319,column 1,is_stmt
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3       ; |319| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 
	.dwattr $C$DW$71, DW_AT_TI_end_file("swiLoop.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x13f)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.global	_SWILOOP_delete

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("SWILOOP_delete")
	.dwattr $C$DW$75, DW_AT_low_pc(_SWILOOP_delete)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_SWILOOP_delete")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x14b)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "swiLoop.c",line 332,column 1,is_stmt,address _SWILOOP_delete

	.dwfde $C$DW$CIE, _SWILOOP_delete

;******************************************************************************
;* FUNCTION NAME: SWILOOP_delete                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 24 Save = 24 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_SWILOOP_delete:
;** --------------------------------------------------------------------------*
;** 336	-----------------------    if ( info == NULL ) goto g16;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B10,*SP--(8)      ; |332| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 26, 0
           STW     .D2T2   B3,*SP--(8)       ; |332| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 19, -8
           STDW    .D2T1   A11:A10,*SP--     ; |332| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 11, -12
	.dwcfi	save_reg_to_mem, 10, -16
$C$DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("info")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg4]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("$O$C10")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("$O$C10")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg4]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("$O$C11")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("$O$C11")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg0]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("$O$C12")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("$O$C12")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg4]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("$O$C13")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("$O$C13")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("$O$C14")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("$O$C14")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg0]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("$O$C15")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("$O$C15")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("$O$C16")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("$O$C16")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg0]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$332)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg11]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg26]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("$O$v1")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("$O$v1")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$342)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg4]

           MV      .L1     A4,A11            ; |332| 
||         MV      .S1     A4,A0             ; |332| 

	.dwpsn	file "swiLoop.c",line 336,column 5,is_stmt
   [!A0]   BNOP    .S1     $C$L16,5          ; |336| 
           ; BRANCHCC OCCURS {$C$L16}        ; |336| 
;** --------------------------------------------------------------------------*
;** 338	-----------------------    C$16 = (*info).swi;
;** 338	-----------------------    if ( C$16 == NULL ) goto g4;
	.dwpsn	file "swiLoop.c",line 338,column 9,is_stmt
           LDW     .D1T1   *+A4(36),A0       ; |338| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L11,5          ; |338| 
           ; BRANCHCC OCCURS {$C$L11}        ; |338| 
;** --------------------------------------------------------------------------*
;** 339	-----------------------    SWI_delete(C$16);
	.dwpsn	file "swiLoop.c",line 339,column 13,is_stmt
           MVKL    .S1     _SWI_delete,A3    ; |339| 
           MVKH    .S1     _SWI_delete,A3    ; |339| 
           MV      .L1     A0,A4             ; |339| 
           CALL    .S2X    A3                ; |339| 
           ADDKPC  .S2     $C$RL11,B3,4      ; |339| 
$C$RL11:   ; CALL OCCURS {_SWI_delete}       ; |339| 
;** --------------------------------------------------------------------------*
$C$L11:    
;**	-----------------------g4:
;** 333	-----------------------    status = 0;
;** 343	-----------------------    C$15 = (*info).gioInputChan;
;** 343	-----------------------    if ( C$15 == NULL ) goto g7;
	.dwpsn	file "swiLoop.c",line 333,column 9,is_stmt
           ZERO    .L2     B10               ; |333| 
	.dwpsn	file "swiLoop.c",line 343,column 9,is_stmt
           MV      .L1     A11,A4
           LDW     .D1T1   *A4,A0            ; |343| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L12,5          ; |343| 
           ; BRANCHCC OCCURS {$C$L12}        ; |343| 
;** --------------------------------------------------------------------------*
;** 344	-----------------------    if ( !GIO_delete(C$15) ) goto g7;
	.dwpsn	file "swiLoop.c",line 344,column 13,is_stmt
           MVKL    .S2     _GIO_delete,B4    ; |344| 
           MVKH    .S2     _GIO_delete,B4    ; |344| 
           CALL    .S2     B4                ; |344| 
           ADDKPC  .S2     $C$RL12,B3,3      ; |344| 
           MV      .L1     A0,A4             ; |344| 
$C$RL12:   ; CALL OCCURS {_GIO_delete}       ; |344| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |344| 
   [!A0]   BNOP    .S1     $C$L12,5          ; |344| 
           ; BRANCHCC OCCURS {$C$L12}        ; |344| 
;** --------------------------------------------------------------------------*
;** 347	-----------------------    SetReason(257, 347, 6);
;** 346	-----------------------    status = 6;
	.dwpsn	file "swiLoop.c",line 347,column 17,is_stmt
           MVKL    .S1     _SetReason,A3     ; |347| 
           MVKH    .S1     _SetReason,A3     ; |347| 
           MVK     .S2     0x5b,B4
           CALL    .S2X    A3                ; |347| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL13,B3,0      ; |347| 
           MVK     .L1     0x6,A6            ; |347| 
$C$RL13:   ; CALL OCCURS {_SetReason}        ; |347| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 346,column 17,is_stmt
           MVK     .L2     0x6,B10           ; |346| 
;** --------------------------------------------------------------------------*
$C$L12:    
;**	-----------------------g7:
;** 352	-----------------------    C$14 = (*info).gioOutputChan;
;** 352	-----------------------    if ( C$14 == NULL ) goto g10;
	.dwpsn	file "swiLoop.c",line 352,column 9,is_stmt
           MV      .L1     A11,A4
           LDW     .D1T1   *+A4(4),A0        ; |352| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L13,5          ; |352| 
           ; BRANCHCC OCCURS {$C$L13}        ; |352| 
;** --------------------------------------------------------------------------*
;** 353	-----------------------    if ( !GIO_delete(C$14) ) goto g10;
	.dwpsn	file "swiLoop.c",line 353,column 13,is_stmt
           MVKL    .S2     _GIO_delete,B4    ; |353| 
           MVKH    .S2     _GIO_delete,B4    ; |353| 
           CALL    .S2     B4                ; |353| 
           ADDKPC  .S2     $C$RL14,B3,3      ; |353| 
           MV      .L1     A0,A4             ; |353| 
$C$RL14:   ; CALL OCCURS {_GIO_delete}       ; |353| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |353| 
   [!A0]   BNOP    .S1     $C$L13,5          ; |353| 
           ; BRANCHCC OCCURS {$C$L13}        ; |353| 
;** --------------------------------------------------------------------------*
;** 356	-----------------------    SetReason(257, 356, 6);
;** 355	-----------------------    status = 6;
	.dwpsn	file "swiLoop.c",line 356,column 17,is_stmt
           MVKL    .S1     _SetReason,A3     ; |356| 
           MVKH    .S1     _SetReason,A3     ; |356| 
           MVK     .S2     0x64,B4
           CALL    .S2X    A3                ; |356| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL15,B3,0      ; |356| 
           MVK     .L1     0x6,A6            ; |356| 
$C$RL15:   ; CALL OCCURS {_SetReason}        ; |356| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 355,column 17,is_stmt
           MVK     .L2     0x6,B10           ; |355| 
;** --------------------------------------------------------------------------*
$C$L13:    
;**	-----------------------g10:
;** 361	-----------------------    v$1 = POOL;
;** 361	-----------------------    C$13 = (*info).inputBuffer;
;** 361	-----------------------    if ( C$13 == NULL ) goto g12;
	.dwpsn	file "swiLoop.c",line 361,column 9,is_stmt
           MV      .L1     A11,A4
           LDW     .D1T1   *+A4(24),A0       ; |361| 
           MVKL    .S1     _POOL,A10
           MVKH    .S1     _POOL,A10
           LDW     .D1T1   *A10,A4           ; |361| 
           NOP             1
   [!A0]   BNOP    .S1     $C$L14,5          ; |361| 
           ; BRANCHCC OCCURS {$C$L14}        ; |361| 
;** --------------------------------------------------------------------------*
;** 362	-----------------------    C$12 = (*v$1).allocators;
;** 362	-----------------------    (*(*(*C$12).fxns).free)((*C$12).object, C$13, (unsigned)(*info).bufferSize);
;** 362	-----------------------    v$1 = POOL;
	.dwpsn	file "swiLoop.c",line 362,column 13,is_stmt
           LDW     .D1T1   *A4,A4            ; |362| 
           MV      .L1     A11,A6
           LDHU    .D1T1   *+A6(40),A6       ; |362| 
           MV      .L2X    A0,B4             ; |362| 
           NOP             1
           LDW     .D1T1   *+A4(4),A5        ; |362| 
           LDW     .D1T1   *+A4(12),A4       ; |362| 
           NOP             3
           LDW     .D1T1   *+A5(12),A3       ; |362| 
           NOP             4
           CALL    .S2X    A3                ; |362| 
           ADDKPC  .S2     $C$RL16,B3,4      ; |362| 
$C$RL16:   ; CALL OCCURS {A3}                ; |362| 
;** --------------------------------------------------------------------------*
           MV      .L1     A10,A4
           LDW     .D1T1   *A4,A4            ; |362| 
;** --------------------------------------------------------------------------*
$C$L14:    
;**	-----------------------g12:
;** 366	-----------------------    C$11 = (*info).outputBuffer;
;** 366	-----------------------    if ( C$11 == NULL ) goto g14;
	.dwpsn	file "swiLoop.c",line 366,column 9,is_stmt
           MV      .L1     A11,A5
           LDW     .D1T1   *+A5(28),A0       ; |366| 
           NOP             4
   [!A0]   BNOP    .S1     $C$L15,5          ; |366| 
           ; BRANCHCC OCCURS {$C$L15}        ; |366| 
;** --------------------------------------------------------------------------*
;** 367	-----------------------    C$10 = (*v$1).allocators;
;** 367	-----------------------    (*(*(*C$10).fxns).free)((*C$10).object, C$11, (unsigned)(*info).bufferSize);
	.dwpsn	file "swiLoop.c",line 367,column 13,is_stmt
           LDW     .D1T1   *A4,A4            ; |367| 
           MV      .L1     A11,A6
           LDHU    .D1T1   *+A6(40),A6       ; |367| 
           MV      .L2X    A0,B4             ; |367| 
           NOP             1
           LDW     .D1T1   *+A4(4),A5        ; |367| 
           LDW     .D1T1   *+A4(12),A4       ; |367| 
           NOP             3
           LDW     .D1T1   *+A5(12),A3       ; |367| 
           NOP             4
           CALL    .S2X    A3                ; |367| 
           ADDKPC  .S2     $C$RL17,B3,4      ; |367| 
$C$RL17:   ; CALL OCCURS {A3}                ; |367| 
;** --------------------------------------------------------------------------*
$C$L15:    
;**	-----------------------g14:
;** 371	-----------------------    if ( MEM_free(DDR2, (void * const)info, 44u) ) goto g17;
	.dwpsn	file "swiLoop.c",line 371,column 9,is_stmt
           MVKL    .S2     _MEM_free,B5      ; |371| 

           MVKH    .S2     _MEM_free,B5      ; |371| 
||         MVKL    .S1     _DDR2,A4

           CALL    .S2     B5                ; |371| 
||         MVKH    .S1     _DDR2,A4

           LDW     .D1T1   *A4,A4            ; |371| 
           ADDKPC  .S2     $C$RL18,B3,2      ; |371| 

           MV      .L2X    A11,B4            ; |371| 
||         MVK     .S1     0x2c,A6           ; |371| 

$C$RL18:   ; CALL OCCURS {_MEM_free}         ; |371| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |371| 
   [ A0]   BNOP    .S1     $C$L17,5          ; |371| 
           ; BRANCHCC OCCURS {$C$L17}        ; |371| 
;** --------------------------------------------------------------------------*
;** 373	-----------------------    SetReason(257, 373, 1);
;** 373	-----------------------    return 1;
	.dwpsn	file "swiLoop.c",line 373,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |373| 
           MVKH    .S1     _SetReason,A3     ; |373| 
           MVK     .S2     0x75,B4
           CALL    .S2X    A3                ; |373| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL19,B3,0      ; |373| 
           MVK     .L1     0x1,A6            ; |373| 
$C$RL19:   ; CALL OCCURS {_SetReason}        ; |373| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L18,4          ; |373| 
           MVK     .L1     0x1,A4            ; |373| 
           ; BRANCH OCCURS {$C$L18}          ; |373| 
;** --------------------------------------------------------------------------*
$C$L16:    
;**	-----------------------g16:
;** 377	-----------------------    status = 1;
	.dwpsn	file "swiLoop.c",line 377,column 9,is_stmt
           MVK     .L2     0x1,B10           ; |377| 
;** --------------------------------------------------------------------------*
$C$L17:    
;**	-----------------------g17:
;** 380	-----------------------    return status;
           NOP             1
	.dwpsn	file "swiLoop.c",line 380,column 5,is_stmt
           MV      .L1X    B10,A4            ; |380| 
;** --------------------------------------------------------------------------*
$C$L18:    
	.dwpsn	file "swiLoop.c",line 381,column 1,is_stmt
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3
           NOP             3
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 19
           LDW     .D2T2   *++SP(8),B10      ; |381| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 
	.dwattr $C$DW$75, DW_AT_TI_end_file("swiLoop.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x17d)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text"
	.global	_SWILOOP_create

$C$DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("SWILOOP_create")
	.dwattr $C$DW$87, DW_AT_low_pc(_SWILOOP_create)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_SWILOOP_create")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_TI_begin_file("swiLoop.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x05)
	.dwpsn	file "swiLoop.c",line 185,column 1,is_stmt,address _SWILOOP_create

	.dwfde $C$DW$CIE, _SWILOOP_create

;******************************************************************************
;* FUNCTION NAME: SWILOOP_create                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 0 Args + 28 Auto + 24 Save = 52 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_SWILOOP_create:
;** --------------------------------------------------------------------------*
;** 187	-----------------------    swiAttrs = SWI_ATTRS;
;** 214	-----------------------    *infoPtr = C$21 = (struct _SWILOOP_TransferInfo_tag *)MEM_valloc(DDR2, 44u, 128u, 0);
;** 217	-----------------------    U$7 = C$21;
;** 217	-----------------------    if ( U$7 ) goto g3;
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |185| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STW     .D2T1   A12,*SP--(8)      ; |185| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 12, -8
           STDW    .D2T1   A11:A10,*SP--     ; |185| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 11, -12
	.dwcfi	save_reg_to_mem, 10, -16
           ADDK    .S2     -32,SP            ; |185| 
	.dwcfi	cfa_offset, 32
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_name("infoPtr")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$286)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg4]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("$O$C19")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("$O$C19")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg4]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("$O$C20")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("$O$C20")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg4]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("$O$C21")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("$O$C21")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$333)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg0]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("info")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_info")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg10]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("infoPtr")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_infoPtr")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$331)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg10]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("$O$U7")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("$O$U7")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg11]
$C$DW$96	.dwtag  DW_TAG_variable, DW_AT_name("swiAttrs")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_swiAttrs")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$313)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg31 4]
$C$DW$97	.dwtag  DW_TAG_variable, DW_AT_name("gioAttrs")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_gioAttrs")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg31 24]
           MV      .L1     A4,A10            ; |185| 
	.dwpsn	file "swiLoop.c",line 187,column 29,is_stmt
           MVKL    .S2     _SWI_ATTRS,B4
           MVKH    .S2     _SWI_ATTRS,B4
           LDNDW   .D2T2   *+B4(8),B1:B0     ; |187| 
           LDNDW   .D2T2   *B4,B3:B2         ; |187| 
           LDW     .D2T2   *+B4(16),B4       ; |187| 
           ADD     .L2     4,SP,B5           ; |187| 
           NOP             2
           STNDW   .D2T2   B3:B2,*B5         ; |187| 
           STW     .D2T2   B4,*+B5(16)       ; |187| 
           STNDW   .D2T2   B1:B0,*+B5(8)     ; |187| 
	.dwpsn	file "swiLoop.c",line 214,column 5,is_stmt
           MVKL    .S1     _MEM_valloc,A3    ; |214| 
           MVKH    .S1     _MEM_valloc,A3    ; |214| 
           MVKL    .S1     _DDR2,A4

           CALL    .S2X    A3                ; |214| 
||         MVKH    .S1     _DDR2,A4

           LDW     .D1T1   *A4,A4            ; |214| 
           MVK     .S2     0x2c,B4           ; |214| 
           ADDKPC  .S2     $C$RL20,B3,1      ; |214| 

           MVK     .S1     0x80,A6           ; |214| 
||         ZERO    .L2     B6                ; |214| 

$C$RL20:   ; CALL OCCURS {_MEM_valloc}       ; |214| 
;** --------------------------------------------------------------------------*
           MV      .L1     A4,A0             ; |214| 
           STW     .D1T1   A0,*A10           ; |214| 
	.dwpsn	file "swiLoop.c",line 217,column 5,is_stmt

   [ A0]   BNOP    .S1     $C$L19,5          ; |217| 
||         MV      .L1     A0,A11            ; |217| 

           ; BRANCHCC OCCURS {$C$L19}        ; |217| 
;** --------------------------------------------------------------------------*
;** 219	-----------------------    SetReason(257, 219, 1);
;** 218	-----------------------    status = 1;
;** 220	-----------------------    goto g4;
	.dwpsn	file "swiLoop.c",line 219,column 9,is_stmt
           MVKL    .S1     _SetReason,A3     ; |219| 
           MVKH    .S1     _SetReason,A3     ; |219| 
           MVK     .S1     0x1,A4
           CALL    .S2X    A3                ; |219| 
           SET     .S1     A4,0x8,0x8,A4
           MVK     .S2     0xdb,B4           ; |219| 
           ADDKPC  .S2     $C$RL21,B3,1      ; |219| 
           MVK     .L1     0x1,A6            ; |219| 
$C$RL21:   ; CALL OCCURS {_SetReason}        ; |219| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 218,column 9,is_stmt
           MVK     .L2     0x1,B0            ; |218| 
           NOP             1
           MV      .L1X    B0,A10            ; |218| 
	.dwpsn	file "swiLoop.c",line 220,column 5,is_stmt
;** --------------------------------------------------------------------------*
$C$L19:    
;**	-----------------------g3:
;** 222	-----------------------    info = U$7;
;** 186	-----------------------    status = 0;
;**	-----------------------g4:
;** 226	-----------------------    if ( status ) goto g7;
	.dwpsn	file "swiLoop.c",line 222,column 9,is_stmt
           MV      .L1     A11,A0
   [ A0]   MV      .L1     A11,A12           ; |222| 
	.dwpsn	file "swiLoop.c",line 186,column 29,is_stmt
   [ A0]   ZERO    .L1     A10               ; |186| 
	.dwpsn	file "swiLoop.c",line 226,column 5,is_stmt
           MV      .L1     A10,A0
   [ A0]   BNOP    .S1     $C$L20,5          ; |226| 
           ; BRANCHCC OCCURS {$C$L20}        ; |226| 
;** --------------------------------------------------------------------------*
;** 227	-----------------------    (*info).bufferSize = xferBufSize;
;** 228	-----------------------    (*info).appReadCb.fxn = &readFinishCb;
;** 229	-----------------------    (*info).appReadCb.arg = (void *)info;
;** 230	-----------------------    (*info).appWriteCb.fxn = &writeFinishCb;
;** 231	-----------------------    (*info).appWriteCb.arg = (void *)info;
;** 231	-----------------------    gioAttrs = GIO_ATTRS;
;** 237	-----------------------    (*info).gioInputChan = GIO_create("/dio_dsplink0", 1, NULL, NULL, &gioAttrs);
;** 242	-----------------------    (*info).gioOutputChan = GIO_create("/dio_dsplink1", 2, NULL, NULL, &gioAttrs);
;** 247	-----------------------    if ( !(((*info).gioInputChan == NULL)|((*info).gioOutputChan == NULL)) ) goto g7;
	.dwpsn	file "swiLoop.c",line 227,column 9,is_stmt
           MVKL    .S2     _xferBufSize,B4
           MVKH    .S2     _xferBufSize,B4
           LDHU    .D2T2   *B4,B0            ; |227| 
           NOP             4
           STH     .D1T2   B0,*+A12(40)      ; |227| 
	.dwpsn	file "swiLoop.c",line 228,column 9,is_stmt
           MVKL    .S1     _readFinishCb,A0
           MVKH    .S1     _readFinishCb,A0
           STW     .D1T1   A0,*+A12(8)       ; |228| 
	.dwpsn	file "swiLoop.c",line 229,column 9,is_stmt
           STW     .D1T1   A12,*+A12(12)     ; |229| 
	.dwpsn	file "swiLoop.c",line 230,column 9,is_stmt
           MVKL    .S1     _writeFinishCb,A0
           MVKH    .S1     _writeFinishCb,A0
           STW     .D1T1   A0,*+A12(16)      ; |230| 
	.dwpsn	file "swiLoop.c",line 231,column 9,is_stmt

           MVKL    .S1     _GIO_ATTRS,A4
||         STW     .D1T1   A12,*+A12(20)     ; |231| 

           MVKH    .S1     _GIO_ATTRS,A4
           LDNDW   .D1T1   *A4,A1:A0         ; |231| 
           ADD     .D2     SP,24,B4          ; |231| 
           NOP             3
           STNDW   .D2T1   A1:A0,*B4         ; |231| 
	.dwpsn	file "swiLoop.c",line 237,column 9,is_stmt
           MVKL    .S2     _GIO_create,B5    ; |237| 
           MVKH    .S2     _GIO_create,B5    ; |237| 
           CALL    .S2     B5                ; |237| 
           MVK     .L2     0x1,B4            ; |237| 
           MVKL    .S1     $C$SL1+0,A4       ; |237| 
           MVKH    .S1     $C$SL1+0,A4       ; |237| 
           ADDKPC  .S2     $C$RL22,B3,0      ; |237| 

           ZERO    .L1     A6                ; |237| 
||         ZERO    .L2     B6                ; |237| 
||         ADDAW   .D1X    SP,6,A8           ; |237| 

$C$RL22:   ; CALL OCCURS {_GIO_create}       ; |237| 
;** --------------------------------------------------------------------------*
           STW     .D1T1   A4,*A12           ; |237| 
	.dwpsn	file "swiLoop.c",line 242,column 9,is_stmt
           MVKL    .S2     _GIO_create,B5    ; |242| 
           MVKH    .S2     _GIO_create,B5    ; |242| 
           CALL    .S2     B5                ; |242| 
           MVKL    .S1     $C$SL2+0,A4       ; |242| 
           ADDKPC  .S2     $C$RL23,B3,2      ; |242| 

           MVKH    .S1     $C$SL2+0,A4       ; |242| 
||         MVK     .L2     0x2,B4            ; |242| 
||         ZERO    .L1     A6                ; |242| 
||         ZERO    .S2     B6                ; |242| 
||         ADDAW   .D1X    SP,6,A8           ; |242| 

$C$RL23:   ; CALL OCCURS {_GIO_create}       ; |242| 
;** --------------------------------------------------------------------------*
           STW     .D1T1   A4,*+A12(4)       ; |242| 
	.dwpsn	file "swiLoop.c",line 247,column 9,is_stmt
           LDW     .D1T1   *+A12(4),A2       ; |247| 
           LDW     .D1T1   *A12,A1           ; |247| 
           ZERO    .L2     B0                ; |247| 
           ZERO    .L1     A3                ; |247| 
           NOP             1
   [!A2]   MVK     .L1     0x1,A3            ; |247| 
   [!A1]   MVK     .L2     0x1,B0            ; |247| 
           OR      .L2X    A3,B0,B0          ; |247| 
   [!B0]   BNOP    .S1     $C$L20,5          ; |247| 
           ; BRANCHCC OCCURS {$C$L20}        ; |247| 
;** --------------------------------------------------------------------------*
;** 250	-----------------------    SetReason(257, 250, 1);
;** 249	-----------------------    status = 1;
	.dwpsn	file "swiLoop.c",line 250,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |250| 
           MVKH    .S1     _SetReason,A3     ; |250| 
           MVK     .S2     0xfa,B4           ; |250| 
           CALL    .S2X    A3                ; |250| 
           ADDKPC  .S2     $C$RL24,B3,3      ; |250| 

           ADD     .L1X    7,B4,A4
||         MVK     .S1     0x1,A6            ; |250| 

$C$RL24:   ; CALL OCCURS {_SetReason}        ; |250| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 249,column 13,is_stmt
           MVK     .L2     0x1,B0            ; |249| 
           NOP             1
           MV      .L1X    B0,A10            ; |249| 
;** --------------------------------------------------------------------------*
$C$L20:    
;**	-----------------------g7:
;** 255	-----------------------    if ( status ) goto g10;
	.dwpsn	file "swiLoop.c",line 255,column 5,is_stmt
           MV      .L1     A10,A0
   [ A0]   BNOP    .S1     $C$L21,5          ; |255| 
           ; BRANCHCC OCCURS {$C$L21}        ; |255| 
;** --------------------------------------------------------------------------*
;** 256	-----------------------    swiAttrs.fxn = &loopbackSWI;
;** 257	-----------------------    swiAttrs.arg0 = (int)info;
;** 258	-----------------------    swiAttrs.mailbox = 3u;
;** 259	-----------------------    (*info).swi = SWI_create(&swiAttrs);
;** 260	-----------------------    if ( (*info).swi ) goto g10;
	.dwpsn	file "swiLoop.c",line 256,column 9,is_stmt
           MVKL    .S1     _loopbackSWI,A0
           MVKH    .S1     _loopbackSWI,A0
           STW     .D2T1   A0,*+SP(4)        ; |256| 
	.dwpsn	file "swiLoop.c",line 257,column 9,is_stmt
           STW     .D2T1   A12,*+SP(8)       ; |257| 
	.dwpsn	file "swiLoop.c",line 258,column 9,is_stmt
           MVK     .L2     3,B0              ; |258| 
           STW     .D2T2   B0,*+SP(20)       ; |258| 
	.dwpsn	file "swiLoop.c",line 259,column 9,is_stmt
           MVKL    .S2     _SWI_create,B4    ; |259| 
           MVKH    .S2     _SWI_create,B4    ; |259| 
           CALL    .S2     B4                ; |259| 
           ADDKPC  .S2     $C$RL25,B3,3      ; |259| 
           ADD     .L1X    4,SP,A4           ; |259| 
$C$RL25:   ; CALL OCCURS {_SWI_create}       ; |259| 
;** --------------------------------------------------------------------------*
           STW     .D1T1   A4,*+A12(36)      ; |259| 
	.dwpsn	file "swiLoop.c",line 260,column 9,is_stmt
           LDW     .D1T1   *+A12(36),A0      ; |260| 
           NOP             4
   [ A0]   BNOP    .S1     $C$L21,5          ; |260| 
           ; BRANCHCC OCCURS {$C$L21}        ; |260| 
;** --------------------------------------------------------------------------*
;** 262	-----------------------    SetReason(257, 262, 1);
;** 261	-----------------------    status = 1;
	.dwpsn	file "swiLoop.c",line 262,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |262| 
           MVKH    .S1     _SetReason,A3     ; |262| 
           MVK     .S2     0x6,B4
           CALL    .S2X    A3                ; |262| 
           SET     .S2     B4,0x8,0x8,B4
           ADDKPC  .S2     $C$RL26,B3,1      ; |262| 
           ADD     .L1X    -5,B4,A4
           MVK     .L1     0x1,A6            ; |262| 
$C$RL26:   ; CALL OCCURS {_SetReason}        ; |262| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "swiLoop.c",line 261,column 13,is_stmt
           MVK     .L2     0x1,B0            ; |261| 
           NOP             1
           MV      .L1X    B0,A10            ; |261| 
;** --------------------------------------------------------------------------*
$C$L21:    
;**	-----------------------g10:
;** 267	-----------------------    if ( status ) goto g15;
	.dwpsn	file "swiLoop.c",line 267,column 5,is_stmt
           MV      .L1     A10,A0
   [ A0]   BNOP    .S1     $C$L23,5          ; |267| 
           ; BRANCHCC OCCURS {$C$L23}        ; |267| 
;** --------------------------------------------------------------------------*
;** 268	-----------------------    C$20 = (*POOL).allocators;
;** 268	-----------------------    if ( status = (*(*(*C$20).fxns).alloc)((*C$20).object, (char **)info+24, (unsigned)(*info).bufferSize) ) goto g14;
	.dwpsn	file "swiLoop.c",line 268,column 9,is_stmt
           MVKL    .S1     _POOL,A11
           MVKH    .S1     _POOL,A11
           LDW     .D1T1   *A11,A4           ; |268| 
           LDHU    .D1T1   *+A12(40),A6      ; |268| 
           ADD     .D1     A12,24,A1         ; |268| 
           NOP             2
           LDW     .D1T1   *A4,A4            ; |268| 
           MV      .L2X    A1,B4             ; |268| 
           NOP             3
           LDW     .D1T1   *+A4(4),A5        ; |268| 
           LDW     .D1T1   *+A4(12),A4       ; |268| 
           NOP             3
           LDW     .D1T1   *+A5(8),A0        ; |268| 
           NOP             4
           CALL    .S2X    A0                ; |268| 
           ADDKPC  .S2     $C$RL27,B3,4      ; |268| 
$C$RL27:   ; CALL OCCURS {A0}                ; |268| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |268| 
||         MV      .S1     A4,A10            ; |268| 

   [ A0]   BNOP    .S1     $C$L22,5          ; |268| 
           ; BRANCHCC OCCURS {$C$L22}        ; |268| 
;** --------------------------------------------------------------------------*
;** 272	-----------------------    C$19 = (*POOL).allocators;
;** 272	-----------------------    if ( !(status = (*(*(*C$19).fxns).alloc)((*C$19).object, (char **)info+28, (unsigned)(*info).bufferSize)) ) goto g15;
	.dwpsn	file "swiLoop.c",line 272,column 13,is_stmt
           MV      .L1     A11,A4
           LDW     .D1T1   *A4,A4            ; |272| 
           LDHU    .D1T1   *+A12(40),A6      ; |272| 
           ADD     .D1     A12,28,A1         ; |272| 
           NOP             2
           LDW     .D1T1   *A4,A4            ; |272| 
           MV      .L2X    A1,B4             ; |272| 
           NOP             3
           LDW     .D1T1   *+A4(4),A5        ; |272| 
           LDW     .D1T1   *+A4(12),A4       ; |272| 
           NOP             3
           LDW     .D1T1   *+A5(8),A0        ; |272| 
           NOP             4
           CALL    .S2X    A0                ; |272| 
           ADDKPC  .S2     $C$RL28,B3,4      ; |272| 
$C$RL28:   ; CALL OCCURS {A0}                ; |272| 
;** --------------------------------------------------------------------------*

           MV      .L1     A4,A0             ; |272| 
||         MV      .S1     A4,A10            ; |272| 

   [!A0]   BNOP    .S1     $C$L23,5          ; |272| 
           ; BRANCHCC OCCURS {$C$L23}        ; |272| 
;** --------------------------------------------------------------------------*
;** 276	-----------------------    SetReason(257, 276, status);
;** 276	-----------------------    return status;
	.dwpsn	file "swiLoop.c",line 276,column 17,is_stmt
           MVKL    .S1     _SetReason,A3     ; |276| 
           MVKH    .S1     _SetReason,A3     ; |276| 
           MVK     .S2     0x14,B4
           CALL    .S2X    A3                ; |276| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL29,B3,0      ; |276| 
           MV      .L1     A10,A6            ; |276| 
$C$RL29:   ; CALL OCCURS {_SetReason}        ; |276| 
;** --------------------------------------------------------------------------*
           BNOP    .S1     $C$L24,4          ; |276| 
           MV      .L1     A10,A4            ; |276| 
           ; BRANCH OCCURS {$C$L24}          ; |276| 
;** --------------------------------------------------------------------------*
$C$L22:    
;**	-----------------------g14:
;** 280	-----------------------    SetReason(257, 280, status);
	.dwpsn	file "swiLoop.c",line 280,column 13,is_stmt
           MVKL    .S1     _SetReason,A3     ; |280| 
           MVKH    .S1     _SetReason,A3     ; |280| 
           MVK     .S2     0x18,B4
           CALL    .S2X    A3                ; |280| 
           SET     .S2     B4,0x8,0x8,B4
           MVK     .S1     0x1,A4
           SET     .S1     A4,0x8,0x8,A4
           ADDKPC  .S2     $C$RL30,B3,0      ; |280| 
           MV      .L1     A10,A6            ; |280| 
$C$RL30:   ; CALL OCCURS {_SetReason}        ; |280| 
;** --------------------------------------------------------------------------*
$C$L23:    
;**	-----------------------g15:
;** 284	-----------------------    return status;
	.dwpsn	file "swiLoop.c",line 284,column 5,is_stmt
           MV      .L1     A10,A4
;** --------------------------------------------------------------------------*
$C$L24:    
	.dwpsn	file "swiLoop.c",line 285,column 1,is_stmt
           ADDK    .S2     32,SP             ; |285| 
	.dwcfi	cfa_offset, 0
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T1   *++SP(8),A12
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 12
           LDW     .D2T2   *++SP(8),B3       ; |285| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3} 
	.dwattr $C$DW$87, DW_AT_TI_end_file("swiLoop.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0x11d)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
$C$SL1:	.string	"/dio_dsplink0",0
$C$SL2:	.string	"/dio_dsplink1",0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_SWI_andn
	.global	_SWI_create
	.global	_SWI_delete
	.global	_MEM_free
	.global	_MEM_valloc
	.global	_GIO_create
	.global	_GIO_delete
	.global	_GIO_submit
	.global	_SetReason
	.global	_SWI_ATTRS
	.global	_GIO_ATTRS
	.global	_DDR2
	.global	_POOL
	.global	_xferBufSize

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
$C$DW$T$42	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$42, DW_AT_address_class(0x20)

$C$DW$T$185	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$185, DW_AT_language(DW_LANG_C)
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$185

$C$DW$T$186	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$T$186, DW_AT_address_class(0x20)
$C$DW$T$187	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_TsemCreate")
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)

$C$DW$T$238	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$238, DW_AT_language(DW_LANG_C)
$C$DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$81)
	.dwendtag $C$DW$T$238

$C$DW$T$239	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$239, DW_AT_type(*$C$DW$T$27)

$C$DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$23)
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$T$33

$C$DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Fxn")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)

$C$DW$T$58	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
$C$DW$106	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$107	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$57)
	.dwendtag $C$DW$T$58

$C$DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_address_class(0x20)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TiomCallback")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)

$C$DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$74, DW_AT_language(DW_LANG_C)
$C$DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$111	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$74

$C$DW$T$75	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$75, DW_AT_address_class(0x20)
$C$DW$T$76	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_TappCallback")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)

$C$DW$T$90	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$90

$C$DW$T$91	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)
$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Close")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
$C$DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_TsemDelete")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
$C$DW$T$192	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_TsemPost")
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$192, DW_AT_language(DW_LANG_C)
$C$DW$T$195	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Post")
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C)

$C$DW$T$96	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
$C$DW$113	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$96

$C$DW$T$97	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_address_class(0x20)
$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Free")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)

$C$DW$T$100	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
$C$DW$T$101	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_address_class(0x20)
$C$DW$T$102	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Init")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
$C$DW$T$227	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtInit")
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C)
$C$DW$T$244	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tinit")
	.dwattr $C$DW$T$244, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C)

$C$DW$T$133	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
$C$DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$132)
	.dwendtag $C$DW$T$133

$C$DW$T$134	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x20)
$C$DW$T$135	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Fxn")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)

$C$DW$T$245	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$245, DW_AT_language(DW_LANG_C)
$C$DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$85)
$C$DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
	.dwendtag $C$DW$T$245


$C$DW$T$247	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$247, DW_AT_language(DW_LANG_C)
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$85)
	.dwendtag $C$DW$T$247


$C$DW$T$249	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$249, DW_AT_language(DW_LANG_C)
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$122	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$249


$C$DW$T$251	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
$C$DW$123	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$124	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$125	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$126	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
	.dwendtag $C$DW$T$251


$C$DW$T$253	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$253, DW_AT_language(DW_LANG_C)
$C$DW$127	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$157)
	.dwendtag $C$DW$T$253

$C$DW$T$254	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$T$254, DW_AT_address_class(0x20)
$C$DW$T$255	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Fxn")
	.dwattr $C$DW$T$255, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$T$255, DW_AT_language(DW_LANG_C)
$C$DW$T$4	.dwtag  DW_TAG_base_type, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$256	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$256, DW_AT_address_class(0x20)
$C$DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$259	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$259, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$259, DW_AT_language(DW_LANG_C)
$C$DW$T$260	.dwtag  DW_TAG_typedef, DW_AT_name("SmUns")
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$260, DW_AT_language(DW_LANG_C)
$C$DW$T$261	.dwtag  DW_TAG_typedef, DW_AT_name("SmBits")
	.dwattr $C$DW$T$261, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$261, DW_AT_language(DW_LANG_C)
$C$DW$T$262	.dwtag  DW_TAG_typedef, DW_AT_name("Byte")
	.dwattr $C$DW$T$262, DW_AT_type(*$C$DW$T$261)
	.dwattr $C$DW$T$262, DW_AT_language(DW_LANG_C)
$C$DW$T$263	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackEntry")
	.dwattr $C$DW$T$263, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$263, DW_AT_language(DW_LANG_C)
$C$DW$T$264	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$T$264, DW_AT_address_class(0x20)
$C$DW$T$265	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_StackPtr")
	.dwattr $C$DW$T$265, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$T$265, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$266	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$266, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$266, DW_AT_language(DW_LANG_C)
$C$DW$T$267	.dwtag  DW_TAG_typedef, DW_AT_name("MdInt")
	.dwattr $C$DW$T$267, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$267, DW_AT_language(DW_LANG_C)
$C$DW$T$268	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$268, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$206	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtError")
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$206, DW_AT_language(DW_LANG_C)
$C$DW$T$271	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Id")
	.dwattr $C$DW$T$271, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$271, DW_AT_language(DW_LANG_C)
$C$DW$T$128	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)

$C$DW$T$158	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
$C$DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$142)
$C$DW$129	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$157)
	.dwendtag $C$DW$T$158

$C$DW$T$159	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$159, DW_AT_address_class(0x20)
$C$DW$T$160	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tready")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)

$C$DW$T$189	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
$C$DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
	.dwendtag $C$DW$T$189

$C$DW$T$190	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$T$190, DW_AT_address_class(0x20)
$C$DW$T$191	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_TsemPend")
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$T$191, DW_AT_language(DW_LANG_C)
$C$DW$T$194	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Pend")
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C)

$C$DW$T$272	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$272, DW_AT_language(DW_LANG_C)
$C$DW$132	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$272

$C$DW$T$273	.dwtag  DW_TAG_typedef, DW_AT_name("MdUns")
	.dwattr $C$DW$T$273, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$273, DW_AT_language(DW_LANG_C)
$C$DW$T$274	.dwtag  DW_TAG_typedef, DW_AT_name("MdBits")
	.dwattr $C$DW$T$274, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$274, DW_AT_language(DW_LANG_C)
$C$DW$T$275	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$275, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$275, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$T$20	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
$C$DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
$C$DW$T$110	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$110, DW_AT_address_class(0x20)
$C$DW$T$278	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$278, DW_AT_type(*$C$DW$T$23)

$C$DW$T$43	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
$C$DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$42)
$C$DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$43

$C$DW$T$44	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_address_class(0x20)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdBindDev")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)

$C$DW$T$46	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
$C$DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$46

$C$DW$T$47	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_address_class(0x20)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdUnBindDev")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdDeleteChan")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)

$C$DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
$C$DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$49

$C$DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x20)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdControlChan")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)

$C$DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
$C$DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$42)
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$54)
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$60)
$C$DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$61

$C$DW$T$62	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_address_class(0x20)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdCreateChan")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)

$C$DW$T$65	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
$C$DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$57)
	.dwendtag $C$DW$T$65

$C$DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_address_class(0x20)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_TmdSubmitChan")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)

$C$DW$T$87	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
$C$DW$151	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$42)
$C$DW$152	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$87

$C$DW$T$88	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_address_class(0x20)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Open")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)

$C$DW$T$93	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
$C$DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$42)
$C$DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$40)
	.dwendtag $C$DW$T$93

$C$DW$T$94	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_address_class(0x20)
$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Alloc")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
$C$DW$T$127	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$19)

$C$DW$T$143	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
$C$DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$142)
	.dwendtag $C$DW$T$143

$C$DW$T$144	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_address_class(0x20)
$C$DW$T$145	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tclose")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
$C$DW$T$152	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tissue")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$T$161	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Treclaim")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)

$C$DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
$C$DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$142)
$C$DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
$C$DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$23)
	.dwendtag $C$DW$T$146

$C$DW$T$147	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x20)
$C$DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tctrl")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)

$C$DW$T$149	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
$C$DW$160	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$142)
$C$DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$128)
	.dwendtag $C$DW$T$149

$C$DW$T$150	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$150, DW_AT_address_class(0x20)
$C$DW$T$151	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Tidle")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)

$C$DW$T$153	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
$C$DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$142)
$C$DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$54)
	.dwendtag $C$DW$T$153

$C$DW$T$154	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$154, DW_AT_address_class(0x20)
$C$DW$T$155	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Topen")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)
$C$DW$T$183	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Mode")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)

$C$DW$T$210	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)
$C$DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$209)
	.dwendtag $C$DW$T$210

$C$DW$T$211	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$210)
	.dwattr $C$DW$T$211, DW_AT_address_class(0x20)
$C$DW$T$212	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtOpen")
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$T$212, DW_AT_language(DW_LANG_C)
$C$DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtClose")
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$T$213, DW_AT_language(DW_LANG_C)

$C$DW$T$215	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
$C$DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$209)
$C$DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$54)
$C$DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$128)
$C$DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$214)
$C$DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
	.dwendtag $C$DW$T$215

$C$DW$T$216	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$T$216, DW_AT_address_class(0x20)
$C$DW$T$217	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtLocate")
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$T$217, DW_AT_language(DW_LANG_C)

$C$DW$T$218	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
$C$DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$209)
$C$DW$171	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$204)
	.dwendtag $C$DW$T$218

$C$DW$T$219	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$T$219, DW_AT_address_class(0x20)
$C$DW$T$220	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtRelease")
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$T$220, DW_AT_language(DW_LANG_C)

$C$DW$T$223	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$223, DW_AT_language(DW_LANG_C)
$C$DW$172	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$209)
$C$DW$173	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$222)
	.dwendtag $C$DW$T$223

$C$DW$T$224	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$T$224, DW_AT_address_class(0x20)
$C$DW$T$225	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MqtPut")
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$T$225, DW_AT_language(DW_LANG_C)
$C$DW$T$279	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$279, DW_AT_address_class(0x20)

$C$DW$T$280	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$280, DW_AT_language(DW_LANG_C)
$C$DW$174	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$79)
	.dwendtag $C$DW$T$280


$C$DW$T$283	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$283, DW_AT_language(DW_LANG_C)
$C$DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$79)
$C$DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$28)
$C$DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$281)
$C$DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$282)
	.dwendtag $C$DW$T$283


$C$DW$T$287	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$287, DW_AT_language(DW_LANG_C)
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$286)
	.dwendtag $C$DW$T$287


$C$DW$T$288	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$288, DW_AT_language(DW_LANG_C)
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$285)
	.dwendtag $C$DW$T$288

$C$DW$T$289	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$289, DW_AT_type(*$C$DW$T$19)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("LgInt")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
$C$DW$T$290	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$290, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$290, DW_AT_language(DW_LANG_C)
$C$DW$T$291	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$291, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$291, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
$C$DW$T$304	.dwtag  DW_TAG_typedef, DW_AT_name("TRG_IntState")
	.dwattr $C$DW$T$304, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$304, DW_AT_language(DW_LANG_C)
$C$DW$T$305	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$305, DW_AT_type(*$C$DW$T$28)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
$C$DW$T$281	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$281, DW_AT_address_class(0x20)
$C$DW$T$120	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_sizep")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
$C$DW$T$200	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C)

$C$DW$T$201	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x08)
$C$DW$182	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$182, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$201

$C$DW$T$204	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Queue")
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C)
$C$DW$T$214	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$T$214, DW_AT_address_class(0x20)
$C$DW$T$236	.dwtag  DW_TAG_typedef, DW_AT_name("LgUns")
	.dwattr $C$DW$T$236, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$236, DW_AT_language(DW_LANG_C)
$C$DW$T$306	.dwtag  DW_TAG_typedef, DW_AT_name("LgBits")
	.dwattr $C$DW$T$306, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$306, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$307	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$307, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$307, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$308	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$308, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$308, DW_AT_language(DW_LANG_C)
$C$DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0c)
$C$DW$183	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$183, DW_AT_name("fxn")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$184	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$184, DW_AT_name("arg1")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$185	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$185, DW_AT_name("arg0")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$24

$C$DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Obj")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)
$C$DW$T$309	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$309, DW_AT_address_class(0x20)
$C$DW$T$310	.dwtag  DW_TAG_typedef, DW_AT_name("FXN_Handle")
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$309)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0c)
$C$DW$186	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$186, DW_AT_name("num")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$187	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$187, DW_AT_name("acc")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_acc")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$188	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$188, DW_AT_name("max")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_max")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$26

$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Obj")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$31	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_address_class(0x20)
$C$DW$T$311	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$311, DW_AT_address_class(0x20)
$C$DW$T$312	.dwtag  DW_TAG_typedef, DW_AT_name("STS_Handle")
	.dwattr $C$DW$T$312, DW_AT_type(*$C$DW$T$311)
	.dwattr $C$DW$T$312, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x2c)
$C$DW$189	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("lock")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$190	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$190, DW_AT_name("ready")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$191	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$191, DW_AT_name("mask")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$192	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$192, DW_AT_name("link")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$193	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$193, DW_AT_name("initkey")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_initkey")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$194	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$194, DW_AT_name("mailbox")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$195	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$195, DW_AT_name("fxnobj")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$196	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("stslock")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_stslock")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$197	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$197, DW_AT_name("sts")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$84	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$84, DW_AT_address_class(0x20)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Handle")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)

$C$DW$T$315	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$315, DW_AT_language(DW_LANG_C)
$C$DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$314)
	.dwendtag $C$DW$T$315

$C$DW$T$318	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Obj")
	.dwattr $C$DW$T$318, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$318, DW_AT_language(DW_LANG_C)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x14)
$C$DW$199	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$199, DW_AT_name("fxn")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$200	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$200, DW_AT_name("arg0")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$201	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$201, DW_AT_name("arg1")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$202	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("priority")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$203	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$203, DW_AT_name("mailbox")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_mailbox")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$36

$C$DW$T$313	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_Attrs")
	.dwattr $C$DW$T$313, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$313, DW_AT_language(DW_LANG_C)
$C$DW$T$314	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$313)
	.dwattr $C$DW$T$314, DW_AT_address_class(0x20)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x08)
$C$DW$204	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$204, DW_AT_name("next")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$205	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$205, DW_AT_name("prev")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_prev")
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$38

$C$DW$T$37	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$37, DW_AT_address_class(0x20)
$C$DW$T$126	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Handle")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Elem")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
$C$DW$T$71	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Obj")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$71, DW_AT_language(DW_LANG_C)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("DEV_Frame")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x20)
$C$DW$206	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$206, DW_AT_name("link")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$207	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$207, DW_AT_name("addr")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$208	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$208, DW_AT_name("size")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$209	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$209, DW_AT_name("misc")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_misc")
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$210	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$210, DW_AT_name("arg")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$211	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$211, DW_AT_name("cmd")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$212	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("status")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$41

$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Frame")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Packet")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$T$57	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_address_class(0x20)
$C$DW$T$174	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$174, DW_AT_address_class(0x20)
$C$DW$T$52	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$52, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x20)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$320	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$320, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$320, DW_AT_language(DW_LANG_C)
$C$DW$T$81	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$T$82	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)
$C$DW$T$321	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$321, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$321, DW_AT_language(DW_LANG_C)
$C$DW$T$322	.dwtag  DW_TAG_typedef, DW_AT_name("SmInt")
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$322, DW_AT_language(DW_LANG_C)

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("IOM_Fxns")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x18)
$C$DW$213	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$213, DW_AT_name("mdBindDev")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_mdBindDev")
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$214	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$214, DW_AT_name("mdUnBindDev")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_mdUnBindDev")
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$215	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$215, DW_AT_name("mdControlChan")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_mdControlChan")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$216	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$216, DW_AT_name("mdCreateChan")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_mdCreateChan")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$217	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$217, DW_AT_name("mdDeleteChan")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_mdDeleteChan")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$218	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$218, DW_AT_name("mdSubmitChan")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_mdSubmitChan")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_typedef, DW_AT_name("IOM_Fxns")
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_language(DW_LANG_C)
$C$DW$T$70	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_address_class(0x20)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("GIO_Obj")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x3c)
$C$DW$219	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$219, DW_AT_name("fxns")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$220	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$220, DW_AT_name("mode")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$221	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$221, DW_AT_name("timeout")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$222	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$222, DW_AT_name("syncPacket")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_syncPacket")
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$223	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$223, DW_AT_name("freeList")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_freeList")
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$224	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$224, DW_AT_name("syncObj")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_syncObj")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$225	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$225, DW_AT_name("mdChan")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_mdChan")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$72

$C$DW$T$78	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x20)
$C$DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_Handle")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)

$C$DW$T$325	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$325, DW_AT_language(DW_LANG_C)
$C$DW$226	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$54)
$C$DW$227	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$228	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$279)
$C$DW$229	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$27)
$C$DW$230	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$324)
	.dwendtag $C$DW$T$325

$C$DW$T$328	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_Obj")
	.dwattr $C$DW$T$328, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$328, DW_AT_language(DW_LANG_C)

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("GIO_Attrs")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x08)
$C$DW$231	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("nPackets")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_nPackets")
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$232	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$232, DW_AT_name("timeout")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$73

$C$DW$T$323	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_Attrs")
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$323, DW_AT_language(DW_LANG_C)
$C$DW$T$324	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$323)
	.dwattr $C$DW$T$324, DW_AT_address_class(0x20)

$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("GIO_AppCallback")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x08)
$C$DW$233	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$233, DW_AT_name("fxn")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$234	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$234, DW_AT_name("arg")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$77

$C$DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_AppCallback")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
$C$DW$T$282	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$282, DW_AT_address_class(0x20)

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("SWILOOP_TransferInfo_tag")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x2c)
$C$DW$235	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$235, DW_AT_name("gioInputChan")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_gioInputChan")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$236	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$236, DW_AT_name("gioOutputChan")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_gioOutputChan")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$237	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$237, DW_AT_name("appReadCb")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_appReadCb")
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$238	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$238, DW_AT_name("appWriteCb")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_appWriteCb")
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$239	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$239, DW_AT_name("inputBuffer")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_inputBuffer")
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$240	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$240, DW_AT_name("outputBuffer")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_outputBuffer")
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$241	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$241, DW_AT_name("readWords")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_readWords")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$242	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$242, DW_AT_name("swi")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_swi")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$243	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$243, DW_AT_name("bufferSize")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_bufferSize")
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$86

$C$DW$T$284	.dwtag  DW_TAG_typedef, DW_AT_name("SWILOOP_TransferInfo")
	.dwattr $C$DW$T$284, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$284, DW_AT_language(DW_LANG_C)
$C$DW$T$285	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$284)
	.dwattr $C$DW$T$285, DW_AT_address_class(0x20)
$C$DW$T$286	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$285)
	.dwattr $C$DW$T$286, DW_AT_address_class(0x20)
$C$DW$T$331	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$331, DW_AT_type(*$C$DW$T$286)
$C$DW$T$332	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$332, DW_AT_type(*$C$DW$T$285)
$C$DW$T$333	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$333, DW_AT_address_class(0x20)

$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_name("POOL_Fxns")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x10)
$C$DW$244	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$244, DW_AT_name("open")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$245	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$245, DW_AT_name("close")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$246	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$246, DW_AT_name("alloc")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_alloc")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$247	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$247, DW_AT_name("free")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_free")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$99

$C$DW$T$103	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Fxns")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
$C$DW$T$104	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_address_class(0x20)

$C$DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$105, DW_AT_name("POOL_Obj")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x10)
$C$DW$248	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$248, DW_AT_name("initFxn")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_initFxn")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$249	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$249, DW_AT_name("fxns")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$250	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$250, DW_AT_name("params")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$251	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$251, DW_AT_name("object")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$105

$C$DW$T$106	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Obj")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
$C$DW$T$107	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_address_class(0x20)
$C$DW$T$338	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$338, DW_AT_address_class(0x20)
$C$DW$T$339	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Handle")
	.dwattr $C$DW$T$339, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$T$339, DW_AT_language(DW_LANG_C)

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("POOL_Config")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x08)
$C$DW$252	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$252, DW_AT_name("allocators")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_allocators")
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$253	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$253, DW_AT_name("numAllocators")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_numAllocators")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$108

$C$DW$T$340	.dwtag  DW_TAG_typedef, DW_AT_name("POOL_Config")
	.dwattr $C$DW$T$340, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$340, DW_AT_language(DW_LANG_C)
$C$DW$T$341	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$340)
	.dwattr $C$DW$T$341, DW_AT_address_class(0x20)
$C$DW$T$342	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$342, DW_AT_address_class(0x20)

$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x10)
$C$DW$254	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$254, DW_AT_name("seqnum")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$255	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$255, DW_AT_name("val1")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_val1")
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$256	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$256, DW_AT_name("val2")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_val2")
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$257	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$257, DW_AT_name("val3")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_val3")
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$109

$C$DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Event")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
$C$DW$T$112	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_address_class(0x20)

$C$DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$113, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x18)
$C$DW$258	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$258, DW_AT_name("bufend")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_bufend")
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$259	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$259, DW_AT_name("flag")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_flag")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$260	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$260, DW_AT_name("seqnum")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_seqnum")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$261	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$261, DW_AT_name("curptr")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_curptr")
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$262	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$262, DW_AT_name("lenmask")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_lenmask")
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$263	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$263, DW_AT_name("bufbeg")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_bufbeg")
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$113

$C$DW$T$343	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Obj")
	.dwattr $C$DW$T$343, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$343, DW_AT_language(DW_LANG_C)
$C$DW$T$344	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$344, DW_AT_address_class(0x20)
$C$DW$T$345	.dwtag  DW_TAG_typedef, DW_AT_name("LOG_Handle")
	.dwattr $C$DW$T$345, DW_AT_type(*$C$DW$T$344)
	.dwattr $C$DW$T$345, DW_AT_language(DW_LANG_C)

$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x10)
$C$DW$264	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$264, DW_AT_name("spsave")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_spsave")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$265	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$265, DW_AT_name("stkBottom")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_stkBottom")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$266	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$266, DW_AT_name("stkTop")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_stkTop")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$267	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$267, DW_AT_name("inhwi")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_inhwi")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$114

$C$DW$T$346	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_DataObj")
	.dwattr $C$DW$T$346, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$346, DW_AT_language(DW_LANG_C)

$C$DW$T$115	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$115, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x0c)
$C$DW$268	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$268, DW_AT_name("intrMask")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_intrMask")
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$269	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$269, DW_AT_name("ccMask")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$270	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$270, DW_AT_name("arg")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$115

$C$DW$T$347	.dwtag  DW_TAG_typedef, DW_AT_name("HWI_Attrs")
	.dwattr $C$DW$T$347, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$T$347, DW_AT_language(DW_LANG_C)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x24)
$C$DW$271	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$271, DW_AT_name("runfxn")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_runfxn")
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$272	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$272, DW_AT_name("execfxn")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_execfxn")
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$273	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$273, DW_AT_name("curmask")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_curmask")
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$274	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$274, DW_AT_name("curset")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_curset")
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$275	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("lock")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_lock")
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$276	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$276, DW_AT_name("curmbox")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_curmbox")
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$277	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$277, DW_AT_name("curfxn")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_curfxn")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$278	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$278, DW_AT_name("rdybeg")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_rdybeg")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$279	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$279, DW_AT_name("inswi")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_inswi")
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$116

$C$DW$T$348	.dwtag  DW_TAG_typedef, DW_AT_name("SWI_DataObj")
	.dwattr $C$DW$T$348, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$348, DW_AT_language(DW_LANG_C)

$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x10)
$C$DW$280	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$280, DW_AT_name("ABORTFXN")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_ABORTFXN")
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$281	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$281, DW_AT_name("ERRORFXN")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_ERRORFXN")
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$282	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$282, DW_AT_name("EXITFXN")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$283	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$283, DW_AT_name("PUTCFXN")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_PUTCFXN")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$117

$C$DW$T$349	.dwtag  DW_TAG_typedef, DW_AT_name("SYS_Config")
	.dwattr $C$DW$T$349, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$349, DW_AT_language(DW_LANG_C)

$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x04)
$C$DW$284	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("space")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$118

$C$DW$T$350	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Attrs")
	.dwattr $C$DW$T$350, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$350, DW_AT_language(DW_LANG_C)

$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x04)
$C$DW$285	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("MALLOCSEG")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_MALLOCSEG")
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$119

$C$DW$T$351	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Config")
	.dwattr $C$DW$T$351, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$351, DW_AT_language(DW_LANG_C)

$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x0c)
$C$DW$286	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$286, DW_AT_name("base")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$287	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$287, DW_AT_name("length")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$288	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("space")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$121

$C$DW$T$352	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Segment")
	.dwattr $C$DW$T$352, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$T$352, DW_AT_language(DW_LANG_C)

$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x10)
$C$DW$289	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$289, DW_AT_name("size")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$290	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$290, DW_AT_name("used")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$291	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$291, DW_AT_name("length")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_length")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$292	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("space")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_space")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$122

$C$DW$T$353	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Stat")
	.dwattr $C$DW$T$353, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$353, DW_AT_language(DW_LANG_C)

$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x08)
$C$DW$293	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$293, DW_AT_name("next")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_next")
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$294	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$294, DW_AT_name("size")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$124

$C$DW$T$123	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$123, DW_AT_address_class(0x20)
$C$DW$T$354	.dwtag  DW_TAG_typedef, DW_AT_name("MEM_Header")
	.dwattr $C$DW$T$354, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$354, DW_AT_language(DW_LANG_C)

$C$DW$T$125	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$125, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x04)
$C$DW$295	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("dummy")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_dummy")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$125

$C$DW$T$355	.dwtag  DW_TAG_typedef, DW_AT_name("QUE_Attrs")
	.dwattr $C$DW$T$355, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$355, DW_AT_language(DW_LANG_C)

$C$DW$T$129	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$129, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x38)
$C$DW$296	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$296, DW_AT_name("ready")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$297	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$297, DW_AT_name("alarm")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$298	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$298, DW_AT_name("setpri")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$299	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$299, DW_AT_name("queue")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$300	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$300, DW_AT_name("priority")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$301	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$301, DW_AT_name("mask")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$302	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$302, DW_AT_name("sp")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$303	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$303, DW_AT_name("timeout")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$304	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("mode")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$305	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$305, DW_AT_name("sts")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$306	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$306, DW_AT_name("signalled")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$129

$C$DW$T$180	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Obj")
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$180, DW_AT_language(DW_LANG_C)
$C$DW$T$356	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$356, DW_AT_address_class(0x20)
$C$DW$T$357	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Handle")
	.dwattr $C$DW$T$357, DW_AT_type(*$C$DW$T$356)
	.dwattr $C$DW$T$357, DW_AT_language(DW_LANG_C)

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x30)
$C$DW$307	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$307, DW_AT_name("alarm")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_alarm")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$308	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$308, DW_AT_name("setpri")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_setpri")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$309	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$309, DW_AT_name("queue")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$310	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$310, DW_AT_name("priority")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$311	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$311, DW_AT_name("mask")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$312	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$312, DW_AT_name("sp")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$313	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$313, DW_AT_name("timeout")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$314	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("mode")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$315	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$315, DW_AT_name("sts")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$316	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$316, DW_AT_name("signalled")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_signalled")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$130

$C$DW$T$358	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_AObj")
	.dwattr $C$DW$T$358, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$358, DW_AT_language(DW_LANG_C)

$C$DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$136, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x10)
$C$DW$317	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$317, DW_AT_name("wListElem")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_wListElem")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$318	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("wCount")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_wCount")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$319	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$319, DW_AT_name("fxn")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$136

$C$DW$T$131	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$131, DW_AT_address_class(0x20)
$C$DW$T$132	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_JobHandle")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$132, DW_AT_language(DW_LANG_C)
$C$DW$T$138	.dwtag  DW_TAG_typedef, DW_AT_name("KNL_Job")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)

$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x0c)
$C$DW$320	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$320, DW_AT_name("link")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$321	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$321, DW_AT_name("type")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$137

$C$DW$T$359	.dwtag  DW_TAG_typedef, DW_AT_name("OBJ_Header")
	.dwattr $C$DW$T$359, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$359, DW_AT_language(DW_LANG_C)

$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x20)
$C$DW$322	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$322, DW_AT_name("job")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_job")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$323	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("count")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_count")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$324	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$324, DW_AT_name("pendQ")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_pendQ")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$325	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$325, DW_AT_name("name")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$139

$C$DW$T$156	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$156, DW_AT_address_class(0x20)
$C$DW$T$157	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Handle")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
$C$DW$T$360	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Obj")
	.dwattr $C$DW$T$360, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$360, DW_AT_language(DW_LANG_C)

$C$DW$T$140	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$140, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x08)
$C$DW$326	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$326, DW_AT_name("type")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$327	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$327, DW_AT_name("name")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$140

$C$DW$T$361	.dwtag  DW_TAG_typedef, DW_AT_name("SEM_Attrs")
	.dwattr $C$DW$T$361, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$361, DW_AT_language(DW_LANG_C)

$C$DW$T$162	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$162, DW_AT_name("DEV_Fxns")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x1c)
$C$DW$328	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$328, DW_AT_name("close")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$329	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$329, DW_AT_name("ctrl")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_ctrl")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$330	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$330, DW_AT_name("idle")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_idle")
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$331	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$331, DW_AT_name("issue")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_issue")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$332	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$332, DW_AT_name("open")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$333	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$333, DW_AT_name("ready")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_ready")
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$334	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$334, DW_AT_name("reclaim")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_reclaim")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$162

$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Fxns")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
$C$DW$T$175	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$175, DW_AT_address_class(0x20)

$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("DEV_Callback")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x0c)
$C$DW$335	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$335, DW_AT_name("fxn")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_fxn")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$336	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$336, DW_AT_name("arg0")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_arg0")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$337	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$337, DW_AT_name("arg1")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_arg1")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$163

$C$DW$T$165	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Callback")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
$C$DW$T$166	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$166, DW_AT_address_class(0x20)
$C$DW$T$170	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Callback")
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
$C$DW$T$171	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$T$171, DW_AT_address_class(0x20)

$C$DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$167, DW_AT_name("DEV_Obj")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x4c)
$C$DW$338	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$338, DW_AT_name("todevice")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_todevice")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$339	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$339, DW_AT_name("fromdevice")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_fromdevice")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$340	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$340, DW_AT_name("bufsize")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_bufsize")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$341	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$341, DW_AT_name("nbufs")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$342	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("segid")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_segid")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$343	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("mode")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$344	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("devid")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$345	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$345, DW_AT_name("params")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$346	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$346, DW_AT_name("object")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$347	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$347, DW_AT_name("fxns")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$348	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$348, DW_AT_name("timeout")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$349	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$349, DW_AT_name("align")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_align")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$350	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$350, DW_AT_name("callback")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_callback")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$167

$C$DW$T$141	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$141, DW_AT_address_class(0x20)
$C$DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Handle")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
$C$DW$T$173	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Obj")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)

$C$DW$T$168	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$168, DW_AT_name("DEV_Device")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x18)
$C$DW$351	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$351, DW_AT_name("name")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$352	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$352, DW_AT_name("fxns")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$353	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("devid")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$354	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$354, DW_AT_name("params")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$355	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$355, DW_AT_name("type")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$356	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$356, DW_AT_name("devp")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_devp")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$168

$C$DW$T$362	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Device")
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$362, DW_AT_language(DW_LANG_C)

$C$DW$T$169	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$169, DW_AT_name("DEV_Attrs")
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x10)
$C$DW$357	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("devid")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_devid")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$358	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$358, DW_AT_name("params")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$359	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$359, DW_AT_name("type")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_type")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$360	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$360, DW_AT_name("devp")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_devp")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$169

$C$DW$T$363	.dwtag  DW_TAG_typedef, DW_AT_name("DEV_Attrs")
	.dwattr $C$DW$T$363, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$363, DW_AT_language(DW_LANG_C)

$C$DW$T$172	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$172, DW_AT_name("SIO_Attrs")
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x1c)
$C$DW$361	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("nbufs")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_nbufs")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$362	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("segid")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_segid")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$363	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$363, DW_AT_name("align")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_align")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$364	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$364, DW_AT_name("flush")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_flush")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$365	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$365, DW_AT_name("model")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_model")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$366	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$366, DW_AT_name("timeout")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$367	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$367, DW_AT_name("callback")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_callback")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$172

$C$DW$T$364	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Attrs")
	.dwattr $C$DW$T$364, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$364, DW_AT_language(DW_LANG_C)

$C$DW$T$176	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$176, DW_AT_name("SIO_Obj")
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x64)
$C$DW$368	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$368, DW_AT_name("dobj")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_dobj")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$369	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$369, DW_AT_name("flush")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_flush")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$370	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$370, DW_AT_name("framelist")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_framelist")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$371	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$371, DW_AT_name("standardFrame")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_standardFrame")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$372	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$372, DW_AT_name("model")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_model")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$373	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$373, DW_AT_name("pfxns")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_pfxns")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$176

$C$DW$T$365	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Obj")
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$365, DW_AT_language(DW_LANG_C)
$C$DW$T$366	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$366, DW_AT_address_class(0x20)
$C$DW$T$367	.dwtag  DW_TAG_typedef, DW_AT_name("SIO_Handle")
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$T$366)
	.dwattr $C$DW$T$367, DW_AT_language(DW_LANG_C)

$C$DW$T$177	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$177, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$177, DW_AT_byte_size(0x20)
$C$DW$374	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$374, DW_AT_name("status")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$375	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$375, DW_AT_name("kount")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_kount")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$376	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$376, DW_AT_name("period")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_period")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$377	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$377, DW_AT_name("nticks")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_nticks")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$378	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$378, DW_AT_name("fxnobj")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_fxnobj")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$379	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$379, DW_AT_name("sts")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_sts")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$177

$C$DW$T$368	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Obj")
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$368, DW_AT_language(DW_LANG_C)
$C$DW$T$369	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$369, DW_AT_address_class(0x20)
$C$DW$T$370	.dwtag  DW_TAG_typedef, DW_AT_name("PRD_Handle")
	.dwattr $C$DW$T$370, DW_AT_type(*$C$DW$T$369)
	.dwattr $C$DW$T$370, DW_AT_language(DW_LANG_C)

$C$DW$T$178	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$178, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$178, DW_AT_byte_size(0x20)
$C$DW$380	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("STACKSEG")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_STACKSEG")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$381	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("PRIORITY")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_PRIORITY")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$382	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$382, DW_AT_name("STACKSIZE")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_STACKSIZE")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$383	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$383, DW_AT_name("CREATEFXN")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_CREATEFXN")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$384	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$384, DW_AT_name("DELETEFXN")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_DELETEFXN")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$385	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$385, DW_AT_name("EXITFXN")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_EXITFXN")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$386	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$386, DW_AT_name("SWITCHFXN")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_SWITCHFXN")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$387	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$387, DW_AT_name("READYFXN")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_READYFXN")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$178

$C$DW$T$371	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Config")
	.dwattr $C$DW$T$371, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$371, DW_AT_language(DW_LANG_C)

$C$DW$T$179	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$179, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x1c)
$C$DW$388	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("priority")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_priority")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$389	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$389, DW_AT_name("stack")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$390	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$390, DW_AT_name("stacksize")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$391	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("stackseg")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$392	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$392, DW_AT_name("environ")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$393	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$393, DW_AT_name("name")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$394	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$394, DW_AT_name("exitflag")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$395	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$395, DW_AT_name("initstackflag")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_initstackflag")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$179

$C$DW$T$182	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Attrs")
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$182, DW_AT_language(DW_LANG_C)

$C$DW$T$181	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$181, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x54)
$C$DW$396	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$396, DW_AT_name("kobj")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_kobj")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$397	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$397, DW_AT_name("stack")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_stack")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$398	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$398, DW_AT_name("stacksize")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_stacksize")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$399	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("stackseg")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_stackseg")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$400	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$400, DW_AT_name("name")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$401	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$401, DW_AT_name("environ")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_environ")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$402	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("errno")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_errno")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$403	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$403, DW_AT_name("exitflag")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_exitflag")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$181

$C$DW$T$372	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Obj")
	.dwattr $C$DW$T$372, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$T$372, DW_AT_language(DW_LANG_C)
$C$DW$T$373	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$T$373, DW_AT_address_class(0x20)
$C$DW$T$374	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Handle")
	.dwattr $C$DW$T$374, DW_AT_type(*$C$DW$T$373)
	.dwattr $C$DW$T$374, DW_AT_language(DW_LANG_C)

$C$DW$T$184	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$184, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x28)
$C$DW$404	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$404, DW_AT_name("attrs")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_attrs")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$405	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$405, DW_AT_name("mode")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$406	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$406, DW_AT_name("sp")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_sp")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$407	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$407, DW_AT_name("used")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_used")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$184

$C$DW$T$375	.dwtag  DW_TAG_typedef, DW_AT_name("TSK_Stat")
	.dwattr $C$DW$T$375, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$T$375, DW_AT_language(DW_LANG_C)

$C$DW$T$193	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$193, DW_AT_name("GIO_Config")
	.dwattr $C$DW$T$193, DW_AT_byte_size(0x10)
$C$DW$408	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$408, DW_AT_name("SEMCREATE")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_SEMCREATE")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$409	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$409, DW_AT_name("SEMDELETE")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_SEMDELETE")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$410	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$410, DW_AT_name("SEMPEND")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_SEMPEND")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$411	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$411, DW_AT_name("SEMPOST")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_SEMPOST")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$193

$C$DW$T$376	.dwtag  DW_TAG_typedef, DW_AT_name("GIO_Config")
	.dwattr $C$DW$T$376, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$T$376, DW_AT_language(DW_LANG_C)

$C$DW$T$196	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$196, DW_AT_name("MSGQ_Obj")
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x1c)
$C$DW$412	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$412, DW_AT_name("name")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_name")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$413	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$413, DW_AT_name("queue")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_queue")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$414	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$414, DW_AT_name("notifyHandle")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_notifyHandle")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$415	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$415, DW_AT_name("pend")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_pend")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$416	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$416, DW_AT_name("post")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_post")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$417	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$417, DW_AT_name("status")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$196

$C$DW$T$231	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Obj")
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$231, DW_AT_language(DW_LANG_C)
$C$DW$T$232	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$T$232, DW_AT_address_class(0x20)
$C$DW$T$377	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$T$377, DW_AT_address_class(0x20)
$C$DW$T$378	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Handle")
	.dwattr $C$DW$T$378, DW_AT_type(*$C$DW$T$377)
	.dwattr $C$DW$T$378, DW_AT_language(DW_LANG_C)

$C$DW$T$197	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$197, DW_AT_name("MSGQ_Attrs")
	.dwattr $C$DW$T$197, DW_AT_byte_size(0x0c)
$C$DW$418	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$418, DW_AT_name("notifyHandle")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_notifyHandle")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$419	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$419, DW_AT_name("pend")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_pend")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$420	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$420, DW_AT_name("post")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_post")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$197

$C$DW$T$379	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Attrs")
	.dwattr $C$DW$T$379, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$T$379, DW_AT_language(DW_LANG_C)

$C$DW$T$198	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$198, DW_AT_name("MSGQ_LocateAttrs")
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x04)
$C$DW$421	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$421, DW_AT_name("timeout")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_timeout")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$198

$C$DW$T$380	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_LocateAttrs")
	.dwattr $C$DW$T$380, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$T$380, DW_AT_language(DW_LANG_C)

$C$DW$T$199	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$199, DW_AT_name("MSGQ_LocateAsyncAttrs")
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x08)
$C$DW$422	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$422, DW_AT_name("poolId")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_poolId")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$423	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$423, DW_AT_name("arg")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$199

$C$DW$T$381	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_LocateAsyncAttrs")
	.dwattr $C$DW$T$381, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$T$381, DW_AT_language(DW_LANG_C)

$C$DW$T$202	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$202, DW_AT_name("MSGQ_MsgHeader")
	.dwattr $C$DW$T$202, DW_AT_byte_size(0x14)
$C$DW$424	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$424, DW_AT_name("reserved")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_reserved")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$425	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$425, DW_AT_name("srcProcId")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_srcProcId")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$426	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$426, DW_AT_name("poolId")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_poolId")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$427	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$427, DW_AT_name("size")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$428	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$428, DW_AT_name("dstId")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_dstId")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$429	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$429, DW_AT_name("srcId")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_srcId")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$430	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$430, DW_AT_name("msgId")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_msgId")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$202

$C$DW$T$203	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_MsgHeader")
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$T$203, DW_AT_language(DW_LANG_C)
$C$DW$T$221	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$T$221, DW_AT_address_class(0x20)
$C$DW$T$222	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Msg")
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$222, DW_AT_language(DW_LANG_C)

$C$DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$205, DW_AT_name("MSGQ_AsyncLocateMsg")
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x1c)
$C$DW$431	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$431, DW_AT_name("header")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$432	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$432, DW_AT_name("msgqQueue")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_msgqQueue")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$433	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$433, DW_AT_name("arg")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$205

$C$DW$T$382	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_AsyncLocateMsg")
	.dwattr $C$DW$T$382, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$382, DW_AT_language(DW_LANG_C)

$C$DW$T$207	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$207, DW_AT_name("MSGQ_AsyncErrorMsg")
	.dwattr $C$DW$T$207, DW_AT_byte_size(0x1c)
$C$DW$434	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$434, DW_AT_name("header")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_header")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$435	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$435, DW_AT_name("errorType")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_errorType")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$436	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$436, DW_AT_name("mqtId")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_mqtId")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$437	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$437, DW_AT_name("parameter")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_parameter")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$207

$C$DW$T$383	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_AsyncErrorMsg")
	.dwattr $C$DW$T$383, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$T$383, DW_AT_language(DW_LANG_C)

$C$DW$T$226	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$226, DW_AT_name("MSGQ_TransportFxns")
	.dwattr $C$DW$T$226, DW_AT_byte_size(0x14)
$C$DW$438	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$438, DW_AT_name("open")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_open")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$439	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$439, DW_AT_name("close")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_close")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$440	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$440, DW_AT_name("locate")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_locate")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$441	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$441, DW_AT_name("release")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_release")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$442	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$442, DW_AT_name("put")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_put")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$226

$C$DW$T$228	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportFxns")
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$T$228, DW_AT_language(DW_LANG_C)
$C$DW$T$229	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$229, DW_AT_address_class(0x20)

$C$DW$T$230	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$230, DW_AT_name("MSGQ_TransportObj")
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x14)
$C$DW$443	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$443, DW_AT_name("initFxn")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_initFxn")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$444	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$444, DW_AT_name("fxns")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_fxns")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$445	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$445, DW_AT_name("params")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_params")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$446	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$446, DW_AT_name("object")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_object")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$447	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$447, DW_AT_name("procId")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_procId")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$230

$C$DW$T$208	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$T$208, DW_AT_address_class(0x20)
$C$DW$T$209	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportHandle")
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$T$209, DW_AT_language(DW_LANG_C)
$C$DW$T$233	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_TransportObj")
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$T$233, DW_AT_language(DW_LANG_C)
$C$DW$T$234	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$234, DW_AT_address_class(0x20)

$C$DW$T$235	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$235, DW_AT_name("MSGQ_Config")
	.dwattr $C$DW$T$235, DW_AT_byte_size(0x18)
$C$DW$448	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$448, DW_AT_name("msgqQueues")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_msgqQueues")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$449	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$449, DW_AT_name("transports")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_transports")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$450	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$450, DW_AT_name("numMsgqQueues")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_numMsgqQueues")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$451	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$451, DW_AT_name("numProcessors")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_numProcessors")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$452	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$452, DW_AT_name("startUninitialized")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_startUninitialized")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$453	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$453, DW_AT_name("errorQueue")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_errorQueue")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$454	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$454, DW_AT_name("errorPoolId")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_errorPoolId")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$235

$C$DW$T$384	.dwtag  DW_TAG_typedef, DW_AT_name("MSGQ_Config")
	.dwattr $C$DW$T$384, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$T$384, DW_AT_language(DW_LANG_C)

$C$DW$T$237	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$237, DW_AT_name("CHNL_Irp_tag")
	.dwattr $C$DW$T$237, DW_AT_byte_size(0x1c)
$C$DW$455	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$455, DW_AT_name("link")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_link")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$456	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$456, DW_AT_name("buffer")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_buffer")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$457	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$457, DW_AT_name("arg")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_arg")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$458	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$458, DW_AT_name("size")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_size")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$459	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$459, DW_AT_name("iocStatus")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_iocStatus")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$460	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$460, DW_AT_name("chnlId")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_chnlId")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$237

$C$DW$T$385	.dwtag  DW_TAG_typedef, DW_AT_name("CHNL_Irp")
	.dwattr $C$DW$T$385, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$385, DW_AT_language(DW_LANG_C)
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

$C$DW$461	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg0]
$C$DW$462	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$462, DW_AT_location[DW_OP_reg1]
$C$DW$463	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$463, DW_AT_location[DW_OP_reg2]
$C$DW$464	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$464, DW_AT_location[DW_OP_reg3]
$C$DW$465	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$465, DW_AT_location[DW_OP_reg4]
$C$DW$466	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$466, DW_AT_location[DW_OP_reg5]
$C$DW$467	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$467, DW_AT_location[DW_OP_reg6]
$C$DW$468	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$468, DW_AT_location[DW_OP_reg7]
$C$DW$469	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$469, DW_AT_location[DW_OP_reg8]
$C$DW$470	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$470, DW_AT_location[DW_OP_reg9]
$C$DW$471	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$471, DW_AT_location[DW_OP_reg10]
$C$DW$472	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$472, DW_AT_location[DW_OP_reg11]
$C$DW$473	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$473, DW_AT_location[DW_OP_reg12]
$C$DW$474	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$474, DW_AT_location[DW_OP_reg13]
$C$DW$475	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$475, DW_AT_location[DW_OP_reg14]
$C$DW$476	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$476, DW_AT_location[DW_OP_reg15]
$C$DW$477	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$477, DW_AT_location[DW_OP_reg16]
$C$DW$478	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$478, DW_AT_location[DW_OP_reg17]
$C$DW$479	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$479, DW_AT_location[DW_OP_reg18]
$C$DW$480	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$480, DW_AT_location[DW_OP_reg19]
$C$DW$481	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$481, DW_AT_location[DW_OP_reg20]
$C$DW$482	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$482, DW_AT_location[DW_OP_reg21]
$C$DW$483	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$483, DW_AT_location[DW_OP_reg22]
$C$DW$484	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$484, DW_AT_location[DW_OP_reg23]
$C$DW$485	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$485, DW_AT_location[DW_OP_reg24]
$C$DW$486	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$486, DW_AT_location[DW_OP_reg25]
$C$DW$487	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$487, DW_AT_location[DW_OP_reg26]
$C$DW$488	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$488, DW_AT_location[DW_OP_reg27]
$C$DW$489	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$489, DW_AT_location[DW_OP_reg28]
$C$DW$490	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$490, DW_AT_location[DW_OP_reg29]
$C$DW$491	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$491, DW_AT_location[DW_OP_reg30]
$C$DW$492	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$492, DW_AT_location[DW_OP_reg31]
$C$DW$493	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$493, DW_AT_location[DW_OP_regx 0x20]
$C$DW$494	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$494, DW_AT_location[DW_OP_regx 0x21]
$C$DW$495	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$495, DW_AT_location[DW_OP_regx 0x22]
$C$DW$496	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$496, DW_AT_location[DW_OP_regx 0x23]
$C$DW$497	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$497, DW_AT_location[DW_OP_regx 0x24]
$C$DW$498	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$498, DW_AT_location[DW_OP_regx 0x25]
$C$DW$499	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$499, DW_AT_location[DW_OP_regx 0x26]
$C$DW$500	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$500, DW_AT_location[DW_OP_regx 0x27]
$C$DW$501	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$501, DW_AT_location[DW_OP_regx 0x28]
$C$DW$502	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$502, DW_AT_location[DW_OP_regx 0x29]
$C$DW$503	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$503, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$504	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$504, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$505	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$505, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$506	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$506, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$507	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$507, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$508	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$508, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$509	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$509, DW_AT_location[DW_OP_regx 0x30]
$C$DW$510	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$510, DW_AT_location[DW_OP_regx 0x31]
$C$DW$511	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$511, DW_AT_location[DW_OP_regx 0x32]
$C$DW$512	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$512, DW_AT_location[DW_OP_regx 0x33]
$C$DW$513	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$513, DW_AT_location[DW_OP_regx 0x34]
$C$DW$514	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$514, DW_AT_location[DW_OP_regx 0x35]
$C$DW$515	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$515, DW_AT_location[DW_OP_regx 0x36]
$C$DW$516	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$516, DW_AT_location[DW_OP_regx 0x37]
$C$DW$517	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$517, DW_AT_location[DW_OP_regx 0x38]
$C$DW$518	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$518, DW_AT_location[DW_OP_regx 0x39]
$C$DW$519	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$519, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$520	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$520, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$521	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$521, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$522	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$522, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$523	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$523, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$524	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$524, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$525	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$525, DW_AT_location[DW_OP_regx 0x40]
$C$DW$526	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$526, DW_AT_location[DW_OP_regx 0x41]
$C$DW$527	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$527, DW_AT_location[DW_OP_regx 0x42]
$C$DW$528	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$528, DW_AT_location[DW_OP_regx 0x43]
$C$DW$529	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$529, DW_AT_location[DW_OP_regx 0x44]
$C$DW$530	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$530, DW_AT_location[DW_OP_regx 0x45]
$C$DW$531	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$531, DW_AT_location[DW_OP_regx 0x46]
$C$DW$532	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$532, DW_AT_location[DW_OP_regx 0x47]
$C$DW$533	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$533, DW_AT_location[DW_OP_regx 0x48]
$C$DW$534	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$534, DW_AT_location[DW_OP_regx 0x49]
$C$DW$535	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$535, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$536	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$536, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$537	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$537, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$538	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$538, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$539	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$539, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$540	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$540, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$541	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$541, DW_AT_location[DW_OP_regx 0x50]
$C$DW$542	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$542, DW_AT_location[DW_OP_regx 0x51]
$C$DW$543	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$543, DW_AT_location[DW_OP_regx 0x52]
$C$DW$544	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$544, DW_AT_location[DW_OP_regx 0x53]
$C$DW$545	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$545, DW_AT_location[DW_OP_regx 0x54]
$C$DW$546	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$546, DW_AT_location[DW_OP_regx 0x55]
$C$DW$547	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$547, DW_AT_location[DW_OP_regx 0x56]
$C$DW$548	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$548, DW_AT_location[DW_OP_regx 0x57]
$C$DW$549	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$549, DW_AT_location[DW_OP_regx 0x58]
$C$DW$550	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$550, DW_AT_location[DW_OP_regx 0x59]
$C$DW$551	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$551, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$552	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$552, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$553	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$553, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$554	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$554, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$555	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$555, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$556	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$556, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$557	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$557, DW_AT_location[DW_OP_regx 0x60]
$C$DW$558	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$558, DW_AT_location[DW_OP_regx 0x61]
$C$DW$559	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$559, DW_AT_location[DW_OP_regx 0x62]
$C$DW$560	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$560, DW_AT_location[DW_OP_regx 0x63]
$C$DW$561	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$561, DW_AT_location[DW_OP_regx 0x64]
$C$DW$562	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$562, DW_AT_location[DW_OP_regx 0x65]
$C$DW$563	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$563, DW_AT_location[DW_OP_regx 0x66]
$C$DW$564	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$564, DW_AT_location[DW_OP_regx 0x67]
$C$DW$565	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$565, DW_AT_location[DW_OP_regx 0x68]
$C$DW$566	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$566, DW_AT_location[DW_OP_regx 0x69]
$C$DW$567	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$567, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$568	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$568, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$569	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$569, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$570	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$570, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$571	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$571, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$572	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$572, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$573	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$573, DW_AT_location[DW_OP_regx 0x70]
$C$DW$574	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$574, DW_AT_location[DW_OP_regx 0x71]
$C$DW$575	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$575, DW_AT_location[DW_OP_regx 0x72]
$C$DW$576	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$576, DW_AT_location[DW_OP_regx 0x73]
$C$DW$577	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$577, DW_AT_location[DW_OP_regx 0x74]
$C$DW$578	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$578, DW_AT_location[DW_OP_regx 0x75]
$C$DW$579	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$579, DW_AT_location[DW_OP_regx 0x76]
$C$DW$580	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$580, DW_AT_location[DW_OP_regx 0x77]
$C$DW$581	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$581, DW_AT_location[DW_OP_regx 0x78]
$C$DW$582	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$582, DW_AT_location[DW_OP_regx 0x79]
$C$DW$583	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$583, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$584	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$584, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$585	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$585, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$586	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$586, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$587	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$587, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$588	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$588, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$589	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$589, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

