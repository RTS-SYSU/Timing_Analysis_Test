	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.fpu	vfpv2
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"llvm-link"
	.globl	bs                              @ -- Begin function bs
	.p2align	2
	.type	bs,%function
	.code	32                              @ @bs
bs:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "test/bs.c" md5 0xbd8125837db9308c88c5ffb782c95b7d
	.loc	1 72 0                          @ test/bs.c:72:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r0, #8
.Ltmp0:
	.loc	1 73 2 prologue_end             @ test/bs.c:73:2
	bl	binary_search
                                        @ implicit-def: $r0
	.loc	1 74 1                          @ test/bs.c:74:1
	pop	{r11, lr}
	bx	lr
.Ltmp1:
.Lfunc_end0:
	.size	bs, .Lfunc_end0-bs
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	binary_search                   @ -- Begin function binary_search
	.p2align	2
	.type	binary_search,%function
	.code	32                              @ @binary_search
binary_search:
.Lfunc_begin1:
	.loc	1 77 0                          @ test/bs.c:77:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #52
	.cfi_def_cfa_offset 52
	str	r0, [sp, #36]                   @ 4-byte Spill
	mov	r0, #0
	mvn	r1, #0
	mov	r2, #14
	str	r2, [sp, #40]                   @ 4-byte Spill
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [sp, #48]                   @ 4-byte Spill
.Ltmp2:
	.loc	1 83 3 prologue_end             @ test/bs.c:83:3
	b	.LBB1_1
.LBB1_1:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 80 7                          @ test/bs.c:80:7
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	str	r0, [sp, #24]                   @ 4-byte Spill
	str	r2, [sp, #28]                   @ 4-byte Spill
	str	r1, [sp, #32]                   @ 4-byte Spill
	.loc	1 83 3                          @ test/bs.c:83:3
	cmp	r0, r1
	bgt	.LBB1_9
	b	.LBB1_2
.LBB1_2:                                @ %while.body
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 84 16                         @ test/bs.c:84:16
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	add	r0, r0, r2
	.loc	1 84 22 is_stmt 0               @ test/bs.c:84:22
	asr	r2, r0, #1
	str	r2, [sp, #20]                   @ 4-byte Spill
	.loc	1 85 20 is_stmt 1               @ test/bs.c:85:20
	ldr	r0, .LCPI1_0
	ldr	r0, [r0, r2, lsl #3]
	.loc	1 85 10 is_stmt 0               @ test/bs.c:85:10
	cmp	r0, r1
	bne	.LBB1_4
	b	.LBB1_3
.LBB1_3:                                @ %if.then
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 86 16 is_stmt 1               @ test/bs.c:86:16
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	sub	r2, r0, #1
	.loc	1 87 26                         @ test/bs.c:87:26
	ldr	r1, .LCPI1_0
	add	r1, r1, r3, lsl #3
	ldr	r1, [r1, #4]
	str	r2, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 91 5                          @ test/bs.c:91:5
	b	.LBB1_8
.LBB1_4:                                @ %if.else
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 93 22                         @ test/bs.c:93:22
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, .LCPI1_0
	ldr	r0, [r0, r2, lsl #3]
	.loc	1 93 12 is_stmt 0               @ test/bs.c:93:12
	cmp	r0, r1
	ble	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %if.then6
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 94 11 is_stmt 1               @ test/bs.c:94:11
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	sub	r1, r1, #1
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 98 7                          @ test/bs.c:98:7
	b	.LBB1_7
.LBB1_6:                                @ %if.else8
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 100 25                        @ test/bs.c:100:25
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB1_7
.LBB1_7:                                @ %if.end
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/bs.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r2, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	b	.LBB1_8
.LBB1_8:                                @ %if.end10
                                        @   in Loop: Header=BB1_1 Depth=1
	.loc	1 80 7 is_stmt 1                @ test/bs.c:80:7
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r2, [sp, #40]                   @ 4-byte Spill
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [sp, #48]                   @ 4-byte Spill
	.loc	1 83 3                          @ test/bs.c:83:3
	b	.LBB1_1
.LBB1_9:                                @ %while.end
	.loc	1 112 3                         @ test/bs.c:112:3
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	add	sp, sp, #52
	bx	lr
.Ltmp3:
	.p2align	2
@ %bb.10:
	.loc	1 0 3 is_stmt 0                 @ test/bs.c:0:3
.LCPI1_0:
	.long	data
.Lfunc_end1:
	.size	binary_search, .Lfunc_end1-binary_search
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	icrc1                           @ -- Begin function icrc1
	.p2align	2
	.type	icrc1,%function
	.code	32                              @ @icrc1
icrc1:
.Lfunc_begin2:
	.file	2 "/workspaces/llvmta/testcases" "test/crc.c" md5 0x81914fd9a6e58bd16dffffd8d82cb702
	.loc	2 58 0 is_stmt 1                @ test/crc.c:58:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp4:
	.loc	2 60 25 prologue_end            @ test/crc.c:60:25
	eor	r0, r0, r1, lsl #8
	mov	r1, #0
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	2 62 7                          @ test/crc.c:62:7
	b	.LBB2_1
.LBB2_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 0 0 is_stmt 0                 @ test/crc.c:0:0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	2 62 2                          @ test/crc.c:62:2
	cmp	r0, #8
	beq	.LBB2_7
	b	.LBB2_2
.LBB2_2:                                @ %for.body
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	2 63 11 is_stmt 1               @ test/crc.c:63:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	lsl	r0, r0, #16
	asr	r0, r0, #16
	.loc	2 63 7 is_stmt 0                @ test/crc.c:63:7
	cmn	r0, #1
	bgt	.LBB2_4
	b	.LBB2_3
.LBB2_3:                                @ %if.then
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 7                           @ test/crc.c:0:7
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	mov	r0, #33
	orr	r0, r0, #4096
	.loc	2 64 22 is_stmt 1               @ test/crc.c:64:22
	eor	r0, r0, r1, lsl #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 64 4 is_stmt 0                @ test/crc.c:64:4
	b	.LBB2_5
.LBB2_4:                                @ %if.else
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	2 66 8 is_stmt 1                @ test/crc.c:66:8
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	lsl	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB2_5
.LBB2_5:                                @ %if.end
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 0 is_stmt 0                 @ test/crc.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	2 67 2 is_stmt 1                @ test/crc.c:67:2
	b	.LBB2_6
.LBB2_6:                                @ %for.inc
                                        @   in Loop: Header=BB2_1 Depth=1
	.loc	2 62 16                         @ test/crc.c:62:16
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	add	r1, r1, #1
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	2 62 2 is_stmt 0                @ test/crc.c:62:2
	b	.LBB2_1
.LBB2_7:                                @ %for.end
	.loc	2 0 2                           @ test/crc.c:0:2
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	r1, #255
	orr	r1, r1, #65280
	.loc	2 68 2 is_stmt 1                @ test/crc.c:68:2
	and	r0, r0, r1
	add	sp, sp, #24
	bx	lr
.Ltmp5:
.Lfunc_end2:
	.size	icrc1, .Lfunc_end2-icrc1
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	icrc                            @ -- Begin function icrc
	.p2align	2
	.type	icrc,%function
	.code	32                              @ @icrc
icrc:
.Lfunc_begin3:
	.loc	2 73 0                          @ test/crc.c:73:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #64
	str	r3, [r11, #-16]                 @ 4-byte Spill
	str	r1, [r11, #-12]                 @ 4-byte Spill
	str	r2, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp6:
	.loc	2 80 8 prologue_end             @ test/crc.c:80:8
	ldr	r0, .LCPI3_0
	ldrh	r0, [r0]
	.loc	2 80 7 is_stmt 0                @ test/crc.c:80:7
	cmp	r0, #0
	bne	.LBB3_6
	b	.LBB3_1
.LBB3_1:                                @ %if.then
	.loc	2 81 9 is_stmt 1                @ test/crc.c:81:9
	ldr	r1, .LCPI3_0
	mov	r0, #1
	strh	r0, [r1]
	mov	r0, #0
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 82 10                         @ test/crc.c:82:10
	b	.LBB3_2
.LBB3_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 0 0 is_stmt 0                 @ test/crc.c:0:0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	str	r0, [r11, #-24]                 @ 4-byte Spill
	mov	r1, #255
	orr	r1, r1, #65280
	.loc	2 82 15                         @ test/crc.c:82:15
	and	r0, r0, r1
	.loc	2 82 5                          @ test/crc.c:82:5
	cmp	r0, #255
	bhi	.LBB3_5
	b	.LBB3_3
.LBB3_3:                                @ %for.body
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 5                           @ test/crc.c:0:5
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	mov	r0, #255
	orr	r0, r0, #65280
	str	r0, [r11, #-28]                 @ 4-byte Spill
	.loc	2 83 17 is_stmt 1               @ test/crc.c:83:17
	and	r0, r0, r1, lsl #8
	mov	r1, #0
	bl	icrc1
	ldr	r2, [r11, #-28]                 @ 4-byte Reload
	mov	r1, r0
	.loc	2 83 25 is_stmt 0               @ test/crc.c:83:25
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	and	r2, r0, r2
	.loc	2 83 7                          @ test/crc.c:83:7
	ldr	r3, .LCPI3_3
	add	r3, r3, r2, lsl #1
	.loc	2 83 16                         @ test/crc.c:83:16
	strh	r1, [r3]
	.loc	2 84 28 is_stmt 1               @ test/crc.c:84:28
	and	r1, r0, #15
	.loc	2 84 23 is_stmt 0               @ test/crc.c:84:23
	ldr	r0, .LCPI3_4
	ldrb	r1, [r0, r1]
	.loc	2 84 42                         @ test/crc.c:84:42
	ldrb	r0, [r0, r2, lsr #4]
	.loc	2 84 40                         @ test/crc.c:84:40
	orr	r0, r0, r1, lsl #4
	.loc	2 84 7                          @ test/crc.c:84:7
	ldr	r1, .LCPI3_1
	.loc	2 84 14                         @ test/crc.c:84:14
	strb	r0, [r1, r2]
	.loc	2 85 5 is_stmt 1                @ test/crc.c:85:5
	b	.LBB3_4
.LBB3_4:                                @ %for.inc
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	2 82 22                         @ test/crc.c:82:22
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	2 82 5 is_stmt 0                @ test/crc.c:82:5
	b	.LBB3_2
.LBB3_5:                                @ %for.end
	.loc	2 86 3 is_stmt 1                @ test/crc.c:86:3
	b	.LBB3_6
.LBB3_6:                                @ %if.end
	.loc	2 87 13                         @ test/crc.c:87:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	lsl	r0, r0, #16
	asr	r0, r0, #16
	.loc	2 87 7 is_stmt 0                @ test/crc.c:87:7
	cmp	r0, #0
	bmi	.LBB3_8
	b	.LBB3_7
.LBB3_7:                                @ %if.then17
	.loc	2 87 25                         @ test/crc.c:87:25
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	and	r0, r1, #255
	.loc	2 87 41                         @ test/crc.c:87:41
	orr	r0, r0, r1, lsl #8
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	2 87 19                         @ test/crc.c:87:19
	b	.LBB3_11
.LBB3_8:                                @ %if.else
	.loc	2 88 12 is_stmt 1               @ test/crc.c:88:12
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	cmn	r1, #1
	str	r0, [sp, #28]                   @ 4-byte Spill
	bgt	.LBB3_10
	b	.LBB3_9
.LBB3_9:                                @ %if.then27
	.loc	2 0 12 is_stmt 0                @ test/crc.c:0:12
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	mov	r0, #255
	orr	r0, r0, #65280
	.loc	2 89 16 is_stmt 1               @ test/crc.c:89:16
	and	r0, r2, r0
	.loc	2 89 11 is_stmt 0               @ test/crc.c:89:11
	ldr	r1, .LCPI3_1
	ldrb	r0, [r1, r0, lsr #8]
	.loc	2 89 33                         @ test/crc.c:89:33
	and	r2, r2, #255
	ldrb	r1, [r1, r2]
	.loc	2 89 31                         @ test/crc.c:89:31
	orr	r0, r0, r1, lsl #8
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	2 89 5                          @ test/crc.c:89:5
	b	.LBB3_10
.LBB3_10:                               @ %if.end43
	.loc	2 0 0                           @ test/crc.c:0:0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #32]                   @ 4-byte Spill
	b	.LBB3_11
.LBB3_11:                               @ %if.end44
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, #1
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	2 93 8 is_stmt 1                @ test/crc.c:93:8
	b	.LBB3_12
.LBB3_12:                               @ %for.cond45
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 0 0 is_stmt 0                 @ test/crc.c:0:0
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	mov	r2, #255
	orr	r2, r2, #65280
	.loc	2 93 12                         @ test/crc.c:93:12
	and	r0, r0, r2
	.loc	2 93 3                          @ test/crc.c:93:3
	cmp	r0, r1
	bhi	.LBB3_18
	b	.LBB3_13
.LBB3_13:                               @ %for.body49
                                        @   in Loop: Header=BB3_12 Depth=1
	.loc	2 94 9 is_stmt 1                @ test/crc.c:94:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmn	r0, #1
	bgt	.LBB3_15
	b	.LBB3_14
.LBB3_14:                               @ %if.then52
                                        @   in Loop: Header=BB3_12 Depth=1
	.loc	2 0 9 is_stmt 0                 @ test/crc.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r2, #255
	orr	r2, r2, #65280
	.loc	2 95 19 is_stmt 1               @ test/crc.c:95:19
	and	r3, r0, r2
	ldr	r0, .LCPI3_2
	ldrb	r3, [r0, r3]
	.loc	2 95 14 is_stmt 0               @ test/crc.c:95:14
	ldr	r0, .LCPI3_1
	ldrb	r0, [r0, r3]
	.loc	2 95 28                         @ test/crc.c:95:28
	and	r1, r1, r2
	.loc	2 95 26                         @ test/crc.c:95:26
	eor	r0, r0, r1, lsr #8
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	2 96 5 is_stmt 1                @ test/crc.c:96:5
	b	.LBB3_16
.LBB3_15:                               @ %if.else63
                                        @   in Loop: Header=BB3_12 Depth=1
	.loc	2 0 5 is_stmt 0                 @ test/crc.c:0:5
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r2, #255
	orr	r2, r2, #65280
	.loc	2 98 14 is_stmt 1               @ test/crc.c:98:14
	and	r3, r0, r2
	ldr	r0, .LCPI3_2
	ldrb	r0, [r0, r3]
	.loc	2 98 22 is_stmt 0               @ test/crc.c:98:22
	and	r1, r1, r2
	.loc	2 98 20                         @ test/crc.c:98:20
	eor	r0, r0, r1, lsr #8
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB3_16
.LBB3_16:                               @ %if.end73
                                        @   in Loop: Header=BB3_12 Depth=1
	.loc	2 0 0                           @ test/crc.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 101 3 is_stmt 1               @ test/crc.c:101:3
	b	.LBB3_17
.LBB3_17:                               @ %for.inc84
                                        @   in Loop: Header=BB3_12 Depth=1
	.loc	2 0 3 is_stmt 0                 @ test/crc.c:0:3
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	r3, #255
	orr	r3, r3, #65280
	.loc	2 100 13 is_stmt 1              @ test/crc.c:100:13
	and	r3, r0, r3
	ldr	r0, .LCPI3_3
	add	r0, r0, r3, lsl #1
	ldrh	r0, [r0]
	.loc	2 100 26 is_stmt 0              @ test/crc.c:100:26
	eor	r0, r0, r2, lsl #8
	.loc	2 93 20 is_stmt 1               @ test/crc.c:93:20
	add	r1, r1, #1
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	2 93 3 is_stmt 0                @ test/crc.c:93:3
	b	.LBB3_12
.LBB3_18:                               @ %for.end86
	.loc	2 102 7 is_stmt 1               @ test/crc.c:102:7
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #0
	bmi	.LBB3_20
	b	.LBB3_19
.LBB3_19:                               @ %if.then89
	.loc	2 0 7 is_stmt 0                 @ test/crc.c:0:7
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	2 104 3 is_stmt 1               @ test/crc.c:104:3
	b	.LBB3_21
.LBB3_20:                               @ %if.else90
	.loc	2 0 3 is_stmt 0                 @ test/crc.c:0:3
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	mov	r0, #255
	orr	r0, r0, #65280
	.loc	2 106 17 is_stmt 1              @ test/crc.c:106:17
	and	r0, r2, r0
	.loc	2 106 12 is_stmt 0              @ test/crc.c:106:12
	ldr	r1, .LCPI3_1
	ldrb	r0, [r1, r0, lsr #8]
	.loc	2 106 34                        @ test/crc.c:106:34
	and	r2, r2, #255
	ldrb	r1, [r1, r2]
	.loc	2 106 32                        @ test/crc.c:106:32
	orr	r0, r0, r1, lsl #8
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB3_21
.LBB3_21:                               @ %if.end106
	.loc	2 0 0                           @ test/crc.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	mov	r1, #255
	orr	r1, r1, #65280
	.loc	2 108 3 is_stmt 1               @ test/crc.c:108:3
	and	r0, r0, r1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp7:
	.p2align	2
@ %bb.22:
	.loc	2 0 3 is_stmt 0                 @ test/crc.c:0:3
.LCPI3_0:
	.long	icrc.init
.LCPI3_1:
	.long	icrc.rchr
.LCPI3_2:
	.long	lin
.LCPI3_3:
	.long	icrc.icrctb
.LCPI3_4:
	.long	icrc.it
.Lfunc_end3:
	.size	icrc, .Lfunc_end3-icrc
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	crc                             @ -- Begin function crc
	.p2align	2
	.type	crc,%function
	.code	32                              @ @crc
crc:
.Lfunc_begin4:
	.loc	2 113 0 is_stmt 1               @ test/crc.c:113:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
.Ltmp8:
	.loc	2 119 11 prologue_end           @ test/crc.c:119:11
	ldr	r0, .LCPI4_0
	str	r0, [sp, #4]                    @ 4-byte Spill
	mov	r2, #0
	str	r2, [r11, #-4]                  @ 4-byte Spill
	strb	r2, [r0, #41]
	mov	r1, #40
	mov	r3, #1
	str	r3, [sp, #8]                    @ 4-byte Spill
	.loc	2 120 6                         @ test/crc.c:120:6
	mov	r0, r2
	bl	icrc
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	2 121 12                        @ test/crc.c:121:12
	lsr	r12, r0, #8
	.loc	2 121 11 is_stmt 0              @ test/crc.c:121:11
	strb	r12, [r1, #41]
	.loc	2 122 11 is_stmt 1              @ test/crc.c:122:11
	strb	r0, [r1, #42]
	mov	r1, #42
	.loc	2 123 6                         @ test/crc.c:123:6
	bl	icrc
                                        @ kill: def $r1 killed $r0
	.loc	2 124 3                         @ test/crc.c:124:3
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp9:
	.p2align	2
@ %bb.1:
	.loc	2 0 3 is_stmt 0                 @ test/crc.c:0:3
.LCPI4_0:
	.long	lin
.Lfunc_end4:
	.size	crc, .Lfunc_end4-crc
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	expint                          @ -- Begin function expint
	.p2align	2
	.type	expint,%function
	.code	32                              @ @expint
expint:
.Lfunc_begin5:
	.file	3 "/workspaces/llvmta/testcases" "test/expint.c" md5 0x43d51292e0f0d67fd2201d0e410a84f4
	.loc	3 31 0 is_stmt 1                @ test/expint.c:31:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r0, #50
	mov	r1, #1
.Ltmp10:
	.loc	3 33 3 prologue_end             @ test/expint.c:33:3
	bl	expint_expint
	.loc	3 38 1                          @ test/expint.c:38:1
	pop	{r11, lr}
	bx	lr
.Ltmp11:
.Lfunc_end5:
	.size	expint, .Lfunc_end5-expint
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	expint_expint                   @ -- Begin function expint_expint
	.p2align	2
	.type	expint_expint,%function
	.code	32                              @ @expint_expint
expint_expint:
.Lfunc_begin6:
	.loc	3 58 0                          @ test/expint.c:58:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	sub	sp, sp, #128
	str	r1, [r11, #-20]                 @ 4-byte Spill
	str	r0, [r11, #-16]                 @ 4-byte Spill
.Ltmp12:
	.loc	3 66 8 prologue_end             @ test/expint.c:66:8
	sub	r0, r0, #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	3 70 6                          @ test/expint.c:70:6
	cmp	r1, #2
	blt	.LBB6_8
	b	.LBB6_1
.LBB6_1:                                @ %if.then
	.loc	3 74 10                         @ test/expint.c:74:10
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	add	r2, r0, r1
	mov	r0, #1
	mov	r3, #1152
	orr	r3, r3, #1998848
	ldr	r1, .LCPI6_0
	mov	r12, r1
	str	r12, [r11, #-40]                @ 4-byte Spill
	str	r3, [r11, #-36]                 @ 4-byte Spill
	str	r2, [r11, #-32]                 @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	3 84 12                         @ test/expint.c:84:12
	b	.LBB6_2
.LBB6_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	3 0 0 is_stmt 0                 @ test/expint.c:0:0
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	ldr	r2, [r11, #-36]                 @ 4-byte Reload
	ldr	r3, [r11, #-32]                 @ 4-byte Reload
	ldr	r12, [r11, #-28]                @ 4-byte Reload
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	str	r0, [r11, #-60]                 @ 4-byte Spill
	str	r12, [r11, #-56]                @ 4-byte Spill
	str	r3, [r11, #-52]                 @ 4-byte Spill
	str	r2, [r11, #-48]                 @ 4-byte Spill
	str	r1, [r11, #-44]                 @ 4-byte Spill
	.loc	3 84 7                          @ test/expint.c:84:7
	cmp	r0, #101
	beq	.LBB6_7
	b	.LBB6_3
.LBB6_3:                                @ %for.body
                                        @   in Loop: Header=BB6_2 Depth=1
	.loc	3 88 22 is_stmt 1               @ test/expint.c:88:22
	ldr	r1, [r11, #-48]                 @ 4-byte Reload
	ldr	r3, [r11, #-44]                 @ 4-byte Reload
	ldr	r2, [r11, #-52]                 @ 4-byte Reload
	ldr	r12, [r11, #-60]                @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	add	lr, r0, r12
	.loc	3 88 17 is_stmt 0               @ test/expint.c:88:17
	mul	r0, r12, lr
	rsb	r0, r0, #0
	.loc	3 90 13 is_stmt 1               @ test/expint.c:90:13
	add	r12, r2, #2
	str	r12, [sp, #64]                  @ 4-byte Spill
	.loc	3 92 20                         @ test/expint.c:92:20
	mla	r2, r3, r0, r12
	.loc	3 92 15 is_stmt 0               @ test/expint.c:92:15
	add	r2, r2, r2, lsl #2
	lsl	r2, r2, #1
	str	r2, [sp, #60]                   @ 4-byte Spill
	.loc	3 94 16 is_stmt 1               @ test/expint.c:94:16
	bl	__divsi3
	ldr	r3, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [r11, #-56]                 @ 4-byte Reload
	mov	r1, r0
	.loc	3 94 14 is_stmt 0               @ test/expint.c:94:14
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	add	r1, r0, r1
	str	r1, [sp, #68]                   @ 4-byte Spill
	.loc	3 96 16 is_stmt 1               @ test/expint.c:96:16
	mul	r0, r1, r3
	.loc	3 98 13                         @ test/expint.c:98:13
	mul	r1, r2, r0
	str	r1, [r11, #-64]                 @ 4-byte Spill
	mov	r1, #15
	orr	r1, r1, #9984
	.loc	3 100 15                        @ test/expint.c:100:15
	cmp	r0, r1
	bgt	.LBB6_5
	b	.LBB6_4
.LBB6_4:                                @ %if.then12
	.loc	3 104 20                        @ test/expint.c:104:20
	ldr	r1, [r11, #-64]                 @ 4-byte Reload
	ldr	r2, [r11, #-20]                 @ 4-byte Reload
	mul	r0, r1, r2
	rsb	r0, r0, #0
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	3 106 15                        @ test/expint.c:106:15
	b	.LBB6_21
.LBB6_5:                                @ %if.end
                                        @   in Loop: Header=BB6_2 Depth=1
	.loc	3 110 9                         @ test/expint.c:110:9
	b	.LBB6_6
.LBB6_6:                                @ %for.inc
                                        @   in Loop: Header=BB6_2 Depth=1
	.loc	3 84 24                         @ test/expint.c:84:24
	ldr	r1, [r11, #-64]                 @ 4-byte Reload
	ldr	r2, [sp, #64]                   @ 4-byte Reload
	ldr	r3, [sp, #68]                   @ 4-byte Reload
	ldr	r12, [sp, #60]                  @ 4-byte Reload
	ldr	r0, [r11, #-60]                 @ 4-byte Reload
	add	r0, r0, #1
	str	r12, [r11, #-40]                @ 4-byte Spill
	str	r3, [r11, #-36]                 @ 4-byte Spill
	str	r2, [r11, #-32]                 @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	3 84 7 is_stmt 0                @ test/expint.c:84:7
	b	.LBB6_2
.LBB6_7:                                @ %for.end
                                        @ implicit-def: $r0
	.loc	3 112 5 is_stmt 1               @ test/expint.c:112:5
	b	.LBB6_20
.LBB6_8:                                @ %if.else
	.loc	3 0 5 is_stmt 0                 @ test/expint.c:0:5
	ldr	r12, [r11, #-16]                @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	mov	r0, #2
	.loc	3 122 13 is_stmt 1              @ test/expint.c:122:13
	cmp	r1, #0
	moveq	r0, #1000
	mov	r1, #1
	.loc	3 126 12                        @ test/expint.c:126:12
	cmp	r12, #1
	mov	r2, r1
	movgt	r2, r12
	sub	r3, r2, #1
	sub	r4, r2, #2
	umull	r2, lr, r3, r4
	and	lr, lr, #1
	lsrs	lr, lr, #1
	rrx	lr, r2
	mla	r2, r3, r12, lr
	add	r2, r2, #255
	str	r2, [sp, #36]                   @ 4-byte Spill
	mvn	r2, #0
	str	r2, [sp, #40]                   @ 4-byte Spill
	mov	r2, r1
	str	r2, [sp, #44]                   @ 4-byte Spill
	str	r1, [sp, #48]                   @ 4-byte Spill
	str	r0, [sp, #52]                   @ 4-byte Spill
	b	.LBB6_9
.LBB6_9:                                @ %for.cond16
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_13 Depth 2
	.loc	3 0 0 is_stmt 0                 @ test/expint.c:0:0
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r3, [sp, #52]                   @ 4-byte Reload
	str	r3, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	str	r2, [sp, #28]                   @ 4-byte Spill
	str	r1, [sp, #32]                   @ 4-byte Spill
	.loc	3 126 7                         @ test/expint.c:126:7
	cmp	r0, #101
	beq	.LBB6_19
	b	.LBB6_10
.LBB6_10:                               @ %for.body18
                                        @   in Loop: Header=BB6_9 Depth=1
	.loc	3 130 21 is_stmt 1              @ test/expint.c:130:21
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	bl	__divsi3
	ldr	r12, [sp, #28]                  @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	lr, [sp, #32]                   @ 4-byte Reload
	mov	r3, r0
	.loc	3 130 16 is_stmt 0              @ test/expint.c:130:16
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mul	r2, lr, r3
	str	r2, [sp, #12]                   @ 4-byte Spill
	mul	r2, r3, r12
	str	r2, [sp, #16]                   @ 4-byte Spill
	.loc	3 132 15 is_stmt 1              @ test/expint.c:132:15
	cmp	r0, r1
	beq	.LBB6_12
	b	.LBB6_11
.LBB6_11:                               @ %if.then23
                                        @   in Loop: Header=BB6_9 Depth=1
	.loc	3 134 27                        @ test/expint.c:134:27
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [r11, #-12]                 @ 4-byte Reload
	sub	r1, r1, r2
	.loc	3 134 24 is_stmt 0              @ test/expint.c:134:24
	bl	__divsi3
	rsb	r0, r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	3 134 13                        @ test/expint.c:134:13
	b	.LBB6_17
.LBB6_12:                               @ %if.else27
                                        @   in Loop: Header=BB6_9 Depth=1
	.loc	3 142 20 is_stmt 1              @ test/expint.c:142:20
	b	.LBB6_13
.LBB6_13:                               @ %for.cond28
                                        @   Parent Loop BB6_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	3 0 20 is_stmt 0                @ test/expint.c:0:20
	mov	r0, #1
	.loc	3 142 15                        @ test/expint.c:142:15
	cmp	r0, #0
	bne	.LBB6_16
	b	.LBB6_14
.LBB6_14:                               @ %for.body30
                                        @   in Loop: Header=BB6_13 Depth=2
	.loc	3 144 17 is_stmt 1              @ test/expint.c:144:17
	b	.LBB6_15
.LBB6_15:                               @ %for.inc33
                                        @   in Loop: Header=BB6_13 Depth=2
	.loc	3 142 15                        @ test/expint.c:142:15
	b	.LBB6_13
.LBB6_16:                               @ %for.end35
                                        @   in Loop: Header=BB6_9 Depth=1
	.loc	3 146 28                        @ test/expint.c:146:28
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	bl	foo
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r2, r0
	.loc	3 146 22 is_stmt 0              @ test/expint.c:146:22
	mla	r0, r1, r2, r3
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB6_17
.LBB6_17:                               @ %if.end38
                                        @   in Loop: Header=BB6_9 Depth=1
	.loc	3 0 0                           @ test/expint.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	3 154 9 is_stmt 1               @ test/expint.c:154:9
	b	.LBB6_18
.LBB6_18:                               @ %for.inc40
                                        @   in Loop: Header=BB6_9 Depth=1
	.loc	3 150 15                        @ test/expint.c:150:15
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	add	r0, r0, r12
	.loc	3 126 24                        @ test/expint.c:126:24
	add	r1, r1, #1
	str	r3, [sp, #40]                   @ 4-byte Spill
	str	r2, [sp, #44]                   @ 4-byte Spill
	str	r1, [sp, #48]                   @ 4-byte Spill
	str	r0, [sp, #52]                   @ 4-byte Spill
	.loc	3 126 7 is_stmt 0               @ test/expint.c:126:7
	b	.LBB6_9
.LBB6_19:                               @ %for.end42
	.loc	3 0 7                           @ test/expint.c:0:7
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB6_20
.LBB6_20:                               @ %if.end43
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	3 160 3 is_stmt 1               @ test/expint.c:160:3
	b	.LBB6_21
.LBB6_21:                               @ %return
	.loc	3 0 0 is_stmt 0                 @ test/expint.c:0:0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	.loc	3 162 1 is_stmt 1               @ test/expint.c:162:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp13:
	.p2align	2
@ %bb.22:
	.loc	3 0 1 is_stmt 0                 @ test/expint.c:0:1
.LCPI6_0:
	.long	30000000                        @ 0x1c9c380
.Lfunc_end6:
	.size	expint_expint, .Lfunc_end6-expint_expint
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	foo                             @ -- Begin function foo
	.p2align	2
	.type	foo,%function
	.code	32                              @ @foo
foo:
.Lfunc_begin7:
	.loc	3 42 0 is_stmt 1                @ test/expint.c:42:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r1, r0
.Ltmp14:
	.loc	3 44 13 prologue_end            @ test/expint.c:44:13
	add	r2, r1, #8
	mul	r0, r2, r1
	.loc	3 44 22 is_stmt 0               @ test/expint.c:44:22
	rsb	r1, r1, #4
	.loc	3 44 19                         @ test/expint.c:44:19
	lsl	r0, r0, r1
	.loc	3 44 3                          @ test/expint.c:44:3
	bx	lr
.Ltmp15:
.Lfunc_end7:
	.size	foo, .Lfunc_end7-foo
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	fdct_fdct                       @ -- Begin function fdct_fdct
	.p2align	2
	.type	fdct_fdct,%function
	.code	32                              @ @fdct_fdct
fdct_fdct:
.Lfunc_begin8:
	.file	4 "/workspaces/llvmta/testcases" "test/fdct.c" md5 0x14ba389f54880aec137a5706c61250ef
	.loc	4 68 0 is_stmt 1                @ test/fdct.c:68:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r9, -16
	.cfi_offset r8, -20
	.cfi_offset r7, -24
	.cfi_offset r6, -28
	.cfi_offset r5, -32
	.cfi_offset r4, -36
	add	r11, sp, #28
	.cfi_def_cfa r11, 8
	sub	sp, sp, #60
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	mov	r1, #0
	str	r1, [r11, #-36]                 @ 4-byte Spill
	str	r0, [r11, #-32]                 @ 4-byte Spill
.Ltmp16:
	.loc	4 83 8 prologue_end             @ test/fdct.c:83:8
	b	.LBB8_1
.LBB8_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/fdct.c:0:0
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	ldr	r1, [r11, #-32]                 @ 4-byte Reload
	str	r1, [sp, #36]                   @ 4-byte Spill
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	4 83 3                          @ test/fdct.c:83:3
	cmp	r0, #8
	beq	.LBB8_4
	b	.LBB8_2
.LBB8_2:                                @ %for.body
                                        @   in Loop: Header=BB8_1 Depth=1
	.loc	4 85 12 is_stmt 1               @ test/fdct.c:85:12
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldrsh	r0, [r1]
	.loc	4 85 23 is_stmt 0               @ test/fdct.c:85:23
	ldrsh	r2, [r1, #14]
	.loc	4 85 21                         @ test/fdct.c:85:21
	add	r12, r0, r2
	.loc	4 86 21 is_stmt 1               @ test/fdct.c:86:21
	sub	r3, r0, r2
	.loc	4 87 12                         @ test/fdct.c:87:12
	ldrsh	r2, [r1, #2]
	.loc	4 87 23 is_stmt 0               @ test/fdct.c:87:23
	ldrsh	lr, [r1, #12]
	.loc	4 87 21                         @ test/fdct.c:87:21
	add	r0, r2, lr
	.loc	4 88 21 is_stmt 1               @ test/fdct.c:88:21
	sub	r4, r2, lr
	.loc	4 89 12                         @ test/fdct.c:89:12
	ldrsh	r2, [r1, #4]
	.loc	4 89 23 is_stmt 0               @ test/fdct.c:89:23
	ldrsh	lr, [r1, #10]
	.loc	4 89 21                         @ test/fdct.c:89:21
	add	r6, r2, lr
	.loc	4 90 21 is_stmt 1               @ test/fdct.c:90:21
	sub	r5, r2, lr
	.loc	4 91 12                         @ test/fdct.c:91:12
	ldrsh	r2, [r1, #6]
	.loc	4 91 23 is_stmt 0               @ test/fdct.c:91:23
	ldrsh	r7, [r1, #8]
	.loc	4 91 21                         @ test/fdct.c:91:21
	add	lr, r2, r7
	.loc	4 92 21 is_stmt 1               @ test/fdct.c:92:21
	sub	r7, r2, r7
	.loc	4 98 18                         @ test/fdct.c:98:18
	add	r2, r12, lr
	.loc	4 99 18                         @ test/fdct.c:99:18
	sub	r12, r12, lr
	.loc	4 100 18                        @ test/fdct.c:100:18
	add	lr, r0, r6
	.loc	4 101 18                        @ test/fdct.c:101:18
	sub	r0, r0, r6
	.loc	4 103 23                        @ test/fdct.c:103:23
	add	r6, r2, lr
	.loc	4 103 16 is_stmt 0              @ test/fdct.c:103:16
	lsl	r6, r6, #2
	.loc	4 103 14                        @ test/fdct.c:103:14
	strh	r6, [r1]
	.loc	4 104 23 is_stmt 1              @ test/fdct.c:104:23
	sub	r2, r2, lr
	.loc	4 104 16 is_stmt 0              @ test/fdct.c:104:16
	lsl	r2, r2, #2
	.loc	4 104 14                        @ test/fdct.c:104:14
	strh	r2, [r1, #8]
	.loc	4 107 17 is_stmt 1              @ test/fdct.c:107:17
	add	r2, r0, r12
	mov	lr, #126
	orr	lr, lr, #6144
	.loc	4 109 29                        @ test/fdct.c:109:29
	mul	r6, r12, lr
	mov	r12, #81
	orr	r12, r12, #4352
	.loc	4 109 20 is_stmt 0              @ test/fdct.c:109:20
	mla	lr, r2, r12, r6
	.loc	4 109 42                        @ test/fdct.c:109:42
	lsr	lr, lr, #11
	.loc	4 109 14                        @ test/fdct.c:109:14
	strh	lr, [r1, #4]
	mvn	r6, #32
	sub	r6, r6, #15104
	.loc	4 111 29 is_stmt 1              @ test/fdct.c:111:29
	mul	lr, r0, r6
	.loc	4 111 20 is_stmt 0              @ test/fdct.c:111:20
	mla	r0, r2, r12, lr
	.loc	4 111 42                        @ test/fdct.c:111:42
	lsr	r0, r0, #11
	.loc	4 111 14                        @ test/fdct.c:111:14
	strh	r0, [r1, #12]
	.loc	4 118 15 is_stmt 1              @ test/fdct.c:118:15
	add	r6, r7, r3
	.loc	4 119 15                        @ test/fdct.c:119:15
	add	r12, r5, r4
	.loc	4 120 15                        @ test/fdct.c:120:15
	add	r2, r7, r4
	.loc	4 121 15                        @ test/fdct.c:121:15
	add	r0, r5, r3
	.loc	4 123 15                        @ test/fdct.c:123:15
	add	lr, r2, r0
	mov	r8, #161
	orr	r8, r8, #9472
	.loc	4 123 21 is_stmt 0              @ test/fdct.c:123:21
	mul	r9, lr, r8
	mvn	r8, #204
	sub	r8, r8, #7168
	.loc	4 134 14 is_stmt 1              @ test/fdct.c:134:14
	mul	lr, r6, r8
	mvn	r8, #2
	sub	r8, r8, #20992
	.loc	4 136 14                        @ test/fdct.c:136:14
	mul	r6, r12, r8
	mvn	r8, #196
	sub	r8, r8, #15872
	.loc	4 142 8                         @ test/fdct.c:142:8
	mla	r12, r2, r8, r9
	mvn	r8, #123
	sub	r8, r8, #3072
	.loc	4 143 8                         @ test/fdct.c:143:8
	mla	r2, r0, r8, r9
	mov	r8, #142
	orr	r8, r8, #2304
	.loc	4 145 22                        @ test/fdct.c:145:22
	mla	r0, r7, r8, lr
	.loc	4 145 27 is_stmt 0              @ test/fdct.c:145:27
	add	r0, r0, r12
	.loc	4 145 33                        @ test/fdct.c:145:33
	lsr	r0, r0, #11
	.loc	4 145 14                        @ test/fdct.c:145:14
	strh	r0, [r1, #14]
	mov	r7, #179
	orr	r7, r7, #16640
	.loc	4 146 22 is_stmt 1              @ test/fdct.c:146:22
	mla	r0, r5, r7, r6
	.loc	4 146 27 is_stmt 0              @ test/fdct.c:146:27
	add	r0, r0, r2
	.loc	4 146 33                        @ test/fdct.c:146:33
	lsr	r0, r0, #11
	.loc	4 146 14                        @ test/fdct.c:146:14
	strh	r0, [r1, #10]
	mov	r5, #596
	orr	r5, r5, #24576
	.loc	4 147 22 is_stmt 1              @ test/fdct.c:147:22
	mla	r0, r4, r5, r6
	.loc	4 147 27 is_stmt 0              @ test/fdct.c:147:27
	add	r0, r0, r12
	.loc	4 147 33                        @ test/fdct.c:147:33
	lsr	r0, r0, #11
	.loc	4 147 14                        @ test/fdct.c:147:14
	strh	r0, [r1, #6]
	mov	r12, #11
	orr	r12, r12, #12288
	.loc	4 148 22 is_stmt 1              @ test/fdct.c:148:22
	mla	r0, r3, r12, lr
	.loc	4 148 27 is_stmt 0              @ test/fdct.c:148:27
	add	r0, r0, r2
	.loc	4 148 33                        @ test/fdct.c:148:33
	lsr	r0, r0, #11
	.loc	4 148 14                        @ test/fdct.c:148:14
	strh	r0, [r1, #2]
	.loc	4 155 3 is_stmt 1               @ test/fdct.c:155:3
	b	.LBB8_3
.LBB8_3:                                @ %for.inc
                                        @   in Loop: Header=BB8_1 Depth=1
	.loc	4 153 11                        @ test/fdct.c:153:11
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	add	r0, r0, r2, lsl #1
	.loc	4 83 19                         @ test/fdct.c:83:19
	add	r1, r1, #1
	str	r1, [r11, #-36]                 @ 4-byte Spill
	str	r0, [r11, #-32]                 @ 4-byte Spill
	.loc	4 83 3 is_stmt 0                @ test/fdct.c:83:3
	b	.LBB8_1
.LBB8_4:                                @ %for.end
	.loc	4 0 3                           @ test/fdct.c:0:3
	ldr	r0, [r11, #-40]                 @ 4-byte Reload
	mov	r1, #0
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	4 161 8 is_stmt 1               @ test/fdct.c:161:8
	b	.LBB8_5
.LBB8_5:                                @ %for.cond94
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/fdct.c:0:0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	4 161 3                         @ test/fdct.c:161:3
	cmp	r0, #8
	beq	.LBB8_8
	b	.LBB8_6
.LBB8_6:                                @ %for.body97
                                        @   in Loop: Header=BB8_5 Depth=1
	.loc	4 163 12 is_stmt 1              @ test/fdct.c:163:12
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	ldr	r4, [sp, #44]                   @ 4-byte Reload
	ldrsh	r0, [r3]
	.loc	4 163 23 is_stmt 0              @ test/fdct.c:163:23
	rsb	r1, r4, r4, lsl #3
	add	r9, r3, r1, lsl #1
	ldrsh	r1, [r9]
	.loc	4 163 21                        @ test/fdct.c:163:21
	add	lr, r0, r1
	.loc	4 164 21 is_stmt 1              @ test/fdct.c:164:21
	sub	r0, r0, r1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	4 165 12                        @ test/fdct.c:165:12
	add	r0, r3, r4, lsl #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldrsh	r1, [r0]
	.loc	4 165 31 is_stmt 0              @ test/fdct.c:165:31
	add	r0, r4, r4, lsl #1
	lsl	r2, r0, #1
	.loc	4 165 24                        @ test/fdct.c:165:24
	add	r2, r3, r2, lsl #1
	ldrsh	r12, [r2]
	.loc	4 165 22                        @ test/fdct.c:165:22
	add	r5, r1, r12
	str	r5, [sp]                        @ 4-byte Spill
	.loc	4 166 21 is_stmt 1              @ test/fdct.c:166:21
	sub	r5, r1, r12
	.loc	4 167 12                        @ test/fdct.c:167:12
	add	r7, r3, r4, lsl #2
	ldrsh	r12, [r7]
	.loc	4 167 26 is_stmt 0              @ test/fdct.c:167:26
	add	r1, r4, r4, lsl #2
	add	r6, r3, r1, lsl #1
	ldrsh	r8, [r6]
	.loc	4 167 24                        @ test/fdct.c:167:24
	add	r1, r12, r8
	.loc	4 168 24 is_stmt 1              @ test/fdct.c:168:24
	sub	r8, r12, r8
	.loc	4 169 12                        @ test/fdct.c:169:12
	add	r12, r3, r0, lsl #1
	ldrsh	r0, [r12]
	.loc	4 169 26 is_stmt 0              @ test/fdct.c:169:26
	add	r3, r3, r4, lsl #3
	ldrsh	r10, [r3]
	.loc	4 169 24                        @ test/fdct.c:169:24
	add	r4, r0, r10
	.loc	4 170 24 is_stmt 1              @ test/fdct.c:170:24
	sub	r10, r0, r10
	.loc	4 176 18                        @ test/fdct.c:176:18
	add	r0, lr, r4
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	4 177 18                        @ test/fdct.c:177:18
	ldr	r0, [sp]                        @ 4-byte Reload
	sub	lr, lr, r4
	.loc	4 178 18                        @ test/fdct.c:178:18
	add	r4, r0, r1
	.loc	4 179 18                        @ test/fdct.c:179:18
	sub	r0, r0, r1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	4 181 23                        @ test/fdct.c:181:23
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, r4
	.loc	4 181 32 is_stmt 0              @ test/fdct.c:181:32
	lsr	r0, r0, #5
	.loc	4 181 14                        @ test/fdct.c:181:14
	strh	r0, [r1]
	.loc	4 182 26 is_stmt 1              @ test/fdct.c:182:26
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	sub	r0, r0, r4
	.loc	4 182 35 is_stmt 0              @ test/fdct.c:182:35
	lsr	r0, r0, #5
	.loc	4 182 17                        @ test/fdct.c:182:17
	strh	r0, [r3]
	.loc	4 185 18 is_stmt 1              @ test/fdct.c:185:18
	add	r3, r1, lr
	mov	r4, #126
	orr	r4, r4, #6144
	.loc	4 187 32                        @ test/fdct.c:187:32
	mul	r0, lr, r4
	mov	lr, #81
	orr	lr, lr, #4352
	.loc	4 187 23 is_stmt 0              @ test/fdct.c:187:23
	mla	r4, r3, lr, r0
	.loc	4 187 45                        @ test/fdct.c:187:45
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	asr	r4, r4, #18
	.loc	4 187 17                        @ test/fdct.c:187:17
	strh	r4, [r7]
	mvn	r7, #32
	sub	r7, r7, #15104
	.loc	4 189 32 is_stmt 1              @ test/fdct.c:189:32
	mul	r4, r1, r7
	.loc	4 189 23 is_stmt 0              @ test/fdct.c:189:23
	mla	r1, r3, lr, r4
	.loc	4 189 45                        @ test/fdct.c:189:45
	asr	r1, r1, #18
	.loc	4 189 17                        @ test/fdct.c:189:17
	strh	r1, [r2]
	.loc	4 196 15 is_stmt 1              @ test/fdct.c:196:15
	add	r4, r10, r0
	.loc	4 197 15                        @ test/fdct.c:197:15
	add	r2, r8, r5
	.loc	4 198 15                        @ test/fdct.c:198:15
	add	r1, r10, r5
	.loc	4 199 15                        @ test/fdct.c:199:15
	add	r0, r8, r0
	.loc	4 201 15                        @ test/fdct.c:201:15
	add	lr, r1, r0
	mov	r7, #161
	orr	r7, r7, #9472
	.loc	4 201 21 is_stmt 0              @ test/fdct.c:201:21
	mul	r3, lr, r7
	mvn	r7, #204
	sub	r7, r7, #7168
	.loc	4 212 14 is_stmt 1              @ test/fdct.c:212:14
	mul	lr, r4, r7
	mvn	r4, #2
	sub	r4, r4, #20992
	.loc	4 214 14                        @ test/fdct.c:214:14
	mul	r7, r2, r4
	mvn	r2, #196
	sub	r2, r2, #15872
	.loc	4 220 8                         @ test/fdct.c:220:8
	mla	r4, r1, r2, r3
	mvn	r1, #123
	sub	r1, r1, #3072
	.loc	4 221 8                         @ test/fdct.c:221:8
	mla	r2, r0, r1, r3
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	mov	r1, #142
	orr	r1, r1, #2304
	.loc	4 223 25                        @ test/fdct.c:223:25
	mla	r0, r10, r1, lr
	.loc	4 223 30 is_stmt 0              @ test/fdct.c:223:30
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r0, r0, r4
	.loc	4 223 36                        @ test/fdct.c:223:36
	asr	r0, r0, #18
	.loc	4 223 17                        @ test/fdct.c:223:17
	strh	r0, [r9]
	mov	r9, #179
	orr	r9, r9, #16640
	.loc	4 224 25 is_stmt 1              @ test/fdct.c:224:25
	mla	r0, r8, r9, r7
	.loc	4 224 30 is_stmt 0              @ test/fdct.c:224:30
	add	r0, r0, r2
	.loc	4 224 36                        @ test/fdct.c:224:36
	asr	r0, r0, #18
	.loc	4 224 17                        @ test/fdct.c:224:17
	strh	r0, [r6]
	mov	r6, #596
	orr	r6, r6, #24576
	.loc	4 225 25 is_stmt 1              @ test/fdct.c:225:25
	mla	r0, r5, r6, r7
	.loc	4 225 30 is_stmt 0              @ test/fdct.c:225:30
	add	r0, r0, r4
	.loc	4 225 36                        @ test/fdct.c:225:36
	asr	r0, r0, #18
	.loc	4 225 17                        @ test/fdct.c:225:17
	strh	r0, [r12]
	mov	r12, #11
	orr	r12, r12, #12288
	.loc	4 226 24 is_stmt 1              @ test/fdct.c:226:24
	mla	r0, r3, r12, lr
	.loc	4 226 29 is_stmt 0              @ test/fdct.c:226:29
	add	r0, r0, r2
	.loc	4 226 35                        @ test/fdct.c:226:35
	asr	r0, r0, #18
	.loc	4 226 15                        @ test/fdct.c:226:15
	strh	r0, [r1]
	.loc	4 230 3 is_stmt 1               @ test/fdct.c:230:3
	b	.LBB8_7
.LBB8_7:                                @ %for.inc216
                                        @   in Loop: Header=BB8_5 Depth=1
	.loc	4 229 10                        @ test/fdct.c:229:10
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, #2
	.loc	4 161 21                        @ test/fdct.c:161:21
	add	r1, r1, #1
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	4 161 3 is_stmt 0               @ test/fdct.c:161:3
	b	.LBB8_5
.LBB8_8:                                @ %for.end218
	.loc	4 231 1 is_stmt 1               @ test/fdct.c:231:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.Ltmp17:
.Lfunc_end8:
	.size	fdct_fdct, .Lfunc_end8-fdct_fdct
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	fdct                            @ -- Begin function fdct
	.p2align	2
	.type	fdct,%function
	.code	32                              @ @fdct
fdct:
.Lfunc_begin9:
	.loc	4 234 0                         @ test/fdct.c:234:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
.Ltmp18:
	.loc	4 237 3 prologue_end            @ test/fdct.c:237:3
	ldr	r0, .LCPI9_0
	str	r0, [sp, #4]                    @ 4-byte Spill
	mov	r1, #8
	bl	fdct_fdct
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	4 243 10                        @ test/fdct.c:243:10
	ldrsh	r0, [r0]
	.loc	4 243 3 is_stmt 0               @ test/fdct.c:243:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp19:
	.p2align	2
@ %bb.1:
	.loc	4 0 3                           @ test/fdct.c:0:3
.LCPI9_0:
	.long	block
.Lfunc_end9:
	.size	fdct, .Lfunc_end9-fdct
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_sinus                       @ -- Begin function lms_sinus
	.p2align	2
	.type	lms_sinus,%function
	.code	32                              @ @lms_sinus
lms_sinus:
.Lfunc_begin10:
	.file	5 "/workspaces/llvmta/testcases" "test/lms.c" md5 0x13c45b733f2e3ae7bf4d78c55426b607
	.loc	5 57 0 is_stmt 1                @ test/lms.c:57:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
	ldr	r3, .LCPI10_0
.Ltmp20:
	.loc	5 58 13 prologue_end            @ test/lms.c:58:13
	smull	r1, r2, r0, r3
	asr	r1, r2, #3
	add	r1, r1, r2, lsr #31
	add	r1, r1, r1, lsl #2
	sub	r0, r0, r1, lsl #2
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	5 59 7                          @ test/lms.c:59:7
	cmp	r0, #10
	blt	.LBB10_5
	b	.LBB10_1
.LBB10_1:                               @ %if.then
	.loc	5 60 24                         @ test/lms.c:60:24
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #16
	blt	.LBB10_3
	b	.LBB10_2
.LBB10_2:                               @ %cond.true
	.loc	5 60 59 is_stmt 0               @ test/lms.c:60:59
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	rsb	r0, r0, #20
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	5 60 24                         @ test/lms.c:60:24
	b	.LBB10_4
.LBB10_3:                               @ %cond.false
	.loc	5 61 48 is_stmt 1               @ test/lms.c:61:48
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	sub	r0, r0, #10
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	5 60 24                         @ test/lms.c:60:24
	b	.LBB10_4
.LBB10_4:                               @ %cond.end
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	.loc	5 60 13 is_stmt 0               @ test/lms.c:60:13
	ldr	r0, .LCPI10_1
	add	r0, r0, r1, lsl #3
	vldr	d0, [r0]
	.loc	5 60 12                         @ test/lms.c:60:12
	vneg.f64	d0, d0
	vstr	d0, [sp, #8]                    @ 8-byte Spill
	.loc	5 60 5                          @ test/lms.c:60:5
	b	.LBB10_9
.LBB10_5:                               @ %if.end
	.loc	5 62 21 is_stmt 1               @ test/lms.c:62:21
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #6
	blt	.LBB10_7
	b	.LBB10_6
.LBB10_6:                               @ %cond.true4
	.loc	5 62 52 is_stmt 0               @ test/lms.c:62:52
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	rsb	r0, r0, #10
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 62 21                         @ test/lms.c:62:21
	b	.LBB10_8
.LBB10_7:                               @ %cond.false6
	.loc	5 0 21                          @ test/lms.c:0:21
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 62 21                         @ test/lms.c:62:21
	b	.LBB10_8
.LBB10_8:                               @ %cond.end7
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	5 62 10                         @ test/lms.c:62:10
	ldr	r0, .LCPI10_1
	add	r0, r0, r1, lsl #3
	vldr	d0, [r0]
	vstr	d0, [sp, #8]                    @ 8-byte Spill
	.loc	5 62 3                          @ test/lms.c:62:3
	b	.LBB10_9
.LBB10_9:                               @ %return
	.loc	5 0 0                           @ test/lms.c:0:0
	vldr	d0, [sp, #8]                    @ 8-byte Reload
	.loc	5 63 1 is_stmt 1                @ test/lms.c:63:1
	add	sp, sp, #24
	bx	lr
.Ltmp21:
	.p2align	2
@ %bb.10:
	.loc	5 0 1 is_stmt 0                 @ test/lms.c:0:1
.LCPI10_0:
	.long	1717986919                      @ 0x66666667
.LCPI10_1:
	.long	lms_sintab
.Lfunc_end10:
	.size	lms_sinus, .Lfunc_end10-lms_sinus
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_init                        @ -- Begin function lms_init
	.p2align	3
	.type	lms_init,%function
	.code	32                              @ @lms_init
lms_init:
.Lfunc_begin11:
	.loc	5 65 0 is_stmt 1                @ test/lms.c:65:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #72
.Ltmp22:
	.loc	5 69 16 prologue_end            @ test/lms.c:69:16
	ldr	r1, .LCPI11_0
	mov	r0, #0
	str	r0, [r1]
	.loc	5 73 5                          @ test/lms.c:73:5
	b	.LBB11_1
.LBB11_1:                               @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 80 5                          @ test/lms.c:80:5
	b	.LBB11_2
.LBB11_2:                               @ %do.cond
                                        @   in Loop: Header=BB11_1 Depth=1
	.loc	5 0 5 is_stmt 0                 @ test/lms.c:0:5
	mov	r0, #0
	.loc	5 80 5                          @ test/lms.c:80:5
	cmp	r0, #0
	bne	.LBB11_1
	b	.LBB11_3
.LBB11_3:                               @ %do.end
	.loc	5 0 5                           @ test/lms.c:0:5
	mov	r0, #1
	.loc	5 85 20 is_stmt 1               @ test/lms.c:85:20
	bl	lms_sinus
	vldr	d1, .LCPI11_1
	.loc	5 85 33 is_stmt 0               @ test/lms.c:85:33
	vadd.f64	d0, d0, d1
	.loc	5 85 20                         @ test/lms.c:85:20
	vcvt.f32.f64	s0, d0
	.loc	5 85 18                         @ test/lms.c:85:18
	ldr	r0, .LCPI11_0
	vstr	s0, [r0, #4]
	ldr	r0, .LCPI11_2
	mov	r1, #2
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	5 88 45 is_stmt 1               @ test/lms.c:88:45
	b	.LBB11_4
.LBB11_4:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB11_6 Depth 2
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	str	r1, [r11, #-16]                 @ 4-byte Spill
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	5 88 40                         @ test/lms.c:88:40
	cmp	r0, #200
	bhi	.LBB11_10
	b	.LBB11_5
.LBB11_5:                               @ %for.body
                                        @   in Loop: Header=BB11_4 Depth=1
	.loc	5 0 40                          @ test/lms.c:0:40
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	5 91 5 is_stmt 1                @ test/lms.c:91:5
	b	.LBB11_6
.LBB11_6:                               @ %do.body18
                                        @   Parent Loop BB11_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	mov	r3, #57
	orr	r3, r3, #12288
	ldr	r2, .LCPI11_3
	.loc	5 93 32 is_stmt 1               @ test/lms.c:93:32
	mla	r1, r0, r2, r3
	.loc	5 94 18                         @ test/lms.c:94:18
	bic	r0, r1, #-2147483648
	.loc	5 94 12 is_stmt 0               @ test/lms.c:94:12
	vmov	s0, r0
	vcvt.f64.u32	d2, s0
	vldr	d3, .LCPI11_4
	vldr	d0, .LCPI11_5
	.loc	5 94 50                         @ test/lms.c:94:50
	vmov.f64	d1, d0
	vmla.f64	d1, d2, d3
	vstr	d1, [sp, #16]                   @ 8-byte Spill
	.loc	5 95 32 is_stmt 1               @ test/lms.c:95:32
	mla	r0, r1, r2, r3
	mov	r1, r0
	str	r1, [sp, #28]                   @ 4-byte Spill
	.loc	5 96 18                         @ test/lms.c:96:18
	bic	r0, r0, #-2147483648
	.loc	5 96 12 is_stmt 0               @ test/lms.c:96:12
	vmov	s4, r0
	vcvt.f64.u32	d2, s4
	.loc	5 96 50                         @ test/lms.c:96:50
	vmla.f64	d0, d2, d3
	vstr	d0, [sp, #32]                   @ 8-byte Spill
	.loc	5 97 24 is_stmt 1               @ test/lms.c:97:24
	vmul.f64	d0, d0, d0
	.loc	5 97 19 is_stmt 0               @ test/lms.c:97:19
	vmla.f64	d0, d1, d1
	vstr	d0, [r11, #-32]                 @ 8-byte Spill
	.loc	5 98 5 is_stmt 1                @ test/lms.c:98:5
	b	.LBB11_7
.LBB11_7:                               @ %do.cond31
                                        @   in Loop: Header=BB11_6 Depth=2
	.loc	5 0 5 is_stmt 0                 @ test/lms.c:0:5
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	vldr	d0, [r11, #-32]                 @ 8-byte Reload
	vldr	d1, .LCPI11_6
	.loc	5 98 5                          @ test/lms.c:98:5
	vcmp.f64	d0, d1
	vmrs	APSR_nzcv, fpscr
	str	r0, [r11, #-20]                 @ 4-byte Spill
	bgt	.LBB11_6
	b	.LBB11_8
.LBB11_8:                               @ %do.end34
                                        @   in Loop: Header=BB11_4 Depth=1
	.loc	5 0 5                           @ test/lms.c:0:5
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	vldr	d1, [r11, #-32]                 @ 8-byte Reload
	vldr	d0, .LCPI11_6
	.loc	5 102 22 is_stmt 1              @ test/lms.c:102:22
	vdiv.f64	d0, d0, d1
	vstr	d0, [sp]                        @ 8-byte Spill
	.loc	5 103 20                        @ test/lms.c:103:20
	bl	lms_sinus
	vldr	d2, [sp, #32]                   @ 8-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	vldr	d1, [sp]                        @ 8-byte Reload
	.loc	5 103 33 is_stmt 0              @ test/lms.c:103:33
	vmla.f64	d0, d1, d2
	.loc	5 103 20                        @ test/lms.c:103:20
	vcvt.f32.f64	s0, d0
	.loc	5 103 5                         @ test/lms.c:103:5
	ldr	r1, .LCPI11_0
	str	r1, [sp, #12]                   @ 4-byte Spill
	add	r1, r1, r0, lsl #2
	.loc	5 103 18                        @ test/lms.c:103:18
	vstr	s0, [r1]
	.loc	5 104 36 is_stmt 1              @ test/lms.c:104:36
	orr	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 104 24 is_stmt 0              @ test/lms.c:104:24
	bl	lms_sinus
	vldr	d2, [sp, #16]                   @ 8-byte Reload
	vldr	d1, [sp]                        @ 8-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	5 104 41                        @ test/lms.c:104:41
	vmla.f64	d0, d1, d2
	.loc	5 104 24                        @ test/lms.c:104:24
	vcvt.f32.f64	s0, d0
	.loc	5 104 5                         @ test/lms.c:104:5
	add	r0, r0, r1, lsl #2
	.loc	5 104 22                        @ test/lms.c:104:22
	vstr	s0, [r0]
	.loc	5 105 3 is_stmt 1               @ test/lms.c:105:3
	b	.LBB11_9
.LBB11_9:                               @ %for.inc
                                        @   in Loop: Header=BB11_4 Depth=1
	.loc	5 88 61                         @ test/lms.c:88:61
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	add	r1, r1, #2
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	5 88 40 is_stmt 0               @ test/lms.c:88:40
	b	.LBB11_4
.LBB11_10:                              @ %for.end
	.loc	5 106 1 is_stmt 1               @ test/lms.c:106:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp23:
	.p2align	3
@ %bb.11:
	.loc	5 0 1 is_stmt 0                 @ test/lms.c:0:1
.LCPI11_1:
	.long	3762617053                      @ double -1.5391625175977233
	.long	3220742248
.LCPI11_4:
	.long	0                               @ double 9.3132257461547852E-10
	.long	1041235968
.LCPI11_5:
	.long	0                               @ double -1
	.long	3220176896
.LCPI11_6:
	.long	0                               @ double 1
	.long	1072693248
.LCPI11_0:
	.long	lms_input
.LCPI11_2:
	.long	2524885223                      @ 0x967eb0e7
.LCPI11_3:
	.long	1103515245                      @ 0x41c64e6d
.Lfunc_end11:
	.size	lms_init, .Lfunc_end11-lms_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_calc                        @ -- Begin function lms_calc
	.p2align	2
	.type	lms_calc,%function
	.code	32                              @ @lms_calc
lms_calc:
.Lfunc_begin12:
	.loc	5 109 0 is_stmt 1               @ test/lms.c:109:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #72
	.cfi_def_cfa_offset 72
	str	r3, [sp, #36]                   @ 4-byte Spill
	str	r2, [sp, #40]                   @ 4-byte Spill
	vstr	s3, [sp, #44]                   @ 4-byte Spill
	vstr	s2, [sp, #48]                   @ 4-byte Spill
	str	r1, [sp, #52]                   @ 4-byte Spill
	str	r0, [sp, #56]                   @ 4-byte Spill
	vstr	s1, [sp, #60]                   @ 4-byte Spill
	vstr	s0, [sp, #64]                   @ 4-byte Spill
	str	r1, [sp, #68]                   @ 4-byte Spill
.Ltmp24:
	.loc	5 113 43 prologue_end           @ test/lms.c:113:43
	b	.LBB12_1
.LBB12_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	5 113 38                        @ test/lms.c:113:38
	cmp	r0, #1
	blt	.LBB12_4
	b	.LBB12_2
.LBB12_2:                               @ %for.body
                                        @   in Loop: Header=BB12_1 Depth=1
	.loc	5 113 63                        @ test/lms.c:113:63
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	add	r0, r1, r2, lsl #2
	.loc	5 114 7 is_stmt 1               @ test/lms.c:114:7
	ldr	r0, [r0, #-4]
	.loc	5 113 74                        @ test/lms.c:113:74
	str	r0, [r1, r2, lsl #2]
	.loc	5 113 63 is_stmt 0              @ test/lms.c:113:63
	b	.LBB12_3
.LBB12_3:                               @ %for.inc
                                        @   in Loop: Header=BB12_1 Depth=1
	.loc	5 113 59                        @ test/lms.c:113:59
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	sub	r0, r0, #1
	str	r0, [sp, #68]                   @ 4-byte Spill
	.loc	5 113 38                        @ test/lms.c:113:38
	b	.LBB12_1
.LBB12_4:                               @ %for.end
	.loc	5 115 14 is_stmt 1              @ test/lms.c:115:14
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	vldr	s4, [sp, #64]                   @ 4-byte Reload
	vldr	s6, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	vstr	s4, [r2]
	.loc	5 119 18                        @ test/lms.c:119:18
	vmul.f32	s2, s6, s4
	vldr	s0, .LCPI12_0
	.loc	5 119 31 is_stmt 0              @ test/lms.c:119:31
	vsub.f32	s0, s0, s6
	.loc	5 119 43                        @ test/lms.c:119:43
	vldr	s6, [r1]
	.loc	5 119 40                        @ test/lms.c:119:40
	vmul.f32	s0, s0, s6
	.loc	5 119 26                        @ test/lms.c:119:26
	vmla.f32	s0, s2, s4
	.loc	5 119 10                        @ test/lms.c:119:10
	vstr	s0, [r1]
	.loc	5 121 43 is_stmt 1              @ test/lms.c:121:43
	orr	r0, r0, r0, asr #31
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	vldr	s0, .LCPI12_1
	mov	r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	b	.LBB12_5
.LBB12_5:                               @ %for.cond6
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	vldr	s0, [sp, #28]                   @ 4-byte Reload
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	5 121 38                        @ test/lms.c:121:38
	cmp	r0, r1
	beq	.LBB12_8
	b	.LBB12_6
.LBB12_6:                               @ %for.body8
                                        @   in Loop: Header=BB12_5 Depth=1
	.loc	5 121 63                        @ test/lms.c:121:63
	b	.LBB12_7
.LBB12_7:                               @ %for.inc12
                                        @   in Loop: Header=BB12_5 Depth=1
	.loc	5 122 7 is_stmt 1               @ test/lms.c:122:7
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	add	r2, r2, r0, lsl #2
	vldr	s2, [r2]
	.loc	5 122 14 is_stmt 0              @ test/lms.c:122:14
	add	r1, r1, r0, lsl #2
	vldr	s4, [r1]
	.loc	5 121 65 is_stmt 1              @ test/lms.c:121:65
	vmla.f32	s0, s2, s4
	.loc	5 121 59 is_stmt 0              @ test/lms.c:121:59
	add	r0, r0, #1
	str	r0, [sp, #24]                   @ 4-byte Spill
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	5 121 38                        @ test/lms.c:121:38
	b	.LBB12_5
.LBB12_8:                               @ %for.end13
	.loc	5 125 21 is_stmt 1              @ test/lms.c:125:21
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	vldr	s2, [sp, #48]                   @ 4-byte Reload
	vldr	s0, [sp, #60]                   @ 4-byte Reload
	vldr	s4, [sp, #12]                   @ 4-byte Reload
	vsub.f32	s0, s0, s4
	.loc	5 125 16 is_stmt 0              @ test/lms.c:125:16
	vmul.f32	s0, s0, s2
	.loc	5 125 29                        @ test/lms.c:125:29
	vldr	s2, [r0]
	.loc	5 125 26                        @ test/lms.c:125:26
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 127 43 is_stmt 1              @ test/lms.c:127:43
	b	.LBB12_9
.LBB12_9:                               @ %for.cond16
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	5 127 38                        @ test/lms.c:127:38
	cmp	r0, r1
	beq	.LBB12_12
	b	.LBB12_10
.LBB12_10:                              @ %for.body18
                                        @   in Loop: Header=BB12_9 Depth=1
	.loc	5 128 11 is_stmt 1              @ test/lms.c:128:11
	vldr	s2, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	add	r2, r2, r1, lsl #2
	vldr	s4, [r2]
	.loc	5 127 63                        @ test/lms.c:127:63
	add	r0, r0, r1, lsl #2
	.loc	5 127 68 is_stmt 0              @ test/lms.c:127:68
	vldr	s0, [r0]
	vmla.f32	s0, s2, s4
	vstr	s0, [r0]
	.loc	5 127 63                        @ test/lms.c:127:63
	b	.LBB12_11
.LBB12_11:                              @ %for.inc22
                                        @   in Loop: Header=BB12_9 Depth=1
	.loc	5 127 59                        @ test/lms.c:127:59
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 127 38                        @ test/lms.c:127:38
	b	.LBB12_9
.LBB12_12:                              @ %for.end24
	.loc	5 130 3 is_stmt 1               @ test/lms.c:130:3
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #72
	bx	lr
.Ltmp25:
	.p2align	2
@ %bb.13:
	.loc	5 0 3 is_stmt 0                 @ test/lms.c:0:3
.LCPI12_0:
	.long	0x3f800000                      @ float 1
.LCPI12_1:
	.long	0x00000000                      @ float 0
.Lfunc_end12:
	.size	lms_calc, .Lfunc_end12-lms_calc
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_main                        @ -- Begin function lms_main
	.p2align	2
	.type	lms_main,%function
	.code	32                              @ @lms_main
lms_main:
.Lfunc_begin13:
	.loc	5 133 0 is_stmt 1               @ test/lms.c:133:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #192
	mov	r0, #1073741824
.Ltmp26:
	.loc	5 137 9 prologue_end            @ test/lms.c:137:9
	str	r0, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	5 139 43                        @ test/lms.c:139:43
	b	.LBB13_1
.LBB13_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	5 139 38                        @ test/lms.c:139:38
	cmp	r0, #21
	beq	.LBB13_4
	b	.LBB13_2
.LBB13_2:                               @ %for.body
                                        @   in Loop: Header=BB13_1 Depth=1
	.loc	5 0 38                          @ test/lms.c:0:38
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	sub	r1, r11, #84
	mov	r0, #0
	.loc	5 140 10 is_stmt 1              @ test/lms.c:140:10
	str	r0, [r1, r2, lsl #2]
	add	r1, sp, #24
	.loc	5 141 16                        @ test/lms.c:141:16
	str	r0, [r1, r2, lsl #2]
	.loc	5 142 3                         @ test/lms.c:142:3
	b	.LBB13_3
.LBB13_3:                               @ %for.inc
                                        @   in Loop: Header=BB13_1 Depth=1
	.loc	5 139 59                        @ test/lms.c:139:59
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	5 139 38 is_stmt 0              @ test/lms.c:139:38
	b	.LBB13_1
.LBB13_4:                               @ %for.end
	.loc	5 0 38                          @ test/lms.c:0:38
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 144 45 is_stmt 1              @ test/lms.c:144:45
	b	.LBB13_5
.LBB13_5:                               @ %for.cond2
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 144 40                        @ test/lms.c:144:40
	cmp	r0, #201
	beq	.LBB13_8
	b	.LBB13_6
.LBB13_6:                               @ %for.body4
                                        @   in Loop: Header=BB13_5 Depth=1
	.loc	5 145 30 is_stmt 1              @ test/lms.c:145:30
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, .LCPI13_0
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	.loc	5 145 44 is_stmt 0              @ test/lms.c:145:44
	vldr	s1, [r0, #4]
	sub	r0, r11, #84
	mov	r1, #20
	vldr	s2, .LCPI13_1
	vldr	s3, .LCPI13_2
	add	r2, sp, #24
	add	r3, sp, #20
	.loc	5 145 21                        @ test/lms.c:145:21
	bl	lms_calc
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	5 145 5                         @ test/lms.c:145:5
	ldr	r0, .LCPI13_3
	add	r0, r0, r1, lsl #2
	.loc	5 145 19                        @ test/lms.c:145:19
	vstr	s0, [r0]
	.loc	5 147 3 is_stmt 1               @ test/lms.c:147:3
	b	.LBB13_7
.LBB13_7:                               @ %for.inc9
                                        @   in Loop: Header=BB13_5 Depth=1
	.loc	5 144 60                        @ test/lms.c:144:60
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 144 40 is_stmt 0              @ test/lms.c:144:40
	b	.LBB13_5
.LBB13_8:                               @ %for.end11
	.loc	5 148 1 is_stmt 1               @ test/lms.c:148:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp27:
	.p2align	2
@ %bb.9:
	.loc	5 0 1 is_stmt 0                 @ test/lms.c:0:1
.LCPI13_0:
	.long	lms_input
.LCPI13_1:
	.long	0x3a79a934                      @ float 9.52380942E-4
.LCPI13_2:
	.long	0x3c23d70a                      @ float 0.00999999977
.LCPI13_3:
	.long	lms_output
.Lfunc_end13:
	.size	lms_main, .Lfunc_end13-lms_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_return                      @ -- Begin function lms_return
	.p2align	3
	.type	lms_return,%function
	.code	32                              @ @lms_return
lms_return:
.Lfunc_begin14:
	.loc	5 150 0 is_stmt 1               @ test/lms.c:150:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	r0, #0
	vldr	d0, .LCPI14_0
	vstr	d0, [sp, #16]                   @ 8-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
.Ltmp28:
	.loc	5 154 45 prologue_end           @ test/lms.c:154:45
	b	.LBB14_1
.LBB14_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	5 0 0 is_stmt 0                 @ test/lms.c:0:0
	vldr	d0, [sp, #16]                   @ 8-byte Reload
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	vstr	d0, [sp, #8]                    @ 8-byte Spill
	.loc	5 154 40                        @ test/lms.c:154:40
	cmp	r0, #201
	beq	.LBB14_4
	b	.LBB14_2
.LBB14_2:                               @ %for.body
                                        @   in Loop: Header=BB14_1 Depth=1
	.loc	5 156 3 is_stmt 1               @ test/lms.c:156:3
	b	.LBB14_3
.LBB14_3:                               @ %for.inc
                                        @   in Loop: Header=BB14_1 Depth=1
	.loc	5 155 12                        @ test/lms.c:155:12
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	vldr	d0, [sp, #8]                    @ 8-byte Reload
	ldr	r1, .LCPI14_1
	add	r1, r1, r0, lsl #2
	vldr	s2, [r1]
	vcvt.f64.f32	d1, s2
	.loc	5 155 9 is_stmt 0               @ test/lms.c:155:9
	vadd.f64	d0, d0, d1
	.loc	5 154 60 is_stmt 1              @ test/lms.c:154:60
	add	r0, r0, #1
	vstr	d0, [sp, #16]                   @ 8-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	5 154 40 is_stmt 0              @ test/lms.c:154:40
	b	.LBB14_1
.LBB14_4:                               @ %for.end
	.loc	5 0 40                          @ test/lms.c:0:40
	vldr	d0, [sp, #8]                    @ 8-byte Reload
	vldr	d1, .LCPI14_2
	.loc	5 158 33 is_stmt 1              @ test/lms.c:158:33
	vadd.f64	d0, d0, d1
	vldr	d1, .LCPI14_3
	.loc	5 158 26 is_stmt 0              @ test/lms.c:158:26
	vmul.f64	d0, d0, d1
	.loc	5 158 10                        @ test/lms.c:158:10
	vcvt.s32.f64	s0, d0
	vmov	r0, s0
	.loc	5 158 3                         @ test/lms.c:158:3
	add	sp, sp, #32
	bx	lr
.Ltmp29:
	.p2align	3
@ %bb.5:
	.loc	5 0 3                           @ test/lms.c:0:3
.LCPI14_0:
	.long	0                               @ double 0
	.long	0
.LCPI14_2:
	.long	6597070                         @ double 4.7057190000000002
	.long	1074975400
.LCPI14_3:
	.long	0                               @ double 1.0E+6
	.long	1093567616
.LCPI14_1:
	.long	lms_output
.Lfunc_end14:
	.size	lms_return, .Lfunc_end14-lms_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms                             @ -- Begin function lms
	.p2align	2
	.type	lms,%function
	.code	32                              @ @lms
lms:
.Lfunc_begin15:
	.loc	5 163 0 is_stmt 1               @ test/lms.c:163:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp30:
	.loc	5 164 3 prologue_end            @ test/lms.c:164:3
	bl	lms_init
	.loc	5 165 3                         @ test/lms.c:165:3
	bl	lms_main
	.loc	5 166 3                         @ test/lms.c:166:3
	bl	lms_return
	.loc	5 167 1                         @ test/lms.c:167:1
	pop	{r11, lr}
	bx	lr
.Ltmp31:
.Lfunc_end15:
	.size	lms, .Lfunc_end15-lms
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	exec                            @ -- Begin function exec
	.p2align	2
	.type	exec,%function
	.code	32                              @ @exec
exec:
.Lfunc_begin16:
	.file	6 "/workspaces/llvmta/testcases" "test/loopsinmultiplefunction.c" md5 0x8b4cdeeba7ed4514f232cacc7fc66b22
	.loc	6 1 0                           @ test/loopsinmultiplefunction.c:1:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	6 2 6 prologue_end              @ test/loopsinmultiplefunction.c:2:6
	b	.LBB16_1
.LBB16_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	6 0 6 is_stmt 0                 @ test/loopsinmultiplefunction.c:0:6
	mov	r0, #1
	.loc	6 2 2                           @ test/loopsinmultiplefunction.c:2:2
	cmp	r0, #0
	bne	.LBB16_4
	b	.LBB16_2
.LBB16_2:                               @ %for.body
                                        @   in Loop: Header=BB16_1 Depth=1
	.loc	6 5 2 is_stmt 1                 @ test/loopsinmultiplefunction.c:5:2
	b	.LBB16_3
.LBB16_3:                               @ %for.inc
                                        @   in Loop: Header=BB16_1 Depth=1
	.loc	6 2 2                           @ test/loopsinmultiplefunction.c:2:2
	b	.LBB16_1
.LBB16_4:                               @ %for.end
	.loc	6 0 2 is_stmt 0                 @ test/loopsinmultiplefunction.c:0:2
	mov	r0, #0
	.loc	6 6 2 is_stmt 1                 @ test/loopsinmultiplefunction.c:6:2
	bx	lr
.Ltmp32:
.Lfunc_end16:
	.size	exec, .Lfunc_end16-exec
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	a                               @ -- Begin function a
	.p2align	2
	.type	a,%function
	.code	32                              @ @a
a:
.Lfunc_begin17:
	.loc	6 9 0                           @ test/loopsinmultiplefunction.c:9:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp33:
	.loc	6 10 7 prologue_end             @ test/loopsinmultiplefunction.c:10:7
	b	.LBB17_1
.LBB17_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	6 0 0 is_stmt 0                 @ test/loopsinmultiplefunction.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	6 10 2                          @ test/loopsinmultiplefunction.c:10:2
	cmp	r0, #12
	beq	.LBB17_4
	b	.LBB17_2
.LBB17_2:                               @ %for.body
                                        @   in Loop: Header=BB17_1 Depth=1
	.loc	6 11 3 is_stmt 1                @ test/loopsinmultiplefunction.c:11:3
	bl	exec
	.loc	6 12 2                          @ test/loopsinmultiplefunction.c:12:2
	b	.LBB17_3
.LBB17_3:                               @ %for.inc
                                        @   in Loop: Header=BB17_1 Depth=1
	.loc	6 10 26                         @ test/loopsinmultiplefunction.c:10:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	6 10 2 is_stmt 0                @ test/loopsinmultiplefunction.c:10:2
	b	.LBB17_1
.LBB17_4:                               @ %for.end
	.loc	6 0 2                           @ test/loopsinmultiplefunction.c:0:2
	mov	r0, #1
	.loc	6 13 2 is_stmt 1                @ test/loopsinmultiplefunction.c:13:2
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp34:
.Lfunc_end17:
	.size	a, .Lfunc_end17-a
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	b                               @ -- Begin function b
	.p2align	2
	.type	b,%function
	.code	32                              @ @b
b:
.Lfunc_begin18:
	.loc	6 16 0                          @ test/loopsinmultiplefunction.c:16:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp35:
	.loc	6 17 7 prologue_end             @ test/loopsinmultiplefunction.c:17:7
	b	.LBB18_1
.LBB18_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	6 0 0 is_stmt 0                 @ test/loopsinmultiplefunction.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	6 17 2                          @ test/loopsinmultiplefunction.c:17:2
	cmp	r0, #5
	beq	.LBB18_4
	b	.LBB18_2
.LBB18_2:                               @ %for.body
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	6 18 3 is_stmt 1                @ test/loopsinmultiplefunction.c:18:3
	bl	exec
	.loc	6 19 2                          @ test/loopsinmultiplefunction.c:19:2
	b	.LBB18_3
.LBB18_3:                               @ %for.inc
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	6 17 25                         @ test/loopsinmultiplefunction.c:17:25
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	6 17 2 is_stmt 0                @ test/loopsinmultiplefunction.c:17:2
	b	.LBB18_1
.LBB18_4:                               @ %for.end
	.loc	6 0 2                           @ test/loopsinmultiplefunction.c:0:2
	mov	r0, #2
	.loc	6 20 2 is_stmt 1                @ test/loopsinmultiplefunction.c:20:2
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp36:
.Lfunc_end18:
	.size	b, .Lfunc_end18-b
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	loop                            @ -- Begin function loop
	.p2align	2
	.type	loop,%function
	.code	32                              @ @loop
loop:
.Lfunc_begin19:
	.loc	6 23 0                          @ test/loopsinmultiplefunction.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp37:
	.loc	6 24 6 prologue_end             @ test/loopsinmultiplefunction.c:24:6
	b	.LBB19_1
.LBB19_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	6 0 0 is_stmt 0                 @ test/loopsinmultiplefunction.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	6 24 2                          @ test/loopsinmultiplefunction.c:24:2
	cmp	r0, #3
	beq	.LBB19_4
	b	.LBB19_2
.LBB19_2:                               @ %for.body
                                        @   in Loop: Header=BB19_1 Depth=1
	.loc	6 25 3 is_stmt 1                @ test/loopsinmultiplefunction.c:25:3
	bl	a
	.loc	6 26 3                          @ test/loopsinmultiplefunction.c:26:3
	bl	b
	.loc	6 27 2                          @ test/loopsinmultiplefunction.c:27:2
	b	.LBB19_3
.LBB19_3:                               @ %for.inc
                                        @   in Loop: Header=BB19_1 Depth=1
	.loc	6 24 19                         @ test/loopsinmultiplefunction.c:24:19
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	6 24 2 is_stmt 0                @ test/loopsinmultiplefunction.c:24:2
	b	.LBB19_1
.LBB19_4:                               @ %for.end
	.loc	6 0 2                           @ test/loopsinmultiplefunction.c:0:2
	mov	r0, #0
	.loc	6 28 2 is_stmt 1                @ test/loopsinmultiplefunction.c:28:2
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp38:
.Lfunc_end19:
	.size	loop, .Lfunc_end19-loop
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	matmult                         @ -- Begin function matmult
	.p2align	2
	.type	matmult,%function
	.code	32                              @ @matmult
matmult:
.Lfunc_begin20:
	.file	7 "/workspaces/llvmta/testcases" "test/matmult.c" md5 0x9a184d8c1a3e835ab24813f22529d2a5
	.loc	7 53 0                          @ test/matmult.c:53:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp39:
	.loc	7 54 4 prologue_end             @ test/matmult.c:54:4
	bl	InitSeed
	.loc	7 61 4                          @ test/matmult.c:61:4
	ldr	r0, .LCPI20_0
	ldr	r1, .LCPI20_1
	ldr	r2, .LCPI20_2
	bl	Test
	.loc	7 62 1                          @ test/matmult.c:62:1
	pop	{r11, lr}
	bx	lr
.Ltmp40:
	.p2align	2
@ %bb.1:
	.loc	7 0 1 is_stmt 0                 @ test/matmult.c:0:1
.LCPI20_0:
	.long	ArrayA
.LCPI20_1:
	.long	ArrayB
.LCPI20_2:
	.long	ResultArray
.Lfunc_end20:
	.size	matmult, .Lfunc_end20-matmult
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	InitSeed                        @ -- Begin function InitSeed
	.p2align	2
	.type	InitSeed,%function
	.code	32                              @ @InitSeed
InitSeed:
.Lfunc_begin21:
	.loc	7 69 0 is_stmt 1                @ test/matmult.c:69:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	7 73 8 prologue_end             @ test/matmult.c:73:8
	ldr	r1, .LCPI21_0
	mov	r0, #0
	str	r0, [r1]
	.loc	7 74 1                          @ test/matmult.c:74:1
	bx	lr
.Ltmp41:
	.p2align	2
@ %bb.1:
	.loc	7 0 1 is_stmt 0                 @ test/matmult.c:0:1
.LCPI21_0:
	.long	Seed
.Lfunc_end21:
	.size	InitSeed, .Lfunc_end21-InitSeed
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	Test                            @ -- Begin function Test
	.p2align	2
	.type	Test,%function
	.code	32                              @ @Test
Test:
.Lfunc_begin22:
	.loc	7 82 0 is_stmt 1                @ test/matmult.c:82:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	str	r2, [r11, #-4]                  @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp42:
	.loc	7 88 4 prologue_end             @ test/matmult.c:88:4
	bl	Initialize
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	.loc	7 89 4                          @ test/matmult.c:89:4
	bl	Initialize
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	7 96 4                          @ test/matmult.c:96:4
	bl	Multiply
	.loc	7 105 1                         @ test/matmult.c:105:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp43:
.Lfunc_end22:
	.size	Test, .Lfunc_end22-Test
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	Initialize                      @ -- Begin function Initialize
	.p2align	2
	.type	Initialize,%function
	.code	32                              @ @Initialize
Initialize:
.Lfunc_begin23:
	.loc	7 112 0                         @ test/matmult.c:112:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #24
	str	r0, [r11, #-8]                  @ 4-byte Spill
	mov	r0, #0
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp44:
	.loc	7 115 9 prologue_end            @ test/matmult.c:115:9
	b	.LBB23_1
.LBB23_1:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB23_3 Depth 2
	.loc	7 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	7 115 4                         @ test/matmult.c:115:4
	cmp	r0, #20
	beq	.LBB23_8
	b	.LBB23_2
.LBB23_2:                               @ %for.body
                                        @   in Loop: Header=BB23_1 Depth=1
	.loc	7 0 4                           @ test/matmult.c:0:4
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 116 12 is_stmt 1              @ test/matmult.c:116:12
	b	.LBB23_3
.LBB23_3:                               @ %for.cond1
                                        @   Parent Loop BB23_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	7 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	7 116 7                         @ test/matmult.c:116:7
	cmp	r0, #20
	beq	.LBB23_6
	b	.LBB23_4
.LBB23_4:                               @ %for.body3
                                        @   in Loop: Header=BB23_3 Depth=2
	.loc	7 117 42 is_stmt 1              @ test/matmult.c:117:42
	bl	RandomInteger
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	7 117 10 is_stmt 0              @ test/matmult.c:117:10
	add	r3, r3, r3, lsl #2
	add	r1, r1, r3, lsl #4
	.loc	7 117 40                        @ test/matmult.c:117:40
	str	r0, [r1, r2, lsl #2]
	.loc	7 117 10                        @ test/matmult.c:117:10
	b	.LBB23_5
.LBB23_5:                               @ %for.inc
                                        @   in Loop: Header=BB23_3 Depth=2
	.loc	7 116 63 is_stmt 1              @ test/matmult.c:116:63
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 116 7 is_stmt 0               @ test/matmult.c:116:7
	b	.LBB23_3
.LBB23_6:                               @ %for.end
                                        @   in Loop: Header=BB23_1 Depth=1
	.loc	7 117 56 is_stmt 1              @ test/matmult.c:117:56
	b	.LBB23_7
.LBB23_7:                               @ %for.inc5
                                        @   in Loop: Header=BB23_1 Depth=1
	.loc	7 115 60                        @ test/matmult.c:115:60
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	7 115 4 is_stmt 0               @ test/matmult.c:115:4
	b	.LBB23_1
.LBB23_8:                               @ %for.end7
	.loc	7 118 1 is_stmt 1               @ test/matmult.c:118:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp45:
.Lfunc_end23:
	.size	Initialize, .Lfunc_end23-Initialize
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	Multiply                        @ -- Begin function Multiply
	.p2align	2
	.type	Multiply,%function
	.code	32                              @ @Multiply
Multiply:
.Lfunc_begin24:
	.loc	7 151 0                         @ test/matmult.c:151:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #36
	str	r2, [r11, #-16]                 @ 4-byte Spill
	str	r1, [r11, #-12]                 @ 4-byte Spill
	str	r0, [r11, #-8]                  @ 4-byte Spill
	mov	r0, #0
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp46:
	.loc	7 154 9 prologue_end            @ test/matmult.c:154:9
	b	.LBB24_1
.LBB24_1:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB24_3 Depth 2
                                        @       Child Loop BB24_5 Depth 3
	.loc	7 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	7 154 4                         @ test/matmult.c:154:4
	cmp	r0, #20
	beq	.LBB24_12
	b	.LBB24_2
.LBB24_2:                               @ %for.body
                                        @   in Loop: Header=BB24_1 Depth=1
	.loc	7 0 4                           @ test/matmult.c:0:4
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	7 155 12 is_stmt 1              @ test/matmult.c:155:12
	b	.LBB24_3
.LBB24_3:                               @ %for.cond1
                                        @   Parent Loop BB24_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB24_5 Depth 3
	.loc	7 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	7 155 7                         @ test/matmult.c:155:7
	cmp	r0, #20
	beq	.LBB24_10
	b	.LBB24_4
.LBB24_4:                               @ %for.body3
                                        @   in Loop: Header=BB24_3 Depth=2
	.loc	7 157 10 is_stmt 1              @ test/matmult.c:157:10
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r1, r1, r1, lsl #2
	add	r1, r0, r1, lsl #4
	mov	r0, #0
	.loc	7 157 29 is_stmt 0              @ test/matmult.c:157:29
	str	r0, [r1, r2, lsl #2]
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	7 158 15 is_stmt 1              @ test/matmult.c:158:15
	b	.LBB24_5
.LBB24_5:                               @ %for.cond5
                                        @   Parent Loop BB24_1 Depth=1
                                        @     Parent Loop BB24_3 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	.loc	7 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	7 158 10                        @ test/matmult.c:158:10
	cmp	r0, #20
	beq	.LBB24_8
	b	.LBB24_6
.LBB24_6:                               @ %for.body7
                                        @   in Loop: Header=BB24_5 Depth=3
	.loc	7 160 16 is_stmt 1              @ test/matmult.c:160:16
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	ldr	r12, [r11, #-12]                @ 4-byte Reload
	ldr	lr, [sp]                        @ 4-byte Reload
	ldr	r3, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r1, r1, r1, lsl #2
	add	r3, r3, r1, lsl #4
	ldr	r3, [r3, lr, lsl #2]
	.loc	7 160 34 is_stmt 0              @ test/matmult.c:160:34
	add	lr, lr, lr, lsl #2
	add	r12, r12, lr, lsl #4
	ldr	r12, [r12, r2, lsl #2]
	.loc	7 159 13 is_stmt 1              @ test/matmult.c:159:13
	add	r1, r0, r1, lsl #4
	.loc	7 159 32 is_stmt 0              @ test/matmult.c:159:32
	ldr	lr, [r1, r2, lsl #2]
	mla	r0, r3, r12, lr
	str	r0, [r1, r2, lsl #2]
	.loc	7 159 13                        @ test/matmult.c:159:13
	b	.LBB24_7
.LBB24_7:                               @ %for.inc
                                        @   in Loop: Header=BB24_5 Depth=3
	.loc	7 158 51 is_stmt 1              @ test/matmult.c:158:51
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	7 158 10 is_stmt 0              @ test/matmult.c:158:10
	b	.LBB24_5
.LBB24_8:                               @ %for.end
                                        @   in Loop: Header=BB24_3 Depth=2
	.loc	7 161 8 is_stmt 1               @ test/matmult.c:161:8
	b	.LBB24_9
.LBB24_9:                               @ %for.inc14
                                        @   in Loop: Header=BB24_3 Depth=2
	.loc	7 155 48                        @ test/matmult.c:155:48
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	7 155 7 is_stmt 0               @ test/matmult.c:155:7
	b	.LBB24_3
.LBB24_10:                              @ %for.end16
                                        @   in Loop: Header=BB24_1 Depth=1
	.loc	7 161 8 is_stmt 1               @ test/matmult.c:161:8
	b	.LBB24_11
.LBB24_11:                              @ %for.inc17
                                        @   in Loop: Header=BB24_1 Depth=1
	.loc	7 154 45                        @ test/matmult.c:154:45
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	7 154 4 is_stmt 0               @ test/matmult.c:154:4
	b	.LBB24_1
.LBB24_12:                              @ %for.end19
	.loc	7 162 1 is_stmt 1               @ test/matmult.c:162:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp47:
.Lfunc_end24:
	.size	Multiply, .Lfunc_end24-Multiply
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	RandomInteger                   @ -- Begin function RandomInteger
	.p2align	2
	.type	RandomInteger,%function
	.code	32                              @ @RandomInteger
RandomInteger:
.Lfunc_begin25:
	.loc	7 125 0                         @ test/matmult.c:125:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	7 126 13 prologue_end           @ test/matmult.c:126:13
	ldr	r1, .LCPI25_0
	ldr	r2, [r1]
	mov	r3, #133
	.loc	7 126 18 is_stmt 0              @ test/matmult.c:126:18
	mul	r0, r2, r3
	.loc	7 126 25                        @ test/matmult.c:126:25
	add	r0, r0, #81
	ldr	r12, .LCPI25_1
	.loc	7 126 31                        @ test/matmult.c:126:31
	smull	r2, r3, r0, r12
	asr	r2, r3, #9
	add	r3, r2, r3, lsr #31
	mov	r12, #159
	orr	r12, r12, #7936
	mul	r2, r3, r12
	sub	r0, r0, r2
	.loc	7 126 9                         @ test/matmult.c:126:9
	str	r0, [r1]
	.loc	7 127 4 is_stmt 1               @ test/matmult.c:127:4
	bx	lr
.Ltmp48:
	.p2align	2
@ %bb.1:
	.loc	7 0 4 is_stmt 0                 @ test/matmult.c:0:4
.LCPI25_0:
	.long	Seed
.LCPI25_1:
	.long	271652039                       @ 0x103114c7
.Lfunc_end25:
	.size	RandomInteger, .Lfunc_end25-RandomInteger
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_init                       @ -- Begin function ndes_init
	.p2align	2
	.type	ndes_init,%function
	.code	32                              @ @ndes_init
ndes_init:
.Lfunc_begin26:
	.file	8 "/workspaces/llvmta/testcases" "test/ndes.c" md5 0x6a4124562fff6afefc25084a1c1c3d13
	.loc	8 64 0 is_stmt 1                @ test/ndes.c:64:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
.Ltmp49:
	.loc	8 79 9 prologue_end             @ test/ndes.c:79:9
	b	.LBB26_1
.LBB26_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 79 3                          @ test/ndes.c:79:3
	cmp	r0, #57
	beq	.LBB26_4
	b	.LBB26_2
.LBB26_2:                               @ %for.body
                                        @   in Loop: Header=BB26_1 Depth=1
	.loc	8 80 22 is_stmt 1               @ test/ndes.c:80:22
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, .LCPI26_0
	ldrb	r0, [r0, r2]
	.loc	8 80 5 is_stmt 0                @ test/ndes.c:80:5
	ldr	r1, .LCPI26_1
	.loc	8 80 20                         @ test/ndes.c:80:20
	strb	r0, [r1, r2]
	.loc	8 80 5                          @ test/ndes.c:80:5
	b	.LBB26_3
.LBB26_3:                               @ %for.inc
                                        @   in Loop: Header=BB26_1 Depth=1
	.loc	8 79 25 is_stmt 1               @ test/ndes.c:79:25
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	8 79 3 is_stmt 0                @ test/ndes.c:79:3
	b	.LBB26_1
.LBB26_4:                               @ %for.end
	.loc	8 0 3                           @ test/ndes.c:0:3
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	8 82 9 is_stmt 1                @ test/ndes.c:82:9
	b	.LBB26_5
.LBB26_5:                               @ %for.cond2
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	8 82 3                          @ test/ndes.c:82:3
	cmp	r0, #49
	beq	.LBB26_8
	b	.LBB26_6
.LBB26_6:                               @ %for.body4
                                        @   in Loop: Header=BB26_5 Depth=1
	.loc	8 83 22 is_stmt 1               @ test/ndes.c:83:22
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, .LCPI26_2
	ldrb	r0, [r0, r2]
	.loc	8 83 5 is_stmt 0                @ test/ndes.c:83:5
	ldr	r1, .LCPI26_3
	.loc	8 83 20                         @ test/ndes.c:83:20
	strb	r0, [r1, r2]
	.loc	8 83 5                          @ test/ndes.c:83:5
	b	.LBB26_7
.LBB26_7:                               @ %for.inc7
                                        @   in Loop: Header=BB26_5 Depth=1
	.loc	8 82 25 is_stmt 1               @ test/ndes.c:82:25
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	8 82 3 is_stmt 0                @ test/ndes.c:82:3
	b	.LBB26_5
.LBB26_8:                               @ %for.end9
	.loc	8 85 14 is_stmt 1               @ test/ndes.c:85:14
	ldr	r1, .LCPI26_4
	mov	r0, #35
	str	r0, [r1]
	mov	r0, #26
	.loc	8 86 14                         @ test/ndes.c:86:14
	str	r0, [r1, #4]
	.loc	8 87 14                         @ test/ndes.c:87:14
	ldr	r1, .LCPI26_5
	mov	r0, #2
	str	r0, [r1]
	mov	r0, #16
	.loc	8 88 14                         @ test/ndes.c:88:14
	str	r0, [r1, #4]
	.loc	8 90 17                         @ test/ndes.c:90:17
	ldr	r0, .LCPI26_6
	ldr	r0, [r0]
	.loc	8 90 15 is_stmt 0               @ test/ndes.c:90:15
	ldr	r1, .LCPI26_7
	str	r0, [r1]
	.loc	8 91 12 is_stmt 1               @ test/ndes.c:91:12
	ldr	r1, .LCPI26_8
	str	r0, [r1]
	.loc	8 92 1                          @ test/ndes.c:92:1
	add	sp, sp, #16
	bx	lr
.Ltmp50:
	.p2align	2
@ %bb.9:
	.loc	8 0 1 is_stmt 0                 @ test/ndes.c:0:1
.LCPI26_0:
	.long	ndes_init.ndes_ipc1_tmp
.LCPI26_1:
	.long	ndes_ipc1
.LCPI26_2:
	.long	ndes_init.ndes_ipc2_tmp
.LCPI26_3:
	.long	ndes_ipc2
.LCPI26_4:
	.long	ndes_inp
.LCPI26_5:
	.long	ndes_key
.LCPI26_6:
	.long	ndes_value
.LCPI26_7:
	.long	ndes_newkey
.LCPI26_8:
	.long	ndes_isw
.Lfunc_end26:
	.size	ndes_init, .Lfunc_end26-ndes_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_des                        @ -- Begin function ndes_des
	.p2align	2
	.type	ndes_des,%function
	.code	32                              @ @ndes_des
ndes_des:
.Lfunc_begin27:
	.loc	8 98 0 is_stmt 1                @ test/ndes.c:98:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #200
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	ldr	r12, [r11, #16]
	str	r12, [r11, #-52]                @ 4-byte Spill
	ldr	r12, [r11, #12]
	str	r12, [r11, #-48]                @ 4-byte Spill
	ldr	r12, [r11, #8]
	str	r12, [r11, #-44]                @ 4-byte Spill
	str	r0, [r11, #-8]
	str	r1, [r11, #-4]
	str	r2, [r11, #-16]
	str	r3, [r11, #-12]
.Ltmp51:
	.loc	8 127 8 prologue_end            @ test/ndes.c:127:8
	ldr	r0, .LCPI27_0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB27_6
	b	.LBB27_1
.LBB27_1:                               @ %if.then
	.loc	8 128 14                        @ test/ndes.c:128:14
	ldr	r1, .LCPI27_0
	mov	r0, #0
	str	r0, [r1]
	.loc	8 129 19                        @ test/ndes.c:129:19
	ldr	r1, .LCPI27_1
	mov	r0, #1
	str	r0, [r1, #4]
	mov	r1, #2
	str	r1, [r11, #-60]                 @ 4-byte Spill
	str	r0, [r11, #-56]                 @ 4-byte Spill
	.loc	8 132 11                        @ test/ndes.c:132:11
	b	.LBB27_2
.LBB27_2:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [r11, #-60]                 @ 4-byte Reload
	ldr	r1, [r11, #-56]                 @ 4-byte Reload
	str	r1, [r11, #-68]                 @ 4-byte Spill
	str	r0, [r11, #-64]                 @ 4-byte Spill
	.loc	8 132 5                         @ test/ndes.c:132:5
	cmp	r0, #33
	beq	.LBB27_5
	b	.LBB27_3
.LBB27_3:                               @ %for.body
                                        @   in Loop: Header=BB27_2 Depth=1
	.loc	8 133 33 is_stmt 1              @ test/ndes.c:133:33
	ldr	r2, [r11, #-64]                 @ 4-byte Reload
	ldr	r0, [r11, #-68]                 @ 4-byte Reload
	lsl	r0, r0, #1
	str	r0, [r11, #-72]                 @ 4-byte Spill
	.loc	8 133 7 is_stmt 0               @ test/ndes.c:133:7
	ldr	r1, .LCPI27_1
	.loc	8 133 21                        @ test/ndes.c:133:21
	str	r0, [r1, r2, lsl #2]
	.loc	8 133 7                         @ test/ndes.c:133:7
	b	.LBB27_4
.LBB27_4:                               @ %for.inc
                                        @   in Loop: Header=BB27_2 Depth=1
	.loc	8 132 28 is_stmt 1              @ test/ndes.c:132:28
	ldr	r0, [r11, #-72]                 @ 4-byte Reload
	ldr	r1, [r11, #-64]                 @ 4-byte Reload
	add	r1, r1, #1
	str	r1, [r11, #-60]                 @ 4-byte Spill
	str	r0, [r11, #-56]                 @ 4-byte Spill
	.loc	8 132 5 is_stmt 0               @ test/ndes.c:132:5
	b	.LBB27_2
.LBB27_5:                               @ %for.end
	.loc	8 134 3 is_stmt 1               @ test/ndes.c:134:3
	b	.LBB27_6
.LBB27_6:                               @ %if.end
	.loc	8 136 8                         @ test/ndes.c:136:8
	ldr	r0, [r11, #-44]                 @ 4-byte Reload
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LBB27_16
	b	.LBB27_7
.LBB27_7:                               @ %if.then2
	.loc	8 0 8 is_stmt 0                 @ test/ndes.c:0:8
	ldr	r1, [r11, #-44]                 @ 4-byte Reload
	mov	r0, #0
	.loc	8 137 13 is_stmt 1              @ test/ndes.c:137:13
	str	r0, [r1]
	.loc	8 138 29                        @ test/ndes.c:138:29
	ldr	r1, .LCPI27_2
	str	r0, [r1]
	.loc	8 138 16 is_stmt 0              @ test/ndes.c:138:16
	str	r0, [r1, #4]
	mov	r0, #56
	mov	r1, #28
	str	r1, [r11, #-80]                 @ 4-byte Spill
	str	r0, [r11, #-76]                 @ 4-byte Spill
	.loc	8 141 11 is_stmt 1              @ test/ndes.c:141:11
	b	.LBB27_8
.LBB27_8:                               @ %for.cond3
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [r11, #-80]                 @ 4-byte Reload
	ldr	r1, [r11, #-76]                 @ 4-byte Reload
	str	r1, [r11, #-88]                 @ 4-byte Spill
	str	r0, [r11, #-84]                 @ 4-byte Spill
	.loc	8 141 5                         @ test/ndes.c:141:5
	cmp	r0, #0
	beq	.LBB27_11
	b	.LBB27_9
.LBB27_9:                               @ %for.body5
                                        @   in Loop: Header=BB27_8 Depth=1
	.loc	8 142 31 is_stmt 1              @ test/ndes.c:142:31
	ldr	r1, [r11, #-84]                 @ 4-byte Reload
	ldr	r0, .LCPI27_2
	str	r0, [r11, #-92]                 @ 4-byte Spill
	ldr	r0, [r0, #4]
	str	r0, [sp, #96]                   @ 4-byte Spill
	.loc	8 142 60 is_stmt 0              @ test/ndes.c:142:60
	ldr	r0, .LCPI27_3
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	8 142 42                        @ test/ndes.c:142:42
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	mov	r3, #32
	str	r3, [sp, #92]                   @ 4-byte Spill
	bl	ndes_getbit
	ldr	r1, [r11, #-88]                 @ 4-byte Reload
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	ldr	r12, [r11, #-92]                @ 4-byte Reload
	ldr	lr, [sp, #96]                   @ 4-byte Reload
	mov	r2, r0
	.loc	8 142 40                        @ test/ndes.c:142:40
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	orr	r2, r2, lr, lsl #1
	.loc	8 142 18                        @ test/ndes.c:142:18
	str	r2, [r12, #4]
	.loc	8 143 29 is_stmt 1              @ test/ndes.c:143:29
	ldr	r2, [r12]
	str	r2, [r11, #-96]                 @ 4-byte Spill
	.loc	8 143 31 is_stmt 0              @ test/ndes.c:143:31
	lsl	r2, r2, #1
	.loc	8 143 18                        @ test/ndes.c:143:18
	str	r2, [r12]
	.loc	8 144 55 is_stmt 1              @ test/ndes.c:144:55
	ldrb	r2, [r0, r1]
	.loc	8 144 37 is_stmt 0              @ test/ndes.c:144:37
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-12]
	bl	ndes_getbit
	ldr	r2, [r11, #-96]                 @ 4-byte Reload
	ldr	r1, [r11, #-92]                 @ 4-byte Reload
	.loc	8 144 35                        @ test/ndes.c:144:35
	orr	r0, r0, r2, lsl #1
	.loc	8 144 18                        @ test/ndes.c:144:18
	str	r0, [r1]
	.loc	8 145 5 is_stmt 1               @ test/ndes.c:145:5
	b	.LBB27_10
.LBB27_10:                              @ %for.inc13
                                        @   in Loop: Header=BB27_8 Depth=1
	.loc	8 141 36                        @ test/ndes.c:141:36
	ldr	r0, [r11, #-88]                 @ 4-byte Reload
	ldr	r1, [r11, #-84]                 @ 4-byte Reload
	sub	r1, r1, #1
	.loc	8 141 41 is_stmt 0              @ test/ndes.c:141:41
	sub	r0, r0, #1
	str	r1, [r11, #-80]                 @ 4-byte Spill
	str	r0, [r11, #-76]                 @ 4-byte Spill
	.loc	8 141 5                         @ test/ndes.c:141:5
	b	.LBB27_8
.LBB27_11:                              @ %for.end15
	.loc	8 0 5                           @ test/ndes.c:0:5
	mov	r0, #1
	str	r0, [sp, #88]                   @ 4-byte Spill
	.loc	8 148 11 is_stmt 1              @ test/ndes.c:148:11
	b	.LBB27_12
.LBB27_12:                              @ %for.cond16
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r0, [sp, #84]                   @ 4-byte Spill
	.loc	8 148 5                         @ test/ndes.c:148:5
	cmp	r0, #17
	beq	.LBB27_15
	b	.LBB27_13
.LBB27_13:                              @ %for.body19
                                        @   in Loop: Header=BB27_12 Depth=1
	.loc	8 149 12 is_stmt 1              @ test/ndes.c:149:12
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	add	r1, r0, r0, lsl #1
	ldr	r2, .LCPI27_4
	ldr	r1, [r2, r1, lsl #2]!
	str	r2, [sp, #80]                   @ 4-byte Spill
	str	r1, [r11, #-40]
	ldr	r1, [r2, #4]
	ldr	r2, [r2, #8]
	str	r2, [r11, #-32]
	str	r1, [r11, #-36]
	sub	r1, r11, #40
	.loc	8 150 7                         @ test/ndes.c:150:7
	bl	ndes_ks
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	.loc	8 151 18                        @ test/ndes.c:151:18
	ldr	r0, [r11, #-40]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-32]
	str	r3, [r1, #8]
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	8 152 5                         @ test/ndes.c:152:5
	b	.LBB27_14
.LBB27_14:                              @ %for.inc22
                                        @   in Loop: Header=BB27_12 Depth=1
	.loc	8 148 28                        @ test/ndes.c:148:28
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #88]                   @ 4-byte Spill
	.loc	8 148 5 is_stmt 0               @ test/ndes.c:148:5
	b	.LBB27_12
.LBB27_15:                              @ %for.end24
	.loc	8 153 3 is_stmt 1               @ test/ndes.c:153:3
	b	.LBB27_16
.LBB27_16:                              @ %if.end25
	.loc	8 0 3 is_stmt 0                 @ test/ndes.c:0:3
	mov	r0, #0
	.loc	8 155 19 is_stmt 1              @ test/ndes.c:155:19
	str	r0, [r11, #-28]
	.loc	8 155 10 is_stmt 0              @ test/ndes.c:155:10
	str	r0, [r11, #-24]
	mov	r0, #64
	mov	r1, #32
	str	r1, [sp, #72]                   @ 4-byte Spill
	str	r0, [sp, #76]                   @ 4-byte Spill
	.loc	8 158 9 is_stmt 1               @ test/ndes.c:158:9
	b	.LBB27_17
.LBB27_17:                              @ %for.cond26
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	str	r1, [sp, #64]                   @ 4-byte Spill
	str	r0, [sp, #68]                   @ 4-byte Spill
	.loc	8 158 3                         @ test/ndes.c:158:3
	cmp	r0, #0
	beq	.LBB27_20
	b	.LBB27_18
.LBB27_18:                              @ %for.body29
                                        @   in Loop: Header=BB27_17 Depth=1
	.loc	8 159 19 is_stmt 1              @ test/ndes.c:159:19
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	ldr	r0, [r11, #-24]
	str	r0, [sp, #48]                   @ 4-byte Spill
	.loc	8 159 21 is_stmt 0              @ test/ndes.c:159:21
	lsl	r0, r0, #1
	.loc	8 159 12                        @ test/ndes.c:159:12
	str	r0, [r11, #-24]
	.loc	8 160 45 is_stmt 1              @ test/ndes.c:160:45
	ldr	r0, .LCPI27_5
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	8 160 27 is_stmt 0              @ test/ndes.c:160:27
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	mov	r3, #32
	str	r3, [sp, #52]                   @ 4-byte Spill
	bl	ndes_getbit
	ldr	r12, [sp, #48]                  @ 4-byte Reload
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r3, [sp, #52]                   @ 4-byte Reload
	mov	r2, r0
	.loc	8 160 25                        @ test/ndes.c:160:25
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	orr	r2, r2, r12, lsl #1
	.loc	8 160 12                        @ test/ndes.c:160:12
	str	r2, [r11, #-24]
	.loc	8 161 19 is_stmt 1              @ test/ndes.c:161:19
	ldr	r2, [r11, #-28]
	str	r2, [sp, #60]                   @ 4-byte Spill
	.loc	8 161 21 is_stmt 0              @ test/ndes.c:161:21
	lsl	r2, r2, #1
	.loc	8 161 12                        @ test/ndes.c:161:12
	str	r2, [r11, #-28]
	.loc	8 162 45 is_stmt 1              @ test/ndes.c:162:45
	ldrb	r2, [r0, r1]
	.loc	8 162 27 is_stmt 0              @ test/ndes.c:162:27
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-4]
	bl	ndes_getbit
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	.loc	8 162 25                        @ test/ndes.c:162:25
	orr	r0, r0, r1, lsl #1
	.loc	8 162 12                        @ test/ndes.c:162:12
	str	r0, [r11, #-28]
	.loc	8 163 3 is_stmt 1               @ test/ndes.c:163:3
	b	.LBB27_19
.LBB27_19:                              @ %for.inc48
                                        @   in Loop: Header=BB27_17 Depth=1
	.loc	8 158 34                        @ test/ndes.c:158:34
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	sub	r1, r1, #1
	.loc	8 158 39 is_stmt 0              @ test/ndes.c:158:39
	sub	r0, r0, #1
	str	r1, [sp, #72]                   @ 4-byte Spill
	str	r0, [sp, #76]                   @ 4-byte Spill
	.loc	8 158 3                         @ test/ndes.c:158:3
	b	.LBB27_17
.LBB27_20:                              @ %for.end51
	.loc	8 0 3                           @ test/ndes.c:0:3
	mov	r0, #1
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	8 165 9 is_stmt 1               @ test/ndes.c:165:9
	b	.LBB27_21
.LBB27_21:                              @ %for.cond52
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	8 165 3                         @ test/ndes.c:165:3
	cmp	r0, #17
	beq	.LBB27_27
	b	.LBB27_22
.LBB27_22:                              @ %for.body55
                                        @   in Loop: Header=BB27_21 Depth=1
	.loc	8 166 12 is_stmt 1              @ test/ndes.c:166:12
	ldr	r0, [r11, #-48]                 @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB27_24
	b	.LBB27_23
.LBB27_23:                              @ %cond.true
                                        @   in Loop: Header=BB27_21 Depth=1
	.loc	8 166 26 is_stmt 0              @ test/ndes.c:166:26
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	rsb	r0, r0, #17
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	8 166 12                        @ test/ndes.c:166:12
	b	.LBB27_25
.LBB27_24:                              @ %cond.false
                                        @   in Loop: Header=BB27_21 Depth=1
	.loc	8 0 12                          @ test/ndes.c:0:12
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	8 166 12                        @ test/ndes.c:166:12
	b	.LBB27_25
.LBB27_25:                              @ %cond.end
                                        @   in Loop: Header=BB27_21 Depth=1
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	.loc	8 167 22 is_stmt 1              @ test/ndes.c:167:22
	ldr	r0, [r11, #-28]
	.loc	8 167 5 is_stmt 0               @ test/ndes.c:167:5
	add	r1, r1, r1, lsl #1
	ldr	r3, .LCPI27_4
	ldr	r1, [r3, r1, lsl #2]!
	ldr	r2, [r3, #4]
	ldr	r3, [r3, #8]
	mov	lr, sp
	sub	r12, r11, #20
	str	r12, [lr]
	bl	ndes_cyfun
	.loc	8 168 16 is_stmt 1              @ test/ndes.c:168:16
	ldr	r1, [r11, #-24]
	.loc	8 168 8 is_stmt 0               @ test/ndes.c:168:8
	ldr	r0, [r11, #-20]
	eor	r0, r0, r1
	str	r0, [r11, #-20]
	.loc	8 169 19 is_stmt 1              @ test/ndes.c:169:19
	ldr	r1, [r11, #-28]
	.loc	8 169 12 is_stmt 0              @ test/ndes.c:169:12
	str	r1, [r11, #-24]
	.loc	8 170 12 is_stmt 1              @ test/ndes.c:170:12
	str	r0, [r11, #-28]
	.loc	8 171 3                         @ test/ndes.c:171:3
	b	.LBB27_26
.LBB27_26:                              @ %for.inc64
                                        @   in Loop: Header=BB27_21 Depth=1
	.loc	8 165 26                        @ test/ndes.c:165:26
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	8 165 3 is_stmt 0               @ test/ndes.c:165:3
	b	.LBB27_21
.LBB27_27:                              @ %for.end66
	.loc	8 173 13 is_stmt 1              @ test/ndes.c:173:13
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	ldr	r0, [r11, #-24]
	.loc	8 173 6 is_stmt 0               @ test/ndes.c:173:6
	str	r0, [r11, #-20]
	.loc	8 174 17 is_stmt 1              @ test/ndes.c:174:17
	ldr	r2, [r11, #-28]
	.loc	8 174 10 is_stmt 0              @ test/ndes.c:174:10
	str	r2, [r11, #-24]
	.loc	8 175 10 is_stmt 1              @ test/ndes.c:175:10
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	8 176 27                        @ test/ndes.c:176:27
	str	r0, [r1]
	.loc	8 176 14 is_stmt 0              @ test/ndes.c:176:14
	str	r0, [r1, #4]
	mov	r0, #64
	mov	r1, #32
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	8 179 9 is_stmt 1               @ test/ndes.c:179:9
	b	.LBB27_28
.LBB27_28:                              @ %for.cond73
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	8 179 3                         @ test/ndes.c:179:3
	cmp	r0, #0
	beq	.LBB27_31
	b	.LBB27_29
.LBB27_29:                              @ %for.body76
                                        @   in Loop: Header=BB27_28 Depth=1
	.loc	8 180 27 is_stmt 1              @ test/ndes.c:180:27
	ldr	r2, [r11, #-52]                 @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r2, #4]
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 180 29 is_stmt 0              @ test/ndes.c:180:29
	lsl	r0, r0, #1
	.loc	8 180 16                        @ test/ndes.c:180:16
	str	r0, [r2, #4]
	.loc	8 181 54 is_stmt 1              @ test/ndes.c:181:54
	ldr	r0, .LCPI27_6
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	8 181 35 is_stmt 0              @ test/ndes.c:181:35
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	mov	r3, #32
	str	r3, [sp, #4]                    @ 4-byte Spill
	bl	ndes_getbit
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	ldr	r12, [r11, #-52]                @ 4-byte Reload
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	.loc	8 181 33                        @ test/ndes.c:181:33
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	orr	r2, r2, lr, lsl #1
	.loc	8 181 16                        @ test/ndes.c:181:16
	str	r2, [r12, #4]
	.loc	8 182 27 is_stmt 1              @ test/ndes.c:182:27
	ldr	r2, [r12]
	str	r2, [sp, #16]                   @ 4-byte Spill
	.loc	8 182 29 is_stmt 0              @ test/ndes.c:182:29
	lsl	r2, r2, #1
	.loc	8 182 16                        @ test/ndes.c:182:16
	str	r2, [r12]
	.loc	8 183 54 is_stmt 1              @ test/ndes.c:183:54
	ldrb	r2, [r0, r1]
	.loc	8 183 35 is_stmt 0              @ test/ndes.c:183:35
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	bl	ndes_getbit
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [r11, #-52]                 @ 4-byte Reload
	.loc	8 183 33                        @ test/ndes.c:183:33
	orr	r0, r0, r2, lsl #1
	.loc	8 183 16                        @ test/ndes.c:183:16
	str	r0, [r1]
	.loc	8 184 3 is_stmt 1               @ test/ndes.c:184:3
	b	.LBB27_30
.LBB27_30:                              @ %for.inc95
                                        @   in Loop: Header=BB27_28 Depth=1
	.loc	8 179 34                        @ test/ndes.c:179:34
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	sub	r1, r1, #1
	.loc	8 179 39 is_stmt 0              @ test/ndes.c:179:39
	sub	r0, r0, #1
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	8 179 3                         @ test/ndes.c:179:3
	b	.LBB27_28
.LBB27_31:                              @ %for.end98
	.loc	8 185 1 is_stmt 1               @ test/ndes.c:185:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp52:
	.p2align	2
@ %bb.32:
	.loc	8 0 1 is_stmt 0                 @ test/ndes.c:0:1
.LCPI27_0:
	.long	ndes_des.initflag
.LCPI27_1:
	.long	ndes_bit
.LCPI27_2:
	.long	ndes_icd
.LCPI27_3:
	.long	ndes_ipc1
.LCPI27_4:
	.long	ndes_des.kns
.LCPI27_5:
	.long	ndes_des.ip
.LCPI27_6:
	.long	ndes_des.ipm
.Lfunc_end27:
	.size	ndes_des, .Lfunc_end27-ndes_des
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_getbit                     @ -- Begin function ndes_getbit
	.p2align	2
	.type	ndes_getbit,%function
	.code	32                              @ @ndes_getbit
ndes_getbit:
.Lfunc_begin28:
	.loc	8 334 0 is_stmt 1               @ test/ndes.c:334:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r3, [sp, #4]                    @ 4-byte Spill
	str	r2, [sp, #8]                    @ 4-byte Spill
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	str	r0, [sp, #12]
	str	r1, [sp, #16]
.Ltmp53:
	.loc	8 335 8 prologue_end            @ test/ndes.c:335:8
	cmp	r2, r3
	bgt	.LBB28_2
	b	.LBB28_1
.LBB28_1:                               @ %if.then
	.loc	8 336 12                        @ test/ndes.c:336:12
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, .LCPI28_0
	ldr	r0, [r0, r1, lsl #2]
	.loc	8 336 39 is_stmt 0              @ test/ndes.c:336:39
	ldr	r1, [sp, #16]
	.loc	8 336 30                        @ test/ndes.c:336:30
	and	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	.loc	8 336 5                         @ test/ndes.c:336:5
	b	.LBB28_3
.LBB28_2:                               @ %if.else
	.loc	8 338 28 is_stmt 1              @ test/ndes.c:338:28
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r1, r0, r1
	.loc	8 338 12 is_stmt 0              @ test/ndes.c:338:12
	ldr	r0, .LCPI28_0
	ldr	r0, [r0, r1, lsl #2]
	.loc	8 338 47                        @ test/ndes.c:338:47
	ldr	r1, [sp, #12]
	.loc	8 338 38                        @ test/ndes.c:338:38
	and	r0, r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	.loc	8 338 5                         @ test/ndes.c:338:5
	b	.LBB28_3
.LBB28_3:                               @ %return
	.loc	8 0 5                           @ test/ndes.c:0:5
	ldr	r0, [sp]                        @ 4-byte Reload
	cmp	r0, #0
	movne	r0, #1
	.loc	8 339 1 is_stmt 1               @ test/ndes.c:339:1
	add	sp, sp, #20
	bx	lr
.Ltmp54:
	.p2align	2
@ %bb.4:
	.loc	8 0 1 is_stmt 0                 @ test/ndes.c:0:1
.LCPI28_0:
	.long	ndes_bit
.Lfunc_end28:
	.size	ndes_getbit, .Lfunc_end28-ndes_getbit
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_ks                         @ -- Begin function ndes_ks
	.p2align	2
	.type	ndes_ks,%function
	.code	32                              @ @ndes_ks
ndes_ks:
.Lfunc_begin29:
	.loc	8 342 0 is_stmt 1               @ test/ndes.c:342:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	sub	sp, sp, #64
	str	r1, [r11, #-16]                 @ 4-byte Spill
	str	r0, [r11, #-12]                 @ 4-byte Spill
.Ltmp55:
	.loc	8 345 15 prologue_end           @ test/ndes.c:345:15
	cmp	r0, #1
	beq	.LBB29_4
	b	.LBB29_1
.LBB29_1:                               @ %lor.lhs.false
	.loc	8 345 25 is_stmt 0              @ test/ndes.c:345:25
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #2
	beq	.LBB29_4
	b	.LBB29_2
.LBB29_2:                               @ %lor.lhs.false2
	.loc	8 345 35                        @ test/ndes.c:345:35
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #9
	beq	.LBB29_4
	b	.LBB29_3
.LBB29_3:                               @ %lor.lhs.false4
	.loc	8 345 8                         @ test/ndes.c:345:8
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	cmp	r0, #16
	bne	.LBB29_5
	b	.LBB29_4
.LBB29_4:                               @ %if.then
	.loc	8 346 29 is_stmt 1              @ test/ndes.c:346:29
	ldr	r1, .LCPI29_0
	ldr	r0, [r1, #4]
	.loc	8 346 55 is_stmt 0              @ test/ndes.c:346:55
	and	r2, r0, #1
	.loc	8 346 31                        @ test/ndes.c:346:31
	orr	r0, r0, r2, lsl #28
	.loc	8 346 65                        @ test/ndes.c:346:65
	lsr	r0, r0, #1
	.loc	8 346 16                        @ test/ndes.c:346:16
	str	r0, [r1, #4]
	.loc	8 347 29 is_stmt 1              @ test/ndes.c:347:29
	ldr	r0, [r1]
	.loc	8 347 55 is_stmt 0              @ test/ndes.c:347:55
	and	r2, r0, #1
	.loc	8 347 31                        @ test/ndes.c:347:31
	orr	r0, r0, r2, lsl #28
	.loc	8 347 65                        @ test/ndes.c:347:65
	lsr	r0, r0, #1
	.loc	8 347 16                        @ test/ndes.c:347:16
	str	r0, [r1]
	.loc	8 348 3 is_stmt 1               @ test/ndes.c:348:3
	b	.LBB29_10
.LBB29_5:                               @ %if.else
	.loc	8 0 3 is_stmt 0                 @ test/ndes.c:0:3
	mov	r0, #1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	8 350 11 is_stmt 1              @ test/ndes.c:350:11
	b	.LBB29_6
.LBB29_6:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	8 350 5                         @ test/ndes.c:350:5
	cmp	r0, #3
	beq	.LBB29_9
	b	.LBB29_7
.LBB29_7:                               @ %for.body
                                        @   in Loop: Header=BB29_6 Depth=1
	.loc	8 351 31 is_stmt 1              @ test/ndes.c:351:31
	ldr	r1, .LCPI29_0
	ldr	r0, [r1, #4]
	.loc	8 351 57 is_stmt 0              @ test/ndes.c:351:57
	and	r2, r0, #1
	.loc	8 351 33                        @ test/ndes.c:351:33
	orr	r0, r0, r2, lsl #28
	.loc	8 351 67                        @ test/ndes.c:351:67
	lsr	r0, r0, #1
	.loc	8 351 18                        @ test/ndes.c:351:18
	str	r0, [r1, #4]
	.loc	8 352 31 is_stmt 1              @ test/ndes.c:352:31
	ldr	r0, [r1]
	.loc	8 352 57 is_stmt 0              @ test/ndes.c:352:57
	and	r2, r0, #1
	.loc	8 352 33                        @ test/ndes.c:352:33
	orr	r0, r0, r2, lsl #28
	.loc	8 352 67                        @ test/ndes.c:352:67
	lsr	r0, r0, #1
	.loc	8 352 18                        @ test/ndes.c:352:18
	str	r0, [r1]
	.loc	8 353 5 is_stmt 1               @ test/ndes.c:353:5
	b	.LBB29_8
.LBB29_8:                               @ %for.inc
                                        @   in Loop: Header=BB29_6 Depth=1
	.loc	8 350 27                        @ test/ndes.c:350:27
	ldr	r0, [r11, #-24]                 @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	8 350 5 is_stmt 0               @ test/ndes.c:350:5
	b	.LBB29_6
.LBB29_9:                               @ %for.end
	.loc	8 0 5                           @ test/ndes.c:0:5
	b	.LBB29_10
.LBB29_10:                              @ %if.end
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	mov	r0, #0
	.loc	8 356 37 is_stmt 1              @ test/ndes.c:356:37
	str	r0, [r1]
	.loc	8 356 25 is_stmt 0              @ test/ndes.c:356:25
	str	r0, [r1, #4]
	.loc	8 356 13                        @ test/ndes.c:356:13
	str	r0, [r1, #8]
	mov	r0, #48
	mov	r1, #32
	mov	r2, #16
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [r11, #-32]                 @ 4-byte Spill
	str	r0, [r11, #-28]                 @ 4-byte Spill
	.loc	8 359 9 is_stmt 1               @ test/ndes.c:359:9
	b	.LBB29_11
.LBB29_11:                              @ %for.cond20
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0 is_stmt 0                 @ test/ndes.c:0:0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [r11, #-32]                 @ 4-byte Reload
	ldr	r2, [r11, #-28]                 @ 4-byte Reload
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	8 359 3                         @ test/ndes.c:359:3
	cmp	r0, #0
	beq	.LBB29_14
	b	.LBB29_12
.LBB29_12:                              @ %for.body22
                                        @   in Loop: Header=BB29_11 Depth=1
	.loc	8 360 25 is_stmt 1              @ test/ndes.c:360:25
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r4, [r2, #8]
	.loc	8 360 27 is_stmt 0              @ test/ndes.c:360:27
	lsl	r0, r4, #1
	.loc	8 360 15                        @ test/ndes.c:360:15
	str	r0, [r2, #8]
	.loc	8 362 40 is_stmt 1              @ test/ndes.c:362:40
	ldr	r0, .LCPI29_1
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldrb	r2, [r0, r1]
	.loc	8 362 17 is_stmt 0              @ test/ndes.c:362:17
	ldr	r1, .LCPI29_0
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	mov	r3, #28
	str	r3, [sp, #8]                    @ 4-byte Spill
	bl	ndes_getbit
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [r11, #-16]                 @ 4-byte Reload
	mov	r12, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r5, #255
	orr	r5, r5, #65280
	str	r5, [sp, #16]                   @ 4-byte Spill
	.loc	8 361 33 is_stmt 1              @ test/ndes.c:361:33
	and	r12, r12, r5
	.loc	8 361 31 is_stmt 0              @ test/ndes.c:361:31
	orr	r12, r12, r4, lsl #1
	.loc	8 361 15                        @ test/ndes.c:361:15
	str	r12, [lr, #8]
	.loc	8 363 25 is_stmt 1              @ test/ndes.c:363:25
	ldr	r4, [lr, #4]
	.loc	8 363 27 is_stmt 0              @ test/ndes.c:363:27
	lsl	r12, r4, #1
	.loc	8 363 15                        @ test/ndes.c:363:15
	str	r12, [lr, #4]
	.loc	8 365 40 is_stmt 1              @ test/ndes.c:365:40
	ldrb	r2, [r0, r2]
	.loc	8 365 17 is_stmt 0              @ test/ndes.c:365:17
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	bl	ndes_getbit
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [r11, #-16]                 @ 4-byte Reload
	mov	r12, r0
	.loc	8 364 33 is_stmt 1              @ test/ndes.c:364:33
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	and	r12, r12, r5
	.loc	8 364 31 is_stmt 0              @ test/ndes.c:364:31
	orr	r12, r12, r4, lsl #1
	.loc	8 364 15                        @ test/ndes.c:364:15
	str	r12, [lr, #4]
	.loc	8 366 25 is_stmt 1              @ test/ndes.c:366:25
	ldr	r12, [lr]
	str	r12, [sp, #20]                  @ 4-byte Spill
	.loc	8 366 27 is_stmt 0              @ test/ndes.c:366:27
	lsl	r12, r12, #1
	.loc	8 366 15                        @ test/ndes.c:366:15
	str	r12, [lr]
	.loc	8 368 40 is_stmt 1              @ test/ndes.c:368:40
	ldrb	r2, [r0, r2]
	.loc	8 368 17 is_stmt 0              @ test/ndes.c:368:17
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	bl	ndes_getbit
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	.loc	8 367 33 is_stmt 1              @ test/ndes.c:367:33
	and	r0, r0, r3
	.loc	8 367 31 is_stmt 0              @ test/ndes.c:367:31
	orr	r0, r0, r2, lsl #1
	.loc	8 367 15                        @ test/ndes.c:367:15
	str	r0, [r1]
	.loc	8 369 3 is_stmt 1               @ test/ndes.c:369:3
	b	.LBB29_13
.LBB29_13:                              @ %for.inc53
                                        @   in Loop: Header=BB29_11 Depth=1
	.loc	8 359 42                        @ test/ndes.c:359:42
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	sub	r2, r2, #1
	.loc	8 359 47 is_stmt 0              @ test/ndes.c:359:47
	sub	r1, r1, #1
	.loc	8 359 52                        @ test/ndes.c:359:52
	sub	r0, r0, #1
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [r11, #-32]                 @ 4-byte Spill
	str	r0, [r11, #-28]                 @ 4-byte Spill
	.loc	8 359 3                         @ test/ndes.c:359:3
	b	.LBB29_11
.LBB29_14:                              @ %for.end56
	.loc	8 370 1 is_stmt 1               @ test/ndes.c:370:1
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp56:
	.p2align	2
@ %bb.15:
	.loc	8 0 1 is_stmt 0                 @ test/ndes.c:0:1
.LCPI29_0:
	.long	ndes_icd
.LCPI29_1:
	.long	ndes_ipc2
.Lfunc_end29:
	.size	ndes_ks, .Lfunc_end29-ndes_ks
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_cyfun                      @ -- Begin function ndes_cyfun
	.p2align	2
	.type	ndes_cyfun,%function
	.code	32                              @ @ndes_cyfun
ndes_cyfun:
.Lfunc_begin30:
	.loc	8 189 0 is_stmt 1               @ test/ndes.c:189:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r10, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
	sub	sp, sp, #124
	str	r0, [sp, #44]                   @ 4-byte Spill
                                        @ kill: def $r0 killed $r3
                                        @ kill: def $r0 killed $r2
                                        @ kill: def $r0 killed $r1
	ldr	r0, [r11, #8]
	str	r0, [sp, #48]                   @ 4-byte Spill
	str	r1, [r11, #-28]
	str	r2, [r11, #-24]
	str	r3, [r11, #-20]
.Ltmp57:
	.loc	8 281 17 prologue_end           @ test/ndes.c:281:17
	ldr	r2, .LCPI30_0
	str	r2, [sp, #52]                   @ 4-byte Spill
	ldrb	r0, [r2]
	ldrb	r3, [r2, #1]
	ldrb	r1, [r2, #2]
	ldrb	r12, [r2, #3]
	orr	r1, r1, r12, lsl #8
	orr	r0, r0, r3, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-44]
	ldrb	r1, [r2, #13]
	mov	r3, r2
	ldrb	r0, [r3, #12]!
	orr	r0, r0, r1, lsl #8
	ldrb	r1, [r3, #2]
	ldrb	r3, [r3, #3]
	orr	r1, r1, r3, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-32]
	ldrb	r1, [r2, #9]
	mov	r3, r2
	ldrb	r0, [r3, #8]!
	orr	r0, r0, r1, lsl #8
	ldrb	r1, [r3, #2]
	ldrb	r3, [r3, #3]
	orr	r1, r1, r3, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-36]
	ldrb	r1, [r2, #5]
	ldrb	r0, [r2, #4]!
	orr	r0, r0, r1, lsl #8
	ldrb	r1, [r2, #2]
	ldrb	r2, [r2, #3]
	orr	r1, r1, r2, lsl #8
	orr	r0, r0, r1, lsl #16
	str	r0, [r11, #-40]
	mov	r0, #0
	.loc	8 290 22                        @ test/ndes.c:290:22
	str	r0, [r11, #-56]
	.loc	8 290 15 is_stmt 0              @ test/ndes.c:290:15
	str	r0, [r11, #-52]
	.loc	8 290 8                         @ test/ndes.c:290:8
	str	r0, [r11, #-48]
	mov	r0, #16
	.loc	8 293 11 is_stmt 1              @ test/ndes.c:293:11
	str	r0, [sp, #68]
	mov	r0, #48
	mov	r1, #32
	str	r1, [sp, #56]                   @ 4-byte Spill
	str	r0, [sp, #60]                   @ 4-byte Spill
	.loc	8 293 9 is_stmt 0               @ test/ndes.c:293:9
	b	.LBB30_1
.LBB30_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0                           @ test/ndes.c:0:0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	str	r1, [sp, #36]                   @ 4-byte Spill
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	8 293 33                        @ test/ndes.c:293:33
	ldr	r0, [sp, #68]
	.loc	8 293 3                         @ test/ndes.c:293:3
	cmp	r0, #1
	blt	.LBB30_4
	b	.LBB30_2
.LBB30_2:                               @ %for.body
                                        @   in Loop: Header=BB30_1 Depth=1
	.loc	8 294 17 is_stmt 1              @ test/ndes.c:294:17
	ldr	r3, [sp, #44]                   @ 4-byte Reload
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	ldr	r12, [r11, #-48]
	.loc	8 294 19 is_stmt 0              @ test/ndes.c:294:19
	lsl	r0, r12, #1
	.loc	8 294 38                        @ test/ndes.c:294:38
	ldr	r1, [sp, #68]
	.loc	8 294 33                        @ test/ndes.c:294:33
	ldr	lr, .LCPI30_4
	ldr	r1, [lr, r1, lsl #2]
	.loc	8 294 30                        @ test/ndes.c:294:30
	ldr	r2, .LCPI30_2
	ldr	r6, [r2, r1, lsl #2]
	mov	r1, #1
	.loc	8 294 26                        @ test/ndes.c:294:26
	orr	r12, r1, r12, lsl #1
	tst	r6, r3
	movne	r0, r12
	.loc	8 294 10                        @ test/ndes.c:294:10
	str	r0, [r11, #-48]
	.loc	8 295 17 is_stmt 1              @ test/ndes.c:295:17
	ldr	r12, [r11, #-52]
	.loc	8 295 19 is_stmt 0              @ test/ndes.c:295:19
	lsl	r0, r12, #1
	.loc	8 295 33                        @ test/ndes.c:295:33
	ldr	r5, [lr, r5, lsl #2]
	.loc	8 295 30                        @ test/ndes.c:295:30
	ldr	r5, [r2, r5, lsl #2]
	.loc	8 295 26                        @ test/ndes.c:295:26
	orr	r12, r1, r12, lsl #1
	tst	r5, r3
	movne	r0, r12
	.loc	8 295 10                        @ test/ndes.c:295:10
	str	r0, [r11, #-52]
	.loc	8 296 17 is_stmt 1              @ test/ndes.c:296:17
	ldr	r12, [r11, #-56]
	.loc	8 296 19 is_stmt 0              @ test/ndes.c:296:19
	lsl	r0, r12, #1
	.loc	8 296 33                        @ test/ndes.c:296:33
	ldr	lr, [lr, r4, lsl #2]
	.loc	8 296 30                        @ test/ndes.c:296:30
	ldr	r2, [r2, lr, lsl #2]
	.loc	8 296 26                        @ test/ndes.c:296:26
	orr	r1, r1, r12, lsl #1
	tst	r2, r3
	movne	r0, r1
	.loc	8 296 10                        @ test/ndes.c:296:10
	str	r0, [r11, #-56]
	.loc	8 297 3 is_stmt 1               @ test/ndes.c:297:3
	b	.LBB30_3
.LBB30_3:                               @ %for.inc
                                        @   in Loop: Header=BB30_1 Depth=1
	.loc	8 293 42                        @ test/ndes.c:293:42
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #68]
	sub	r2, r2, #1
	str	r2, [sp, #68]
	.loc	8 293 47 is_stmt 0              @ test/ndes.c:293:47
	sub	r1, r1, #1
	.loc	8 293 52                        @ test/ndes.c:293:52
	sub	r0, r0, #1
	str	r1, [sp, #56]                   @ 4-byte Spill
	str	r0, [sp, #60]                   @ 4-byte Spill
	.loc	8 293 3                         @ test/ndes.c:293:3
	b	.LBB30_1
.LBB30_4:                               @ %for.end
	.loc	8 298 13 is_stmt 1              @ test/ndes.c:298:13
	ldr	r1, [r11, #-20]
	.loc	8 298 8 is_stmt 0               @ test/ndes.c:298:8
	ldr	r0, [r11, #-48]
	eor	r0, r0, r1
	str	r0, [r11, #-48]
	.loc	8 299 13 is_stmt 1              @ test/ndes.c:299:13
	ldr	r1, [r11, #-24]
	.loc	8 299 8 is_stmt 0               @ test/ndes.c:299:8
	ldr	r0, [r11, #-52]
	eor	r0, r0, r1
	str	r0, [r11, #-52]
	.loc	8 300 13 is_stmt 1              @ test/ndes.c:300:13
	ldr	r1, [r11, #-28]
	.loc	8 300 8 is_stmt 0               @ test/ndes.c:300:8
	ldr	r0, [r11, #-56]
	eor	r0, r0, r1
	str	r0, [r11, #-56]
	.loc	8 302 35 is_stmt 1              @ test/ndes.c:302:35
	ldr	r0, [r11, #-56]
	.loc	8 301 35                        @ test/ndes.c:301:35
	ldr	r2, [r11, #-52]
	.loc	8 301 68 is_stmt 0              @ test/ndes.c:301:68
	ldr	r1, [r11, #-48]
	.loc	8 301 45                        @ test/ndes.c:301:45
	add	r1, r1, r2, lsl #16
	.loc	8 302 37 is_stmt 1              @ test/ndes.c:302:37
	lsl	r0, r0, #8
	.loc	8 302 44 is_stmt 0              @ test/ndes.c:302:44
	add	r2, r0, r2, lsr #8
	mov	r0, #1
	.loc	8 305 11 is_stmt 1              @ test/ndes.c:305:11
	str	r0, [sp, #68]
	mov	r0, #5
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	8 305 9 is_stmt 0               @ test/ndes.c:305:9
	b	.LBB30_5
.LBB30_5:                               @ %for.cond40
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0                           @ test/ndes.c:0:0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	8 305 23                        @ test/ndes.c:305:23
	ldr	r0, [sp, #68]
	.loc	8 305 3                         @ test/ndes.c:305:3
	cmp	r0, #4
	bgt	.LBB30_8
	b	.LBB30_6
.LBB30_6:                               @ %for.body42
                                        @   in Loop: Header=BB30_5 Depth=1
	.loc	8 306 16 is_stmt 1              @ test/ndes.c:306:16
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	and	r3, r1, #63
	.loc	8 306 10 is_stmt 0              @ test/ndes.c:306:10
	ldr	r12, [sp, #68]
	sub	r1, r11, #65
	.loc	8 306 14                        @ test/ndes.c:306:14
	strb	r3, [r1, r12]
	.loc	8 307 16 is_stmt 1              @ test/ndes.c:307:16
	and	r0, r0, #63
	.loc	8 307 14 is_stmt 0              @ test/ndes.c:307:14
	strb	r0, [r1, r2]
	.loc	8 310 3 is_stmt 1               @ test/ndes.c:310:3
	b	.LBB30_7
.LBB30_7:                               @ %for.inc50
                                        @   in Loop: Header=BB30_5 Depth=1
	.loc	8 309 12                        @ test/ndes.c:309:12
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	lsr	r2, r2, #6
	.loc	8 308 12                        @ test/ndes.c:308:12
	lsr	r1, r1, #6
	.loc	8 305 32                        @ test/ndes.c:305:32
	ldr	r3, [sp, #68]
	add	r3, r3, #1
	str	r3, [sp, #68]
	.loc	8 305 37 is_stmt 0              @ test/ndes.c:305:37
	add	r0, r0, #1
	str	r2, [sp, #24]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	8 305 3                         @ test/ndes.c:305:3
	b	.LBB30_5
.LBB30_8:                               @ %for.end52
	.loc	8 0 3                           @ test/ndes.c:0:3
	mov	r0, #8
	.loc	8 315 12 is_stmt 1              @ test/ndes.c:315:12
	str	r0, [sp, #64]
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 315 9 is_stmt 0               @ test/ndes.c:315:9
	b	.LBB30_9
.LBB30_9:                               @ %for.cond53
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 0 0                           @ test/ndes.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	8 315 17                        @ test/ndes.c:315:17
	ldr	r0, [sp, #64]
	.loc	8 315 3                         @ test/ndes.c:315:3
	cmp	r0, #1
	blt	.LBB30_12
	b	.LBB30_10
.LBB30_10:                              @ %for.body56
                                        @   in Loop: Header=BB30_9 Depth=1
	.loc	8 316 14 is_stmt 1              @ test/ndes.c:316:14
	ldr	r1, [sp, #64]
	sub	r0, r11, #65
	.loc	8 316 9 is_stmt 0               @ test/ndes.c:316:9
	ldrb	r0, [r0, r1]
	.loc	8 316 7                         @ test/ndes.c:316:7
	str	r0, [sp, #68]
	.loc	8 317 16 is_stmt 1              @ test/ndes.c:317:16
	ldr	r0, [sp, #68]
	.loc	8 317 26 is_stmt 0              @ test/ndes.c:317:26
	and	r2, r0, #1
	.loc	8 317 39                        @ test/ndes.c:317:39
	ldr	r0, [sp, #68]
	mov	r1, #1
	.loc	8 317 50                        @ test/ndes.c:317:50
	and	r0, r1, r0, lsr #5
	.loc	8 317 33                        @ test/ndes.c:317:33
	orr	r2, r0, r2, lsl #1
	.loc	8 318 16 is_stmt 1              @ test/ndes.c:318:16
	ldr	r0, [sp, #68]
	.loc	8 318 26 is_stmt 0              @ test/ndes.c:318:26
	and	r3, r0, #2
	.loc	8 318 37                        @ test/ndes.c:318:37
	ldr	r0, [sp, #68]
	.loc	8 318 39                        @ test/ndes.c:318:39
	and	r0, r0, #4
	.loc	8 318 33                        @ test/ndes.c:318:33
	orr	r0, r0, r3, lsl #2
	.loc	8 319 18 is_stmt 1              @ test/ndes.c:319:18
	ldr	r12, [sp, #68]
	mov	r3, #2
	.loc	8 319 28 is_stmt 0              @ test/ndes.c:319:28
	and	r3, r3, r12, lsr #2
	.loc	8 319 12                        @ test/ndes.c:319:12
	orr	r0, r0, r3
	.loc	8 319 41                        @ test/ndes.c:319:41
	ldr	r3, [sp, #68]
	.loc	8 319 52                        @ test/ndes.c:319:52
	and	r1, r1, r3, lsr #4
	.loc	8 319 35                        @ test/ndes.c:319:35
	orr	r0, r0, r1
	.loc	8 320 31 is_stmt 1              @ test/ndes.c:320:31
	ldr	r1, [sp, #64]
	.loc	8 320 11 is_stmt 0              @ test/ndes.c:320:11
	add	r3, r0, r0, lsl #3
	ldr	r0, .LCPI30_3
	add	r0, r0, r3, lsl #4
	add	r2, r2, r2, lsl #3
	add	r0, r0, r2, lsl #2
	ldr	r1, [r0, r1, lsl #2]
	sub	r0, r11, #44
	.loc	8 321 28 is_stmt 1              @ test/ndes.c:321:28
	ldrb	r0, [r0, r1]
	str	r0, [sp]                        @ 4-byte Spill
	.loc	8 322 3                         @ test/ndes.c:322:3
	b	.LBB30_11
.LBB30_11:                              @ %for.inc81
                                        @   in Loop: Header=BB30_9 Depth=1
	.loc	8 321 28                        @ test/ndes.c:321:28
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	and	r0, r0, #255
	.loc	8 321 26 is_stmt 0              @ test/ndes.c:321:26
	orr	r0, r0, r1, lsl #4
	.loc	8 315 28 is_stmt 1              @ test/ndes.c:315:28
	ldr	r1, [sp, #64]
	sub	r1, r1, #1
	str	r1, [sp, #64]
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	8 315 3 is_stmt 0               @ test/ndes.c:315:3
	b	.LBB30_9
.LBB30_12:                              @ %for.end83
	.loc	8 0 3                           @ test/ndes.c:0:3
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	mov	r0, #0
	.loc	8 324 9 is_stmt 1               @ test/ndes.c:324:9
	str	r0, [r1]
	mov	r0, #32
	.loc	8 328 11                        @ test/ndes.c:328:11
	str	r0, [sp, #68]
	.loc	8 328 9 is_stmt 0               @ test/ndes.c:328:9
	b	.LBB30_13
.LBB30_13:                              @ %for.cond84
                                        @ =>This Inner Loop Header: Depth=1
	.loc	8 328 17                        @ test/ndes.c:328:17
	ldr	r0, [sp, #68]
	.loc	8 328 3                         @ test/ndes.c:328:3
	cmp	r0, #1
	blt	.LBB30_16
	b	.LBB30_14
.LBB30_14:                              @ %for.body87
                                        @   in Loop: Header=BB30_13 Depth=1
	.loc	8 329 15 is_stmt 1              @ test/ndes.c:329:15
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r0, [r1]
	.loc	8 329 21 is_stmt 0              @ test/ndes.c:329:21
	lsl	r0, r0, #1
	.loc	8 329 11                        @ test/ndes.c:329:11
	str	r0, [r1]
	.loc	8 329 5                         @ test/ndes.c:329:5
	b	.LBB30_15
.LBB30_15:                              @ %for.inc89
                                        @   in Loop: Header=BB30_13 Depth=1
	.loc	8 328 26 is_stmt 1              @ test/ndes.c:328:26
	ldr	r0, [sp, #68]
	sub	r0, r0, #1
	str	r0, [sp, #68]
	.loc	8 328 3 is_stmt 0               @ test/ndes.c:328:3
	b	.LBB30_13
.LBB30_16:                              @ %for.end91
	.loc	8 330 22 is_stmt 1              @ test/ndes.c:330:22
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r2, [sp, #68]
	.loc	8 330 17 is_stmt 0              @ test/ndes.c:330:17
	ldr	r0, .LCPI30_1
	ldr	r2, [r0, r2, lsl #2]
	.loc	8 330 14                        @ test/ndes.c:330:14
	ldr	r0, .LCPI30_2
	ldr	r3, [r0, r2, lsl #2]
	.loc	8 330 9                         @ test/ndes.c:330:9
	ldr	r0, [r1]
	orr	r2, r0, #1
	tst	r3, r12
	movne	r0, r2
	str	r0, [r1]
	.loc	8 331 1 is_stmt 1               @ test/ndes.c:331:1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, lr}
	bx	lr
.Ltmp58:
	.p2align	2
@ %bb.17:
	.loc	8 0 1 is_stmt 0                 @ test/ndes.c:0:1
.LCPI30_0:
	.long	.L__const.ndes_cyfun.ibin
.LCPI30_1:
	.long	ndes_cyfun.ipp
.LCPI30_2:
	.long	ndes_bit
.LCPI30_3:
	.long	ndes_cyfun.is
.LCPI30_4:
	.long	ndes_cyfun.iet
.Lfunc_end30:
	.size	ndes_cyfun, .Lfunc_end30-ndes_cyfun
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_return                     @ -- Begin function ndes_return
	.p2align	2
	.type	ndes_return,%function
	.code	32                              @ @ndes_return
ndes_return:
.Lfunc_begin31:
	.loc	8 373 0 is_stmt 1               @ test/ndes.c:373:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	8 374 21 prologue_end           @ test/ndes.c:374:21
	ldr	r0, .LCPI31_0
	.loc	8 374 34 is_stmt 0              @ test/ndes.c:374:34
	ldr	r1, [r0]
	.loc	8 374 21                        @ test/ndes.c:374:21
	ldr	r0, [r0, #4]
	.loc	8 374 23                        @ test/ndes.c:374:23
	add	r0, r0, r1
	mov	r1, #2048
	orr	r1, r1, #8388608
	.loc	8 374 54                        @ test/ndes.c:374:54
	subs	r0, r0, r1
	movne	r0, #1
	.loc	8 374 3                         @ test/ndes.c:374:3
	bx	lr
.Ltmp59:
	.p2align	2
@ %bb.1:
	.loc	8 0 3                           @ test/ndes.c:0:3
.LCPI31_0:
	.long	ndes_icd
.Lfunc_end31:
	.size	ndes_return, .Lfunc_end31-ndes_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes_main                       @ -- Begin function ndes_main
	.p2align	2
	.type	ndes_main,%function
	.code	32                              @ @ndes_main
ndes_main:
.Lfunc_begin32:
	.loc	8 378 0 is_stmt 1               @ test/ndes.c:378:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	sub	sp, sp, #16
.Ltmp60:
	.loc	8 379 47 prologue_end           @ test/ndes.c:379:47
	ldr	r0, .LCPI32_0
	ldr	r12, [r0]
	.loc	8 379 3 is_stmt 0               @ test/ndes.c:379:3
	ldr	r1, .LCPI32_1
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	ldr	r3, .LCPI32_2
	ldr	r2, [r3]
	ldr	r3, [r3, #4]
	ldr	r4, .LCPI32_3
	mov	lr, sp
	str	r4, [lr, #8]
	str	r12, [lr, #4]
	ldr	r12, .LCPI32_4
	str	r12, [lr]
	bl	ndes_des
	.loc	8 380 1 is_stmt 1               @ test/ndes.c:380:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp61:
	.p2align	2
@ %bb.1:
	.loc	8 0 1 is_stmt 0                 @ test/ndes.c:0:1
.LCPI32_0:
	.long	ndes_isw
.LCPI32_1:
	.long	ndes_inp
.LCPI32_2:
	.long	ndes_key
.LCPI32_3:
	.long	ndes_out
.LCPI32_4:
	.long	ndes_newkey
.Lfunc_end32:
	.size	ndes_main, .Lfunc_end32-ndes_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	ndes                            @ -- Begin function ndes
	.p2align	2
	.type	ndes,%function
	.code	32                              @ @ndes
ndes:
.Lfunc_begin33:
	.loc	8 385 0 is_stmt 1               @ test/ndes.c:385:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp62:
	.loc	8 386 3 prologue_end            @ test/ndes.c:386:3
	bl	ndes_init
	.loc	8 387 3                         @ test/ndes.c:387:3
	bl	ndes_main
	.loc	8 389 12                        @ test/ndes.c:389:12
	bl	ndes_return
	.loc	8 389 3 is_stmt 0               @ test/ndes.c:389:3
	pop	{r11, lr}
	bx	lr
.Ltmp63:
.Lfunc_end33:
	.size	ndes, .Lfunc_end33-ndes
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_initSeed                  @ -- Begin function prime_initSeed
	.p2align	2
	.type	prime_initSeed,%function
	.code	32                              @ @prime_initSeed
prime_initSeed:
.Lfunc_begin34:
	.file	9 "/workspaces/llvmta/testcases" "test/prime.c" md5 0x93a752eea1599691c878402ecbe8f5e7
	.loc	9 49 0 is_stmt 1                @ test/prime.c:49:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	9 49 36 prologue_end            @ test/prime.c:49:36
	ldr	r1, .LCPI34_0
	mov	r0, #0
	str	r0, [r1]
	.loc	9 49 41 is_stmt 0               @ test/prime.c:49:41
	bx	lr
.Ltmp64:
	.p2align	2
@ %bb.1:
	.loc	9 0 41                          @ test/prime.c:0:41
.LCPI34_0:
	.long	prime_seed
.Lfunc_end34:
	.size	prime_initSeed, .Lfunc_end34-prime_initSeed
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_randomInteger             @ -- Begin function prime_randomInteger
	.p2align	2
	.type	prime_randomInteger,%function
	.code	32                              @ @prime_randomInteger
prime_randomInteger:
.Lfunc_begin35:
	.loc	9 51 0 is_stmt 1                @ test/prime.c:51:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	9 52 18 prologue_end            @ test/prime.c:52:18
	ldr	r0, .LCPI35_0
	ldr	r2, [r0]
	mov	r3, #133
	.loc	9 52 29 is_stmt 0               @ test/prime.c:52:29
	mul	r1, r2, r3
	.loc	9 52 36                         @ test/prime.c:52:36
	add	r1, r1, #81
	ldr	r12, .LCPI35_1
	.loc	9 52 42                         @ test/prime.c:52:42
	smull	r2, r3, r1, r12
	asr	r2, r3, #9
	add	r3, r2, r3, lsr #31
	mov	r12, #159
	orr	r12, r12, #7936
	mul	r2, r3, r12
	sub	r1, r1, r2
	.loc	9 52 14                         @ test/prime.c:52:14
	str	r1, [r0]
	.loc	9 53 11 is_stmt 1               @ test/prime.c:53:11
	ldr	r0, [r0]
	.loc	9 53 3 is_stmt 0                @ test/prime.c:53:3
	bx	lr
.Ltmp65:
	.p2align	2
@ %bb.1:
	.loc	9 0 3                           @ test/prime.c:0:3
.LCPI35_0:
	.long	prime_seed
.LCPI35_1:
	.long	271652039                       @ 0x103114c7
.Lfunc_end35:
	.size	prime_randomInteger, .Lfunc_end35-prime_randomInteger
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_init                      @ -- Begin function prime_init
	.p2align	2
	.type	prime_init,%function
	.code	32                              @ @prime_init
prime_init:
.Lfunc_begin36:
	.loc	9 56 0 is_stmt 1                @ test/prime.c:56:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp66:
	.loc	9 57 3 prologue_end             @ test/prime.c:57:3
	bl	prime_initSeed
	.loc	9 59 13                         @ test/prime.c:59:13
	bl	prime_randomInteger
	.loc	9 59 11 is_stmt 0               @ test/prime.c:59:11
	ldr	r1, .LCPI36_0
	str	r0, [r1]
	.loc	9 60 13 is_stmt 1               @ test/prime.c:60:13
	bl	prime_randomInteger
	.loc	9 60 11 is_stmt 0               @ test/prime.c:60:11
	ldr	r1, .LCPI36_1
	str	r0, [r1]
	.loc	9 61 1 is_stmt 1                @ test/prime.c:61:1
	pop	{r11, lr}
	bx	lr
.Ltmp67:
	.p2align	2
@ %bb.1:
	.loc	9 0 1 is_stmt 0                 @ test/prime.c:0:1
.LCPI36_0:
	.long	prime_x
.LCPI36_1:
	.long	prime_y
.Lfunc_end36:
	.size	prime_init, .Lfunc_end36-prime_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_return                    @ -- Begin function prime_return
	.p2align	2
	.type	prime_return,%function
	.code	32                              @ @prime_return
prime_return:
.Lfunc_begin37:
	.loc	9 63 0 is_stmt 1                @ test/prime.c:63:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	9 63 29 prologue_end            @ test/prime.c:63:29
	ldr	r0, .LCPI37_0
	ldr	r0, [r0]
	.loc	9 63 22 is_stmt 0               @ test/prime.c:63:22
	bx	lr
.Ltmp68:
	.p2align	2
@ %bb.1:
	.loc	9 0 22                          @ test/prime.c:0:22
.LCPI37_0:
	.long	prime_result
.Lfunc_end37:
	.size	prime_return, .Lfunc_end37-prime_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_divides                   @ -- Begin function prime_divides
	.p2align	2
	.type	prime_divides,%function
	.code	32                              @ @prime_divides
prime_divides:
.Lfunc_begin38:
	.loc	9 69 0 is_stmt 1                @ test/prime.c:69:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r1, r0
.Ltmp69:
	.loc	9 70 13 prologue_end            @ test/prime.c:70:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	bl	__umodsi3
	.loc	9 70 17 is_stmt 0               @ test/prime.c:70:17
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	.loc	9 70 3                          @ test/prime.c:70:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp70:
.Lfunc_end38:
	.size	prime_divides, .Lfunc_end38-prime_divides
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_even                      @ -- Begin function prime_even
	.p2align	2
	.type	prime_even,%function
	.code	32                              @ @prime_even
prime_even:
.Lfunc_begin39:
	.loc	9 73 0 is_stmt 1                @ test/prime.c:73:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r1, r0
	mov	r0, #2
.Ltmp71:
	.loc	9 73 52 prologue_end            @ test/prime.c:73:52
	bl	prime_divides
	.loc	9 73 44 is_stmt 0               @ test/prime.c:73:44
	pop	{r11, lr}
	bx	lr
.Ltmp72:
.Lfunc_end39:
	.size	prime_even, .Lfunc_end39-prime_even
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_prime                     @ -- Begin function prime_prime
	.p2align	2
	.type	prime_prime,%function
	.code	32                              @ @prime_prime
prime_prime:
.Lfunc_begin40:
	.loc	9 75 0 is_stmt 1                @ test/prime.c:75:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp73:
	.loc	9 77 7 prologue_end             @ test/prime.c:77:7
	bl	prime_even
	cmp	r0, #0
	beq	.LBB40_2
	b	.LBB40_1
.LBB40_1:                               @ %if.then
	.loc	9 78 15                         @ test/prime.c:78:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	sub	r0, r0, #2
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	9 78 5 is_stmt 0                @ test/prime.c:78:5
	b	.LBB40_9
.LBB40_2:                               @ %if.end
	.loc	9 0 5                           @ test/prime.c:0:5
	mov	r0, #3
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	9 79 42 is_stmt 1               @ test/prime.c:79:42
	b	.LBB40_3
.LBB40_3:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	9 0 0 is_stmt 0                 @ test/prime.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	str	r2, [sp]                        @ 4-byte Spill
	.loc	9 79 51                         @ test/prime.c:79:51
	mul	r0, r2, r2
	.loc	9 79 37                         @ test/prime.c:79:37
	cmp	r0, r1
	bhi	.LBB40_8
	b	.LBB40_4
.LBB40_4:                               @ %for.body
                                        @   in Loop: Header=BB40_3 Depth=1
	.loc	9 80 9 is_stmt 1                @ test/prime.c:80:9
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	bl	prime_divides
	cmp	r0, #0
	beq	.LBB40_6
	b	.LBB40_5
.LBB40_5:                               @ %if.then6
	.loc	9 0 9 is_stmt 0                 @ test/prime.c:0:9
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	9 81 7 is_stmt 1                @ test/prime.c:81:7
	b	.LBB40_9
.LBB40_6:                               @ %if.end7
                                        @   in Loop: Header=BB40_3 Depth=1
	.loc	9 82 3                          @ test/prime.c:82:3
	b	.LBB40_7
.LBB40_7:                               @ %for.inc
                                        @   in Loop: Header=BB40_3 Depth=1
	.loc	9 79 63                         @ test/prime.c:79:63
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	9 79 37 is_stmt 0               @ test/prime.c:79:37
	b	.LBB40_3
.LBB40_8:                               @ %for.end
	.loc	9 0 37                          @ test/prime.c:0:37
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	mov	r0, #0
	.loc	9 83 13 is_stmt 1               @ test/prime.c:83:13
	cmp	r1, #1
	movhi	r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	9 83 3 is_stmt 0                @ test/prime.c:83:3
	b	.LBB40_9
.LBB40_9:                               @ %return
	.loc	9 0 3                           @ test/prime.c:0:3
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	.loc	9 84 1 is_stmt 1                @ test/prime.c:84:1
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp74:
.Lfunc_end40:
	.size	prime_prime, .Lfunc_end40-prime_prime
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_swap                      @ -- Begin function prime_swap
	.p2align	2
	.type	prime_swap,%function
	.code	32                              @ @prime_swap
prime_swap:
.Lfunc_begin41:
	.loc	9 86 0                          @ test/prime.c:86:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r3, r0
.Ltmp75:
	.loc	9 87 22 prologue_end            @ test/prime.c:87:22
	ldr	r0, [r3]
	.loc	9 88 8                          @ test/prime.c:88:8
	ldr	r2, [r1]
	.loc	9 88 6 is_stmt 0                @ test/prime.c:88:6
	str	r2, [r3]
	.loc	9 89 6 is_stmt 1                @ test/prime.c:89:6
	str	r0, [r1]
	.loc	9 90 1                          @ test/prime.c:90:1
	bx	lr
.Ltmp76:
.Lfunc_end41:
	.size	prime_swap, .Lfunc_end41-prime_swap
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime_main                      @ -- Begin function prime_main
	.p2align	2
	.type	prime_main,%function
	.code	32                              @ @prime_main
prime_main:
.Lfunc_begin42:
	.loc	9 96 0                          @ test/prime.c:96:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
.Ltmp77:
	.loc	9 97 3 prologue_end             @ test/prime.c:97:3
	ldr	r0, .LCPI42_0
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r1, .LCPI42_1
	bl	prime_swap
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	9 99 33                         @ test/prime.c:99:33
	ldr	r0, [r0]
	.loc	9 99 21 is_stmt 0               @ test/prime.c:99:21
	bl	prime_prime
	mov	r1, r0
	mov	r0, #1
	.loc	9 99 42                         @ test/prime.c:99:42
	cmp	r1, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	bne	.LBB42_2
	b	.LBB42_1
.LBB42_1:                               @ %land.rhs
	.loc	9 99 58                         @ test/prime.c:99:58
	ldr	r0, .LCPI42_1
	ldr	r0, [r0]
	.loc	9 99 46                         @ test/prime.c:99:46
	bl	prime_prime
	.loc	9 99 45                         @ test/prime.c:99:45
	cmp	r0, #0
	movne	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB42_2
.LBB42_2:                               @ %land.end
	.loc	9 0 45                          @ test/prime.c:0:45
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	9 99 16                         @ test/prime.c:99:16
	ldr	r1, .LCPI42_2
	str	r0, [r1]
	.loc	9 100 1 is_stmt 1               @ test/prime.c:100:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp78:
	.p2align	2
@ %bb.3:
	.loc	9 0 1 is_stmt 0                 @ test/prime.c:0:1
.LCPI42_0:
	.long	prime_x
.LCPI42_1:
	.long	prime_y
.LCPI42_2:
	.long	prime_result
.Lfunc_end42:
	.size	prime_main, .Lfunc_end42-prime_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	prime                           @ -- Begin function prime
	.p2align	2
	.type	prime,%function
	.code	32                              @ @prime
prime:
.Lfunc_begin43:
	.loc	9 102 0 is_stmt 1               @ test/prime.c:102:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp79:
	.loc	9 103 3 prologue_end            @ test/prime.c:103:3
	bl	prime_init
	.loc	9 104 3                         @ test/prime.c:104:3
	bl	prime_main
	.loc	9 106 3                         @ test/prime.c:106:3
	bl	prime_return
	.loc	9 107 1                         @ test/prime.c:107:1
	pop	{r11, lr}
	bx	lr
.Ltmp80:
.Lfunc_end43:
	.size	prime, .Lfunc_end43-prime
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg_init                    @ -- Begin function rad2deg_init
	.p2align	2
	.type	rad2deg_init,%function
	.code	32                              @ @rad2deg_init
rad2deg_init:
.Lfunc_begin44:
	.file	10 "/workspaces/llvmta/testcases" "test/rad2deg.c" md5 0x401150ecf0d17ef01b67b50e09624238
	.loc	10 47 0                         @ test/rad2deg.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	10 48 13 prologue_end           @ test/rad2deg.c:48:13
	ldr	r1, .LCPI44_0
	mov	r0, #0
	str	r0, [r1]
	.loc	10 49 13                        @ test/rad2deg.c:49:13
	ldr	r1, .LCPI44_1
	str	r0, [r1]
	.loc	10 50 1                         @ test/rad2deg.c:50:1
	bx	lr
.Ltmp81:
	.p2align	2
@ %bb.1:
	.loc	10 0 1 is_stmt 0                @ test/rad2deg.c:0:1
.LCPI44_0:
	.long	rad2deg_X
.LCPI44_1:
	.long	rad2deg_Y
.Lfunc_end44:
	.size	rad2deg_init, .Lfunc_end44-rad2deg_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg_return                  @ -- Begin function rad2deg_return
	.p2align	2
	.type	rad2deg_return,%function
	.code	32                              @ @rad2deg_return
rad2deg_return:
.Lfunc_begin45:
	.loc	10 56 0 is_stmt 1               @ test/rad2deg.c:56:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #4
	.cfi_def_cfa_offset 4
.Ltmp82:
	.loc	10 57 14 prologue_end           @ test/rad2deg.c:57:14
	ldr	r0, .LCPI45_0
	vldr	s0, [r0]
	vcvt.s32.f32	s0, s0
	vmov	r0, s0
	mov	r1, #108
	orr	r1, r1, #64512
	.loc	10 59 7                         @ test/rad2deg.c:59:7
	cmp	r0, r1
	bne	.LBB45_2
	b	.LBB45_1
.LBB45_1:                               @ %if.then
	.loc	10 0 7 is_stmt 0                @ test/rad2deg.c:0:7
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	10 60 5 is_stmt 1               @ test/rad2deg.c:60:5
	b	.LBB45_3
.LBB45_2:                               @ %if.else
	.loc	10 0 5 is_stmt 0                @ test/rad2deg.c:0:5
	mvn	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	10 62 5 is_stmt 1               @ test/rad2deg.c:62:5
	b	.LBB45_3
.LBB45_3:                               @ %return
	.loc	10 0 0 is_stmt 0                @ test/rad2deg.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	10 63 1 is_stmt 1               @ test/rad2deg.c:63:1
	add	sp, sp, #4
	bx	lr
.Ltmp83:
	.p2align	2
@ %bb.4:
	.loc	10 0 1 is_stmt 0                @ test/rad2deg.c:0:1
.LCPI45_0:
	.long	rad2deg_Y
.Lfunc_end45:
	.size	rad2deg_return, .Lfunc_end45-rad2deg_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg_main                    @ -- Begin function rad2deg_main
	.p2align	2
	.type	rad2deg_main,%function
	.code	32                              @ @rad2deg_main
rad2deg_main:
.Lfunc_begin46:
	.loc	10 69 0 is_stmt 1               @ test/rad2deg.c:69:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #4
	.cfi_def_cfa_offset 4
	vldr	s0, .LCPI46_0
	vstr	s0, [sp]                        @ 4-byte Spill
.Ltmp84:
	.loc	10 70 45 prologue_end           @ test/rad2deg.c:70:45
	b	.LBB46_1
.LBB46_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	10 0 0 is_stmt 0                @ test/rad2deg.c:0:0
	vldr	s0, [sp]                        @ 4-byte Reload
	ldr	r0, .LCPI46_1
	vstr	s0, [r0]
	vldr	s2, .LCPI46_2
	.loc	10 70 40                        @ test/rad2deg.c:70:40
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB46_4
	b	.LBB46_2
.LBB46_2:                               @ %for.body
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	10 73 20 is_stmt 1              @ test/rad2deg.c:73:20
	ldr	r0, .LCPI46_1
	vldr	s0, [r0]
	vldr	s2, .LCPI46_3
	vmul.f32	s0, s0, s2
	vldr	s2, .LCPI46_4
	vdiv.f32	s2, s0, s2
	.loc	10 73 17 is_stmt 0              @ test/rad2deg.c:73:17
	ldr	r0, .LCPI46_5
	vldr	s0, [r0]
	vadd.f32	s0, s0, s2
	vstr	s0, [r0]
	.loc	10 73 7                         @ test/rad2deg.c:73:7
	b	.LBB46_3
.LBB46_3:                               @ %for.inc
                                        @   in Loop: Header=BB46_1 Depth=1
	.loc	10 72 55 is_stmt 1              @ test/rad2deg.c:72:55
	ldr	r0, .LCPI46_1
	vldr	s0, [r0]
	vldr	s2, .LCPI46_6
	vadd.f32	s0, s0, s2
	vstr	s0, [sp]                        @ 4-byte Spill
	.loc	10 70 40                        @ test/rad2deg.c:70:40
	b	.LBB46_1
.LBB46_4:                               @ %for.end
	.loc	10 74 1                         @ test/rad2deg.c:74:1
	add	sp, sp, #4
	bx	lr
.Ltmp85:
	.p2align	2
@ %bb.5:
	.loc	10 0 1 is_stmt 0                @ test/rad2deg.c:0:1
.LCPI46_0:
	.long	0x00000000                      @ float 0
.LCPI46_1:
	.long	rad2deg_X
.LCPI46_2:
	.long	0x40c8f5c5                      @ float 6.28000116
.LCPI46_3:
	.long	0x43340000                      @ float 180
.LCPI46_4:
	.long	0x4048f5c3                      @ float 3.1400001
.LCPI46_5:
	.long	rad2deg_Y
.LCPI46_6:
	.long	0x3c8ee7a7                      @ float 0.0174444448
.Lfunc_end46:
	.size	rad2deg_main, .Lfunc_end46-rad2deg_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg                         @ -- Begin function rad2deg
	.p2align	2
	.type	rad2deg,%function
	.code	32                              @ @rad2deg
rad2deg:
.Lfunc_begin47:
	.loc	10 76 0 is_stmt 1               @ test/rad2deg.c:76:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp86:
	.loc	10 77 3 prologue_end            @ test/rad2deg.c:77:3
	bl	rad2deg_init
	.loc	10 78 3                         @ test/rad2deg.c:78:3
	bl	rad2deg_main
	.loc	10 79 3                         @ test/rad2deg.c:79:3
	bl	rad2deg_return
	.loc	10 80 1                         @ test/rad2deg.c:80:1
	pop	{r11, lr}
	bx	lr
.Ltmp87:
.Lfunc_end47:
	.size	rad2deg, .Lfunc_end47-rad2deg
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin48:
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	11 23 0                         @ ../absvdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r2, r1
	str	r2, [sp]                        @ 4-byte Spill
	mov	r2, r0
	str	r2, [sp, #4]                    @ 4-byte Spill
.Ltmp88:
	.loc	11 25 11 prologue_end           @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	11 25 9 is_stmt 0               @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB48_2
	b	.LBB48_1
.LBB48_1:                               @ %if.then
	.loc	11 26 9 is_stmt 1               @ ../absvdi2.c:26:9
	ldr	r0, .LCPI48_0
	ldr	r2, .LCPI48_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB48_2:                               @ %if.end
	.loc	11 28 20                        @ ../absvdi2.c:28:20
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adds	r0, r0, r2, asr #31
	eor	r0, r0, r2, asr #31
	adc	r1, r2, r2, asr #31
	eor	r1, r1, r2, asr #31
	.loc	11 28 5 is_stmt 0               @ ../absvdi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp89:
	.p2align	2
@ %bb.3:
	.loc	11 0 5                          @ ../absvdi2.c:0:5
.LCPI48_0:
	.long	.L.str
.LCPI48_1:
	.long	.L__func__.__absvdi2
.Lfunc_end48:
	.size	__absvdi2, .Lfunc_end48-__absvdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.hidden	compilerrt_abort_impl           @ -- Begin function compilerrt_abort_impl
	.weak	compilerrt_abort_impl
	.p2align	2
	.type	compilerrt_abort_impl,%function
	.code	32                              @ @compilerrt_abort_impl
compilerrt_abort_impl:
.Lfunc_begin49:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end49:
	.size	compilerrt_abort_impl, .Lfunc_end49-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin50:
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	12 23 0 is_stmt 1               @ ../absvsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp90:
	.loc	12 25 9 prologue_end            @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB50_2
	b	.LBB50_1
.LBB50_1:                               @ %if.then
	.loc	12 26 9                         @ ../absvsi2.c:26:9
	ldr	r0, .LCPI50_0
	ldr	r2, .LCPI50_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB50_2:                               @ %if.end
	.loc	12 28 20                        @ ../absvsi2.c:28:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	bpl	.LBB50_4
@ %bb.3:                                @ %if.end
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
.LBB50_4:                               @ %if.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	12 28 5 is_stmt 0               @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp91:
	.p2align	2
@ %bb.5:
	.loc	12 0 5                          @ ../absvsi2.c:0:5
.LCPI50_0:
	.long	.L.str.1
.LCPI50_1:
	.long	.L__func__.__absvsi2
.Lfunc_end50:
	.size	__absvsi2, .Lfunc_end50-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin51:
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvdi3.c" md5 0xaa240ee8ce7c28b2c3bcec10a7603d3f
	.loc	13 23 0 is_stmt 1               @ ../addvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp92:
	.loc	13 24 27 prologue_end           @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	13 25 9                         @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB51_4
	b	.LBB51_1
.LBB51_1:                               @ %if.then
	.loc	13 27 15                        @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	13 27 13 is_stmt 0              @ ../addvdi3.c:27:13
	bge	.LBB51_3
	b	.LBB51_2
.LBB51_2:                               @ %if.then2
	.loc	13 28 13 is_stmt 1              @ ../addvdi3.c:28:13
	ldr	r0, .LCPI51_0
	ldr	r2, .LCPI51_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB51_3:                               @ %if.end
	.loc	13 29 5                         @ ../addvdi3.c:29:5
	b	.LBB51_7
.LBB51_4:                               @ %if.else
	.loc	13 32 15                        @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	13 32 13 is_stmt 0              @ ../addvdi3.c:32:13
	blt	.LBB51_6
	b	.LBB51_5
.LBB51_5:                               @ %if.then4
	.loc	13 33 13 is_stmt 1              @ ../addvdi3.c:33:13
	ldr	r0, .LCPI51_0
	ldr	r2, .LCPI51_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB51_6:                               @ %if.end5
	.loc	13 0 13 is_stmt 0               @ ../addvdi3.c:0:13
	b	.LBB51_7
.LBB51_7:                               @ %if.end6
	.loc	13 35 5 is_stmt 1               @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp93:
	.p2align	2
@ %bb.8:
	.loc	13 0 5 is_stmt 0                @ ../addvdi3.c:0:5
.LCPI51_0:
	.long	.L.str.2
.LCPI51_1:
	.long	.L__func__.__addvdi3
.Lfunc_end51:
	.size	__addvdi3, .Lfunc_end51-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin52:
	.file	14 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvsi3.c" md5 0x6cd4d40cc00928f1aaf6f29e299078cd
	.loc	14 23 0 is_stmt 1               @ ../addvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp94:
	.loc	14 24 27 prologue_end           @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	14 25 9                         @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB52_4
	b	.LBB52_1
.LBB52_1:                               @ %if.then
	.loc	14 27 13                        @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB52_3
	b	.LBB52_2
.LBB52_2:                               @ %if.then2
	.loc	14 28 13                        @ ../addvsi3.c:28:13
	ldr	r0, .LCPI52_0
	ldr	r2, .LCPI52_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB52_3:                               @ %if.end
	.loc	14 29 5                         @ ../addvsi3.c:29:5
	b	.LBB52_7
.LBB52_4:                               @ %if.else
	.loc	14 32 13                        @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB52_6
	b	.LBB52_5
.LBB52_5:                               @ %if.then4
	.loc	14 33 13                        @ ../addvsi3.c:33:13
	ldr	r0, .LCPI52_0
	ldr	r2, .LCPI52_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB52_6:                               @ %if.end5
	.loc	14 0 13 is_stmt 0               @ ../addvsi3.c:0:13
	b	.LBB52_7
.LBB52_7:                               @ %if.end6
	.loc	14 35 5 is_stmt 1               @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp95:
	.p2align	2
@ %bb.8:
	.loc	14 0 5 is_stmt 0                @ ../addvsi3.c:0:5
.LCPI52_0:
	.long	.L.str.3
.LCPI52_1:
	.long	.L__func__.__addvsi3
.Lfunc_end52:
	.size	__addvsi3, .Lfunc_end52-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin53:
	.file	15 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	15 25 0 is_stmt 1               @ ../ashldi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp96:
	.loc	15 29 15 prologue_end           @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	15 30 9                         @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB53_2
	b	.LBB53_1
.LBB53_1:                               @ %if.then
	.loc	15 0 9 is_stmt 0                @ ../ashldi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	15 32 22 is_stmt 1              @ ../ashldi3.c:32:22
	str	r0, [sp, #24]
	.loc	15 33 33                        @ ../ashldi3.c:33:33
	ldr	r0, [sp, #32]
	.loc	15 33 43 is_stmt 0              @ ../ashldi3.c:33:43
	sub	r1, r1, #32
	.loc	15 33 37                        @ ../ashldi3.c:33:37
	lsl	r0, r0, r1
	.loc	15 33 23                        @ ../ashldi3.c:33:23
	str	r0, [sp, #28]
	.loc	15 34 5 is_stmt 1               @ ../ashldi3.c:34:5
	b	.LBB53_5
.LBB53_2:                               @ %if.else
	.loc	15 37 13                        @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB53_4
	b	.LBB53_3
.LBB53_3:                               @ %if.then4
	.loc	15 0 13 is_stmt 0               @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	15 38 13 is_stmt 1              @ ../ashldi3.c:38:13
	b	.LBB53_6
.LBB53_4:                               @ %if.end
	.loc	15 39 33                        @ ../ashldi3.c:39:33
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #32]
	.loc	15 39 37 is_stmt 0              @ ../ashldi3.c:39:37
	lsl	r0, r0, r2
	.loc	15 39 23                        @ ../ashldi3.c:39:23
	str	r0, [sp, #24]
	.loc	15 40 56 is_stmt 1              @ ../ashldi3.c:40:56
	ldr	r1, [sp, #32]
	.loc	15 40 34 is_stmt 0              @ ../ashldi3.c:40:34
	ldr	r0, [sp, #36]
	.loc	15 40 39                        @ ../ashldi3.c:40:39
	lsl	r0, r0, r2
	.loc	15 40 77                        @ ../ashldi3.c:40:77
	rsb	r2, r2, #32
	.loc	15 40 45                        @ ../ashldi3.c:40:45
	orr	r0, r0, r1, lsr r2
	.loc	15 40 23                        @ ../ashldi3.c:40:23
	str	r0, [sp, #28]
	b	.LBB53_5
.LBB53_5:                               @ %if.end18
	.loc	15 42 19 is_stmt 1              @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	15 42 5 is_stmt 0               @ ../ashldi3.c:42:5
	b	.LBB53_6
.LBB53_6:                               @ %return
	.loc	15 0 0                          @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	15 43 1 is_stmt 1               @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp97:
.Lfunc_end53:
	.size	__ashldi3, .Lfunc_end53-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin54:
	.file	16 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	16 25 0                         @ ../ashrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp98:
	.loc	16 29 15 prologue_end           @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	16 30 9                         @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB54_2
	b	.LBB54_1
.LBB54_1:                               @ %if.then
	.loc	16 33 33                        @ ../ashrdi3.c:33:33
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	16 33 38 is_stmt 0              @ ../ashrdi3.c:33:38
	asr	r0, r0, #31
	.loc	16 33 23                        @ ../ashrdi3.c:33:23
	str	r0, [sp, #28]
	.loc	16 34 32 is_stmt 1              @ ../ashrdi3.c:34:32
	ldr	r0, [sp, #36]
	.loc	16 34 43 is_stmt 0              @ ../ashrdi3.c:34:43
	sub	r1, r1, #32
	.loc	16 34 37                        @ ../ashrdi3.c:34:37
	asr	r0, r0, r1
	.loc	16 34 22                        @ ../ashrdi3.c:34:22
	str	r0, [sp, #24]
	.loc	16 35 5 is_stmt 1               @ ../ashrdi3.c:35:5
	b	.LBB54_5
.LBB54_2:                               @ %if.else
	.loc	16 38 13                        @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB54_4
	b	.LBB54_3
.LBB54_3:                               @ %if.then7
	.loc	16 0 13 is_stmt 0               @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	16 39 13 is_stmt 1              @ ../ashrdi3.c:39:13
	b	.LBB54_6
.LBB54_4:                               @ %if.end
	.loc	16 40 34                        @ ../ashrdi3.c:40:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	16 40 39 is_stmt 0              @ ../ashrdi3.c:40:39
	asr	r0, r0, r2
	.loc	16 40 24                        @ ../ashrdi3.c:40:24
	str	r0, [sp, #28]
	.loc	16 41 72 is_stmt 1              @ ../ashrdi3.c:41:72
	ldr	r1, [sp, #32]
	.loc	16 41 33 is_stmt 0              @ ../ashrdi3.c:41:33
	ldr	r0, [sp, #36]
	.loc	16 41 55                        @ ../ashrdi3.c:41:55
	rsb	r3, r2, #32
	.loc	16 41 38                        @ ../ashrdi3.c:41:38
	lsl	r0, r0, r3
	.loc	16 41 61                        @ ../ashrdi3.c:41:61
	orr	r0, r0, r1, lsr r2
	.loc	16 41 22                        @ ../ashrdi3.c:41:22
	str	r0, [sp, #24]
	b	.LBB54_5
.LBB54_5:                               @ %if.end21
	.loc	16 43 19 is_stmt 1              @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	16 43 5 is_stmt 0               @ ../ashrdi3.c:43:5
	b	.LBB54_6
.LBB54_6:                               @ %return
	.loc	16 0 0                          @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	16 44 1 is_stmt 1               @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp99:
.Lfunc_end54:
	.size	__ashrdi3, .Lfunc_end54-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin55:
	.file	17 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	17 23 0                         @ ../clzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp100:
	.loc	17 25 11 prologue_end           @ ../clzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	17 27 49                        @ ../clzdi2.c:27:49
	ldr	r1, [sp]
	.loc	17 26 28                        @ ../clzdi2.c:26:28
	ldr	r2, [sp, #4]
	.loc	17 27 42                        @ ../clzdi2.c:27:42
	cmp	r2, #0
	mov	r0, r2
	moveq	r0, r1
	.loc	17 27 12 is_stmt 0              @ ../clzdi2.c:27:12
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r1, .LCPI55_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI55_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI55_2
	and	r0, r0, r1
	ldr	r1, .LCPI55_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	17 27 59                        @ ../clzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	17 27 5                         @ ../clzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp101:
	.p2align	2
@ %bb.1:
	.loc	17 0 5                          @ ../clzdi2.c:0:5
.LCPI55_0:
	.long	1431655765                      @ 0x55555555
.LCPI55_1:
	.long	858993459                       @ 0x33333333
.LCPI55_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI55_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end55:
	.size	__clzdi2, .Lfunc_end55-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin56:
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzsi2.c" md5 0x9b0156c55102d3143e17bdf85bafbc30
	.loc	18 23 0 is_stmt 1               @ ../clzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r3, r0
	mov	r2, #0
	cmp	r3, #65536
	movlo	r2, #1
.Ltmp102:
	.loc	18 25 40 prologue_end           @ ../clzsi2.c:25:40
	lsl	r0, r2, #4
	mov	r1, #16
	.loc	18 26 14                        @ ../clzsi2.c:26:14
	sub	r12, r1, r2, lsl #4
	.loc	18 26 7 is_stmt 0               @ ../clzsi2.c:26:7
	lsr	r2, r3, r12
	mov	r1, #65280
	.loc	18 29 13 is_stmt 1              @ ../clzsi2.c:29:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	mov	r3, #8
	.loc	18 30 13                        @ ../clzsi2.c:30:13
	sub	r12, r3, r1, lsl #3
	.loc	18 30 7 is_stmt 0               @ ../clzsi2.c:30:7
	lsr	r3, r2, r12
	.loc	18 31 7 is_stmt 1               @ ../clzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #240
	.loc	18 33 13                        @ ../clzsi2.c:33:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	mov	r2, #4
	.loc	18 34 13                        @ ../clzsi2.c:34:13
	sub	r12, r2, r1, lsl #2
	.loc	18 34 7 is_stmt 0               @ ../clzsi2.c:34:7
	lsr	r2, r3, r12
	.loc	18 35 7 is_stmt 1               @ ../clzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #12
	.loc	18 37 13                        @ ../clzsi2.c:37:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	lr, r1, r3
	mov	r1, #2
	.loc	18 38 13                        @ ../clzsi2.c:38:13
	sub	r12, r1, lr, lsl #1
	.loc	18 38 7 is_stmt 0               @ ../clzsi2.c:38:7
	lsr	r3, r2, r12
	.loc	18 39 7 is_stmt 1               @ ../clzsi2.c:39:7
	orr	r0, r0, lr, lsl #1
	.loc	18 52 20                        @ ../clzsi2.c:52:20
	sub	r1, r1, r2, lsr r12
	mvn	r2, #1
	.loc	18 52 37 is_stmt 0              @ ../clzsi2.c:52:37
	orr	r2, r2, r3, lsr #1
	add	r2, r2, #1
	.loc	18 52 25                        @ ../clzsi2.c:52:25
	and	r1, r1, r2
	.loc	18 52 14                        @ ../clzsi2.c:52:14
	add	r0, r0, r1
	.loc	18 52 5                         @ ../clzsi2.c:52:5
	pop	{r11, lr}
	bx	lr
.Ltmp103:
.Lfunc_end56:
	.size	__clzsi2, .Lfunc_end56-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin57:
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	19 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp104:
	.loc	19 26 11 prologue_end           @ ../cmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	19 28 11                        @ ../cmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	19 29 13                        @ ../cmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	19 29 24 is_stmt 0              @ ../cmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	19 29 9                         @ ../cmpdi2.c:29:9
	cmp	r0, r1
	bge	.LBB57_2
	b	.LBB57_1
.LBB57_1:                               @ %if.then
	.loc	19 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB57_9
.LBB57_2:                               @ %if.end
	.loc	19 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	19 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	19 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB57_4
	b	.LBB57_3
.LBB57_3:                               @ %if.then9
	.loc	19 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB57_9
.LBB57_4:                               @ %if.end10
	.loc	19 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	19 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	19 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB57_6
	b	.LBB57_5
.LBB57_5:                               @ %if.then15
	.loc	19 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB57_9
.LBB57_6:                               @ %if.end16
	.loc	19 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	19 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	19 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB57_8
	b	.LBB57_7
.LBB57_7:                               @ %if.then22
	.loc	19 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB57_9
.LBB57_8:                               @ %if.end23
	.loc	19 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	19 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB57_9
.LBB57_9:                               @ %return
	.loc	19 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	19 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp105:
.Lfunc_end57:
	.size	__cmpdi2, .Lfunc_end57-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin58:
	.loc	19 47 0                         @ ../cmpdi2.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp106:
	.loc	19 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	19 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	19 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp107:
.Lfunc_end58:
	.size	__aeabi_lcmp, .Lfunc_end58-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin59:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	20 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp108:
	.loc	20 25 11 prologue_end           @ ../ctzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	20 26 28                        @ ../ctzdi2.c:26:28
	ldr	r2, [sp]
	.loc	20 27 31                        @ ../ctzdi2.c:27:31
	ldr	r0, [sp, #4]
	.loc	20 27 41 is_stmt 0              @ ../ctzdi2.c:27:41
	cmp	r2, #0
	mov	r1, r2
	moveq	r1, r0
	.loc	20 27 12                        @ ../ctzdi2.c:27:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI59_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI59_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI59_2
	and	r0, r0, r1
	ldr	r1, .LCPI59_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	20 27 59                        @ ../ctzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	20 27 5                         @ ../ctzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp109:
	.p2align	2
@ %bb.1:
	.loc	20 0 5                          @ ../ctzdi2.c:0:5
.LCPI59_0:
	.long	1431655765                      @ 0x55555555
.LCPI59_1:
	.long	858993459                       @ 0x33333333
.LCPI59_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI59_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end59:
	.size	__ctzdi2, .Lfunc_end59-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin60:
	.file	21 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	21 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp110:
	.loc	21 25 20 prologue_end           @ ../ctzsi2.c:25:20
	and	r0, r2, r0
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	.loc	21 25 40 is_stmt 0              @ ../ctzsi2.c:25:40
	lsl	r0, r0, #4
	.loc	21 26 7 is_stmt 1               @ ../ctzsi2.c:26:7
	lsr	r3, r2, r0
	mov	r1, #255
	.loc	21 29 13                        @ ../ctzsi2.c:29:13
	and	r1, r1, r2, lsr r0
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	21 29 29 is_stmt 0              @ ../ctzsi2.c:29:29
	lsl	r12, r1, #3
	.loc	21 30 7 is_stmt 1               @ ../ctzsi2.c:30:7
	lsr	r2, r3, r12
	.loc	21 31 7                         @ ../ctzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #15
	.loc	21 33 13                        @ ../ctzsi2.c:33:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	.loc	21 33 27 is_stmt 0              @ ../ctzsi2.c:33:27
	lsl	r12, r1, #2
	.loc	21 34 7 is_stmt 1               @ ../ctzsi2.c:34:7
	lsr	r3, r2, r12
	.loc	21 35 7                         @ ../ctzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #3
	.loc	21 37 13                        @ ../ctzsi2.c:37:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	21 37 26 is_stmt 0              @ ../ctzsi2.c:37:26
	lsl	r12, r1, #1
	.loc	21 38 7 is_stmt 1               @ ../ctzsi2.c:38:7
	lsr	r2, r3, r12
	.loc	21 40 7                         @ ../ctzsi2.c:40:7
	orr	r0, r0, r1, lsl #1
	mov	r1, #1
	.loc	21 56 25                        @ ../ctzsi2.c:56:25
	and	r1, r1, r2, lsr #1
	.loc	21 56 20 is_stmt 0              @ ../ctzsi2.c:56:20
	rsb	r1, r1, #2
	mvn	r2, #1
	.loc	21 56 44                        @ ../ctzsi2.c:56:44
	orr	r2, r2, r3, lsr r12
	add	r2, r2, #1
	.loc	21 56 32                        @ ../ctzsi2.c:56:32
	and	r1, r1, r2
	.loc	21 56 14                        @ ../ctzsi2.c:56:14
	add	r0, r0, r1
	.loc	21 56 5                         @ ../ctzsi2.c:56:5
	bx	lr
.Ltmp111:
.Lfunc_end60:
	.size	__ctzsi2, .Lfunc_end60-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin61:
	.file	22 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divdi3.c" md5 0x281227589e0794a81d7211e4ee4a402c
	.loc	22 21 0 is_stmt 1               @ ../divdi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	lr, r3
	mov	r3, r1
                                        @ kill: def $r1 killed $lr
                                        @ kill: def $r1 killed $r2
                                        @ kill: def $r1 killed $r3
                                        @ kill: def $r1 killed $r0
.Ltmp112:
	.loc	22 23 20 prologue_end           @ ../divdi3.c:23:20
	asr	r12, r3, #31
	.loc	22 25 12                        @ ../divdi3.c:25:12
	eor	r0, r0, r3, asr #31
	eor	r1, r3, r3, asr #31
	.loc	22 25 19 is_stmt 0              @ ../divdi3.c:25:19
	subs	r0, r0, r3, asr #31
	sbc	r1, r1, r3, asr #31
	.loc	22 26 12 is_stmt 1              @ ../divdi3.c:26:12
	eor	r2, r2, lr, asr #31
	eor	r3, lr, lr, asr #31
	.loc	22 26 19 is_stmt 0              @ ../divdi3.c:26:19
	subs	r2, r2, lr, asr #31
	sbc	r3, r3, lr, asr #31
	.loc	22 27 9 is_stmt 1               @ ../divdi3.c:27:9
	eor	r12, r12, lr, asr #31
	str	r12, [sp, #4]                   @ 4-byte Spill
	.loc	22 28 13                        @ ../divdi3.c:28:13
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	22 28 44 is_stmt 0              @ ../divdi3.c:28:44
	eor	r1, r1, r2
	eor	r0, r0, r2
	.loc	22 28 51                        @ ../divdi3.c:28:51
	subs	r0, r0, r2
	sbc	r1, r1, r2
	.loc	22 28 5                         @ ../divdi3.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp113:
.Lfunc_end61:
	.size	__divdi3, .Lfunc_end61-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin62:
	.file	23 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmoddi4.c" md5 0xeca4b147be989cda91330ba5b56ed879
	.loc	23 25 0 is_stmt 1               @ ../udivmoddi4.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #88
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
	ldr	r12, [r11, #8]
	str	r12, [r11, #-36]                @ 4-byte Spill
.Ltmp114:
	.loc	23 29 11 prologue_end           @ ../udivmoddi4.c:29:11
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	.loc	23 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [r11, #-12]
	str	r2, [r11, #-16]
	.loc	23 36 13                        @ ../udivmoddi4.c:36:13
	ldr	r0, [r11, #-4]
	.loc	23 36 9 is_stmt 0               @ ../udivmoddi4.c:36:9
	cmp	r0, #0
	bne	.LBB62_8
	b	.LBB62_1
.LBB62_1:                               @ %if.then
	.loc	23 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	23 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB62_5
	b	.LBB62_2
.LBB62_2:                               @ %if.then5
	.loc	23 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_4
	b	.LBB62_3
.LBB62_3:                               @ %if.then6
	.loc	23 45 28                        @ ../udivmoddi4.c:45:28
	ldr	r0, [r11, #-8]
	.loc	23 45 38 is_stmt 0              @ ../udivmoddi4.c:45:38
	ldr	r1, [r11, #-16]
	.loc	23 45 32                        @ ../udivmoddi4.c:45:32
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	23 45 22                        @ ../udivmoddi4.c:45:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 45 17                        @ ../udivmoddi4.c:45:17
	b	.LBB62_4
.LBB62_4:                               @ %if.end
	.loc	23 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [r11, #-8]
	.loc	23 46 34 is_stmt 0              @ ../udivmoddi4.c:46:34
	ldr	r1, [r11, #-16]
	.loc	23 46 28                        @ ../udivmoddi4.c:46:28
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 46 13                        @ ../udivmoddi4.c:46:13
	b	.LBB62_56
.LBB62_5:                               @ %if.end16
	.loc	23 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_7
	b	.LBB62_6
.LBB62_6:                               @ %if.then18
	.loc	23 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	23 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB62_7
.LBB62_7:                               @ %if.end22
	.loc	23 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB62_56
.LBB62_8:                               @ %if.end23
	.loc	23 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	23 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB62_26
	b	.LBB62_9
.LBB62_9:                               @ %if.then28
	.loc	23 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	23 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB62_13
	b	.LBB62_10
.LBB62_10:                              @ %if.then33
	.loc	23 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_12
	b	.LBB62_11
.LBB62_11:                              @ %if.then35
	.loc	23 66 28                        @ ../udivmoddi4.c:66:28
	ldr	r0, [r11, #-4]
	.loc	23 66 39 is_stmt 0              @ ../udivmoddi4.c:66:39
	ldr	r1, [r11, #-16]
	.loc	23 66 33                        @ ../udivmoddi4.c:66:33
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	23 66 22                        @ ../udivmoddi4.c:66:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 66 17                        @ ../udivmoddi4.c:66:17
	b	.LBB62_12
.LBB62_12:                              @ %if.end42
	.loc	23 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [r11, #-4]
	.loc	23 67 35 is_stmt 0              @ ../udivmoddi4.c:67:35
	ldr	r1, [r11, #-16]
	.loc	23 67 29                        @ ../udivmoddi4.c:67:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 67 13                        @ ../udivmoddi4.c:67:13
	b	.LBB62_56
.LBB62_13:                              @ %if.end49
	.loc	23 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	23 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB62_17
	b	.LBB62_14
.LBB62_14:                              @ %if.then54
	.loc	23 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_16
	b	.LBB62_15
.LBB62_15:                              @ %if.then56
	.loc	23 78 32                        @ ../udivmoddi4.c:78:32
	ldr	r0, [r11, #-4]
	.loc	23 78 43 is_stmt 0              @ ../udivmoddi4.c:78:43
	ldr	r1, [r11, #-12]
	.loc	23 78 37                        @ ../udivmoddi4.c:78:37
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	.loc	23 78 26                        @ ../udivmoddi4.c:78:26
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	23 79 25 is_stmt 1              @ ../udivmoddi4.c:79:25
	str	r0, [r11, #-32]
	.loc	23 80 26                        @ ../udivmoddi4.c:80:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	23 80 22 is_stmt 0              @ ../udivmoddi4.c:80:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 81 13 is_stmt 1              @ ../udivmoddi4.c:81:13
	b	.LBB62_16
.LBB62_16:                              @ %if.end67
	.loc	23 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [r11, #-4]
	.loc	23 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [r11, #-12]
	.loc	23 82 29                        @ ../udivmoddi4.c:82:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 82 13                        @ ../udivmoddi4.c:82:13
	b	.LBB62_56
.LBB62_17:                              @ %if.end74
	.loc	23 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	23 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	23 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB62_21
	b	.LBB62_18
.LBB62_18:                              @ %if.then81
	.loc	23 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_20
	b	.LBB62_19
.LBB62_19:                              @ %if.then83
	.loc	23 92 31                        @ ../udivmoddi4.c:92:31
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	23 92 25 is_stmt 0              @ ../udivmoddi4.c:92:25
	str	r0, [r11, #-32]
	.loc	23 93 32 is_stmt 1              @ ../udivmoddi4.c:93:32
	ldr	r0, [r11, #-4]
	.loc	23 93 44 is_stmt 0              @ ../udivmoddi4.c:93:44
	ldr	r2, [r11, #-12]
	.loc	23 93 49                        @ ../udivmoddi4.c:93:49
	sub	r2, r2, #1
	.loc	23 93 37                        @ ../udivmoddi4.c:93:37
	and	r0, r0, r2
	.loc	23 93 26                        @ ../udivmoddi4.c:93:26
	str	r0, [r11, #-28]
	.loc	23 94 26 is_stmt 1              @ ../udivmoddi4.c:94:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	23 94 22 is_stmt 0              @ ../udivmoddi4.c:94:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 95 13 is_stmt 1              @ ../udivmoddi4.c:95:13
	b	.LBB62_20
.LBB62_20:                              @ %if.end97
	.loc	23 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	23 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	23 96 32                        @ ../udivmoddi4.c:96:32
	sub	r1, r2, #1
	bic	r1, r1, r2
	ldr	r2, .LCPI62_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI62_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI62_2
	and	r2, r1, r2
	ldr	r3, .LCPI62_3
	mul	r1, r2, r3
	lsr	r1, r1, #24
	.loc	23 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB62_56
.LBB62_21:                              @ %if.end103
	.loc	23 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	23 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI62_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI62_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI62_2
	and	r1, r0, r2
	ldr	r3, .LCPI62_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	23 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r1, [r11, #-4]
	.loc	23 102 40                       @ ../udivmoddi4.c:102:40
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	and	r12, r12, r1, lsr #1
	sub	r1, r1, r12
	and	r12, lr, r1, lsr #2
	and	r1, r1, lr
	add	r1, r1, r12
	add	r1, r1, r1, lsr #4
	and	r2, r1, r2
	mul	r1, r2, r3
	.loc	23 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	23 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	blo	.LBB62_25
	b	.LBB62_22
.LBB62_22:                              @ %if.then111
	.loc	23 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_24
	b	.LBB62_23
.LBB62_23:                              @ %if.then113
	.loc	23 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	23 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB62_24
.LBB62_24:                              @ %if.end115
	.loc	23 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB62_56
.LBB62_25:                              @ %if.end116
	.loc	23 110 9                        @ ../udivmoddi4.c:110:9
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	add	r0, r2, #1
	mov	r1, #0
	.loc	23 113 17                       @ ../udivmoddi4.c:113:17
	str	r1, [r11, #-24]
	.loc	23 114 24                       @ ../udivmoddi4.c:114:24
	ldr	r1, [r11, #-8]
	.loc	23 114 45 is_stmt 0             @ ../udivmoddi4.c:114:45
	rsb	r3, r2, #31
	.loc	23 114 28                       @ ../udivmoddi4.c:114:28
	lsl	r1, r1, r3
	.loc	23 114 18                       @ ../udivmoddi4.c:114:18
	str	r1, [r11, #-20]
	.loc	23 116 24 is_stmt 1             @ ../udivmoddi4.c:116:24
	ldr	r1, [r11, #-4]
	.loc	23 116 29 is_stmt 0             @ ../udivmoddi4.c:116:29
	lsr	r1, r1, r0
	.loc	23 116 18                       @ ../udivmoddi4.c:116:18
	str	r1, [r11, #-28]
	.loc	23 117 60 is_stmt 1             @ ../udivmoddi4.c:117:60
	ldr	r2, [r11, #-8]
	.loc	23 117 24 is_stmt 0             @ ../udivmoddi4.c:117:24
	ldr	r1, [r11, #-4]
	.loc	23 117 29                       @ ../udivmoddi4.c:117:29
	lsl	r1, r1, r3
	.loc	23 117 53                       @ ../udivmoddi4.c:117:53
	orr	r1, r1, r2, lsr r0
	.loc	23 117 17                       @ ../udivmoddi4.c:117:17
	str	r1, [r11, #-32]
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	23 118 5 is_stmt 1              @ ../udivmoddi4.c:118:5
	b	.LBB62_49
.LBB62_26:                              @ %if.else
	.loc	23 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	23 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB62_40
	b	.LBB62_27
.LBB62_27:                              @ %if.then142
	.loc	23 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	23 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB62_33
	b	.LBB62_28
.LBB62_28:                              @ %if.then151
	.loc	23 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_30
	b	.LBB62_29
.LBB62_29:                              @ %if.then153
	.loc	23 130 32                       @ ../udivmoddi4.c:130:32
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	23 130 43 is_stmt 0             @ ../udivmoddi4.c:130:43
	ldr	r2, [r11, #-16]
	.loc	23 130 47                       @ ../udivmoddi4.c:130:47
	sub	r2, r2, #1
	.loc	23 130 36                       @ ../udivmoddi4.c:130:36
	and	r0, r0, r2
	mov	r2, #0
	.loc	23 130 26                       @ ../udivmoddi4.c:130:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 130 21                       @ ../udivmoddi4.c:130:21
	b	.LBB62_30
.LBB62_30:                              @ %if.end161
	.loc	23 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	23 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB62_32
	b	.LBB62_31
.LBB62_31:                              @ %if.then166
	.loc	23 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB62_56
.LBB62_32:                              @ %if.end168
	.loc	23 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	23 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI62_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI62_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI62_2
	and	r0, r0, r1
	ldr	r1, .LCPI62_3
	mul	r12, r0, r1
	lsr	r2, r12, #24
	.loc	23 134 32 is_stmt 1             @ ../udivmoddi4.c:134:32
	ldr	r0, [r11, #-4]
	.loc	23 134 37 is_stmt 0             @ ../udivmoddi4.c:134:37
	lsr	r0, r0, r2
	.loc	23 134 26                       @ ../udivmoddi4.c:134:26
	str	r0, [r11, #-20]
	.loc	23 135 68 is_stmt 1             @ ../udivmoddi4.c:135:68
	ldr	r1, [r11, #-8]
	.loc	23 135 32 is_stmt 0             @ ../udivmoddi4.c:135:32
	ldr	r0, [r11, #-4]
	mov	r3, #32
	.loc	23 135 54                       @ ../udivmoddi4.c:135:54
	sub	r3, r3, r12, lsr #24
	.loc	23 135 37                       @ ../udivmoddi4.c:135:37
	lsl	r0, r0, r3
	.loc	23 135 61                       @ ../udivmoddi4.c:135:61
	orr	r0, r0, r1, lsr r2
	.loc	23 135 25                       @ ../udivmoddi4.c:135:25
	str	r0, [r11, #-24]
	.loc	23 136 26 is_stmt 1             @ ../udivmoddi4.c:136:26
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 136 17 is_stmt 0             @ ../udivmoddi4.c:136:17
	b	.LBB62_56
.LBB62_33:                              @ %if.end187
	.loc	23 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	23 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI62_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI62_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI62_2
	and	r1, r0, r2
	ldr	r3, .LCPI62_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	23 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r1, [r11, #-4]
	.loc	23 142 62                       @ ../udivmoddi4.c:142:62
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	and	r12, r12, r1, lsr #1
	sub	r1, r1, r12
	and	r12, lr, r1, lsr #2
	and	r1, r1, lr
	add	r1, r1, r12
	add	r1, r1, r1, lsr #4
	and	r2, r1, r2
	mul	r1, r2, r3
	.loc	23 142 60                       @ ../udivmoddi4.c:142:60
	sub	r0, r0, r1, lsr #24
	add	r0, r0, #33
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	23 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r0, #32
	bne	.LBB62_35
	b	.LBB62_34
.LBB62_34:                              @ %if.then195
	.loc	23 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	23 149 25 is_stmt 1             @ ../udivmoddi4.c:149:25
	str	r0, [r11, #-24]
	.loc	23 150 32                       @ ../udivmoddi4.c:150:32
	ldr	r1, [r11, #-8]
	.loc	23 150 26 is_stmt 0             @ ../udivmoddi4.c:150:26
	str	r1, [r11, #-20]
	.loc	23 151 26 is_stmt 1             @ ../udivmoddi4.c:151:26
	str	r0, [r11, #-28]
	.loc	23 152 31                       @ ../udivmoddi4.c:152:31
	ldr	r0, [r11, #-4]
	.loc	23 152 25 is_stmt 0             @ ../udivmoddi4.c:152:25
	str	r0, [r11, #-32]
	.loc	23 153 13 is_stmt 1             @ ../udivmoddi4.c:153:13
	b	.LBB62_39
.LBB62_35:                              @ %if.else208
	.loc	23 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB62_37
	b	.LBB62_36
.LBB62_36:                              @ %if.then211
	.loc	23 0 22 is_stmt 0               @ ../udivmoddi4.c:0:22
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	mov	r0, #0
	.loc	23 156 25 is_stmt 1             @ ../udivmoddi4.c:156:25
	str	r0, [r11, #-24]
	.loc	23 157 32                       @ ../udivmoddi4.c:157:32
	ldr	r0, [r11, #-8]
	.loc	23 157 53 is_stmt 0             @ ../udivmoddi4.c:157:53
	rsb	r3, r2, #32
	.loc	23 157 36                       @ ../udivmoddi4.c:157:36
	lsl	r0, r0, r3
	.loc	23 157 26                       @ ../udivmoddi4.c:157:26
	str	r0, [r11, #-20]
	.loc	23 158 32 is_stmt 1             @ ../udivmoddi4.c:158:32
	ldr	r0, [r11, #-4]
	.loc	23 158 37 is_stmt 0             @ ../udivmoddi4.c:158:37
	lsr	r0, r0, r2
	.loc	23 158 26                       @ ../udivmoddi4.c:158:26
	str	r0, [r11, #-28]
	.loc	23 159 68 is_stmt 1             @ ../udivmoddi4.c:159:68
	ldr	r1, [r11, #-8]
	.loc	23 159 32 is_stmt 0             @ ../udivmoddi4.c:159:32
	ldr	r0, [r11, #-4]
	.loc	23 159 37                       @ ../udivmoddi4.c:159:37
	lsl	r0, r0, r3
	.loc	23 159 61                       @ ../udivmoddi4.c:159:61
	orr	r0, r0, r1, lsr r2
	.loc	23 159 25                       @ ../udivmoddi4.c:159:25
	str	r0, [r11, #-32]
	.loc	23 160 13 is_stmt 1             @ ../udivmoddi4.c:160:13
	b	.LBB62_38
.LBB62_37:                              @ %if.else235
	.loc	23 163 31                       @ ../udivmoddi4.c:163:31
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	23 163 53 is_stmt 0             @ ../udivmoddi4.c:163:53
	rsb	r3, r1, #64
	.loc	23 163 35                       @ ../udivmoddi4.c:163:35
	lsl	r0, r0, r3
	.loc	23 163 25                       @ ../udivmoddi4.c:163:25
	str	r0, [r11, #-24]
	.loc	23 165 33 is_stmt 1             @ ../udivmoddi4.c:165:33
	ldr	r2, [r11, #-8]
	.loc	23 164 33                       @ ../udivmoddi4.c:164:33
	ldr	r0, [r11, #-4]
	.loc	23 164 38 is_stmt 0             @ ../udivmoddi4.c:164:38
	lsl	r0, r0, r3
	.loc	23 165 44 is_stmt 1             @ ../udivmoddi4.c:165:44
	sub	r1, r1, #32
	.loc	23 164 63                       @ ../udivmoddi4.c:164:63
	orr	r0, r0, r2, lsr r1
	.loc	23 164 26 is_stmt 0             @ ../udivmoddi4.c:164:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	23 166 26 is_stmt 1             @ ../udivmoddi4.c:166:26
	str	r0, [r11, #-28]
	.loc	23 167 31                       @ ../udivmoddi4.c:167:31
	ldr	r0, [r11, #-4]
	.loc	23 167 36 is_stmt 0             @ ../udivmoddi4.c:167:36
	lsr	r0, r0, r1
	.loc	23 167 25                       @ ../udivmoddi4.c:167:25
	str	r0, [r11, #-32]
	b	.LBB62_38
.LBB62_38:                              @ %if.end261
	.loc	23 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB62_39
.LBB62_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	23 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB62_48
.LBB62_40:                              @ %if.else263
	.loc	23 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	23 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI62_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI62_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI62_2
	and	r1, r0, r2
	ldr	r3, .LCPI62_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	23 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r1, [r11, #-4]
	.loc	23 176 44                       @ ../udivmoddi4.c:176:44
	orr	r1, r1, r1, lsr #1
	orr	r1, r1, r1, lsr #2
	orr	r1, r1, r1, lsr #4
	orr	r1, r1, r1, lsr #8
	orr	r1, r1, r1, lsr #16
	mvn	r1, r1
	and	r12, r12, r1, lsr #1
	sub	r1, r1, r12
	and	r12, lr, r1, lsr #2
	and	r1, r1, lr
	add	r1, r1, r12
	add	r1, r1, r1, lsr #4
	and	r2, r1, r2
	mul	r1, r2, r3
	.loc	23 176 42                       @ ../udivmoddi4.c:176:42
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	23 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r0, #32
	blo	.LBB62_44
	b	.LBB62_41
.LBB62_41:                              @ %if.then271
	.loc	23 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_43
	b	.LBB62_42
.LBB62_42:                              @ %if.then273
	.loc	23 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	23 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB62_43
.LBB62_43:                              @ %if.end275
	.loc	23 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB62_56
.LBB62_44:                              @ %if.end276
	.loc	23 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	23 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	23 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB62_46
	b	.LBB62_45
.LBB62_45:                              @ %if.then282
	.loc	23 190 32                       @ ../udivmoddi4.c:190:32
	ldr	r0, [r11, #-8]
	.loc	23 190 26 is_stmt 0             @ ../udivmoddi4.c:190:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	23 191 26 is_stmt 1             @ ../udivmoddi4.c:191:26
	str	r0, [r11, #-28]
	.loc	23 192 31                       @ ../udivmoddi4.c:192:31
	ldr	r0, [r11, #-4]
	.loc	23 192 25 is_stmt 0             @ ../udivmoddi4.c:192:25
	str	r0, [r11, #-32]
	.loc	23 193 13 is_stmt 1             @ ../udivmoddi4.c:193:13
	b	.LBB62_47
.LBB62_46:                              @ %if.else293
	.loc	23 196 32                       @ ../udivmoddi4.c:196:32
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	23 196 53 is_stmt 0             @ ../udivmoddi4.c:196:53
	rsb	r3, r1, #31
	.loc	23 196 36                       @ ../udivmoddi4.c:196:36
	lsl	r0, r0, r3
	.loc	23 196 26                       @ ../udivmoddi4.c:196:26
	str	r0, [r11, #-20]
	.loc	23 197 32 is_stmt 1             @ ../udivmoddi4.c:197:32
	ldr	r0, [r11, #-4]
	.loc	23 197 37 is_stmt 0             @ ../udivmoddi4.c:197:37
	lsr	r0, r0, r2
	.loc	23 197 26                       @ ../udivmoddi4.c:197:26
	str	r0, [r11, #-28]
	.loc	23 198 68 is_stmt 1             @ ../udivmoddi4.c:198:68
	ldr	r1, [r11, #-8]
	.loc	23 198 32 is_stmt 0             @ ../udivmoddi4.c:198:32
	ldr	r0, [r11, #-4]
	.loc	23 198 37                       @ ../udivmoddi4.c:198:37
	lsl	r0, r0, r3
	.loc	23 198 61                       @ ../udivmoddi4.c:198:61
	orr	r0, r0, r1, lsr r2
	.loc	23 198 25                       @ ../udivmoddi4.c:198:25
	str	r0, [r11, #-32]
	b	.LBB62_47
.LBB62_47:                              @ %if.end315
	.loc	23 0 25                         @ ../udivmoddi4.c:0:25
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	b	.LBB62_48
.LBB62_48:                              @ %if.end316
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	b	.LBB62_49
.LBB62_49:                              @ %if.end317
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	23 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB62_50
.LBB62_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	23 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	23 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB62_53
	b	.LBB62_51
.LBB62_51:                              @ %for.body
                                        @   in Loop: Header=BB62_50 Depth=1
	.loc	23 212 43 is_stmt 1             @ ../udivmoddi4.c:212:43
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r11, #-32]
	.loc	23 212 25 is_stmt 0             @ ../udivmoddi4.c:212:25
	ldr	r2, [r11, #-28]
	.loc	23 212 36                       @ ../udivmoddi4.c:212:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	23 212 18                       @ ../udivmoddi4.c:212:18
	str	r2, [r11, #-28]
	.loc	23 213 43 is_stmt 1             @ ../udivmoddi4.c:213:43
	ldr	r2, [r11, #-20]
	.loc	23 213 36 is_stmt 0             @ ../udivmoddi4.c:213:36
	lsl	r1, r1, #1
	orr	r1, r1, r2, lsr #31
	.loc	23 213 18                       @ ../udivmoddi4.c:213:18
	str	r1, [r11, #-32]
	.loc	23 214 43 is_stmt 1             @ ../udivmoddi4.c:214:43
	ldr	r1, [r11, #-24]
	.loc	23 214 25 is_stmt 0             @ ../udivmoddi4.c:214:25
	ldr	r2, [r11, #-20]
	.loc	23 214 36                       @ ../udivmoddi4.c:214:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	23 214 18                       @ ../udivmoddi4.c:214:18
	str	r2, [r11, #-20]
	.loc	23 215 36 is_stmt 1             @ ../udivmoddi4.c:215:36
	orr	r0, r0, r1, lsl #1
	.loc	23 215 18 is_stmt 0             @ ../udivmoddi4.c:215:18
	str	r0, [r11, #-24]
	.loc	23 223 37 is_stmt 1             @ ../udivmoddi4.c:223:37
	ldr	r12, [r11, #-16]
	ldr	r2, [r11, #-12]
	.loc	23 223 45 is_stmt 0             @ ../udivmoddi4.c:223:45
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	.loc	23 223 49                       @ ../udivmoddi4.c:223:49
	mvn	r3, r1
	mvn	lr, r0
	adds	lr, r12, lr
	adc	r3, r2, r3
	str	r3, [sp]                        @ 4-byte Spill
	.loc	23 225 15 is_stmt 1             @ ../udivmoddi4.c:225:15
	subs	r12, r0, r12
	sbc	r2, r1, r2
	cmp	r3, #0
	movmi	r0, r12
	cmp	r3, #0
	movmi	r1, r2
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	.loc	23 226 5                        @ ../udivmoddi4.c:226:5
	b	.LBB62_52
.LBB62_52:                              @ %for.inc
                                        @   in Loop: Header=BB62_50 Depth=1
	.loc	23 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	23 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	23 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB62_50
.LBB62_53:                              @ %for.end
	.loc	23 227 16 is_stmt 1             @ ../udivmoddi4.c:227:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [r11, #-24]
	ldr	r1, [r11, #-20]
	.loc	23 227 20 is_stmt 0             @ ../udivmoddi4.c:227:20
	lsl	r1, r1, #1
	orr	r1, r1, r3, lsr #31
	.loc	23 227 26                       @ ../udivmoddi4.c:227:26
	orr	r2, r2, r3, lsl #1
	.loc	23 227 11                       @ ../udivmoddi4.c:227:11
	str	r2, [r11, #-24]
	str	r1, [r11, #-20]
	.loc	23 228 9 is_stmt 1              @ ../udivmoddi4.c:228:9
	cmp	r0, #0
	beq	.LBB62_55
	b	.LBB62_54
.LBB62_54:                              @ %if.then371
	.loc	23 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	23 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	23 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB62_55
.LBB62_55:                              @ %if.end373
	.loc	23 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	23 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB62_56
.LBB62_56:                              @ %return
	.loc	23 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	23 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp115:
	.p2align	2
@ %bb.57:
	.loc	23 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
.LCPI62_0:
	.long	1431655765                      @ 0x55555555
.LCPI62_1:
	.long	858993459                       @ 0x33333333
.LCPI62_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI62_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end62:
	.size	__udivmoddi4, .Lfunc_end62-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin63:
	.file	24 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmoddi4.c" md5 0xbd72633dccf26f3dd8ee74bf04f7fdac
	.loc	24 21 0 is_stmt 1               @ ../divmoddi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r7, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	add	r11, sp, #16
	.cfi_def_cfa r11, 8
	sub	sp, sp, #16
	str	r3, [sp, #12]                   @ 4-byte Spill
	mov	r5, r2
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp]                        @ 4-byte Spill
                                        @ kill: def $r2 killed $r3
                                        @ kill: def $r2 killed $r5
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
	ldr	r2, [r11, #8]
	str	r2, [sp, #8]                    @ 4-byte Spill
.Ltmp116:
	.loc	24 22 14 prologue_end           @ ../divmoddi4.c:22:14
	mov	r2, r5
	bl	__divdi3
	ldr	r12, [sp]                       @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	.loc	24 23 16                        @ ../divmoddi4.c:23:16
	umull	r4, r7, r0, r5
	mla	r6, r0, lr, r7
	mla	lr, r1, r5, r6
	.loc	24 23 12 is_stmt 0              @ ../divmoddi4.c:23:12
	subs	r12, r12, r4
	sbc	r2, r2, lr
	.loc	24 23 8                         @ ../divmoddi4.c:23:8
	str	r12, [r3]
	str	r2, [r3, #4]
	.loc	24 24 3 is_stmt 1               @ ../divmoddi4.c:24:3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp117:
.Lfunc_end63:
	.size	__divmoddi4, .Lfunc_end63-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin64:
	.file	25 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmodsi4.c" md5 0x0cf7caca427f8ea020b675e27b5985b5
	.loc	25 21 0                         @ ../divmodsi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	str	r2, [r11, #-4]                  @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
.Ltmp118:
	.loc	25 22 14 prologue_end           @ ../divmodsi4.c:22:14
	bl	__divsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	25 23 16                        @ ../divmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	25 23 12 is_stmt 0              @ ../divmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	25 23 8                         @ ../divmodsi4.c:23:8
	str	r1, [r2]
	.loc	25 24 3 is_stmt 1               @ ../divmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp119:
.Lfunc_end64:
	.size	__divmodsi4, .Lfunc_end64-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin65:
	.file	26 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divsi3.c" md5 0x7845e3e46788425cf69d463f3cfe00e5
	.loc	26 23 0                         @ ../divsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	mov	r3, r1
	mov	r1, r0
.Ltmp120:
	.loc	26 25 20 prologue_end           @ ../divsi3.c:25:20
	asr	r2, r1, #31
	.loc	26 27 12                        @ ../divsi3.c:27:12
	eor	r0, r1, r1, asr #31
	.loc	26 27 19 is_stmt 0              @ ../divsi3.c:27:19
	sub	r0, r0, r1, asr #31
	.loc	26 28 12 is_stmt 1              @ ../divsi3.c:28:12
	eor	r1, r3, r3, asr #31
	.loc	26 28 19 is_stmt 0              @ ../divsi3.c:28:19
	sub	r1, r1, r3, asr #31
	.loc	26 29 9 is_stmt 1               @ ../divsi3.c:29:9
	eor	r2, r2, r3, asr #31
	str	r2, [sp, #4]                    @ 4-byte Spill
	.loc	26 36 22                        @ ../divsi3.c:36:22
	bl	__udivsi3
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	26 36 33 is_stmt 0              @ ../divsi3.c:36:33
	eor	r0, r0, r1
	.loc	26 36 40                        @ ../divsi3.c:36:40
	sub	r0, r0, r1
	.loc	26 36 5                         @ ../divsi3.c:36:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp121:
.Lfunc_end65:
	.size	__divsi3, .Lfunc_end65-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin66:
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	27 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp122:
	.loc	27 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	27 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	27 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB66_4
	b	.LBB66_1
.LBB66_1:                               @ %if.then
	.loc	27 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	27 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB66_3
	b	.LBB66_2
.LBB66_2:                               @ %if.then3
	.loc	27 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	27 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB66_5
.LBB66_3:                               @ %if.end
	.loc	27 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	27 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI66_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI66_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI66_2
	and	r0, r0, r1
	ldr	r2, .LCPI66_3
	mul	r1, r0, r2
	mov	r0, #33
	.loc	27 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	27 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB66_5
.LBB66_4:                               @ %if.end6
	.loc	27 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	27 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI66_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI66_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI66_2
	and	r0, r0, r1
	ldr	r2, .LCPI66_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	27 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	27 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB66_5
.LBB66_5:                               @ %return
	.loc	27 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	27 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp123:
	.p2align	2
@ %bb.6:
	.loc	27 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI66_0:
	.long	1431655765                      @ 0x55555555
.LCPI66_1:
	.long	858993459                       @ 0x33333333
.LCPI66_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI66_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end66:
	.size	__ffsdi2, .Lfunc_end66-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin67:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	28 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp124:
	.loc	28 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB67_2
	b	.LBB67_1
.LBB67_1:                               @ %if.then
	.loc	28 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	28 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB67_3
.LBB67_2:                               @ %if.end
	.loc	28 28 12                        @ ../ffssi2.c:28:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI67_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI67_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI67_2
	and	r0, r0, r1
	ldr	r2, .LCPI67_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	28 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	28 28 5                         @ ../ffssi2.c:28:5
	b	.LBB67_3
.LBB67_3:                               @ %return
	.loc	28 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	28 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp125:
	.p2align	2
@ %bb.4:
	.loc	28 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI67_0:
	.long	1431655765                      @ 0x55555555
.LCPI67_1:
	.long	858993459                       @ 0x33333333
.LCPI67_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI67_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end67:
	.size	__ffssi2, .Lfunc_end67-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin68:
	.file	29 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	29 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #40
	.cfi_def_cfa_offset 40
	str	r2, [sp, #12]                   @ 4-byte Spill
	mov	r3, r1
	str	r3, [sp, #16]                   @ 4-byte Spill
	mov	r3, r0
	str	r3, [sp, #20]                   @ 4-byte Spill
.Ltmp126:
	.loc	29 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	29 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB68_2
	b	.LBB68_1
.LBB68_1:                               @ %if.then
	.loc	29 0 9 is_stmt 0                @ ../lshrdi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	29 32 23 is_stmt 1              @ ../lshrdi3.c:32:23
	str	r0, [sp, #28]
	.loc	29 33 32                        @ ../lshrdi3.c:33:32
	ldr	r0, [sp, #36]
	.loc	29 33 43 is_stmt 0              @ ../lshrdi3.c:33:43
	sub	r1, r1, #32
	.loc	29 33 37                        @ ../lshrdi3.c:33:37
	lsr	r0, r0, r1
	.loc	29 33 22                        @ ../lshrdi3.c:33:22
	str	r0, [sp, #24]
	.loc	29 34 5 is_stmt 1               @ ../lshrdi3.c:34:5
	b	.LBB68_5
.LBB68_2:                               @ %if.else
	.loc	29 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB68_4
	b	.LBB68_3
.LBB68_3:                               @ %if.then4
	.loc	29 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	29 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB68_6
.LBB68_4:                               @ %if.end
	.loc	29 39 34                        @ ../lshrdi3.c:39:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	29 39 39 is_stmt 0              @ ../lshrdi3.c:39:39
	lsr	r0, r0, r2
	.loc	29 39 24                        @ ../lshrdi3.c:39:24
	str	r0, [sp, #28]
	.loc	29 40 72 is_stmt 1              @ ../lshrdi3.c:40:72
	ldr	r1, [sp, #32]
	.loc	29 40 33 is_stmt 0              @ ../lshrdi3.c:40:33
	ldr	r0, [sp, #36]
	.loc	29 40 55                        @ ../lshrdi3.c:40:55
	rsb	r3, r2, #32
	.loc	29 40 38                        @ ../lshrdi3.c:40:38
	lsl	r0, r0, r3
	.loc	29 40 61                        @ ../lshrdi3.c:40:61
	orr	r0, r0, r1, lsr r2
	.loc	29 40 22                        @ ../lshrdi3.c:40:22
	str	r0, [sp, #24]
	b	.LBB68_5
.LBB68_5:                               @ %if.end18
	.loc	29 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	29 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB68_6
.LBB68_6:                               @ %return
	.loc	29 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	29 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp127:
.Lfunc_end68:
	.size	__lshrdi3, .Lfunc_end68-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin69:
	.file	30 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../moddi3.c" md5 0x76733914157a978303cbe3d6f6d1c647
	.loc	30 21 0                         @ ../moddi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	mov	r12, r1
	str	r12, [sp, #4]                   @ 4-byte Spill
                                        @ kill: def $r1 killed $r3
                                        @ kill: def $r1 killed $r2
                                        @ kill: def $r1 killed $r12
                                        @ kill: def $r1 killed $r0
.Ltmp128:
	.loc	30 24 17 prologue_end           @ ../moddi3.c:24:17
	adds	r1, r2, r3, asr #31
	eor	r2, r1, r3, asr #31
	adc	r1, r3, r3, asr #31
	eor	r3, r1, r3, asr #31
	.loc	30 26 12                        @ ../moddi3.c:26:12
	eor	r0, r0, r12, asr #31
	eor	r1, r12, r12, asr #31
	.loc	30 26 17 is_stmt 0              @ ../moddi3.c:26:17
	subs	r0, r0, r12, asr #31
	sbc	r1, r1, r12, asr #31
	.loc	30 28 5 is_stmt 1               @ ../moddi3.c:28:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	30 29 21                        @ ../moddi3.c:29:21
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	30 29 23 is_stmt 0              @ ../moddi3.c:29:23
	eor	r1, r1, r2, asr #31
	eor	r0, r0, r2, asr #31
	.loc	30 29 28                        @ ../moddi3.c:29:28
	subs	r0, r0, r2, asr #31
	sbc	r1, r1, r2, asr #31
	.loc	30 29 5                         @ ../moddi3.c:29:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp129:
.Lfunc_end69:
	.size	__moddi3, .Lfunc_end69-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin70:
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../modsi3.c" md5 0xada583aff17540d2228ce14dc879fdc8
	.loc	31 21 0 is_stmt 1               @ ../modsi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp130:
	.loc	31 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	31 22 31 is_stmt 0              @ ../modsi3.c:22:31
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	31 22 14                        @ ../modsi3.c:22:14
	sub	r0, r0, r1
	.loc	31 22 5                         @ ../modsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp131:
.Lfunc_end70:
	.size	__modsi3, .Lfunc_end70-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin71:
	.file	32 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvdi3.c" md5 0xbb6aa1440e4e37fe94db90279d27db10
	.loc	32 23 0 is_stmt 1               @ ../mulvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r4, r10, r11, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r10, -12
	.cfi_offset r4, -16
	add	r11, sp, #8
	.cfi_def_cfa r11, 8
	sub	sp, sp, #48
	str	r3, [r11, #-24]                 @ 4-byte Spill
	str	r2, [r11, #-20]                 @ 4-byte Spill
	mov	r2, r1
	str	r2, [r11, #-16]                 @ 4-byte Spill
	mov	r2, r0
	str	r2, [r11, #-12]                 @ 4-byte Spill
.Ltmp132:
	.loc	32 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	32 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB71_5
	b	.LBB71_1
.LBB71_1:                               @ %if.then
	.loc	32 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	32 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB71_3
	b	.LBB71_2
.LBB71_2:                               @ %lor.lhs.false
	.loc	32 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	32 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB71_4
	b	.LBB71_3
.LBB71_3:                               @ %if.then3
	.loc	32 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB71_21
.LBB71_4:                               @ %if.end
	.loc	32 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI71_0
	ldr	r2, .LCPI71_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB71_5:                               @ %if.end4
	.loc	32 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	32 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB71_10
	b	.LBB71_6
.LBB71_6:                               @ %if.then6
	.loc	32 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	32 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB71_8
	b	.LBB71_7
.LBB71_7:                               @ %lor.lhs.false8
	.loc	32 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	32 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB71_9
	b	.LBB71_8
.LBB71_8:                               @ %if.then10
	.loc	32 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB71_21
.LBB71_9:                               @ %if.end12
	.loc	32 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI71_0
	ldr	r2, .LCPI71_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB71_10:                              @ %if.end13
	.loc	32 39 19                        @ ../mulvdi3.c:39:19
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	ldr	r2, [r11, #-20]                 @ 4-byte Reload
	ldr	r12, [r11, #-16]                @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	asr	r1, r12, #31
	str	r1, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	32 40 23                        @ ../mulvdi3.c:40:23
	eor	r1, r0, r12, asr #31
	eor	r0, r12, r12, asr #31
	.loc	32 40 29 is_stmt 0              @ ../mulvdi3.c:40:29
	subs	r1, r1, r12, asr #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r0, r12, asr #31
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	32 41 19 is_stmt 1              @ ../mulvdi3.c:41:19
	asr	r12, r3, #31
	str	r12, [sp, #16]                  @ 4-byte Spill
	str	r12, [sp, #20]                  @ 4-byte Spill
	.loc	32 42 23                        @ ../mulvdi3.c:42:23
	eor	r12, r2, r3, asr #31
	eor	r2, r3, r3, asr #31
	.loc	32 42 29 is_stmt 0              @ ../mulvdi3.c:42:29
	subs	r12, r12, r3, asr #31
	str	r12, [sp, #24]                  @ 4-byte Spill
	sbc	r2, r2, r3, asr #31
	str	r2, [sp, #28]                   @ 4-byte Spill
	.loc	32 43 15 is_stmt 1              @ ../mulvdi3.c:43:15
	subs	r1, r1, #2
	sbcs	r0, r0, #0
	.loc	32 43 19 is_stmt 0              @ ../mulvdi3.c:43:19
	blt	.LBB71_12
	b	.LBB71_11
.LBB71_11:                              @ %lor.lhs.false18
	.loc	32 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	32 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB71_13
	b	.LBB71_12
.LBB71_12:                              @ %if.then20
	.loc	32 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB71_21
.LBB71_13:                              @ %if.end22
	.loc	32 45 12                        @ ../mulvdi3.c:45:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	eor	r0, r0, r3
	eor	r1, r1, r2
	orr	r0, r0, r1
	.loc	32 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	cmp	r0, #0
	bne	.LBB71_17
	b	.LBB71_14
.LBB71_14:                              @ %if.then24
	.loc	32 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	32 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	32 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB71_16
	b	.LBB71_15
.LBB71_15:                              @ %if.then26
	.loc	32 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI71_0
	ldr	r2, .LCPI71_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB71_16:                              @ %if.end27
	.loc	32 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB71_20
.LBB71_17:                              @ %if.else
	.loc	32 52 27                        @ ../mulvdi3.c:52:27
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r2, r1, #0
	rsc	r3, r0, #0
	mov	r0, #0
	mov	r1, #-2147483648
	.loc	32 52 25 is_stmt 0              @ ../mulvdi3.c:52:25
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	32 52 19                        @ ../mulvdi3.c:52:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	32 52 13                        @ ../mulvdi3.c:52:13
	bge	.LBB71_19
	b	.LBB71_18
.LBB71_18:                              @ %if.then31
	.loc	32 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI71_0
	ldr	r2, .LCPI71_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB71_19:                              @ %if.end32
	.loc	32 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB71_20
.LBB71_20:                              @ %if.end33
	.loc	32 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB71_21
.LBB71_21:                              @ %return
	.loc	32 0 0 is_stmt 0                @ ../mulvdi3.c:0:0
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	ldr	r3, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	lr, [r11, #-24]                 @ 4-byte Reload
	umull	r0, r4, r1, r3
	mla	r12, r1, lr, r4
	mla	r1, r2, r3, r12
	.loc	32 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp133:
	.p2align	2
@ %bb.22:
	.loc	32 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
.LCPI71_0:
	.long	.L.str.8
.LCPI71_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end71:
	.size	__mulvdi3, .Lfunc_end71-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin72:
	.file	33 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvsi3.c" md5 0x32cd947949fac3c039bd0839cd5d7c78
	.loc	33 23 0 is_stmt 1               @ ../mulvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #24
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp134:
	.loc	33 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB72_5
	b	.LBB72_1
.LBB72_1:                               @ %if.then
	.loc	33 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB72_3
	b	.LBB72_2
.LBB72_2:                               @ %lor.lhs.false
	.loc	33 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB72_4
	b	.LBB72_3
.LBB72_3:                               @ %if.then3
	.loc	33 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB72_21
.LBB72_4:                               @ %if.end
	.loc	33 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI72_0
	ldr	r2, .LCPI72_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB72_5:                               @ %if.end4
	.loc	33 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB72_10
	b	.LBB72_6
.LBB72_6:                               @ %if.then6
	.loc	33 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB72_8
	b	.LBB72_7
.LBB72_7:                               @ %lor.lhs.false8
	.loc	33 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB72_9
	b	.LBB72_8
.LBB72_8:                               @ %if.then10
	.loc	33 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB72_21
.LBB72_9:                               @ %if.end12
	.loc	33 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI72_0
	ldr	r2, .LCPI72_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB72_10:                              @ %if.end13
	.loc	33 39 19                        @ ../mulvsi3.c:39:19
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	asr	r0, r1, #31
	str	r0, [sp]                        @ 4-byte Spill
	.loc	33 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r1, r1, asr #31
	.loc	33 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r0, r0, r1, asr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	33 41 19 is_stmt 1              @ ../mulvsi3.c:41:19
	asr	r1, r2, #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	.loc	33 42 23                        @ ../mulvsi3.c:42:23
	eor	r1, r2, r2, asr #31
	.loc	33 42 29 is_stmt 0              @ ../mulvsi3.c:42:29
	sub	r1, r1, r2, asr #31
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	33 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r0, #2
	blt	.LBB72_12
	b	.LBB72_11
.LBB72_11:                              @ %lor.lhs.false18
	.loc	33 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB72_13
	b	.LBB72_12
.LBB72_12:                              @ %if.then20
	.loc	33 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB72_21
.LBB72_13:                              @ %if.end22
	.loc	33 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB72_17
	b	.LBB72_14
.LBB72_14:                              @ %if.then24
	.loc	33 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	33 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB72_16
	b	.LBB72_15
.LBB72_15:                              @ %if.then26
	.loc	33 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI72_0
	ldr	r2, .LCPI72_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB72_16:                              @ %if.end27
	.loc	33 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB72_20
.LBB72_17:                              @ %if.else
	.loc	33 52 27                        @ ../mulvsi3.c:52:27
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	rsb	r1, r0, #0
	mov	r0, #-2147483648
	.loc	33 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	bl	__divsi3
	mov	r1, r0
	.loc	33 52 13                        @ ../mulvsi3.c:52:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB72_19
	b	.LBB72_18
.LBB72_18:                              @ %if.then31
	.loc	33 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI72_0
	ldr	r2, .LCPI72_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB72_19:                              @ %if.end32
	.loc	33 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB72_20
.LBB72_20:                              @ %if.end33
	.loc	33 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB72_21
.LBB72_21:                              @ %return
	.loc	33 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	33 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp135:
	.p2align	2
@ %bb.22:
	.loc	33 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
.LCPI72_0:
	.long	.L.str.9
.LCPI72_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end72:
	.size	__mulvsi3, .Lfunc_end72-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin73:
	.file	34 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritydi2.c" md5 0xbd9549e31bcebf1c2265048ea6f18a77
	.loc	34 21 0 is_stmt 1               @ ../paritydi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp136:
	.loc	34 23 11 prologue_end           @ ../paritydi2.c:23:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	34 24 39                        @ ../paritydi2.c:24:39
	ldr	r1, [sp]
	.loc	34 24 28 is_stmt 0              @ ../paritydi2.c:24:28
	ldr	r0, [sp, #4]
	.loc	34 24 33                        @ ../paritydi2.c:24:33
	eor	r0, r0, r1
	.loc	34 24 12                        @ ../paritydi2.c:24:12
	bl	__paritysi2
	.loc	34 24 5                         @ ../paritydi2.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp137:
.Lfunc_end73:
	.size	__paritydi2, .Lfunc_end73-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin74:
	.file	35 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritysi2.c" md5 0x235e89e1ac3c55fb43879550247ea25b
	.loc	35 21 0 is_stmt 1               @ ../paritysi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	35 23 7 prologue_end            @ ../paritysi2.c:23:7
	eor	r0, r0, r0, lsr #16
	.loc	35 24 7                         @ ../paritysi2.c:24:7
	eor	r0, r0, r0, lsr #8
	.loc	35 25 7                         @ ../paritysi2.c:25:7
	eor	r0, r0, r0, lsr #4
	.loc	35 26 26                        @ ../paritysi2.c:26:26
	and	r2, r0, #15
	mov	r1, #150
	orr	r1, r1, #26880
	mov	r0, #1
	.loc	35 26 34 is_stmt 0              @ ../paritysi2.c:26:34
	and	r0, r0, r1, lsr r2
	.loc	35 26 5                         @ ../paritysi2.c:26:5
	bx	lr
.Ltmp138:
.Lfunc_end74:
	.size	__paritysi2, .Lfunc_end74-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin75:
	.file	36 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	36 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp139:
	.loc	36 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI75_0
	.loc	36 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	36 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI75_1
	.loc	36 25 21 is_stmt 1              @ ../popcountdi2.c:25:21
	and	r1, r12, r3, lsr #2
	and	r0, r12, r2, lsr #2
	.loc	36 25 52 is_stmt 0              @ ../popcountdi2.c:25:52
	and	r3, r3, r12
	and	r2, r2, r12
	.loc	36 25 46                        @ ../popcountdi2.c:25:46
	add	r1, r1, r3
	add	r0, r0, r2
	.loc	36 27 14 is_stmt 1              @ ../popcountdi2.c:27:14
	add	r1, r1, r1, lsr #4
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI75_2
	.loc	36 27 27 is_stmt 0              @ ../popcountdi2.c:27:27
	and	r1, r1, r2
	and	r0, r0, r2
	.loc	36 29 28 is_stmt 1              @ ../popcountdi2.c:29:28
	add	r0, r0, r1
	.loc	36 32 11                        @ ../popcountdi2.c:32:11
	add	r0, r0, r0, lsr #16
	.loc	36 35 15                        @ ../popcountdi2.c:35:15
	add	r0, r0, r0, lsr #8
	.loc	36 35 27 is_stmt 0              @ ../popcountdi2.c:35:27
	and	r0, r0, #255
	.loc	36 35 5                         @ ../popcountdi2.c:35:5
	bx	lr
.Ltmp140:
	.p2align	2
@ %bb.1:
	.loc	36 0 5                          @ ../popcountdi2.c:0:5
.LCPI75_0:
	.long	1431655765                      @ 0x55555555
.LCPI75_1:
	.long	858993459                       @ 0x33333333
.LCPI75_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end75:
	.size	__popcountdi2, .Lfunc_end75-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin76:
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	37 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI76_0
.Ltmp141:
	.loc	37 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	37 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI76_1
	.loc	37 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	37 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	37 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	37 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI76_2
	.loc	37 27 24 is_stmt 0              @ ../popcountsi2.c:27:24
	and	r0, r0, r1
	.loc	37 29 12 is_stmt 1              @ ../popcountsi2.c:29:12
	add	r0, r0, r0, lsr #16
	.loc	37 32 15                        @ ../popcountsi2.c:32:15
	add	r0, r0, r0, lsr #8
	.loc	37 32 27 is_stmt 0              @ ../popcountsi2.c:32:27
	and	r0, r0, #255
	.loc	37 32 5                         @ ../popcountsi2.c:32:5
	bx	lr
.Ltmp142:
	.p2align	2
@ %bb.1:
	.loc	37 0 5                          @ ../popcountsi2.c:0:5
.LCPI76_0:
	.long	1431655765                      @ 0x55555555
.LCPI76_1:
	.long	858993459                       @ 0x33333333
.LCPI76_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end76:
	.size	__popcountsi2, .Lfunc_end76-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin77:
	.file	38 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvdi3.c" md5 0x5774ab7a3a8e168deb55531047d6a873
	.loc	38 23 0 is_stmt 1               @ ../subvdi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
	mov	r12, r1
	str	r12, [sp]                       @ 4-byte Spill
	mov	r12, r0
	str	r12, [sp, #4]                   @ 4-byte Spill
.Ltmp143:
	.loc	38 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	38 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB77_4
	b	.LBB77_1
.LBB77_1:                               @ %if.then
	.loc	38 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	38 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB77_3
	b	.LBB77_2
.LBB77_2:                               @ %if.then2
	.loc	38 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI77_0
	ldr	r2, .LCPI77_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB77_3:                               @ %if.end
	.loc	38 29 5                         @ ../subvdi3.c:29:5
	b	.LBB77_7
.LBB77_4:                               @ %if.else
	.loc	38 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	38 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB77_6
	b	.LBB77_5
.LBB77_5:                               @ %if.then4
	.loc	38 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI77_0
	ldr	r2, .LCPI77_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB77_6:                               @ %if.end5
	.loc	38 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB77_7
.LBB77_7:                               @ %if.end6
	.loc	38 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp144:
	.p2align	2
@ %bb.8:
	.loc	38 0 5 is_stmt 0                @ ../subvdi3.c:0:5
.LCPI77_0:
	.long	.L.str.12
.LCPI77_1:
	.long	.L__func__.__subvdi3
.Lfunc_end77:
	.size	__subvdi3, .Lfunc_end77-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin78:
	.file	39 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvsi3.c" md5 0xc9558a85e8fabce36f42a29933bd87e9
	.loc	39 23 0 is_stmt 1               @ ../subvsi3.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r0, [sp]                        @ 4-byte Spill
.Ltmp145:
	.loc	39 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	39 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB78_4
	b	.LBB78_1
.LBB78_1:                               @ %if.then
	.loc	39 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB78_3
	b	.LBB78_2
.LBB78_2:                               @ %if.then2
	.loc	39 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI78_0
	ldr	r2, .LCPI78_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB78_3:                               @ %if.end
	.loc	39 29 5                         @ ../subvsi3.c:29:5
	b	.LBB78_7
.LBB78_4:                               @ %if.else
	.loc	39 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB78_6
	b	.LBB78_5
.LBB78_5:                               @ %if.then4
	.loc	39 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI78_0
	ldr	r2, .LCPI78_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB78_6:                               @ %if.end5
	.loc	39 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB78_7
.LBB78_7:                               @ %if.end6
	.loc	39 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp146:
	.p2align	2
@ %bb.8:
	.loc	39 0 5 is_stmt 0                @ ../subvsi3.c:0:5
.LCPI78_0:
	.long	.L.str.13
.LCPI78_1:
	.long	.L__func__.__subvsi3
.Lfunc_end78:
	.size	__subvsi3, .Lfunc_end78-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin79:
	.file	40 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	40 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp147:
	.loc	40 26 11 prologue_end           @ ../ucmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	40 28 11                        @ ../ucmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	40 29 13                        @ ../ucmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	40 29 24 is_stmt 0              @ ../ucmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	40 29 9                         @ ../ucmpdi2.c:29:9
	cmp	r0, r1
	bhs	.LBB79_2
	b	.LBB79_1
.LBB79_1:                               @ %if.then
	.loc	40 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	40 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB79_9
.LBB79_2:                               @ %if.end
	.loc	40 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	40 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	40 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB79_4
	b	.LBB79_3
.LBB79_3:                               @ %if.then9
	.loc	40 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	40 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB79_9
.LBB79_4:                               @ %if.end10
	.loc	40 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	40 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	40 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB79_6
	b	.LBB79_5
.LBB79_5:                               @ %if.then15
	.loc	40 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	40 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB79_9
.LBB79_6:                               @ %if.end16
	.loc	40 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	40 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	40 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB79_8
	b	.LBB79_7
.LBB79_7:                               @ %if.then22
	.loc	40 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	40 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB79_9
.LBB79_8:                               @ %if.end23
	.loc	40 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	40 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB79_9
.LBB79_9:                               @ %return
	.loc	40 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	40 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp148:
.Lfunc_end79:
	.size	__ucmpdi2, .Lfunc_end79-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin80:
	.loc	40 47 0                         @ ../ucmpdi2.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp149:
	.loc	40 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	40 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	40 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp150:
.Lfunc_end80:
	.size	__aeabi_ulcmp, .Lfunc_end80-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin81:
	.file	41 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivdi3.c" md5 0x580a28989090b62fc3d261faa6e31a6b
	.loc	41 21 0 is_stmt 1               @ ../udivdi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp151:
	.loc	41 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	41 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp152:
.Lfunc_end81:
	.size	__udivdi3, .Lfunc_end81-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin82:
	.file	42 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmodsi4.c" md5 0xc0341684574a20dbcfbe4df0ab9f8538
	.loc	42 21 0 is_stmt 1               @ ../udivmodsi4.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
	str	r2, [r11, #-4]                  @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
.Ltmp153:
	.loc	42 22 14 prologue_end           @ ../udivmodsi4.c:22:14
	bl	__udivsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	42 23 16                        @ ../udivmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	42 23 12 is_stmt 0              @ ../udivmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	42 23 8                         @ ../udivmodsi4.c:23:8
	str	r1, [r2]
	.loc	42 24 3 is_stmt 1               @ ../udivmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp154:
.Lfunc_end82:
	.size	__udivmodsi4, .Lfunc_end82-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin83:
	.file	43 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivsi3.c" md5 0xb74987a973aededf95faab34db33f58a
	.loc	43 26 0                         @ ../udivsi3.c:26:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #64
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
.Ltmp155:
	.loc	43 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB83_2
	b	.LBB83_1
.LBB83_1:                               @ %if.then
	.loc	43 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	43 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB83_13
.LBB83_2:                               @ %if.end
	.loc	43 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB83_4
	b	.LBB83_3
.LBB83_3:                               @ %if.then2
	.loc	43 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	43 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB83_13
.LBB83_4:                               @ %if.end3
	.loc	43 36 10                        @ ../udivsi3.c:36:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	bl	__clzsi2
	mov	r1, r0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r1, [r11, #-20]                 @ 4-byte Spill
	.loc	43 36 29 is_stmt 0              @ ../udivsi3.c:36:29
	bl	__clzsi2
	mov	r1, r0
	.loc	43 36 27                        @ ../udivsi3.c:36:27
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	sub	r0, r0, r1
	str	r0, [r11, #-16]                 @ 4-byte Spill
	.loc	43 38 9 is_stmt 1               @ ../udivsi3.c:38:9
	cmp	r0, #32
	blo	.LBB83_6
	b	.LBB83_5
.LBB83_5:                               @ %if.then5
	.loc	43 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	43 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB83_13
.LBB83_6:                               @ %if.end6
	.loc	43 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB83_8
	b	.LBB83_7
.LBB83_7:                               @ %if.then8
	.loc	43 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	43 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB83_13
.LBB83_8:                               @ %if.end9
	.loc	43 42 5                         @ ../udivsi3.c:42:5
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	add	r1, r2, #1
	.loc	43 45 28                        @ ../udivsi3.c:45:28
	rsb	r2, r2, #31
	.loc	43 45 11 is_stmt 0              @ ../udivsi3.c:45:11
	lsl	r3, r0, r2
	.loc	43 46 11 is_stmt 1              @ ../udivsi3.c:46:11
	lsr	r2, r0, r1
	mov	r0, #0
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	43 48 5                         @ ../udivsi3.c:48:5
	b	.LBB83_9
.LBB83_9:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	43 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-28]                 @ 4-byte Reload
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	str	r3, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	.loc	43 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	beq	.LBB83_12
	b	.LBB83_10
.LBB83_10:                              @ %for.body
                                        @   in Loop: Header=BB83_9 Depth=1
	.loc	43 51 22 is_stmt 1              @ ../udivsi3.c:51:22
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	lsl	r0, r0, #1
	orr	r0, r0, r2, lsr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	43 60 41                        @ ../udivsi3.c:60:41
	mvn	r0, r0
	add	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	43 63 5                         @ ../udivsi3.c:63:5
	b	.LBB83_11
.LBB83_11:                              @ %for.inc
                                        @   in Loop: Header=BB83_9 Depth=1
	.loc	43 62 11                        @ ../udivsi3.c:62:11
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r12, [sp, #24]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	lr, [r11, #-8]                  @ 4-byte Reload
	sub	lr, r2, lr
	cmp	r0, #0
	movmi	r2, lr
	.loc	43 61 19                        @ ../udivsi3.c:61:19
	lsr	r0, r0, #31
	.loc	43 52 22                        @ ../udivsi3.c:52:22
	orr	r3, r3, r12, lsl #1
	.loc	43 48 20                        @ ../udivsi3.c:48:20
	sub	r1, r1, #1
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	43 48 5 is_stmt 0               @ ../udivsi3.c:48:5
	b	.LBB83_9
.LBB83_12:                              @ %for.end
	.loc	43 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	43 65 5                         @ ../udivsi3.c:65:5
	b	.LBB83_13
.LBB83_13:                              @ %return
	.loc	43 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	43 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp156:
.Lfunc_end83:
	.size	__udivsi3, .Lfunc_end83-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin84:
	.file	44 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umoddi3.c" md5 0x1a99e635325595a81040fb97dab88295
	.loc	44 21 0                         @ ../umoddi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #16
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp157:
	.loc	44 23 5 prologue_end            @ ../umoddi3.c:23:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	44 24 12                        @ ../umoddi3.c:24:12
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	44 24 5 is_stmt 0               @ ../umoddi3.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp158:
.Lfunc_end84:
	.size	__umoddi3, .Lfunc_end84-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin85:
	.file	45 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umodsi3.c" md5 0xce74ac33cd2bd170a84f43824cae8961
	.loc	45 21 0 is_stmt 1               @ ../umodsi3.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #8
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp159:
	.loc	45 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	45 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	45 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r0, r1
	.loc	45 22 5                         @ ../umodsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp160:
.Lfunc_end85:
	.size	__umodsi3, .Lfunc_end85-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin86:
	.file	46 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	46 4 0 is_stmt 1                @ ../memory.c:4:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp161:
	.loc	46 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB86_1
.LBB86_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	46 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	46 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB86_4
	b	.LBB86_2
.LBB86_2:                               @ %for.body
                                        @   in Loop: Header=BB86_1 Depth=1
	.loc	46 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	46 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	46 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB86_3
.LBB86_3:                               @ %for.inc
                                        @   in Loop: Header=BB86_1 Depth=1
	.loc	46 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	46 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB86_1
.LBB86_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	46 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp162:
.Lfunc_end86:
	.size	memcpy, .Lfunc_end86-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin87:
	.loc	46 14 0                         @ ../memory.c:14:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #20
	.cfi_def_cfa_offset 20
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
.Ltmp163:
	.loc	46 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB87_1
.LBB87_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	46 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	46 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB87_4
	b	.LBB87_2
.LBB87_2:                               @ %for.body
                                        @   in Loop: Header=BB87_1 Depth=1
	.loc	46 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp