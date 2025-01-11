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
	.globl	adpcm_dec_fabs                  @ -- Begin function adpcm_dec_fabs
	.p2align	2
	.type	adpcm_dec_fabs,%function
	.code	32                              @ @adpcm_dec_fabs
adpcm_dec_fabs:
.Lfunc_begin0:
	.file	1 "/workspaces/llvmta/testcases" "test/adpcm_dec.c" md5 0x6ebd865e09876ee217b03c4acb2875df
	.loc	1 207 0                         @ test/adpcm_dec.c:207:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp0:
	.loc	1 211 8 prologue_end            @ test/adpcm_dec.c:211:8
	cmp	r0, #0
	bmi	.LBB0_2
	b	.LBB0_1
.LBB0_1:                                @ %if.then
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 212 5 is_stmt 1               @ test/adpcm_dec.c:212:5
	b	.LBB0_3
.LBB0_2:                                @ %if.else
	.loc	1 214 9                         @ test/adpcm_dec.c:214:9
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB0_3
.LBB0_3:                                @ %if.end
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 216 3 is_stmt 1               @ test/adpcm_dec.c:216:3
	add	sp, sp, #8
	bx	lr
.Ltmp1:
.Lfunc_end0:
	.size	adpcm_dec_fabs, .Lfunc_end0-adpcm_dec_fabs
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_sin                   @ -- Begin function adpcm_dec_sin
	.p2align	2
	.type	adpcm_dec_sin,%function
	.code	32                              @ @adpcm_dec_sin
adpcm_dec_sin:
.Lfunc_begin1:
	.loc	1 221 0                         @ test/adpcm_dec.c:221:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	sub	sp, sp, #40
	str	r0, [r11, #-8]                  @ 4-byte Spill
	mov	r2, #138
	orr	r2, r2, #6144
.Ltmp2:
	.loc	1 229 3 prologue_end            @ test/adpcm_dec.c:229:3
	cmp	r0, r2
	mov	r1, r2
	movlt	r1, r0
	sub	r0, r0, r1
	mov	r1, #137
	orr	r1, r1, #6144
	add	r3, r0, r1
	ldr	r12, .LCPI1_0
	umull	r1, r0, r3, r12
	lsr	r1, r0, #10
	mul	r0, r1, r2
	str	r0, [r11, #-4]                  @ 4-byte Spill
	b	.LBB1_1
.LBB1_1:                                @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
	mov	r0, #1
	.loc	1 229 3                         @ test/adpcm_dec.c:229:3
	cmp	r0, #0
	bne	.LBB1_3
	b	.LBB1_2
.LBB1_2:                                @ %while.body
                                        @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_1
.LBB1_3:                                @ %while.end
	ldr	r3, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	sub	r2, r3, r1
	mvn	r0, #137
	sub	r0, r0, #6144
	.loc	1 233 3 is_stmt 1               @ test/adpcm_dec.c:233:3
	cmp	r2, r0
	movgt	r0, r2
	add	r0, r0, r1
	sub	r1, r0, r3
	cmp	r1, #0
	mov	r0, r1
	movne	r0, #1
	sub	r12, r1, r0
	ldr	lr, .LCPI1_0
	umull	r2, r1, r12, lr
	add	r1, r0, r1, lsr #10
	mov	r2, #138
	orr	r2, r2, #6144
	mla	r0, r1, r2, r3
	str	r0, [r11, #-12]                 @ 4-byte Spill
	b	.LBB1_4
.LBB1_4:                                @ %while.cond1
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
	mov	r0, #1
	.loc	1 233 3                         @ test/adpcm_dec.c:233:3
	cmp	r0, #0
	bne	.LBB1_6
	b	.LBB1_5
.LBB1_5:                                @ %while.body3
                                        @   in Loop: Header=BB1_4 Depth=1
	b	.LBB1_4
.LBB1_6:                                @ %while.end4
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	sub	r1, r0, r1
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	1 238 28 is_stmt 1              @ test/adpcm_dec.c:238:28
	mul	r2, r1, r1
	.loc	1 238 17 is_stmt 0              @ test/adpcm_dec.c:238:17
	mul	r0, r2, r1
	rsb	r3, r0, #0
	ldr	r12, .LCPI1_1
	.loc	1 238 40                        @ test/adpcm_dec.c:238:40
	smull	r2, r0, r3, r12
	add	r0, r0, r0, lsr #31
	.loc	1 239 13 is_stmt 1              @ test/adpcm_dec.c:239:13
	add	r1, r1, r0
	mov	r2, #2
	str	r2, [sp, #16]                   @ 4-byte Spill
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [r11, #-16]                 @ 4-byte Spill
	.loc	1 245 3                         @ test/adpcm_dec.c:245:3
	b	.LBB1_7
.LBB1_7:                                @ %while.cond13
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	.loc	1 245 11                        @ test/adpcm_dec.c:245:11
	bl	adpcm_dec_fabs
	.loc	1 245 3                         @ test/adpcm_dec.c:245:3
	cmp	r0, #1
	blt	.LBB1_9
	b	.LBB1_8
.LBB1_8:                                @ %while.body15
                                        @   in Loop: Header=BB1_7 Depth=1
	.loc	1 246 30 is_stmt 1              @ test/adpcm_dec.c:246:30
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mul	r1, r0, r0
	.loc	1 246 19 is_stmt 0              @ test/adpcm_dec.c:246:19
	mul	r0, r1, r2
	rsb	r0, r0, #0
	.loc	1 246 50                        @ test/adpcm_dec.c:246:50
	lsl	r2, r3, #1
	mov	r1, #1
	.loc	1 246 70                        @ test/adpcm_dec.c:246:70
	orr	r3, r1, r3, lsl #1
	.loc	1 246 58                        @ test/adpcm_dec.c:246:58
	mul	r1, r2, r3
	.loc	1 246 42                        @ test/adpcm_dec.c:246:42
	bl	__divsi3
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	mov	r3, r0
	mov	r0, r3
	.loc	1 247 15 is_stmt 1              @ test/adpcm_dec.c:247:15
	add	r1, r1, r3
	.loc	1 248 8                         @ test/adpcm_dec.c:248:8
	add	r2, r2, #1
	str	r2, [sp, #16]                   @ 4-byte Spill
	str	r1, [sp, #20]                   @ 4-byte Spill
	str	r0, [r11, #-16]                 @ 4-byte Spill
	.loc	1 245 3                         @ test/adpcm_dec.c:245:3
	b	.LBB1_7
.LBB1_9:                                @ %while.end26
	.loc	1 251 3                         @ test/adpcm_dec.c:251:3
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp3:
	.p2align	2
@ %bb.10:
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
.LCPI1_0:
	.long	700102915                       @ 0x29bab903
.LCPI1_1:
	.long	715827883                       @ 0x2aaaaaab
.Lfunc_end1:
	.size	adpcm_dec_sin, .Lfunc_end1-adpcm_dec_sin
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_cos                   @ -- Begin function adpcm_dec_cos
	.p2align	2
	.type	adpcm_dec_cos,%function
	.code	32                              @ @adpcm_dec_cos
adpcm_dec_cos:
.Lfunc_begin2:
	.loc	1 256 0 is_stmt 1               @ test/adpcm_dec.c:256:0
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
	mov	r0, #34
	orr	r0, r0, #1536
.Ltmp4:
	.loc	1 257 34 prologue_end           @ test/adpcm_dec.c:257:34
	sub	r0, r0, r1
	.loc	1 257 12 is_stmt 0              @ test/adpcm_dec.c:257:12
	bl	adpcm_dec_sin
	.loc	1 257 3                         @ test/adpcm_dec.c:257:3
	pop	{r11, lr}
	bx	lr
.Ltmp5:
.Lfunc_end2:
	.size	adpcm_dec_cos, .Lfunc_end2-adpcm_dec_cos
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_decode                @ -- Begin function adpcm_dec_decode
	.p2align	2
	.type	adpcm_dec_decode,%function
	.code	32                              @ @adpcm_dec_decode
adpcm_dec_decode:
.Lfunc_begin3:
	.loc	1 267 0 is_stmt 1               @ test/adpcm_dec.c:267:0
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
	sub	sp, sp, #200
.Ltmp6:
	.loc	1 274 25 prologue_end           @ test/adpcm_dec.c:274:25
	and	r1, r0, #63
	.loc	1 274 17 is_stmt 0              @ test/adpcm_dec.c:274:17
	ldr	r2, .LCPI3_0
	str	r2, [sp, #72]                   @ 4-byte Spill
	str	r1, [r2]
	.loc	1 275 24 is_stmt 1              @ test/adpcm_dec.c:275:24
	asr	r0, r0, #6
	.loc	1 275 16 is_stmt 0              @ test/adpcm_dec.c:275:16
	ldr	r1, .LCPI3_1
	str	r1, [r11, #-92]                 @ 4-byte Spill
	str	r0, [r1]
	.loc	1 280 23 is_stmt 1              @ test/adpcm_dec.c:280:23
	ldr	r0, .LCPI3_2
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r1, .LCPI3_3
	str	r1, [sp, #84]                   @ 4-byte Spill
	bl	adpcm_dec_filtez
	.loc	1 280 21 is_stmt 0              @ test/adpcm_dec.c:280:21
	ldr	r1, .LCPI3_4
	str	r1, [sp, #80]                   @ 4-byte Spill
	str	r0, [r1]
	.loc	1 284 41 is_stmt 1              @ test/adpcm_dec.c:284:41
	ldr	r0, .LCPI3_5
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [r0]
	.loc	1 284 61 is_stmt 0              @ test/adpcm_dec.c:284:61
	ldr	r6, .LCPI3_6
	ldr	r1, [r6]
	.loc	1 285 41 is_stmt 1              @ test/adpcm_dec.c:285:41
	ldr	r4, .LCPI3_7
	ldr	r2, [r4]
	.loc	1 285 61 is_stmt 0              @ test/adpcm_dec.c:285:61
	ldr	r3, .LCPI3_8
	str	r3, [sp, #96]                   @ 4-byte Spill
	ldr	r3, [r3]
	.loc	1 284 23 is_stmt 1              @ test/adpcm_dec.c:284:23
	bl	adpcm_dec_filtep
	ldr	r2, [sp, #80]                   @ 4-byte Reload
	mov	r1, r0
	.loc	1 284 21 is_stmt 0              @ test/adpcm_dec.c:284:21
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r3, .LCPI3_9
	str	r1, [r3]
	.loc	1 287 42 is_stmt 1              @ test/adpcm_dec.c:287:42
	ldr	r2, [r2]
	.loc	1 287 40 is_stmt 0              @ test/adpcm_dec.c:287:40
	add	r2, r1, r2
	.loc	1 287 20                        @ test/adpcm_dec.c:287:20
	ldr	r1, .LCPI3_10
	str	r1, [sp, #100]                  @ 4-byte Spill
	str	r2, [r1]
	.loc	1 290 33 is_stmt 1              @ test/adpcm_dec.c:290:33
	ldr	r2, .LCPI3_11
	str	r2, [sp, #92]                   @ 4-byte Spill
	ldr	r12, [r2]
	.loc	1 291 52                        @ test/adpcm_dec.c:291:52
	ldr	r3, [r0]
	.loc	1 292 29                        @ test/adpcm_dec.c:292:29
	bic	lr, r3, #3
	.loc	1 291 25                        @ test/adpcm_dec.c:291:25
	ldr	r3, .LCPI3_12
	ldr	lr, [r3, lr]
	.loc	1 290 52                        @ test/adpcm_dec.c:290:52
	mul	r3, r12, lr
	.loc	1 292 38                        @ test/adpcm_dec.c:292:38
	asr	r3, r3, #15
	.loc	1 290 21                        @ test/adpcm_dec.c:290:21
	ldr	r12, .LCPI3_13
	str	r12, [r11, #-100]               @ 4-byte Spill
	str	r3, [r12]
	.loc	1 295 28                        @ test/adpcm_dec.c:295:28
	ldr	r3, [r2]
	.loc	1 296 47                        @ test/adpcm_dec.c:296:47
	ldr	r2, .LCPI3_14
	ldr	r12, [r2]
	.loc	1 296 20 is_stmt 0              @ test/adpcm_dec.c:296:20
	ldr	r2, .LCPI3_15
	ldr	r12, [r2, r12, lsl #2]
	.loc	1 295 47 is_stmt 1              @ test/adpcm_dec.c:295:47
	mul	r2, r3, r12
	.loc	1 296 64                        @ test/adpcm_dec.c:296:64
	asr	r3, r2, #15
	.loc	1 295 16                        @ test/adpcm_dec.c:295:16
	ldr	r12, .LCPI3_16
	str	r3, [r12]
	.loc	1 299 33                        @ test/adpcm_dec.c:299:33
	ldr	r1, [r1]
	.loc	1 299 31 is_stmt 0              @ test/adpcm_dec.c:299:31
	add	r1, r1, r2, asr #15
	.loc	1 299 16                        @ test/adpcm_dec.c:299:16
	ldr	r2, .LCPI3_17
	str	r2, [r11, #-44]                 @ 4-byte Spill
	str	r1, [r2]
	.loc	1 302 41 is_stmt 1              @ test/adpcm_dec.c:302:41
	ldr	r0, [r0]
	.loc	1 302 56 is_stmt 0              @ test/adpcm_dec.c:302:56
	ldr	r1, .LCPI3_18
	str	r1, [sp, #76]                   @ 4-byte Spill
	ldr	r1, [r1]
	.loc	1 302 23                        @ test/adpcm_dec.c:302:23
	bl	adpcm_dec_logscl
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	.loc	1 302 21                        @ test/adpcm_dec.c:302:21
	str	r0, [r1]
	mov	r1, #8
	.loc	1 305 24 is_stmt 1              @ test/adpcm_dec.c:305:24
	bl	adpcm_dec_scalel
	ldr	r3, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [sp, #88]                   @ 4-byte Reload
	ldr	lr, [sp, #92]                   @ 4-byte Reload
	mov	r12, r0
	.loc	1 305 22 is_stmt 0              @ test/adpcm_dec.c:305:22
	ldr	r0, [r11, #-100]                @ 4-byte Reload
	str	r12, [lr]
	.loc	1 309 23 is_stmt 1              @ test/adpcm_dec.c:309:23
	ldr	r0, [r0]
	.loc	1 309 43 is_stmt 0              @ test/adpcm_dec.c:309:43
	ldr	r3, [r3]
	.loc	1 309 41                        @ test/adpcm_dec.c:309:41
	add	r3, r0, r3
	.loc	1 309 21                        @ test/adpcm_dec.c:309:21
	ldr	r12, .LCPI3_19
	str	r12, [r11, #-96]                @ 4-byte Spill
	str	r3, [r12]
	.loc	1 312 3 is_stmt 1               @ test/adpcm_dec.c:312:3
	bl	adpcm_dec_upzero
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r11, #-96]                 @ 4-byte Reload
	.loc	1 316 41                        @ test/adpcm_dec.c:316:41
	ldr	r0, [r6]
	.loc	1 316 60 is_stmt 0              @ test/adpcm_dec.c:316:60
	ldr	r1, [r1]
	.loc	1 317 41 is_stmt 1              @ test/adpcm_dec.c:317:41
	ldr	r2, [r2]
	.loc	1 317 60 is_stmt 0              @ test/adpcm_dec.c:317:60
	ldr	r3, .LCPI3_20
	str	r3, [r11, #-104]                @ 4-byte Spill
	ldr	r3, [r3]
	.loc	1 318 41 is_stmt 1              @ test/adpcm_dec.c:318:41
	ldr	r12, .LCPI3_21
	str	r12, [sp, #108]                 @ 4-byte Spill
	ldr	r12, [r12]
	.loc	1 316 23                        @ test/adpcm_dec.c:316:23
	mov	lr, sp
	str	r12, [lr]
	bl	adpcm_dec_uppol2
	ldr	r2, [r11, #-96]                 @ 4-byte Reload
	ldr	r3, [r11, #-104]                @ 4-byte Reload
	mov	r1, r0
	.loc	1 316 21 is_stmt 0              @ test/adpcm_dec.c:316:21
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	str	r1, [r0]
	.loc	1 321 41 is_stmt 1              @ test/adpcm_dec.c:321:41
	ldr	r0, [r6]
	.loc	1 322 41                        @ test/adpcm_dec.c:322:41
	ldr	r2, [r2]
	.loc	1 322 60 is_stmt 0              @ test/adpcm_dec.c:322:60
	ldr	r3, [r3]
	.loc	1 321 23 is_stmt 1              @ test/adpcm_dec.c:321:23
	bl	adpcm_dec_uppol1
	ldr	r2, [sp, #100]                  @ 4-byte Reload
	ldr	r12, [sp, #104]                 @ 4-byte Reload
	ldr	r3, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [r11, #-104]                @ 4-byte Reload
	ldr	lr, [r11, #-100]                @ 4-byte Reload
	mov	r5, r0
	.loc	1 321 21 is_stmt 0              @ test/adpcm_dec.c:321:21
	ldr	r0, [r11, #-96]                 @ 4-byte Reload
	str	r5, [r6]
	.loc	1 325 23 is_stmt 1              @ test/adpcm_dec.c:325:23
	ldr	r2, [r2]
	.loc	1 325 42 is_stmt 0              @ test/adpcm_dec.c:325:42
	ldr	lr, [lr]
	.loc	1 325 40                        @ test/adpcm_dec.c:325:40
	add	r2, r2, lr
	.loc	1 325 21                        @ test/adpcm_dec.c:325:21
	ldr	lr, .LCPI3_22
	str	r2, [lr]
	.loc	1 328 24 is_stmt 1              @ test/adpcm_dec.c:328:24
	ldr	lr, [r12]
	.loc	1 328 22 is_stmt 0              @ test/adpcm_dec.c:328:22
	str	lr, [r4]
	.loc	1 329 22 is_stmt 1              @ test/adpcm_dec.c:329:22
	str	r2, [r12]
	.loc	1 330 24                        @ test/adpcm_dec.c:330:24
	ldr	r2, [r1]
	.loc	1 330 22 is_stmt 0              @ test/adpcm_dec.c:330:22
	str	r2, [r3]
	.loc	1 331 24 is_stmt 1              @ test/adpcm_dec.c:331:24
	ldr	r0, [r0]
	.loc	1 331 22 is_stmt 0              @ test/adpcm_dec.c:331:22
	str	r0, [r1]
	.loc	1 336 23 is_stmt 1              @ test/adpcm_dec.c:336:23
	ldr	r0, .LCPI3_23
	str	r0, [r11, #-76]                 @ 4-byte Spill
	ldr	r1, .LCPI3_24
	str	r1, [r11, #-80]                 @ 4-byte Spill
	bl	adpcm_dec_filtez
	.loc	1 336 21 is_stmt 0              @ test/adpcm_dec.c:336:21
	ldr	r1, .LCPI3_25
	str	r1, [r11, #-84]                 @ 4-byte Spill
	str	r0, [r1]
	.loc	1 340 41 is_stmt 1              @ test/adpcm_dec.c:340:41
	ldr	r4, .LCPI3_26
	ldr	r0, [r4]
	.loc	1 340 60 is_stmt 0              @ test/adpcm_dec.c:340:60
	ldr	r7, .LCPI3_27
	ldr	r1, [r7]
	.loc	1 341 41 is_stmt 1              @ test/adpcm_dec.c:341:41
	ldr	r6, .LCPI3_28
	ldr	r2, [r6]
	.loc	1 341 60 is_stmt 0              @ test/adpcm_dec.c:341:60
	ldr	r3, .LCPI3_29
	str	r3, [r11, #-68]                 @ 4-byte Spill
	ldr	r3, [r3]
	.loc	1 340 23 is_stmt 1              @ test/adpcm_dec.c:340:23
	bl	adpcm_dec_filtep
	ldr	r2, [r11, #-84]                 @ 4-byte Reload
	mov	r1, r0
	.loc	1 340 21 is_stmt 0              @ test/adpcm_dec.c:340:21
	ldr	r0, [r11, #-92]                 @ 4-byte Reload
	ldr	r3, .LCPI3_30
	str	r1, [r3]
	.loc	1 344 42 is_stmt 1              @ test/adpcm_dec.c:344:42
	ldr	r2, [r2]
	.loc	1 344 40 is_stmt 0              @ test/adpcm_dec.c:344:40
	add	r1, r1, r2
	.loc	1 344 20                        @ test/adpcm_dec.c:344:20
	ldr	r2, .LCPI3_31
	str	r2, [r11, #-64]                 @ 4-byte Spill
	str	r1, [r2]
	.loc	1 347 32 is_stmt 1              @ test/adpcm_dec.c:347:32
	ldr	r1, .LCPI3_32
	str	r1, [r11, #-72]                 @ 4-byte Spill
	ldr	r2, [r1]
	.loc	1 348 51                        @ test/adpcm_dec.c:348:51
	ldr	r0, [r0]
	.loc	1 348 24 is_stmt 0              @ test/adpcm_dec.c:348:24
	ldr	r1, .LCPI3_33
	ldr	r3, [r1, r0, lsl #2]
	.loc	1 347 51 is_stmt 1              @ test/adpcm_dec.c:347:51
	mul	r1, r2, r3
	.loc	1 348 68                        @ test/adpcm_dec.c:348:68
	asr	r1, r1, #15
	.loc	1 347 20                        @ test/adpcm_dec.c:347:20
	ldr	r2, .LCPI3_34
	str	r2, [r11, #-60]                 @ 4-byte Spill
	str	r1, [r2]
	.loc	1 351 55                        @ test/adpcm_dec.c:351:55
	ldr	r1, .LCPI3_35
	str	r1, [r11, #-88]                 @ 4-byte Spill
	ldr	r1, [r1]
	.loc	1 351 23 is_stmt 0              @ test/adpcm_dec.c:351:23
	bl	adpcm_dec_logsch
	ldr	r1, [r11, #-88]                 @ 4-byte Reload
	.loc	1 351 21                        @ test/adpcm_dec.c:351:21
	str	r0, [r1]
	mov	r1, #10
	.loc	1 354 24 is_stmt 1              @ test/adpcm_dec.c:354:24
	bl	adpcm_dec_scalel
	ldr	r3, [r11, #-84]                 @ 4-byte Reload
	ldr	r1, [r11, #-80]                 @ 4-byte Reload
	ldr	r2, [r11, #-76]                 @ 4-byte Reload
	ldr	lr, [r11, #-72]                 @ 4-byte Reload
	mov	r12, r0
	.loc	1 354 22 is_stmt 0              @ test/adpcm_dec.c:354:22
	ldr	r0, [r11, #-60]                 @ 4-byte Reload
	str	r12, [lr]
	.loc	1 357 22 is_stmt 1              @ test/adpcm_dec.c:357:22
	ldr	r0, [r0]
	.loc	1 357 41 is_stmt 0              @ test/adpcm_dec.c:357:41
	ldr	r3, [r3]
	.loc	1 357 39                        @ test/adpcm_dec.c:357:39
	add	r3, r0, r3
	.loc	1 357 20                        @ test/adpcm_dec.c:357:20
	ldr	r12, .LCPI3_36
	str	r12, [r11, #-56]                @ 4-byte Spill
	str	r3, [r12]
	.loc	1 360 3 is_stmt 1               @ test/adpcm_dec.c:360:3
	bl	adpcm_dec_upzero
	ldr	r1, [r11, #-68]                 @ 4-byte Reload
	ldr	r2, [r11, #-56]                 @ 4-byte Reload
	.loc	1 364 41                        @ test/adpcm_dec.c:364:41
	ldr	r0, [r7]
	.loc	1 364 60 is_stmt 0              @ test/adpcm_dec.c:364:60
	ldr	r1, [r1]
	.loc	1 365 41 is_stmt 1              @ test/adpcm_dec.c:365:41
	ldr	r2, [r2]
	.loc	1 365 59 is_stmt 0              @ test/adpcm_dec.c:365:59
	ldr	r3, .LCPI3_37
	str	r3, [r11, #-52]                 @ 4-byte Spill
	ldr	r3, [r3]
	.loc	1 365 78                        @ test/adpcm_dec.c:365:78
	ldr	r12, .LCPI3_38
	str	r12, [r11, #-48]                @ 4-byte Spill
	ldr	r12, [r12]
	.loc	1 364 23 is_stmt 1              @ test/adpcm_dec.c:364:23
	mov	lr, sp
	str	r12, [lr]
	bl	adpcm_dec_uppol2
	ldr	r2, [r11, #-56]                 @ 4-byte Reload
	ldr	r3, [r11, #-52]                 @ 4-byte Reload
	mov	r1, r0
	.loc	1 364 21 is_stmt 0              @ test/adpcm_dec.c:364:21
	ldr	r0, [r11, #-68]                 @ 4-byte Reload
	str	r1, [r0]
	.loc	1 368 41 is_stmt 1              @ test/adpcm_dec.c:368:41
	ldr	r0, [r7]
	.loc	1 369 41                        @ test/adpcm_dec.c:369:41
	ldr	r2, [r2]
	.loc	1 369 59 is_stmt 0              @ test/adpcm_dec.c:369:59
	ldr	r3, [r3]
	.loc	1 368 23 is_stmt 1              @ test/adpcm_dec.c:368:23
	bl	adpcm_dec_uppol1
	ldr	r1, [r11, #-64]                 @ 4-byte Reload
	ldr	r12, [r11, #-60]                @ 4-byte Reload
	ldr	r2, [r11, #-56]                 @ 4-byte Reload
	ldr	r3, [r11, #-52]                 @ 4-byte Reload
	ldr	lr, [r11, #-48]                 @ 4-byte Reload
	mov	r5, r0
	.loc	1 368 21 is_stmt 0              @ test/adpcm_dec.c:368:21
	ldr	r0, [r11, #-44]                 @ 4-byte Reload
	str	r5, [r7]
	.loc	1 372 18 is_stmt 1              @ test/adpcm_dec.c:372:18
	ldr	r1, [r1]
	.loc	1 372 37 is_stmt 0              @ test/adpcm_dec.c:372:37
	ldr	r12, [r12]
	.loc	1 372 35                        @ test/adpcm_dec.c:372:35
	add	r12, r1, r12
	.loc	1 372 16                        @ test/adpcm_dec.c:372:16
	ldr	r1, .LCPI3_39
	str	r12, [r1]
	.loc	1 375 23 is_stmt 1              @ test/adpcm_dec.c:375:23
	ldr	r5, [r4]
	.loc	1 375 21 is_stmt 0              @ test/adpcm_dec.c:375:21
	str	r5, [r6]
	.loc	1 376 21 is_stmt 1              @ test/adpcm_dec.c:376:21
	str	r12, [r4]
	.loc	1 377 23                        @ test/adpcm_dec.c:377:23
	ldr	r12, [r3]
	.loc	1 377 21 is_stmt 0              @ test/adpcm_dec.c:377:21
	str	r12, [lr]
	.loc	1 378 23 is_stmt 1              @ test/adpcm_dec.c:378:23
	ldr	r2, [r2]
	.loc	1 378 21 is_stmt 0              @ test/adpcm_dec.c:378:21
	str	r2, [r3]
	.loc	1 383 18 is_stmt 1              @ test/adpcm_dec.c:383:18
	ldr	r0, [r0]
	.loc	1 383 33 is_stmt 0              @ test/adpcm_dec.c:383:33
	ldr	r1, [r1]
	.loc	1 383 31                        @ test/adpcm_dec.c:383:31
	sub	r2, r0, r1
	.loc	1 383 16                        @ test/adpcm_dec.c:383:16
	ldr	r3, .LCPI3_40
	str	r2, [r3]
	.loc	1 384 31 is_stmt 1              @ test/adpcm_dec.c:384:31
	add	r3, r0, r1
	.loc	1 384 16 is_stmt 0              @ test/adpcm_dec.c:384:16
	ldr	r0, .LCPI3_41
	str	r3, [r0]
	.loc	1 390 35 is_stmt 1              @ test/adpcm_dec.c:390:35
	ldr	r0, .LCPI3_42
	ldr	lr, [r0]
	.loc	1 391 35                        @ test/adpcm_dec.c:391:35
	ldr	r12, [r0, #4]
	.loc	1 390 31                        @ test/adpcm_dec.c:390:31
	mul	r1, r2, lr
	.loc	1 391 31                        @ test/adpcm_dec.c:391:31
	mul	r2, r3, r12
	add	r3, r0, #8
	mov	r0, #0
	ldr	r12, .LCPI3_43
	ldr	lr, .LCPI3_44
	str	lr, [r11, #-40]                 @ 4-byte Spill
	str	r12, [r11, #-36]                @ 4-byte Spill
	str	r3, [r11, #-32]                 @ 4-byte Spill
	str	r2, [r11, #-28]                 @ 4-byte Spill
	str	r1, [r11, #-24]                 @ 4-byte Spill
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	1 395 9                         @ test/adpcm_dec.c:395:9
	b	.LBB3_1
.LBB3_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	ldr	r2, [r11, #-36]                 @ 4-byte Reload
	ldr	r3, [r11, #-32]                 @ 4-byte Reload
	ldr	r12, [r11, #-28]                @ 4-byte Reload
	ldr	lr, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	str	r0, [sp, #48]                   @ 4-byte Spill
	str	lr, [sp, #52]                   @ 4-byte Spill
	str	r12, [sp, #56]                  @ 4-byte Spill
	str	r3, [sp, #60]                   @ 4-byte Spill
	str	r2, [sp, #64]                   @ 4-byte Spill
	str	r1, [sp, #68]                   @ 4-byte Spill
	.loc	1 395 3                         @ test/adpcm_dec.c:395:3
	cmp	r0, #10
	beq	.LBB3_4
	b	.LBB3_2
.LBB3_2:                                @ %for.body
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 398 3 is_stmt 1               @ test/adpcm_dec.c:398:3
	b	.LBB3_3
.LBB3_3:                                @ %for.inc
                                        @   in Loop: Header=BB3_1 Depth=1
	.loc	1 397 22                        @ test/adpcm_dec.c:397:22
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r6, [sp, #52]                   @ 4-byte Reload
	ldr	r12, [sp, #64]                  @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	ldr	lr, [sp, #68]                   @ 4-byte Reload
	ldr	r3, [lr], #4
	.loc	1 396 38                        @ test/adpcm_dec.c:396:38
	ldr	r5, [r1]
	.loc	1 397 38                        @ test/adpcm_dec.c:397:38
	ldr	r4, [r1, #4]
	.loc	1 397 9 is_stmt 0               @ test/adpcm_dec.c:397:9
	mla	r2, r3, r4, r7
	.loc	1 397 44                        @ test/adpcm_dec.c:397:44
	add	r3, r1, #8
	.loc	1 396 22 is_stmt 1              @ test/adpcm_dec.c:396:22
	ldr	r4, [r12], #4
	.loc	1 396 9 is_stmt 0               @ test/adpcm_dec.c:396:9
	mla	r1, r4, r5, r6
	.loc	1 395 25 is_stmt 1              @ test/adpcm_dec.c:395:25
	add	r0, r0, #1
	str	lr, [r11, #-40]                 @ 4-byte Spill
	str	r12, [r11, #-36]                @ 4-byte Spill
	str	r3, [r11, #-32]                 @ 4-byte Spill
	str	r2, [r11, #-28]                 @ 4-byte Spill
	str	r1, [r11, #-24]                 @ 4-byte Spill
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	1 395 3 is_stmt 0               @ test/adpcm_dec.c:395:3
	b	.LBB3_1
.LBB3_4:                                @ %for.end
	.loc	1 401 20 is_stmt 1              @ test/adpcm_dec.c:401:20
	ldr	r4, [sp, #56]                   @ 4-byte Reload
	ldr	r12, [sp, #52]                  @ 4-byte Reload
	ldr	r2, .LCPI3_43
	ldr	r0, [r2, #40]!
	.loc	1 401 34 is_stmt 0              @ test/adpcm_dec.c:401:34
	ldr	r1, .LCPI3_42
	ldr	r3, [r1, #88]
	.loc	1 402 34 is_stmt 1              @ test/adpcm_dec.c:402:34
	ldr	lr, [r1, #92]
	.loc	1 401 7                         @ test/adpcm_dec.c:401:7
	mla	r1, r0, r3, r12
	.loc	1 402 20                        @ test/adpcm_dec.c:402:20
	ldr	r12, .LCPI3_44
	ldr	r3, [r12, #40]!
	.loc	1 402 7 is_stmt 0               @ test/adpcm_dec.c:402:7
	mla	r0, r3, lr, r4
	.loc	1 405 25 is_stmt 1              @ test/adpcm_dec.c:405:25
	asr	r1, r1, #14
	.loc	1 405 19 is_stmt 0              @ test/adpcm_dec.c:405:19
	ldr	r3, .LCPI3_45
	str	r1, [r3]
	.loc	1 406 25 is_stmt 1              @ test/adpcm_dec.c:406:25
	asr	r0, r0, #14
	.loc	1 406 19 is_stmt 0              @ test/adpcm_dec.c:406:19
	ldr	r1, .LCPI3_46
	str	r0, [r1]
	sub	r0, r12, #4
	sub	r3, r2, #4
	mov	r1, #0
	str	r12, [sp, #28]                  @ 4-byte Spill
	str	r3, [sp, #32]                   @ 4-byte Spill
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [sp, #40]                   @ 4-byte Spill
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	1 413 9 is_stmt 1               @ test/adpcm_dec.c:413:9
	b	.LBB3_5
.LBB3_5:                                @ %for.cond47
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r12, [sp, #44]                  @ 4-byte Reload
	str	r12, [sp, #8]                   @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	str	r3, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	.loc	1 413 3                         @ test/adpcm_dec.c:413:3
	cmp	r0, #10
	beq	.LBB3_8
	b	.LBB3_6
.LBB3_6:                                @ %for.body49
                                        @   in Loop: Header=BB3_5 Depth=1
	.loc	1 414 17 is_stmt 1              @ test/adpcm_dec.c:414:17
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r2]
	.loc	1 414 15 is_stmt 0              @ test/adpcm_dec.c:414:15
	str	r2, [r3]
	.loc	1 415 17 is_stmt 1              @ test/adpcm_dec.c:415:17
	ldr	r0, [r0]
	.loc	1 415 15 is_stmt 0              @ test/adpcm_dec.c:415:15
	str	r0, [r1]
	.loc	1 416 3 is_stmt 1               @ test/adpcm_dec.c:416:3
	b	.LBB3_7
.LBB3_7:                                @ %for.inc54
                                        @   in Loop: Header=BB3_5 Depth=1
	.loc	1 415 12                        @ test/adpcm_dec.c:415:12
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r12, [sp, #24]                  @ 4-byte Reload
	sub	r12, r12, #4
	.loc	1 415 25 is_stmt 0              @ test/adpcm_dec.c:415:25
	sub	r0, r0, #4
	.loc	1 414 12 is_stmt 1              @ test/adpcm_dec.c:414:12
	sub	r2, r2, #4
	.loc	1 414 25 is_stmt 0              @ test/adpcm_dec.c:414:25
	sub	r3, r3, #4
	.loc	1 413 25 is_stmt 1              @ test/adpcm_dec.c:413:25
	add	r1, r1, #1
	str	r12, [sp, #28]                  @ 4-byte Spill
	str	r3, [sp, #32]                   @ 4-byte Spill
	str	r2, [sp, #36]                   @ 4-byte Spill
	str	r1, [sp, #40]                   @ 4-byte Spill
	str	r0, [sp, #44]                   @ 4-byte Spill
	.loc	1 413 3 is_stmt 0               @ test/adpcm_dec.c:413:3
	b	.LBB3_5
.LBB3_8:                                @ %for.end56
	.loc	1 418 13 is_stmt 1              @ test/adpcm_dec.c:418:13
	ldr	r0, .LCPI3_40
	ldr	r0, [r0]
	.loc	1 418 11 is_stmt 0              @ test/adpcm_dec.c:418:11
	ldr	r1, .LCPI3_43
	str	r0, [r1]
	.loc	1 419 13 is_stmt 1              @ test/adpcm_dec.c:419:13
	ldr	r0, .LCPI3_41
	ldr	r0, [r0]
	.loc	1 419 11 is_stmt 0              @ test/adpcm_dec.c:419:11
	ldr	r1, .LCPI3_44
	str	r0, [r1]
	.loc	1 421 3 is_stmt 1               @ test/adpcm_dec.c:421:3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp7:
	.p2align	2
@ %bb.9:
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
.LCPI3_0:
	.long	adpcm_dec_ilr
.LCPI3_1:
	.long	adpcm_dec_ih
.LCPI3_2:
	.long	adpcm_dec_dec_del_bpl
.LCPI3_3:
	.long	adpcm_dec_dec_del_dltx
.LCPI3_4:
	.long	adpcm_dec_dec_szl
.LCPI3_5:
	.long	adpcm_dec_dec_rlt1
.LCPI3_6:
	.long	adpcm_dec_dec_al1
.LCPI3_7:
	.long	adpcm_dec_dec_rlt2
.LCPI3_8:
	.long	adpcm_dec_dec_al2
.LCPI3_9:
	.long	adpcm_dec_dec_spl
.LCPI3_10:
	.long	adpcm_dec_dec_sl
.LCPI3_11:
	.long	adpcm_dec_dec_detl
.LCPI3_12:
	.long	adpcm_dec_qq4_code4_table
.LCPI3_13:
	.long	adpcm_dec_dec_dlt
.LCPI3_14:
	.long	adpcm_dec_il
.LCPI3_15:
	.long	adpcm_dec_qq6_code6_table
.LCPI3_16:
	.long	adpcm_dec_dl
.LCPI3_17:
	.long	adpcm_dec_rl
.LCPI3_18:
	.long	adpcm_dec_dec_nbl
.LCPI3_19:
	.long	adpcm_dec_dec_plt
.LCPI3_20:
	.long	adpcm_dec_dec_plt1
.LCPI3_21:
	.long	adpcm_dec_dec_plt2
.LCPI3_22:
	.long	adpcm_dec_dec_rlt
.LCPI3_23:
	.long	adpcm_dec_dec_del_bph
.LCPI3_24:
	.long	adpcm_dec_dec_del_dhx
.LCPI3_25:
	.long	adpcm_dec_dec_szh
.LCPI3_26:
	.long	adpcm_dec_dec_rh1
.LCPI3_27:
	.long	adpcm_dec_dec_ah1
.LCPI3_28:
	.long	adpcm_dec_dec_rh2
.LCPI3_29:
	.long	adpcm_dec_dec_ah2
.LCPI3_30:
	.long	adpcm_dec_dec_sph
.LCPI3_31:
	.long	adpcm_dec_dec_sh
.LCPI3_32:
	.long	adpcm_dec_dec_deth
.LCPI3_33:
	.long	adpcm_dec_qq2_code2_table
.LCPI3_34:
	.long	adpcm_dec_dec_dh
.LCPI3_35:
	.long	adpcm_dec_dec_nbh
.LCPI3_36:
	.long	adpcm_dec_dec_ph
.LCPI3_37:
	.long	adpcm_dec_dec_ph1
.LCPI3_38:
	.long	adpcm_dec_dec_ph2
.LCPI3_39:
	.long	adpcm_dec_rh
.LCPI3_40:
	.long	adpcm_dec_xd
.LCPI3_41:
	.long	adpcm_dec_xs
.LCPI3_42:
	.long	adpcm_dec_h
.LCPI3_43:
	.long	adpcm_dec_accumc
.LCPI3_44:
	.long	adpcm_dec_accumd
.LCPI3_45:
	.long	adpcm_dec_xout1
.LCPI3_46:
	.long	adpcm_dec_xout2
.Lfunc_end3:
	.size	adpcm_dec_decode, .Lfunc_end3-adpcm_dec_decode
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_filtez                @ -- Begin function adpcm_dec_filtez
	.p2align	2
	.type	adpcm_dec_filtez,%function
	.code	32                              @ @adpcm_dec_filtez
adpcm_dec_filtez:
.Lfunc_begin4:
	.loc	1 428 0 is_stmt 1               @ test/adpcm_dec.c:428:0
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
	sub	sp, sp, #32
.Ltmp8:
	.loc	1 433 18 prologue_end           @ test/adpcm_dec.c:433:18
	ldr	r2, [r0]
	.loc	1 433 31 is_stmt 0              @ test/adpcm_dec.c:433:31
	ldr	r12, [r1]
	.loc	1 433 27                        @ test/adpcm_dec.c:433:27
	mul	r3, r2, r12
	mov	r2, #1
	str	r3, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [r11, #-16]                 @ 4-byte Spill
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	1 437 9 is_stmt 1               @ test/adpcm_dec.c:437:9
	b	.LBB4_1
.LBB4_1:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 @ test/adpcm_dec.c:0:9
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r2, [r11, #-12]                 @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	str	r3, [sp, #4]                    @ 4-byte Spill
	add	r2, r2, #4
	str	r2, [sp, #8]                    @ 4-byte Spill
	add	r1, r1, #4
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	1 437 3                         @ test/adpcm_dec.c:437:3
	cmp	r0, #6
	beq	.LBB4_4
	b	.LBB4_2
.LBB4_2:                                @ %for.body
                                        @   in Loop: Header=BB4_1 Depth=1
	.loc	1 438 5 is_stmt 1               @ test/adpcm_dec.c:438:5
	b	.LBB4_3
.LBB4_3:                                @ %for.inc
                                        @   in Loop: Header=BB4_1 Depth=1
	.loc	1 438 21 is_stmt 0              @ test/adpcm_dec.c:438:21
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	ldr	r12, [r0]
	.loc	1 438 34                        @ test/adpcm_dec.c:438:34
	ldr	lr, [r1]
	.loc	1 438 8                         @ test/adpcm_dec.c:438:8
	mla	r3, r12, lr, r4
	.loc	1 437 24 is_stmt 1              @ test/adpcm_dec.c:437:24
	add	r2, r2, #1
	str	r3, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [r11, #-16]                 @ 4-byte Spill
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	1 437 3 is_stmt 0               @ test/adpcm_dec.c:437:3
	b	.LBB4_1
.LBB4_4:                                @ %for.end
	.loc	1 440 24 is_stmt 1              @ test/adpcm_dec.c:440:24
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	asr	r0, r0, #14
	.loc	1 440 3 is_stmt 0               @ test/adpcm_dec.c:440:3
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp9:
.Lfunc_end4:
	.size	adpcm_dec_filtez, .Lfunc_end4-adpcm_dec_filtez
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_filtep                @ -- Begin function adpcm_dec_filtep
	.p2align	2
	.type	adpcm_dec_filtep,%function
	.code	32                              @ @adpcm_dec_filtep
adpcm_dec_filtep:
.Lfunc_begin5:
	.loc	1 447 0 is_stmt 1               @ test/adpcm_dec.c:447:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r12, r1
	mov	r1, r0
.Ltmp10:
	.loc	1 452 21 prologue_end           @ test/adpcm_dec.c:452:21
	mul	r0, r1, r12
	lsl	r0, r0, #1
	.loc	1 454 22                        @ test/adpcm_dec.c:454:22
	mul	r1, r2, r3
	.loc	1 454 6 is_stmt 0               @ test/adpcm_dec.c:454:6
	add	r0, r0, r1, lsl #1
	.loc	1 456 24 is_stmt 1              @ test/adpcm_dec.c:456:24
	asr	r0, r0, #15
	.loc	1 456 3 is_stmt 0               @ test/adpcm_dec.c:456:3
	bx	lr
.Ltmp11:
.Lfunc_end5:
	.size	adpcm_dec_filtep, .Lfunc_end5-adpcm_dec_filtep
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_logscl                @ -- Begin function adpcm_dec_logscl
	.p2align	2
	.type	adpcm_dec_logscl,%function
	.code	32                              @ @adpcm_dec_logscl
adpcm_dec_logscl:
.Lfunc_begin6:
	.loc	1 463 0 is_stmt 1               @ test/adpcm_dec.c:463:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
.Ltmp12:
	.loc	1 467 22 prologue_end           @ test/adpcm_dec.c:467:22
	rsb	r1, r1, r1, lsl #7
	.loc	1 468 49                        @ test/adpcm_dec.c:468:49
	bic	r2, r0, #3
	.loc	1 468 21 is_stmt 0              @ test/adpcm_dec.c:468:21
	ldr	r0, .LCPI6_0
	ldr	r0, [r0, r2]
	.loc	1 468 19                        @ test/adpcm_dec.c:468:19
	add	r0, r0, r1, asr #7
	.loc	1 470 8 is_stmt 1               @ test/adpcm_dec.c:470:8
	cmn	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	bgt	.LBB6_2
	b	.LBB6_1
.LBB6_1:                                @ %if.then
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 471 5 is_stmt 1               @ test/adpcm_dec.c:471:5
	b	.LBB6_2
.LBB6_2:                                @ %if.end
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	1 472 8 is_stmt 1               @ test/adpcm_dec.c:472:8
	cmp	r0, #18432
	str	r0, [sp]                        @ 4-byte Spill
	ble	.LBB6_4
	b	.LBB6_3
.LBB6_3:                                @ %if.then3
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	mov	r0, #18432
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 473 5 is_stmt 1               @ test/adpcm_dec.c:473:5
	b	.LBB6_4
.LBB6_4:                                @ %if.end4
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 475 3 is_stmt 1               @ test/adpcm_dec.c:475:3
	add	sp, sp, #8
	bx	lr
.Ltmp13:
	.p2align	2
@ %bb.5:
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
.LCPI6_0:
	.long	adpcm_dec_wl_code_table
.Lfunc_end6:
	.size	adpcm_dec_logscl, .Lfunc_end6-adpcm_dec_logscl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_scalel                @ -- Begin function adpcm_dec_scalel
	.p2align	2
	.type	adpcm_dec_scalel,%function
	.code	32                              @ @adpcm_dec_scalel
adpcm_dec_scalel:
.Lfunc_begin7:
	.loc	1 481 0 is_stmt 1               @ test/adpcm_dec.c:481:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
	mov	r0, #124
.Ltmp14:
	.loc	1 487 9 prologue_end            @ test/adpcm_dec.c:487:9
	and	r3, r0, r2, lsr #4
	ldr	r0, .LCPI7_0
	ldr	r0, [r0, r3]
	.loc	1 487 60 is_stmt 0              @ test/adpcm_dec.c:487:60
	sub	r1, r1, r2, asr #11
	add	r1, r1, #1
	.loc	1 487 36                        @ test/adpcm_dec.c:487:36
	asr	r0, r0, r1
	.loc	1 489 16 is_stmt 1              @ test/adpcm_dec.c:489:16
	lsl	r0, r0, #3
	.loc	1 489 3 is_stmt 0               @ test/adpcm_dec.c:489:3
	bx	lr
.Ltmp15:
	.p2align	2
@ %bb.1:
	.loc	1 0 3                           @ test/adpcm_dec.c:0:3
.LCPI7_0:
	.long	adpcm_dec_ilb_table
.Lfunc_end7:
	.size	adpcm_dec_scalel, .Lfunc_end7-adpcm_dec_scalel
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_upzero                @ -- Begin function adpcm_dec_upzero
	.p2align	2
	.type	adpcm_dec_upzero,%function
	.code	32                              @ @adpcm_dec_upzero
adpcm_dec_upzero:
.Lfunc_begin8:
	.loc	1 496 0 is_stmt 1               @ test/adpcm_dec.c:496:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
.Ltmp16:
	.loc	1 501 8 prologue_end            @ test/adpcm_dec.c:501:8
	cmp	r0, #0
	bne	.LBB8_6
	b	.LBB8_1
.LBB8_1:                                @ %if.then
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 503 11 is_stmt 1              @ test/adpcm_dec.c:503:11
	b	.LBB8_2
.LBB8_2:                                @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 503 5                         @ test/adpcm_dec.c:503:5
	cmp	r0, #6
	beq	.LBB8_5
	b	.LBB8_3
.LBB8_3:                                @ %for.body
                                        @   in Loop: Header=BB8_2 Depth=1
	.loc	1 504 36 is_stmt 1              @ test/adpcm_dec.c:504:36
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [r1, r2, lsl #2]
	.loc	1 504 34 is_stmt 0              @ test/adpcm_dec.c:504:34
	rsb	r0, r0, r0, lsl #8
	.loc	1 504 47                        @ test/adpcm_dec.c:504:47
	asr	r0, r0, #8
	.loc	1 504 16                        @ test/adpcm_dec.c:504:16
	str	r0, [r1, r2, lsl #2]
	.loc	1 505 5 is_stmt 1               @ test/adpcm_dec.c:505:5
	b	.LBB8_4
.LBB8_4:                                @ %for.inc
                                        @   in Loop: Header=BB8_2 Depth=1
	.loc	1 503 26                        @ test/adpcm_dec.c:503:26
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 503 5 is_stmt 0               @ test/adpcm_dec.c:503:5
	b	.LBB8_2
.LBB8_5:                                @ %for.end
	.loc	1 507 3 is_stmt 1               @ test/adpcm_dec.c:507:3
	b	.LBB8_14
.LBB8_6:                                @ %if.else
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 509 11 is_stmt 1              @ test/adpcm_dec.c:509:11
	b	.LBB8_7
.LBB8_7:                                @ %for.cond3
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 509 5                         @ test/adpcm_dec.c:509:5
	cmp	r0, #6
	beq	.LBB8_13
	b	.LBB8_8
.LBB8_8:                                @ %for.body5
                                        @   in Loop: Header=BB8_7 Depth=1
	.loc	1 510 26 is_stmt 1              @ test/adpcm_dec.c:510:26
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r0, r1, lsl #2]
	.loc	1 510 24 is_stmt 0              @ test/adpcm_dec.c:510:24
	mul	r0, r1, r2
	.loc	1 510 12                        @ test/adpcm_dec.c:510:12
	cmp	r0, #0
	bmi	.LBB8_10
	b	.LBB8_9
.LBB8_9:                                @ %if.then9
                                        @   in Loop: Header=BB8_7 Depth=1
	.loc	1 0 12                          @ test/adpcm_dec.c:0:12
	mov	r0, #128
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 511 9 is_stmt 1               @ test/adpcm_dec.c:511:9
	b	.LBB8_11
.LBB8_10:                               @ %if.else10
                                        @   in Loop: Header=BB8_7 Depth=1
	.loc	1 0 9 is_stmt 0                 @ test/adpcm_dec.c:0:9
	mvn	r0, #127
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB8_11
.LBB8_11:                               @ %if.end
                                        @   in Loop: Header=BB8_7 Depth=1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 515 31 is_stmt 1              @ test/adpcm_dec.c:515:31
	ldr	r3, [r1, r2, lsl #2]
	.loc	1 515 29 is_stmt 0              @ test/adpcm_dec.c:515:29
	rsb	r3, r3, r3, lsl #8
	.loc	1 516 22 is_stmt 1              @ test/adpcm_dec.c:516:22
	add	r0, r0, r3, asr #8
	.loc	1 516 16 is_stmt 0              @ test/adpcm_dec.c:516:16
	str	r0, [r1, r2, lsl #2]
	.loc	1 517 5 is_stmt 1               @ test/adpcm_dec.c:517:5
	b	.LBB8_12
.LBB8_12:                               @ %for.inc15
                                        @   in Loop: Header=BB8_7 Depth=1
	.loc	1 509 26                        @ test/adpcm_dec.c:509:26
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 509 5 is_stmt 0               @ test/adpcm_dec.c:509:5
	b	.LBB8_7
.LBB8_13:                               @ %for.end17
	.loc	1 0 5                           @ test/adpcm_dec.c:0:5
	b	.LBB8_14
.LBB8_14:                               @ %if.end18
	.loc	1 522 15 is_stmt 1              @ test/adpcm_dec.c:522:15
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [r1, #16]
	.loc	1 522 13 is_stmt 0              @ test/adpcm_dec.c:522:13
	str	r2, [r1, #20]
	.loc	1 523 15 is_stmt 1              @ test/adpcm_dec.c:523:15
	ldr	r2, [r1, #12]
	.loc	1 523 13 is_stmt 0              @ test/adpcm_dec.c:523:13
	str	r2, [r1, #16]
	.loc	1 524 15 is_stmt 1              @ test/adpcm_dec.c:524:15
	ldr	r2, [r1, #8]
	.loc	1 524 13 is_stmt 0              @ test/adpcm_dec.c:524:13
	str	r2, [r1, #12]
	.loc	1 525 15 is_stmt 1              @ test/adpcm_dec.c:525:15
	ldr	r2, [r1]
	.loc	1 525 13 is_stmt 0              @ test/adpcm_dec.c:525:13
	str	r2, [r1, #4]
	.loc	1 526 13 is_stmt 1              @ test/adpcm_dec.c:526:13
	str	r0, [r1]
	.loc	1 528 3                         @ test/adpcm_dec.c:528:3
	add	sp, sp, #32
	bx	lr
.Ltmp17:
.Lfunc_end8:
	.size	adpcm_dec_upzero, .Lfunc_end8-adpcm_dec_upzero
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_uppol2                @ -- Begin function adpcm_dec_uppol2
	.p2align	2
	.type	adpcm_dec_uppol2,%function
	.code	32                              @ @adpcm_dec_uppol2
adpcm_dec_uppol2:
.Lfunc_begin9:
	.loc	1 535 0                         @ test/adpcm_dec.c:535:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #36
	.cfi_def_cfa_offset 36
	str	r2, [sp, #16]                   @ 4-byte Spill
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [sp, #36]
	str	r1, [sp, #24]                   @ 4-byte Spill
.Ltmp18:
	.loc	1 540 12 prologue_end           @ test/adpcm_dec.c:540:12
	lsl	r0, r0, #2
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	1 541 20                        @ test/adpcm_dec.c:541:20
	mul	r1, r2, r3
	.loc	1 541 8 is_stmt 0               @ test/adpcm_dec.c:541:8
	cmp	r1, #0
	str	r0, [sp, #32]                   @ 4-byte Spill
	bmi	.LBB9_2
	b	.LBB9_1
.LBB9_1:                                @ %if.then
	.loc	1 542 11 is_stmt 1              @ test/adpcm_dec.c:542:11
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	1 542 5 is_stmt 0               @ test/adpcm_dec.c:542:5
	b	.LBB9_2
.LBB9_2:                                @ %if.end
	.loc	1 0 0                           @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	.loc	1 543 13 is_stmt 1              @ test/adpcm_dec.c:543:13
	asr	r0, r0, #7
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 545 20                        @ test/adpcm_dec.c:545:20
	mul	r0, r1, r2
	.loc	1 545 8 is_stmt 0               @ test/adpcm_dec.c:545:8
	cmp	r0, #0
	bmi	.LBB9_4
	b	.LBB9_3
.LBB9_3:                                @ %if.then4
	.loc	1 546 15 is_stmt 1              @ test/adpcm_dec.c:546:15
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, #128
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 547 3                         @ test/adpcm_dec.c:547:3
	b	.LBB9_5
.LBB9_4:                                @ %if.else
	.loc	1 548 15                        @ test/adpcm_dec.c:548:15
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	sub	r0, r0, #128
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB9_5
.LBB9_5:                                @ %if.end6
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	.loc	1 549 23 is_stmt 1              @ test/adpcm_dec.c:549:23
	rsb	r1, r1, r1, lsl #7
	.loc	1 549 14 is_stmt 0              @ test/adpcm_dec.c:549:14
	add	r0, r0, r1, asr #7
	.loc	1 552 8 is_stmt 1               @ test/adpcm_dec.c:552:8
	cmp	r0, #12288
	str	r0, [sp, #4]                    @ 4-byte Spill
	ble	.LBB9_7
	b	.LBB9_6
.LBB9_6:                                @ %if.then11
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	mov	r0, #12288
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 553 5 is_stmt 1               @ test/adpcm_dec.c:553:5
	b	.LBB9_7
.LBB9_7:                                @ %if.end12
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	1 554 8 is_stmt 1               @ test/adpcm_dec.c:554:8
	cmn	r0, #12288
	str	r0, [sp]                        @ 4-byte Spill
	bge	.LBB9_9
	b	.LBB9_8
.LBB9_8:                                @ %if.then14
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	ldr	r0, .LCPI9_0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 555 5 is_stmt 1               @ test/adpcm_dec.c:555:5
	b	.LBB9_9
.LBB9_9:                                @ %if.end15
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 557 3 is_stmt 1               @ test/adpcm_dec.c:557:3
	add	sp, sp, #36
	bx	lr
.Ltmp19:
	.p2align	2
@ %bb.10:
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
.LCPI9_0:
	.long	4294955008                      @ 0xffffd000
.Lfunc_end9:
	.size	adpcm_dec_uppol2, .Lfunc_end9-adpcm_dec_uppol2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_uppol1                @ -- Begin function adpcm_dec_uppol1
	.p2align	2
	.type	adpcm_dec_uppol1,%function
	.code	32                              @ @adpcm_dec_uppol1
adpcm_dec_uppol1:
.Lfunc_begin10:
	.loc	1 564 0 is_stmt 1               @ test/adpcm_dec.c:564:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	r1, [sp, #24]                   @ 4-byte Spill
.Ltmp20:
	.loc	1 569 23 prologue_end           @ test/adpcm_dec.c:569:23
	rsb	r0, r0, r0, lsl #8
	.loc	1 569 32 is_stmt 0              @ test/adpcm_dec.c:569:32
	asr	r0, r0, #8
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	1 570 20 is_stmt 1              @ test/adpcm_dec.c:570:20
	mul	r0, r2, r3
	.loc	1 570 8 is_stmt 0               @ test/adpcm_dec.c:570:8
	cmp	r0, #0
	bmi	.LBB10_2
	b	.LBB10_1
.LBB10_1:                               @ %if.then
	.loc	1 571 23 is_stmt 1              @ test/adpcm_dec.c:571:23
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	add	r0, r0, #192
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	1 572 3                         @ test/adpcm_dec.c:572:3
	b	.LBB10_3
.LBB10_2:                               @ %if.else
	.loc	1 573 23                        @ test/adpcm_dec.c:573:23
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	sub	r0, r0, #192
	str	r0, [sp, #20]                   @ 4-byte Spill
	b	.LBB10_3
.LBB10_3:                               @ %if.end
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	.loc	1 576 15 is_stmt 1              @ test/adpcm_dec.c:576:15
	sub	r2, r1, #15360
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r2, [sp, #8]                    @ 4-byte Spill
	rsb	r1, r1, #15360
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	1 577 8                         @ test/adpcm_dec.c:577:8
	cmp	r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ble	.LBB10_5
	b	.LBB10_4
.LBB10_4:                               @ %if.then4
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 578 5 is_stmt 1               @ test/adpcm_dec.c:578:5
	b	.LBB10_5
.LBB10_5:                               @ %if.end5
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	.loc	1 579 8 is_stmt 1               @ test/adpcm_dec.c:579:8
	cmp	r0, r1
	str	r0, [sp]                        @ 4-byte Spill
	bge	.LBB10_7
	b	.LBB10_6
.LBB10_6:                               @ %if.then8
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 580 5 is_stmt 1               @ test/adpcm_dec.c:580:5
	b	.LBB10_7
.LBB10_7:                               @ %if.end10
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 582 3 is_stmt 1               @ test/adpcm_dec.c:582:3
	add	sp, sp, #32
	bx	lr
.Ltmp21:
.Lfunc_end10:
	.size	adpcm_dec_uppol1, .Lfunc_end10-adpcm_dec_uppol1
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_logsch                @ -- Begin function adpcm_dec_logsch
	.p2align	2
	.type	adpcm_dec_logsch,%function
	.code	32                              @ @adpcm_dec_logsch
adpcm_dec_logsch:
.Lfunc_begin11:
	.loc	1 589 0                         @ test/adpcm_dec.c:589:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	mov	r2, r0
.Ltmp22:
	.loc	1 593 22 prologue_end           @ test/adpcm_dec.c:593:22
	rsb	r1, r1, r1, lsl #7
	.loc	1 594 14                        @ test/adpcm_dec.c:594:14
	ldr	r0, .LCPI11_0
	ldr	r0, [r0, r2, lsl #2]
	.loc	1 594 12 is_stmt 0              @ test/adpcm_dec.c:594:12
	add	r0, r0, r1, asr #7
	.loc	1 596 8 is_stmt 1               @ test/adpcm_dec.c:596:8
	cmn	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	bgt	.LBB11_2
	b	.LBB11_1
.LBB11_1:                               @ %if.then
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 597 5 is_stmt 1               @ test/adpcm_dec.c:597:5
	b	.LBB11_2
.LBB11_2:                               @ %if.end
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	1 598 8 is_stmt 1               @ test/adpcm_dec.c:598:8
	cmp	r0, #22528
	str	r0, [sp]                        @ 4-byte Spill
	ble	.LBB11_4
	b	.LBB11_3
.LBB11_3:                               @ %if.then2
	.loc	1 0 8 is_stmt 0                 @ test/adpcm_dec.c:0:8
	mov	r0, #22528
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 599 5 is_stmt 1               @ test/adpcm_dec.c:599:5
	b	.LBB11_4
.LBB11_4:                               @ %if.end3
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	1 601 3 is_stmt 1               @ test/adpcm_dec.c:601:3
	add	sp, sp, #8
	bx	lr
.Ltmp23:
	.p2align	2
@ %bb.5:
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
.LCPI11_0:
	.long	adpcm_dec_wh_code_table
.Lfunc_end11:
	.size	adpcm_dec_logsch, .Lfunc_end11-adpcm_dec_logsch
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_reset                 @ -- Begin function adpcm_dec_reset
	.p2align	2
	.type	adpcm_dec_reset,%function
	.code	32                              @ @adpcm_dec_reset
adpcm_dec_reset:
.Lfunc_begin12:
	.loc	1 611 0 is_stmt 1               @ test/adpcm_dec.c:611:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #28
	.cfi_def_cfa_offset 28
.Ltmp24:
	.loc	1 615 39 prologue_end           @ test/adpcm_dec.c:615:39
	ldr	r1, .LCPI12_0
	mov	r0, #32
	str	r0, [r1]
	.loc	1 615 18 is_stmt 0              @ test/adpcm_dec.c:615:18
	ldr	r1, .LCPI12_1
	str	r0, [r1]
	.loc	1 616 39 is_stmt 1              @ test/adpcm_dec.c:616:39
	ldr	r1, .LCPI12_2
	mov	r0, #8
	str	r0, [r1]
	.loc	1 616 18 is_stmt 0              @ test/adpcm_dec.c:616:18
	ldr	r1, .LCPI12_3
	str	r0, [r1]
	.loc	1 618 69 is_stmt 1              @ test/adpcm_dec.c:618:69
	ldr	r1, .LCPI12_4
	mov	r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	str	r0, [r1]
	.loc	1 618 52 is_stmt 0              @ test/adpcm_dec.c:618:52
	ldr	r1, .LCPI12_5
	str	r0, [r1]
	.loc	1 618 35                        @ test/adpcm_dec.c:618:35
	ldr	r1, .LCPI12_6
	str	r0, [r1]
	.loc	1 617 66 is_stmt 1              @ test/adpcm_dec.c:617:66
	ldr	r1, .LCPI12_7
	str	r0, [r1]
	.loc	1 617 49 is_stmt 0              @ test/adpcm_dec.c:617:49
	ldr	r1, .LCPI12_8
	str	r0, [r1]
	.loc	1 617 33                        @ test/adpcm_dec.c:617:33
	ldr	r1, .LCPI12_9
	str	r0, [r1]
	.loc	1 617 17                        @ test/adpcm_dec.c:617:17
	ldr	r1, .LCPI12_10
	str	r0, [r1]
	.loc	1 620 67 is_stmt 1              @ test/adpcm_dec.c:620:67
	ldr	r1, .LCPI12_11
	str	r0, [r1]
	.loc	1 620 51 is_stmt 0              @ test/adpcm_dec.c:620:51
	ldr	r1, .LCPI12_12
	str	r0, [r1]
	.loc	1 619 81 is_stmt 1              @ test/adpcm_dec.c:619:81
	ldr	r1, .LCPI12_13
	str	r0, [r1]
	.loc	1 619 65 is_stmt 0              @ test/adpcm_dec.c:619:65
	ldr	r1, .LCPI12_14
	str	r0, [r1]
	.loc	1 619 49                        @ test/adpcm_dec.c:619:49
	ldr	r1, .LCPI12_15
	str	r0, [r1]
	.loc	1 619 33                        @ test/adpcm_dec.c:619:33
	ldr	r1, .LCPI12_16
	str	r0, [r1]
	.loc	1 619 17                        @ test/adpcm_dec.c:619:17
	ldr	r1, .LCPI12_17
	str	r0, [r1]
	.loc	1 622 68 is_stmt 1              @ test/adpcm_dec.c:622:68
	ldr	r1, .LCPI12_18
	str	r0, [r1]
	.loc	1 622 47 is_stmt 0              @ test/adpcm_dec.c:622:47
	ldr	r1, .LCPI12_19
	str	r0, [r1]
	.loc	1 622 26                        @ test/adpcm_dec.c:622:26
	ldr	r1, .LCPI12_20
	str	r0, [r1]
	.loc	1 621 82 is_stmt 1              @ test/adpcm_dec.c:621:82
	ldr	r1, .LCPI12_21
	str	r0, [r1]
	.loc	1 621 61 is_stmt 0              @ test/adpcm_dec.c:621:61
	ldr	r1, .LCPI12_22
	str	r0, [r1]
	.loc	1 621 41                        @ test/adpcm_dec.c:621:41
	ldr	r1, .LCPI12_23
	str	r0, [r1]
	.loc	1 621 21                        @ test/adpcm_dec.c:621:21
	ldr	r1, .LCPI12_24
	str	r0, [r1]
	.loc	1 624 65 is_stmt 1              @ test/adpcm_dec.c:624:65
	ldr	r1, .LCPI12_25
	str	r0, [r1]
	.loc	1 624 45 is_stmt 0              @ test/adpcm_dec.c:624:45
	ldr	r1, .LCPI12_26
	str	r0, [r1]
	.loc	1 624 25                        @ test/adpcm_dec.c:624:25
	ldr	r1, .LCPI12_27
	str	r0, [r1]
	.loc	1 623 81 is_stmt 1              @ test/adpcm_dec.c:623:81
	ldr	r1, .LCPI12_28
	str	r0, [r1]
	.loc	1 623 61 is_stmt 0              @ test/adpcm_dec.c:623:61
	ldr	r1, .LCPI12_29
	str	r0, [r1]
	.loc	1 623 41                        @ test/adpcm_dec.c:623:41
	ldr	r1, .LCPI12_30
	str	r0, [r1]
	.loc	1 623 21                        @ test/adpcm_dec.c:623:21
	ldr	r1, .LCPI12_31
	str	r0, [r1]
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	1 627 9 is_stmt 1               @ test/adpcm_dec.c:627:9
	b	.LBB12_1
.LBB12_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	1 627 3                         @ test/adpcm_dec.c:627:3
	cmp	r0, #6
	beq	.LBB12_4
	b	.LBB12_2
.LBB12_2:                               @ %for.body
                                        @   in Loop: Header=BB12_1 Depth=1
	.loc	1 629 5 is_stmt 1               @ test/adpcm_dec.c:629:5
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r1, .LCPI12_32
	mov	r0, #0
	.loc	1 629 30 is_stmt 0              @ test/adpcm_dec.c:629:30
	str	r0, [r1, r2, lsl #2]
	.loc	1 630 5 is_stmt 1               @ test/adpcm_dec.c:630:5
	ldr	r1, .LCPI12_33
	.loc	1 630 33 is_stmt 0              @ test/adpcm_dec.c:630:33
	str	r0, [r1, r2, lsl #2]
	.loc	1 631 5 is_stmt 1               @ test/adpcm_dec.c:631:5
	ldr	r1, .LCPI12_34
	.loc	1 631 32 is_stmt 0              @ test/adpcm_dec.c:631:32
	str	r0, [r1, r2, lsl #2]
	.loc	1 632 3 is_stmt 1               @ test/adpcm_dec.c:632:3
	b	.LBB12_3
.LBB12_3:                               @ %for.inc
                                        @   in Loop: Header=BB12_1 Depth=1
	.loc	1 627 24                        @ test/adpcm_dec.c:627:24
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	1 627 3 is_stmt 0               @ test/adpcm_dec.c:627:3
	b	.LBB12_1
.LBB12_4:                               @ %for.end
	.loc	1 0 3                           @ test/adpcm_dec.c:0:3
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 635 9 is_stmt 1               @ test/adpcm_dec.c:635:9
	b	.LBB12_5
.LBB12_5:                               @ %for.cond3
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 635 3                         @ test/adpcm_dec.c:635:3
	cmp	r0, #6
	beq	.LBB12_8
	b	.LBB12_6
.LBB12_6:                               @ %for.body5
                                        @   in Loop: Header=BB12_5 Depth=1
	.loc	1 637 5 is_stmt 1               @ test/adpcm_dec.c:637:5
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r1, .LCPI12_35
	mov	r0, #0
	.loc	1 637 30 is_stmt 0              @ test/adpcm_dec.c:637:30
	str	r0, [r1, r2, lsl #2]
	.loc	1 638 5 is_stmt 1               @ test/adpcm_dec.c:638:5
	ldr	r1, .LCPI12_36
	.loc	1 638 32 is_stmt 0              @ test/adpcm_dec.c:638:32
	str	r0, [r1, r2, lsl #2]
	.loc	1 639 5 is_stmt 1               @ test/adpcm_dec.c:639:5
	ldr	r1, .LCPI12_37
	.loc	1 639 32 is_stmt 0              @ test/adpcm_dec.c:639:32
	str	r0, [r1, r2, lsl #2]
	.loc	1 640 3 is_stmt 1               @ test/adpcm_dec.c:640:3
	b	.LBB12_7
.LBB12_7:                               @ %for.inc9
                                        @   in Loop: Header=BB12_5 Depth=1
	.loc	1 635 24                        @ test/adpcm_dec.c:635:24
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 635 3 is_stmt 0               @ test/adpcm_dec.c:635:3
	b	.LBB12_5
.LBB12_8:                               @ %for.end11
	.loc	1 0 3                           @ test/adpcm_dec.c:0:3
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 643 9 is_stmt 1               @ test/adpcm_dec.c:643:9
	b	.LBB12_9
.LBB12_9:                               @ %for.cond12
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 643 3                         @ test/adpcm_dec.c:643:3
	cmp	r0, #11
	beq	.LBB12_12
	b	.LBB12_10
.LBB12_10:                              @ %for.body14
                                        @   in Loop: Header=BB12_9 Depth=1
	.loc	1 644 5 is_stmt 1               @ test/adpcm_dec.c:644:5
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r1, .LCPI12_38
	mov	r0, #0
	.loc	1 644 27 is_stmt 0              @ test/adpcm_dec.c:644:27
	str	r0, [r1, r2, lsl #2]
	.loc	1 645 5 is_stmt 1               @ test/adpcm_dec.c:645:5
	ldr	r1, .LCPI12_39
	.loc	1 645 27 is_stmt 0              @ test/adpcm_dec.c:645:27
	str	r0, [r1, r2, lsl #2]
	.loc	1 646 3 is_stmt 1               @ test/adpcm_dec.c:646:3
	b	.LBB12_11
.LBB12_11:                              @ %for.inc17
                                        @   in Loop: Header=BB12_9 Depth=1
	.loc	1 643 25                        @ test/adpcm_dec.c:643:25
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 643 3 is_stmt 0               @ test/adpcm_dec.c:643:3
	b	.LBB12_9
.LBB12_12:                              @ %for.end19
	.loc	1 648 3 is_stmt 1               @ test/adpcm_dec.c:648:3
	add	sp, sp, #28
	bx	lr
.Ltmp25:
	.p2align	2
@ %bb.13:
	.loc	1 0 3 is_stmt 0                 @ test/adpcm_dec.c:0:3
.LCPI12_0:
	.long	adpcm_dec_dec_detl
.LCPI12_1:
	.long	adpcm_dec_detl
.LCPI12_2:
	.long	adpcm_dec_dec_deth
.LCPI12_3:
	.long	adpcm_dec_deth
.LCPI12_4:
	.long	adpcm_dec_rlt2
.LCPI12_5:
	.long	adpcm_dec_rlt1
.LCPI12_6:
	.long	adpcm_dec_plt2
.LCPI12_7:
	.long	adpcm_dec_plt1
.LCPI12_8:
	.long	adpcm_dec_al2
.LCPI12_9:
	.long	adpcm_dec_al1
.LCPI12_10:
	.long	adpcm_dec_nbl
.LCPI12_11:
	.long	adpcm_dec_rh2
.LCPI12_12:
	.long	adpcm_dec_rh1
.LCPI12_13:
	.long	adpcm_dec_ph2
.LCPI12_14:
	.long	adpcm_dec_ph1
.LCPI12_15:
	.long	adpcm_dec_ah2
.LCPI12_16:
	.long	adpcm_dec_ah1
.LCPI12_17:
	.long	adpcm_dec_nbh
.LCPI12_18:
	.long	adpcm_dec_dec_rlt2
.LCPI12_19:
	.long	adpcm_dec_dec_rlt1
.LCPI12_20:
	.long	adpcm_dec_dec_plt2
.LCPI12_21:
	.long	adpcm_dec_dec_plt1
.LCPI12_22:
	.long	adpcm_dec_dec_al2
.LCPI12_23:
	.long	adpcm_dec_dec_al1
.LCPI12_24:
	.long	adpcm_dec_dec_nbl
.LCPI12_25:
	.long	adpcm_dec_dec_rh2
.LCPI12_26:
	.long	adpcm_dec_dec_rh1
.LCPI12_27:
	.long	adpcm_dec_dec_ph2
.LCPI12_28:
	.long	adpcm_dec_dec_ph1
.LCPI12_29:
	.long	adpcm_dec_dec_ah2
.LCPI12_30:
	.long	adpcm_dec_dec_ah1
.LCPI12_31:
	.long	adpcm_dec_dec_nbh
.LCPI12_32:
	.long	adpcm_dec_delay_dhx
.LCPI12_33:
	.long	adpcm_dec_dec_del_dltx
.LCPI12_34:
	.long	adpcm_dec_dec_del_dhx
.LCPI12_35:
	.long	adpcm_dec_delay_bph
.LCPI12_36:
	.long	adpcm_dec_dec_del_bpl
.LCPI12_37:
	.long	adpcm_dec_dec_del_bph
.LCPI12_38:
	.long	adpcm_dec_accumc
.LCPI12_39:
	.long	adpcm_dec_accumd
.Lfunc_end12:
	.size	adpcm_dec_reset, .Lfunc_end12-adpcm_dec_reset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_init                  @ -- Begin function adpcm_dec_init
	.p2align	2
	.type	adpcm_dec_init,%function
	.code	32                              @ @adpcm_dec_init
adpcm_dec_init:
.Lfunc_begin13:
	.loc	1 652 0 is_stmt 1               @ test/adpcm_dec.c:652:0
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
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp26:
	.loc	1 654 16 prologue_end           @ test/adpcm_dec.c:654:16
	str	r0, [r11, #-4]
	.loc	1 660 3                         @ test/adpcm_dec.c:660:3
	bl	adpcm_dec_reset
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 667 9                         @ test/adpcm_dec.c:667:9
	b	.LBB13_1
.LBB13_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 667 3                         @ test/adpcm_dec.c:667:3
	cmp	r0, #3
	beq	.LBB13_4
	b	.LBB13_2
.LBB13_2:                               @ %for.body
                                        @   in Loop: Header=BB13_1 Depth=1
	.loc	1 0 3                           @ test/adpcm_dec.c:0:3
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, .LCPI13_0
	.loc	1 668 66 is_stmt 1              @ test/adpcm_dec.c:668:66
	mul	r0, r1, r2
	.loc	1 668 44 is_stmt 0              @ test/adpcm_dec.c:668:44
	bl	adpcm_dec_cos
	ldr	r2, [sp]                        @ 4-byte Reload
	.loc	1 668 42                        @ test/adpcm_dec.c:668:42
	add	r3, r0, r0, lsl #2
	lsl	r0, r3, #1
	.loc	1 668 5                         @ test/adpcm_dec.c:668:5
	ldr	r1, .LCPI13_1
	.loc	1 668 30                        @ test/adpcm_dec.c:668:30
	str	r0, [r1, r2, lsl #2]
	.loc	1 671 33 is_stmt 1              @ test/adpcm_dec.c:671:33
	ldr	r0, [r11, #-4]
	.loc	1 671 30 is_stmt 0              @ test/adpcm_dec.c:671:30
	add	r0, r0, r3, lsl #1
	str	r0, [r1, r2, lsl #2]
	.loc	1 672 3 is_stmt 1               @ test/adpcm_dec.c:672:3
	b	.LBB13_3
.LBB13_3:                               @ %for.inc
                                        @   in Loop: Header=BB13_1 Depth=1
	.loc	1 667 29                        @ test/adpcm_dec.c:667:29
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	1 667 3 is_stmt 0               @ test/adpcm_dec.c:667:3
	b	.LBB13_1
.LBB13_4:                               @ %for.end
	.loc	1 673 1 is_stmt 1               @ test/adpcm_dec.c:673:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp27:
	.p2align	2
@ %bb.5:
	.loc	1 0 1 is_stmt 0                 @ test/adpcm_dec.c:0:1
.LCPI13_0:
	.long	6282000                         @ 0x5fdb10
.LCPI13_1:
	.long	adpcm_dec_test_data
.Lfunc_end13:
	.size	adpcm_dec_init, .Lfunc_end13-adpcm_dec_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_return                @ -- Begin function adpcm_dec_return
	.p2align	2
	.type	adpcm_dec_return,%function
	.code	32                              @ @adpcm_dec_return
adpcm_dec_return:
.Lfunc_begin14:
	.loc	1 676 0 is_stmt 1               @ test/adpcm_dec.c:676:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
.Ltmp28:
	.loc	1 680 9 prologue_end            @ test/adpcm_dec.c:680:9
	b	.LBB14_1
.LBB14_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	1 680 3                         @ test/adpcm_dec.c:680:3
	cmp	r0, #3
	bhi	.LBB14_4
	b	.LBB14_2
.LBB14_2:                               @ %for.body
                                        @   in Loop: Header=BB14_1 Depth=1
	.loc	1 681 5 is_stmt 1               @ test/adpcm_dec.c:681:5
	b	.LBB14_3
.LBB14_3:                               @ %for.inc
                                        @   in Loop: Header=BB14_1 Depth=1
	.loc	1 681 20 is_stmt 0              @ test/adpcm_dec.c:681:20
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r3, .LCPI14_0
	ldr	r2, [r3, r0, lsl #2]
	.loc	1 681 44                        @ test/adpcm_dec.c:681:44
	orr	r12, r0, #1
	ldr	r3, [r3, r12, lsl #2]
	.loc	1 681 42                        @ test/adpcm_dec.c:681:42
	add	r2, r2, r3
	.loc	1 681 15                        @ test/adpcm_dec.c:681:15
	add	r1, r1, r2
	.loc	1 680 30 is_stmt 1              @ test/adpcm_dec.c:680:30
	add	r0, r0, #2
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	1 680 3 is_stmt 0               @ test/adpcm_dec.c:680:3
	b	.LBB14_1
.LBB14_4:                               @ %for.end
	.loc	1 0 3                           @ test/adpcm_dec.c:0:3
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mvn	r1, #1
	.loc	1 683 20 is_stmt 1              @ test/adpcm_dec.c:683:20
	subs	r0, r0, r1
	movne	r0, #1
	.loc	1 683 3 is_stmt 0               @ test/adpcm_dec.c:683:3
	add	sp, sp, #16
	bx	lr
.Ltmp29:
	.p2align	2
@ %bb.5:
	.loc	1 0 3                           @ test/adpcm_dec.c:0:3
.LCPI14_0:
	.long	adpcm_dec_result
.Lfunc_end14:
	.size	adpcm_dec_return, .Lfunc_end14-adpcm_dec_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec_adpcm_dec             @ -- Begin function adpcm_dec_adpcm_dec
	.p2align	2
	.type	adpcm_dec_adpcm_dec,%function
	.code	32                              @ @adpcm_dec_adpcm_dec
adpcm_dec_adpcm_dec:
.Lfunc_begin15:
	.loc	1 691 0 is_stmt 1               @ test/adpcm_dec.c:691:0
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
.Ltmp30:
	.loc	1 695 9 prologue_end            @ test/adpcm_dec.c:695:9
	b	.LBB15_1
.LBB15_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 0 0 is_stmt 0                 @ test/adpcm_dec.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	1 695 3                         @ test/adpcm_dec.c:695:3
	cmp	r0, #3
	bhi	.LBB15_4
	b	.LBB15_2
.LBB15_2:                               @ %for.body
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	1 696 23 is_stmt 1              @ test/adpcm_dec.c:696:23
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, .LCPI15_0
	ldr	r0, [r0, r1, lsl #1]
	.loc	1 696 5 is_stmt 0               @ test/adpcm_dec.c:696:5
	bl	adpcm_dec_decode
	ldr	r2, [sp]                        @ 4-byte Reload
	.loc	1 697 29 is_stmt 1              @ test/adpcm_dec.c:697:29
	ldr	r0, .LCPI15_1
	ldr	r0, [r0]
	.loc	1 697 5 is_stmt 0               @ test/adpcm_dec.c:697:5
	ldr	r1, .LCPI15_2
	.loc	1 697 27                        @ test/adpcm_dec.c:697:27
	str	r0, [r1, r2, lsl #2]
	.loc	1 698 33 is_stmt 1              @ test/adpcm_dec.c:698:33
	ldr	r0, .LCPI15_3
	ldr	r0, [r0]
	.loc	1 698 5 is_stmt 0               @ test/adpcm_dec.c:698:5
	orr	r2, r2, #1
	.loc	1 698 31                        @ test/adpcm_dec.c:698:31
	str	r0, [r1, r2, lsl #2]
	.loc	1 699 3 is_stmt 1               @ test/adpcm_dec.c:699:3
	b	.LBB15_3
.LBB15_3:                               @ %for.inc
                                        @   in Loop: Header=BB15_1 Depth=1
	.loc	1 695 32                        @ test/adpcm_dec.c:695:32
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	1 695 3 is_stmt 0               @ test/adpcm_dec.c:695:3
	b	.LBB15_1
.LBB15_4:                               @ %for.end
	.loc	1 701 1 is_stmt 1               @ test/adpcm_dec.c:701:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp31:
	.p2align	2
@ %bb.5:
	.loc	1 0 1 is_stmt 0                 @ test/adpcm_dec.c:0:1
.LCPI15_0:
	.long	adpcm_dec_compressed
.LCPI15_1:
	.long	adpcm_dec_xout1
.LCPI15_2:
	.long	adpcm_dec_result
.LCPI15_3:
	.long	adpcm_dec_xout2
.Lfunc_end15:
	.size	adpcm_dec_adpcm_dec, .Lfunc_end15-adpcm_dec_adpcm_dec
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	adpcm_dec                       @ -- Begin function adpcm_dec
	.p2align	2
	.type	adpcm_dec,%function
	.code	32                              @ @adpcm_dec
adpcm_dec:
.Lfunc_begin16:
	.loc	1 705 0 is_stmt 1               @ test/adpcm_dec.c:705:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp32:
	.loc	1 706 3 prologue_end            @ test/adpcm_dec.c:706:3
	bl	adpcm_dec_init
	.loc	1 707 3                         @ test/adpcm_dec.c:707:3
	bl	adpcm_dec_adpcm_dec
	.loc	1 709 3                         @ test/adpcm_dec.c:709:3
	bl	adpcm_dec_return
	.loc	1 710 1                         @ test/adpcm_dec.c:710:1
	pop	{r11, lr}
	bx	lr
.Ltmp33:
.Lfunc_end16:
	.size	adpcm_dec, .Lfunc_end16-adpcm_dec
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	bs                              @ -- Begin function bs
	.p2align	2
	.type	bs,%function
	.code	32                              @ @bs
bs:
.Lfunc_begin17:
	.file	2 "/workspaces/llvmta/testcases" "test/bs.c" md5 0xbd8125837db9308c88c5ffb782c95b7d
	.loc	2 72 0                          @ test/bs.c:72:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
	mov	r0, #8
.Ltmp34:
	.loc	2 73 2 prologue_end             @ test/bs.c:73:2
	bl	binary_search
                                        @ implicit-def: $r0
	.loc	2 74 1                          @ test/bs.c:74:1
	pop	{r11, lr}
	bx	lr
.Ltmp35:
.Lfunc_end17:
	.size	bs, .Lfunc_end17-bs
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	binary_search                   @ -- Begin function binary_search
	.p2align	2
	.type	binary_search,%function
	.code	32                              @ @binary_search
binary_search:
.Lfunc_begin18:
	.loc	2 77 0                          @ test/bs.c:77:0
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
.Ltmp36:
	.loc	2 83 3 prologue_end             @ test/bs.c:83:3
	b	.LBB18_1
.LBB18_1:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 80 7                          @ test/bs.c:80:7
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	str	r0, [sp, #24]                   @ 4-byte Spill
	str	r2, [sp, #28]                   @ 4-byte Spill
	str	r1, [sp, #32]                   @ 4-byte Spill
	.loc	2 83 3                          @ test/bs.c:83:3
	cmp	r0, r1
	bgt	.LBB18_9
	b	.LBB18_2
.LBB18_2:                               @ %while.body
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 84 16                         @ test/bs.c:84:16
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	add	r0, r0, r2
	.loc	2 84 22 is_stmt 0               @ test/bs.c:84:22
	asr	r2, r0, #1
	str	r2, [sp, #20]                   @ 4-byte Spill
	.loc	2 85 20 is_stmt 1               @ test/bs.c:85:20
	ldr	r0, .LCPI18_0
	ldr	r0, [r0, r2, lsl #3]
	.loc	2 85 10 is_stmt 0               @ test/bs.c:85:10
	cmp	r0, r1
	bne	.LBB18_4
	b	.LBB18_3
.LBB18_3:                               @ %if.then
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 86 16 is_stmt 1               @ test/bs.c:86:16
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	sub	r2, r0, #1
	.loc	2 87 26                         @ test/bs.c:87:26
	ldr	r1, .LCPI18_0
	add	r1, r1, r3, lsl #3
	ldr	r1, [r1, #4]
	str	r2, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	2 91 5                          @ test/bs.c:91:5
	b	.LBB18_8
.LBB18_4:                               @ %if.else
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 93 22                         @ test/bs.c:93:22
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, .LCPI18_0
	ldr	r0, [r0, r2, lsl #3]
	.loc	2 93 12 is_stmt 0               @ test/bs.c:93:12
	cmp	r0, r1
	ble	.LBB18_6
	b	.LBB18_5
.LBB18_5:                               @ %if.then6
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 94 11 is_stmt 1               @ test/bs.c:94:11
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	sub	r1, r1, #1
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	2 98 7                          @ test/bs.c:98:7
	b	.LBB18_7
.LBB18_6:                               @ %if.else8
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 100 25                        @ test/bs.c:100:25
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r1, [sp]                        @ 4-byte Spill
	str	r0, [sp, #4]                    @ 4-byte Spill
	b	.LBB18_7
.LBB18_7:                               @ %if.end
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 0 0 is_stmt 0                 @ test/bs.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r2, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	b	.LBB18_8
.LBB18_8:                               @ %if.end10
                                        @   in Loop: Header=BB18_1 Depth=1
	.loc	2 80 7 is_stmt 1                @ test/bs.c:80:7
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r2, [sp, #40]                   @ 4-byte Spill
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [sp, #48]                   @ 4-byte Spill
	.loc	2 83 3                          @ test/bs.c:83:3
	b	.LBB18_1
.LBB18_9:                               @ %while.end
	.loc	2 112 3                         @ test/bs.c:112:3
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	add	sp, sp, #52
	bx	lr
.Ltmp37:
	.p2align	2
@ %bb.10:
	.loc	2 0 3 is_stmt 0                 @ test/bs.c:0:3
.LCPI18_0:
	.long	data
.Lfunc_end18:
	.size	binary_search, .Lfunc_end18-binary_search
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	expint                          @ -- Begin function expint
	.p2align	2
	.type	expint,%function
	.code	32                              @ @expint
expint:
.Lfunc_begin19:
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
.Ltmp38:
	.loc	3 33 3 prologue_end             @ test/expint.c:33:3
	bl	expint_expint
	.loc	3 38 1                          @ test/expint.c:38:1
	pop	{r11, lr}
	bx	lr
.Ltmp39:
.Lfunc_end19:
	.size	expint, .Lfunc_end19-expint
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	expint_expint                   @ -- Begin function expint_expint
	.p2align	2
	.type	expint_expint,%function
	.code	32                              @ @expint_expint
expint_expint:
.Lfunc_begin20:
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
.Ltmp40:
	.loc	3 66 8 prologue_end             @ test/expint.c:66:8
	sub	r0, r0, #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	3 70 6                          @ test/expint.c:70:6
	cmp	r1, #2
	blt	.LBB20_8
	b	.LBB20_1
.LBB20_1:                               @ %if.then
	.loc	3 74 10                         @ test/expint.c:74:10
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	add	r2, r0, r1
	mov	r0, #1
	mov	r3, #1152
	orr	r3, r3, #1998848
	ldr	r1, .LCPI20_0
	mov	r12, r1
	str	r12, [r11, #-40]                @ 4-byte Spill
	str	r3, [r11, #-36]                 @ 4-byte Spill
	str	r2, [r11, #-32]                 @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	3 84 12                         @ test/expint.c:84:12
	b	.LBB20_2
.LBB20_2:                               @ %for.cond
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
	beq	.LBB20_7
	b	.LBB20_3
.LBB20_3:                               @ %for.body
                                        @   in Loop: Header=BB20_2 Depth=1
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
	bgt	.LBB20_5
	b	.LBB20_4
.LBB20_4:                               @ %if.then12
	.loc	3 104 20                        @ test/expint.c:104:20
	ldr	r1, [r11, #-64]                 @ 4-byte Reload
	ldr	r2, [r11, #-20]                 @ 4-byte Reload
	mul	r0, r1, r2
	rsb	r0, r0, #0
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	3 106 15                        @ test/expint.c:106:15
	b	.LBB20_21
.LBB20_5:                               @ %if.end
                                        @   in Loop: Header=BB20_2 Depth=1
	.loc	3 110 9                         @ test/expint.c:110:9
	b	.LBB20_6
.LBB20_6:                               @ %for.inc
                                        @   in Loop: Header=BB20_2 Depth=1
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
	b	.LBB20_2
.LBB20_7:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	3 112 5 is_stmt 1               @ test/expint.c:112:5
	b	.LBB20_20
.LBB20_8:                               @ %if.else
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
	b	.LBB20_9
.LBB20_9:                               @ %for.cond16
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB20_13 Depth 2
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
	beq	.LBB20_19
	b	.LBB20_10
.LBB20_10:                              @ %for.body18
                                        @   in Loop: Header=BB20_9 Depth=1
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
	beq	.LBB20_12
	b	.LBB20_11
.LBB20_11:                              @ %if.then23
                                        @   in Loop: Header=BB20_9 Depth=1
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
	b	.LBB20_17
.LBB20_12:                              @ %if.else27
                                        @   in Loop: Header=BB20_9 Depth=1
	.loc	3 142 20 is_stmt 1              @ test/expint.c:142:20
	b	.LBB20_13
.LBB20_13:                              @ %for.cond28
                                        @   Parent Loop BB20_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	3 0 20 is_stmt 0                @ test/expint.c:0:20
	mov	r0, #1
	.loc	3 142 15                        @ test/expint.c:142:15
	cmp	r0, #0
	bne	.LBB20_16
	b	.LBB20_14
.LBB20_14:                              @ %for.body30
                                        @   in Loop: Header=BB20_13 Depth=2
	.loc	3 144 17 is_stmt 1              @ test/expint.c:144:17
	b	.LBB20_15
.LBB20_15:                              @ %for.inc33
                                        @   in Loop: Header=BB20_13 Depth=2
	.loc	3 142 15                        @ test/expint.c:142:15
	b	.LBB20_13
.LBB20_16:                              @ %for.end35
                                        @   in Loop: Header=BB20_9 Depth=1
	.loc	3 146 28                        @ test/expint.c:146:28
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	bl	foo
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r2, r0
	.loc	3 146 22 is_stmt 0              @ test/expint.c:146:22
	mla	r0, r1, r2, r3
	str	r0, [sp, #8]                    @ 4-byte Spill
	b	.LBB20_17
.LBB20_17:                              @ %if.end38
                                        @   in Loop: Header=BB20_9 Depth=1
	.loc	3 0 0                           @ test/expint.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	3 154 9 is_stmt 1               @ test/expint.c:154:9
	b	.LBB20_18
.LBB20_18:                              @ %for.inc40
                                        @   in Loop: Header=BB20_9 Depth=1
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
	b	.LBB20_9
.LBB20_19:                              @ %for.end42
	.loc	3 0 7                           @ test/expint.c:0:7
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	b	.LBB20_20
.LBB20_20:                              @ %if.end43
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [sp, #56]                   @ 4-byte Spill
	.loc	3 160 3 is_stmt 1               @ test/expint.c:160:3
	b	.LBB20_21
.LBB20_21:                              @ %return
	.loc	3 0 0 is_stmt 0                 @ test/expint.c:0:0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	.loc	3 162 1 is_stmt 1               @ test/expint.c:162:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp41:
	.p2align	2
@ %bb.22:
	.loc	3 0 1 is_stmt 0                 @ test/expint.c:0:1
.LCPI20_0:
	.long	30000000                        @ 0x1c9c380
.Lfunc_end20:
	.size	expint_expint, .Lfunc_end20-expint_expint
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	foo                             @ -- Begin function foo
	.p2align	2
	.type	foo,%function
	.code	32                              @ @foo
foo:
.Lfunc_begin21:
	.loc	3 42 0 is_stmt 1                @ test/expint.c:42:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r1, r0
.Ltmp42:
	.loc	3 44 13 prologue_end            @ test/expint.c:44:13
	add	r2, r1, #8
	mul	r0, r2, r1
	.loc	3 44 22 is_stmt 0               @ test/expint.c:44:22
	rsb	r1, r1, #4
	.loc	3 44 19                         @ test/expint.c:44:19
	lsl	r0, r0, r1
	.loc	3 44 3                          @ test/expint.c:44:3
	bx	lr
.Ltmp43:
.Lfunc_end21:
	.size	foo, .Lfunc_end21-foo
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_sinus                       @ -- Begin function lms_sinus
	.p2align	2
	.type	lms_sinus,%function
	.code	32                              @ @lms_sinus
lms_sinus:
.Lfunc_begin22:
	.file	4 "/workspaces/llvmta/testcases" "test/lms.c" md5 0x13c45b733f2e3ae7bf4d78c55426b607
	.loc	4 57 0 is_stmt 1                @ test/lms.c:57:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
	ldr	r3, .LCPI22_0
.Ltmp44:
	.loc	4 58 13 prologue_end            @ test/lms.c:58:13
	smull	r1, r2, r0, r3
	asr	r1, r2, #3
	add	r1, r1, r2, lsr #31
	add	r1, r1, r1, lsl #2
	sub	r0, r0, r1, lsl #2
	str	r0, [sp, #20]                   @ 4-byte Spill
	.loc	4 59 7                          @ test/lms.c:59:7
	cmp	r0, #10
	blt	.LBB22_5
	b	.LBB22_1
.LBB22_1:                               @ %if.then
	.loc	4 60 24                         @ test/lms.c:60:24
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #16
	blt	.LBB22_3
	b	.LBB22_2
.LBB22_2:                               @ %cond.true
	.loc	4 60 59 is_stmt 0               @ test/lms.c:60:59
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	rsb	r0, r0, #20
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	4 60 24                         @ test/lms.c:60:24
	b	.LBB22_4
.LBB22_3:                               @ %cond.false
	.loc	4 61 48 is_stmt 1               @ test/lms.c:61:48
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	sub	r0, r0, #10
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	4 60 24                         @ test/lms.c:60:24
	b	.LBB22_4
.LBB22_4:                               @ %cond.end
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	.loc	4 60 13 is_stmt 0               @ test/lms.c:60:13
	ldr	r0, .LCPI22_1
	add	r0, r0, r1, lsl #3
	vldr	d0, [r0]
	.loc	4 60 12                         @ test/lms.c:60:12
	vneg.f64	d0, d0
	vstr	d0, [sp, #8]                    @ 8-byte Spill
	.loc	4 60 5                          @ test/lms.c:60:5
	b	.LBB22_9
.LBB22_5:                               @ %if.end
	.loc	4 62 21 is_stmt 1               @ test/lms.c:62:21
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	cmp	r0, #6
	blt	.LBB22_7
	b	.LBB22_6
.LBB22_6:                               @ %cond.true4
	.loc	4 62 52 is_stmt 0               @ test/lms.c:62:52
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	rsb	r0, r0, #10
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	4 62 21                         @ test/lms.c:62:21
	b	.LBB22_8
.LBB22_7:                               @ %cond.false6
	.loc	4 0 21                          @ test/lms.c:0:21
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	4 62 21                         @ test/lms.c:62:21
	b	.LBB22_8
.LBB22_8:                               @ %cond.end7
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	4 62 10                         @ test/lms.c:62:10
	ldr	r0, .LCPI22_1
	add	r0, r0, r1, lsl #3
	vldr	d0, [r0]
	vstr	d0, [sp, #8]                    @ 8-byte Spill
	.loc	4 62 3                          @ test/lms.c:62:3
	b	.LBB22_9
.LBB22_9:                               @ %return
	.loc	4 0 0                           @ test/lms.c:0:0
	vldr	d0, [sp, #8]                    @ 8-byte Reload
	.loc	4 63 1 is_stmt 1                @ test/lms.c:63:1
	add	sp, sp, #24
	bx	lr
.Ltmp45:
	.p2align	2
@ %bb.10:
	.loc	4 0 1 is_stmt 0                 @ test/lms.c:0:1
.LCPI22_0:
	.long	1717986919                      @ 0x66666667
.LCPI22_1:
	.long	lms_sintab
.Lfunc_end22:
	.size	lms_sinus, .Lfunc_end22-lms_sinus
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_init                        @ -- Begin function lms_init
	.p2align	3
	.type	lms_init,%function
	.code	32                              @ @lms_init
lms_init:
.Lfunc_begin23:
	.loc	4 65 0 is_stmt 1                @ test/lms.c:65:0
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
.Ltmp46:
	.loc	4 69 16 prologue_end            @ test/lms.c:69:16
	ldr	r1, .LCPI23_0
	mov	r0, #0
	str	r0, [r1]
	.loc	4 73 5                          @ test/lms.c:73:5
	b	.LBB23_1
.LBB23_1:                               @ %do.body
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 80 5                          @ test/lms.c:80:5
	b	.LBB23_2
.LBB23_2:                               @ %do.cond
                                        @   in Loop: Header=BB23_1 Depth=1
	.loc	4 0 5 is_stmt 0                 @ test/lms.c:0:5
	mov	r0, #0
	.loc	4 80 5                          @ test/lms.c:80:5
	cmp	r0, #0
	bne	.LBB23_1
	b	.LBB23_3
.LBB23_3:                               @ %do.end
	.loc	4 0 5                           @ test/lms.c:0:5
	mov	r0, #1
	.loc	4 85 20 is_stmt 1               @ test/lms.c:85:20
	bl	lms_sinus
	vldr	d1, .LCPI23_1
	.loc	4 85 33 is_stmt 0               @ test/lms.c:85:33
	vadd.f64	d0, d0, d1
	.loc	4 85 20                         @ test/lms.c:85:20
	vcvt.f32.f64	s0, d0
	.loc	4 85 18                         @ test/lms.c:85:18
	ldr	r0, .LCPI23_0
	vstr	s0, [r0, #4]
	ldr	r0, .LCPI23_2
	mov	r1, #2
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	4 88 45 is_stmt 1               @ test/lms.c:88:45
	b	.LBB23_4
.LBB23_4:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB23_6 Depth 2
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	str	r1, [r11, #-16]                 @ 4-byte Spill
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	4 88 40                         @ test/lms.c:88:40
	cmp	r0, #200
	bhi	.LBB23_10
	b	.LBB23_5
.LBB23_5:                               @ %for.body
                                        @   in Loop: Header=BB23_4 Depth=1
	.loc	4 0 40                          @ test/lms.c:0:40
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	str	r0, [r11, #-20]                 @ 4-byte Spill
	.loc	4 91 5 is_stmt 1                @ test/lms.c:91:5
	b	.LBB23_6
.LBB23_6:                               @ %do.body18
                                        @   Parent Loop BB23_4 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	mov	r3, #57
	orr	r3, r3, #12288
	ldr	r2, .LCPI23_3
	.loc	4 93 32 is_stmt 1               @ test/lms.c:93:32
	mla	r1, r0, r2, r3
	.loc	4 94 18                         @ test/lms.c:94:18
	bic	r0, r1, #-2147483648
	.loc	4 94 12 is_stmt 0               @ test/lms.c:94:12
	vmov	s0, r0
	vcvt.f64.u32	d2, s0
	vldr	d3, .LCPI23_4
	vldr	d0, .LCPI23_5
	.loc	4 94 50                         @ test/lms.c:94:50
	vmov.f64	d1, d0
	vmla.f64	d1, d2, d3
	vstr	d1, [sp, #16]                   @ 8-byte Spill
	.loc	4 95 32 is_stmt 1               @ test/lms.c:95:32
	mla	r0, r1, r2, r3
	mov	r1, r0
	str	r1, [sp, #28]                   @ 4-byte Spill
	.loc	4 96 18                         @ test/lms.c:96:18
	bic	r0, r0, #-2147483648
	.loc	4 96 12 is_stmt 0               @ test/lms.c:96:12
	vmov	s4, r0
	vcvt.f64.u32	d2, s4
	.loc	4 96 50                         @ test/lms.c:96:50
	vmla.f64	d0, d2, d3
	vstr	d0, [sp, #32]                   @ 8-byte Spill
	.loc	4 97 24 is_stmt 1               @ test/lms.c:97:24
	vmul.f64	d0, d0, d0
	.loc	4 97 19 is_stmt 0               @ test/lms.c:97:19
	vmla.f64	d0, d1, d1
	vstr	d0, [r11, #-32]                 @ 8-byte Spill
	.loc	4 98 5 is_stmt 1                @ test/lms.c:98:5
	b	.LBB23_7
.LBB23_7:                               @ %do.cond31
                                        @   in Loop: Header=BB23_6 Depth=2
	.loc	4 0 5 is_stmt 0                 @ test/lms.c:0:5
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	vldr	d0, [r11, #-32]                 @ 8-byte Reload
	vldr	d1, .LCPI23_6
	.loc	4 98 5                          @ test/lms.c:98:5
	vcmp.f64	d0, d1
	vmrs	APSR_nzcv, fpscr
	str	r0, [r11, #-20]                 @ 4-byte Spill
	bgt	.LBB23_6
	b	.LBB23_8
.LBB23_8:                               @ %do.end34
                                        @   in Loop: Header=BB23_4 Depth=1
	.loc	4 0 5                           @ test/lms.c:0:5
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	vldr	d1, [r11, #-32]                 @ 8-byte Reload
	vldr	d0, .LCPI23_6
	.loc	4 102 22 is_stmt 1              @ test/lms.c:102:22
	vdiv.f64	d0, d0, d1
	vstr	d0, [sp]                        @ 8-byte Spill
	.loc	4 103 20                        @ test/lms.c:103:20
	bl	lms_sinus
	vldr	d2, [sp, #32]                   @ 8-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	vldr	d1, [sp]                        @ 8-byte Reload
	.loc	4 103 33 is_stmt 0              @ test/lms.c:103:33
	vmla.f64	d0, d1, d2
	.loc	4 103 20                        @ test/lms.c:103:20
	vcvt.f32.f64	s0, d0
	.loc	4 103 5                         @ test/lms.c:103:5
	ldr	r1, .LCPI23_0
	str	r1, [sp, #12]                   @ 4-byte Spill
	add	r1, r1, r0, lsl #2
	.loc	4 103 18                        @ test/lms.c:103:18
	vstr	s0, [r1]
	.loc	4 104 36 is_stmt 1              @ test/lms.c:104:36
	orr	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	4 104 24 is_stmt 0              @ test/lms.c:104:24
	bl	lms_sinus
	vldr	d2, [sp, #16]                   @ 8-byte Reload
	vldr	d1, [sp]                        @ 8-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	4 104 41                        @ test/lms.c:104:41
	vmla.f64	d0, d1, d2
	.loc	4 104 24                        @ test/lms.c:104:24
	vcvt.f32.f64	s0, d0
	.loc	4 104 5                         @ test/lms.c:104:5
	add	r0, r0, r1, lsl #2
	.loc	4 104 22                        @ test/lms.c:104:22
	vstr	s0, [r0]
	.loc	4 105 3 is_stmt 1               @ test/lms.c:105:3
	b	.LBB23_9
.LBB23_9:                               @ %for.inc
                                        @   in Loop: Header=BB23_4 Depth=1
	.loc	4 88 61                         @ test/lms.c:88:61
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	add	r1, r1, #2
	str	r1, [r11, #-8]                  @ 4-byte Spill
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	4 88 40 is_stmt 0               @ test/lms.c:88:40
	b	.LBB23_4
.LBB23_10:                              @ %for.end
	.loc	4 106 1 is_stmt 1               @ test/lms.c:106:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp47:
	.p2align	3
@ %bb.11:
	.loc	4 0 1 is_stmt 0                 @ test/lms.c:0:1
.LCPI23_1:
	.long	3762617053                      @ double -1.5391625175977233
	.long	3220742248
.LCPI23_4:
	.long	0                               @ double 9.3132257461547852E-10
	.long	1041235968
.LCPI23_5:
	.long	0                               @ double -1
	.long	3220176896
.LCPI23_6:
	.long	0                               @ double 1
	.long	1072693248
.LCPI23_0:
	.long	lms_input
.LCPI23_2:
	.long	2524885223                      @ 0x967eb0e7
.LCPI23_3:
	.long	1103515245                      @ 0x41c64e6d
.Lfunc_end23:
	.size	lms_init, .Lfunc_end23-lms_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_calc                        @ -- Begin function lms_calc
	.p2align	2
	.type	lms_calc,%function
	.code	32                              @ @lms_calc
lms_calc:
.Lfunc_begin24:
	.loc	4 109 0 is_stmt 1               @ test/lms.c:109:0
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
.Ltmp48:
	.loc	4 113 43 prologue_end           @ test/lms.c:113:43
	b	.LBB24_1
.LBB24_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	4 113 38                        @ test/lms.c:113:38
	cmp	r0, #1
	blt	.LBB24_4
	b	.LBB24_2
.LBB24_2:                               @ %for.body
                                        @   in Loop: Header=BB24_1 Depth=1
	.loc	4 113 63                        @ test/lms.c:113:63
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	add	r0, r1, r2, lsl #2
	.loc	4 114 7 is_stmt 1               @ test/lms.c:114:7
	ldr	r0, [r0, #-4]
	.loc	4 113 74                        @ test/lms.c:113:74
	str	r0, [r1, r2, lsl #2]
	.loc	4 113 63 is_stmt 0              @ test/lms.c:113:63
	b	.LBB24_3
.LBB24_3:                               @ %for.inc
                                        @   in Loop: Header=BB24_1 Depth=1
	.loc	4 113 59                        @ test/lms.c:113:59
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	sub	r0, r0, #1
	str	r0, [sp, #68]                   @ 4-byte Spill
	.loc	4 113 38                        @ test/lms.c:113:38
	b	.LBB24_1
.LBB24_4:                               @ %for.end
	.loc	4 115 14 is_stmt 1              @ test/lms.c:115:14
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	vldr	s4, [sp, #64]                   @ 4-byte Reload
	vldr	s6, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	vstr	s4, [r2]
	.loc	4 119 18                        @ test/lms.c:119:18
	vmul.f32	s2, s6, s4
	vldr	s0, .LCPI24_0
	.loc	4 119 31 is_stmt 0              @ test/lms.c:119:31
	vsub.f32	s0, s0, s6
	.loc	4 119 43                        @ test/lms.c:119:43
	vldr	s6, [r1]
	.loc	4 119 40                        @ test/lms.c:119:40
	vmul.f32	s0, s0, s6
	.loc	4 119 26                        @ test/lms.c:119:26
	vmla.f32	s0, s2, s4
	.loc	4 119 10                        @ test/lms.c:119:10
	vstr	s0, [r1]
	.loc	4 121 43 is_stmt 1              @ test/lms.c:121:43
	orr	r0, r0, r0, asr #31
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	vldr	s0, .LCPI24_1
	mov	r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	b	.LBB24_5
.LBB24_5:                               @ %for.cond6
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	vldr	s0, [sp, #28]                   @ 4-byte Reload
	vstr	s0, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	4 121 38                        @ test/lms.c:121:38
	cmp	r0, r1
	beq	.LBB24_8
	b	.LBB24_6
.LBB24_6:                               @ %for.body8
                                        @   in Loop: Header=BB24_5 Depth=1
	.loc	4 121 63                        @ test/lms.c:121:63
	b	.LBB24_7
.LBB24_7:                               @ %for.inc12
                                        @   in Loop: Header=BB24_5 Depth=1
	.loc	4 122 7 is_stmt 1               @ test/lms.c:122:7
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	add	r2, r2, r0, lsl #2
	vldr	s2, [r2]
	.loc	4 122 14 is_stmt 0              @ test/lms.c:122:14
	add	r1, r1, r0, lsl #2
	vldr	s4, [r1]
	.loc	4 121 65 is_stmt 1              @ test/lms.c:121:65
	vmla.f32	s0, s2, s4
	.loc	4 121 59 is_stmt 0              @ test/lms.c:121:59
	add	r0, r0, #1
	str	r0, [sp, #24]                   @ 4-byte Spill
	vstr	s0, [sp, #28]                   @ 4-byte Spill
	.loc	4 121 38                        @ test/lms.c:121:38
	b	.LBB24_5
.LBB24_8:                               @ %for.end13
	.loc	4 125 21 is_stmt 1              @ test/lms.c:125:21
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	vldr	s2, [sp, #48]                   @ 4-byte Reload
	vldr	s0, [sp, #60]                   @ 4-byte Reload
	vldr	s4, [sp, #12]                   @ 4-byte Reload
	vsub.f32	s0, s0, s4
	.loc	4 125 16 is_stmt 0              @ test/lms.c:125:16
	vmul.f32	s0, s0, s2
	.loc	4 125 29                        @ test/lms.c:125:29
	vldr	s2, [r0]
	.loc	4 125 26                        @ test/lms.c:125:26
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #4]                    @ 4-byte Spill
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	4 127 43 is_stmt 1              @ test/lms.c:127:43
	b	.LBB24_9
.LBB24_9:                               @ %for.cond16
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	4 127 38                        @ test/lms.c:127:38
	cmp	r0, r1
	beq	.LBB24_12
	b	.LBB24_10
.LBB24_10:                              @ %for.body18
                                        @   in Loop: Header=BB24_9 Depth=1
	.loc	4 128 11 is_stmt 1              @ test/lms.c:128:11
	vldr	s2, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	add	r2, r2, r1, lsl #2
	vldr	s4, [r2]
	.loc	4 127 63                        @ test/lms.c:127:63
	add	r0, r0, r1, lsl #2
	.loc	4 127 68 is_stmt 0              @ test/lms.c:127:68
	vldr	s0, [r0]
	vmla.f32	s0, s2, s4
	vstr	s0, [r0]
	.loc	4 127 63                        @ test/lms.c:127:63
	b	.LBB24_11
.LBB24_11:                              @ %for.inc22
                                        @   in Loop: Header=BB24_9 Depth=1
	.loc	4 127 59                        @ test/lms.c:127:59
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	4 127 38                        @ test/lms.c:127:38
	b	.LBB24_9
.LBB24_12:                              @ %for.end24
	.loc	4 130 3 is_stmt 1               @ test/lms.c:130:3
	vldr	s0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #72
	bx	lr
.Ltmp49:
	.p2align	2
@ %bb.13:
	.loc	4 0 3 is_stmt 0                 @ test/lms.c:0:3
.LCPI24_0:
	.long	0x3f800000                      @ float 1
.LCPI24_1:
	.long	0x00000000                      @ float 0
.Lfunc_end24:
	.size	lms_calc, .Lfunc_end24-lms_calc
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_main                        @ -- Begin function lms_main
	.p2align	2
	.type	lms_main,%function
	.code	32                              @ @lms_main
lms_main:
.Lfunc_begin25:
	.loc	4 133 0 is_stmt 1               @ test/lms.c:133:0
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
.Ltmp50:
	.loc	4 137 9 prologue_end            @ test/lms.c:137:9
	str	r0, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	4 139 43                        @ test/lms.c:139:43
	b	.LBB25_1
.LBB25_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	4 139 38                        @ test/lms.c:139:38
	cmp	r0, #21
	beq	.LBB25_4
	b	.LBB25_2
.LBB25_2:                               @ %for.body
                                        @   in Loop: Header=BB25_1 Depth=1
	.loc	4 0 38                          @ test/lms.c:0:38
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	sub	r1, r11, #84
	mov	r0, #0
	.loc	4 140 10 is_stmt 1              @ test/lms.c:140:10
	str	r0, [r1, r2, lsl #2]
	add	r1, sp, #24
	.loc	4 141 16                        @ test/lms.c:141:16
	str	r0, [r1, r2, lsl #2]
	.loc	4 142 3                         @ test/lms.c:142:3
	b	.LBB25_3
.LBB25_3:                               @ %for.inc
                                        @   in Loop: Header=BB25_1 Depth=1
	.loc	4 139 59                        @ test/lms.c:139:59
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	4 139 38 is_stmt 0              @ test/lms.c:139:38
	b	.LBB25_1
.LBB25_4:                               @ %for.end
	.loc	4 0 38                          @ test/lms.c:0:38
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	4 144 45 is_stmt 1              @ test/lms.c:144:45
	b	.LBB25_5
.LBB25_5:                               @ %for.cond2
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	4 144 40                        @ test/lms.c:144:40
	cmp	r0, #201
	beq	.LBB25_8
	b	.LBB25_6
.LBB25_6:                               @ %for.body4
                                        @   in Loop: Header=BB25_5 Depth=1
	.loc	4 145 30 is_stmt 1              @ test/lms.c:145:30
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, .LCPI25_0
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	.loc	4 145 44 is_stmt 0              @ test/lms.c:145:44
	vldr	s1, [r0, #4]
	sub	r0, r11, #84
	mov	r1, #20
	vldr	s2, .LCPI25_1
	vldr	s3, .LCPI25_2
	add	r2, sp, #24
	add	r3, sp, #20
	.loc	4 145 21                        @ test/lms.c:145:21
	bl	lms_calc
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	4 145 5                         @ test/lms.c:145:5
	ldr	r0, .LCPI25_3
	add	r0, r0, r1, lsl #2
	.loc	4 145 19                        @ test/lms.c:145:19
	vstr	s0, [r0]
	.loc	4 147 3 is_stmt 1               @ test/lms.c:147:3
	b	.LBB25_7
.LBB25_7:                               @ %for.inc9
                                        @   in Loop: Header=BB25_5 Depth=1
	.loc	4 144 60                        @ test/lms.c:144:60
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	4 144 40 is_stmt 0              @ test/lms.c:144:40
	b	.LBB25_5
.LBB25_8:                               @ %for.end11
	.loc	4 148 1 is_stmt 1               @ test/lms.c:148:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp51:
	.p2align	2
@ %bb.9:
	.loc	4 0 1 is_stmt 0                 @ test/lms.c:0:1
.LCPI25_0:
	.long	lms_input
.LCPI25_1:
	.long	0x3a79a934                      @ float 9.52380942E-4
.LCPI25_2:
	.long	0x3c23d70a                      @ float 0.00999999977
.LCPI25_3:
	.long	lms_output
.Lfunc_end25:
	.size	lms_main, .Lfunc_end25-lms_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms_return                      @ -- Begin function lms_return
	.p2align	3
	.type	lms_return,%function
	.code	32                              @ @lms_return
lms_return:
.Lfunc_begin26:
	.loc	4 150 0 is_stmt 1               @ test/lms.c:150:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	r0, #0
	vldr	d0, .LCPI26_0
	vstr	d0, [sp, #16]                   @ 8-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
.Ltmp52:
	.loc	4 154 45 prologue_end           @ test/lms.c:154:45
	b	.LBB26_1
.LBB26_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	4 0 0 is_stmt 0                 @ test/lms.c:0:0
	vldr	d0, [sp, #16]                   @ 8-byte Reload
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	vstr	d0, [sp, #8]                    @ 8-byte Spill
	.loc	4 154 40                        @ test/lms.c:154:40
	cmp	r0, #201
	beq	.LBB26_4
	b	.LBB26_2
.LBB26_2:                               @ %for.body
                                        @   in Loop: Header=BB26_1 Depth=1
	.loc	4 156 3 is_stmt 1               @ test/lms.c:156:3
	b	.LBB26_3
.LBB26_3:                               @ %for.inc
                                        @   in Loop: Header=BB26_1 Depth=1
	.loc	4 155 12                        @ test/lms.c:155:12
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	vldr	d0, [sp, #8]                    @ 8-byte Reload
	ldr	r1, .LCPI26_1
	add	r1, r1, r0, lsl #2
	vldr	s2, [r1]
	vcvt.f64.f32	d1, s2
	.loc	4 155 9 is_stmt 0               @ test/lms.c:155:9
	vadd.f64	d0, d0, d1
	.loc	4 154 60 is_stmt 1              @ test/lms.c:154:60
	add	r0, r0, #1
	vstr	d0, [sp, #16]                   @ 8-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	4 154 40 is_stmt 0              @ test/lms.c:154:40
	b	.LBB26_1
.LBB26_4:                               @ %for.end
	.loc	4 0 40                          @ test/lms.c:0:40
	vldr	d0, [sp, #8]                    @ 8-byte Reload
	vldr	d1, .LCPI26_2
	.loc	4 158 33 is_stmt 1              @ test/lms.c:158:33
	vadd.f64	d0, d0, d1
	vldr	d1, .LCPI26_3
	.loc	4 158 26 is_stmt 0              @ test/lms.c:158:26
	vmul.f64	d0, d0, d1
	.loc	4 158 10                        @ test/lms.c:158:10
	vcvt.s32.f64	s0, d0
	vmov	r0, s0
	.loc	4 158 3                         @ test/lms.c:158:3
	add	sp, sp, #32
	bx	lr
.Ltmp53:
	.p2align	3
@ %bb.5:
	.loc	4 0 3                           @ test/lms.c:0:3
.LCPI26_0:
	.long	0                               @ double 0
	.long	0
.LCPI26_2:
	.long	6597070                         @ double 4.7057190000000002
	.long	1074975400
.LCPI26_3:
	.long	0                               @ double 1.0E+6
	.long	1093567616
.LCPI26_1:
	.long	lms_output
.Lfunc_end26:
	.size	lms_return, .Lfunc_end26-lms_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	lms                             @ -- Begin function lms
	.p2align	2
	.type	lms,%function
	.code	32                              @ @lms
lms:
.Lfunc_begin27:
	.loc	4 163 0 is_stmt 1               @ test/lms.c:163:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp54:
	.loc	4 164 3 prologue_end            @ test/lms.c:164:3
	bl	lms_init
	.loc	4 165 3                         @ test/lms.c:165:3
	bl	lms_main
	.loc	4 166 3                         @ test/lms.c:166:3
	bl	lms_return
	.loc	4 167 1                         @ test/lms.c:167:1
	pop	{r11, lr}
	bx	lr
.Ltmp55:
.Lfunc_end27:
	.size	lms, .Lfunc_end27-lms
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	matmult                         @ -- Begin function matmult
	.p2align	2
	.type	matmult,%function
	.code	32                              @ @matmult
matmult:
.Lfunc_begin28:
	.file	5 "/workspaces/llvmta/testcases" "test/matmult.c" md5 0x9a184d8c1a3e835ab24813f22529d2a5
	.loc	5 53 0                          @ test/matmult.c:53:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp56:
	.loc	5 54 4 prologue_end             @ test/matmult.c:54:4
	bl	InitSeed
	.loc	5 61 4                          @ test/matmult.c:61:4
	ldr	r0, .LCPI28_0
	ldr	r1, .LCPI28_1
	ldr	r2, .LCPI28_2
	bl	Test
	.loc	5 62 1                          @ test/matmult.c:62:1
	pop	{r11, lr}
	bx	lr
.Ltmp57:
	.p2align	2
@ %bb.1:
	.loc	5 0 1 is_stmt 0                 @ test/matmult.c:0:1
.LCPI28_0:
	.long	ArrayA
.LCPI28_1:
	.long	ArrayB
.LCPI28_2:
	.long	ResultArray
.Lfunc_end28:
	.size	matmult, .Lfunc_end28-matmult
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	InitSeed                        @ -- Begin function InitSeed
	.p2align	2
	.type	InitSeed,%function
	.code	32                              @ @InitSeed
InitSeed:
.Lfunc_begin29:
	.loc	5 69 0 is_stmt 1                @ test/matmult.c:69:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	5 73 8 prologue_end             @ test/matmult.c:73:8
	ldr	r1, .LCPI29_0
	mov	r0, #0
	str	r0, [r1]
	.loc	5 74 1                          @ test/matmult.c:74:1
	bx	lr
.Ltmp58:
	.p2align	2
@ %bb.1:
	.loc	5 0 1 is_stmt 0                 @ test/matmult.c:0:1
.LCPI29_0:
	.long	Seed
.Lfunc_end29:
	.size	InitSeed, .Lfunc_end29-InitSeed
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	Test                            @ -- Begin function Test
	.p2align	2
	.type	Test,%function
	.code	32                              @ @Test
Test:
.Lfunc_begin30:
	.loc	5 82 0 is_stmt 1                @ test/matmult.c:82:0
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
.Ltmp59:
	.loc	5 88 4 prologue_end             @ test/matmult.c:88:4
	bl	Initialize
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	.loc	5 89 4                          @ test/matmult.c:89:4
	bl	Initialize
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	5 96 4                          @ test/matmult.c:96:4
	bl	Multiply
	.loc	5 105 1                         @ test/matmult.c:105:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp60:
.Lfunc_end30:
	.size	Test, .Lfunc_end30-Test
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	Initialize                      @ -- Begin function Initialize
	.p2align	2
	.type	Initialize,%function
	.code	32                              @ @Initialize
Initialize:
.Lfunc_begin31:
	.loc	5 112 0                         @ test/matmult.c:112:0
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
.Ltmp61:
	.loc	5 115 9 prologue_end            @ test/matmult.c:115:9
	b	.LBB31_1
.LBB31_1:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB31_3 Depth 2
	.loc	5 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	5 115 4                         @ test/matmult.c:115:4
	cmp	r0, #20
	beq	.LBB31_8
	b	.LBB31_2
.LBB31_2:                               @ %for.body
                                        @   in Loop: Header=BB31_1 Depth=1
	.loc	5 0 4                           @ test/matmult.c:0:4
	mov	r0, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 116 12 is_stmt 1              @ test/matmult.c:116:12
	b	.LBB31_3
.LBB31_3:                               @ %for.cond1
                                        @   Parent Loop BB31_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	5 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 116 7                         @ test/matmult.c:116:7
	cmp	r0, #20
	beq	.LBB31_6
	b	.LBB31_4
.LBB31_4:                               @ %for.body3
                                        @   in Loop: Header=BB31_3 Depth=2
	.loc	5 117 42 is_stmt 1              @ test/matmult.c:117:42
	bl	RandomInteger
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	5 117 10 is_stmt 0              @ test/matmult.c:117:10
	add	r3, r3, r3, lsl #2
	add	r1, r1, r3, lsl #4
	.loc	5 117 40                        @ test/matmult.c:117:40
	str	r0, [r1, r2, lsl #2]
	.loc	5 117 10                        @ test/matmult.c:117:10
	b	.LBB31_5
.LBB31_5:                               @ %for.inc
                                        @   in Loop: Header=BB31_3 Depth=2
	.loc	5 116 63 is_stmt 1              @ test/matmult.c:116:63
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 116 7 is_stmt 0               @ test/matmult.c:116:7
	b	.LBB31_3
.LBB31_6:                               @ %for.end
                                        @   in Loop: Header=BB31_1 Depth=1
	.loc	5 117 56 is_stmt 1              @ test/matmult.c:117:56
	b	.LBB31_7
.LBB31_7:                               @ %for.inc5
                                        @   in Loop: Header=BB31_1 Depth=1
	.loc	5 115 60                        @ test/matmult.c:115:60
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	5 115 4 is_stmt 0               @ test/matmult.c:115:4
	b	.LBB31_1
.LBB31_8:                               @ %for.end7
	.loc	5 118 1 is_stmt 1               @ test/matmult.c:118:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp62:
.Lfunc_end31:
	.size	Initialize, .Lfunc_end31-Initialize
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	Multiply                        @ -- Begin function Multiply
	.p2align	2
	.type	Multiply,%function
	.code	32                              @ @Multiply
Multiply:
.Lfunc_begin32:
	.loc	5 151 0                         @ test/matmult.c:151:0
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
.Ltmp63:
	.loc	5 154 9 prologue_end            @ test/matmult.c:154:9
	b	.LBB32_1
.LBB32_1:                               @ %for.cond
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB32_3 Depth 2
                                        @       Child Loop BB32_5 Depth 3
	.loc	5 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	5 154 4                         @ test/matmult.c:154:4
	cmp	r0, #20
	beq	.LBB32_12
	b	.LBB32_2
.LBB32_2:                               @ %for.body
                                        @   in Loop: Header=BB32_1 Depth=1
	.loc	5 0 4                           @ test/matmult.c:0:4
	mov	r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	5 155 12 is_stmt 1              @ test/matmult.c:155:12
	b	.LBB32_3
.LBB32_3:                               @ %for.cond1
                                        @   Parent Loop BB32_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB32_5 Depth 3
	.loc	5 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	5 155 7                         @ test/matmult.c:155:7
	cmp	r0, #20
	beq	.LBB32_10
	b	.LBB32_4
.LBB32_4:                               @ %for.body3
                                        @   in Loop: Header=BB32_3 Depth=2
	.loc	5 157 10 is_stmt 1              @ test/matmult.c:157:10
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r1, r1, r1, lsl #2
	add	r1, r0, r1, lsl #4
	mov	r0, #0
	.loc	5 157 29 is_stmt 0              @ test/matmult.c:157:29
	str	r0, [r1, r2, lsl #2]
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 158 15 is_stmt 1              @ test/matmult.c:158:15
	b	.LBB32_5
.LBB32_5:                               @ %for.cond5
                                        @   Parent Loop BB32_1 Depth=1
                                        @     Parent Loop BB32_3 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	.loc	5 0 0 is_stmt 0                 @ test/matmult.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	5 158 10                        @ test/matmult.c:158:10
	cmp	r0, #20
	beq	.LBB32_8
	b	.LBB32_6
.LBB32_6:                               @ %for.body7
                                        @   in Loop: Header=BB32_5 Depth=3
	.loc	5 160 16 is_stmt 1              @ test/matmult.c:160:16
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	ldr	r12, [r11, #-12]                @ 4-byte Reload
	ldr	lr, [sp]                        @ 4-byte Reload
	ldr	r3, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	add	r1, r1, r1, lsl #2
	add	r3, r3, r1, lsl #4
	ldr	r3, [r3, lr, lsl #2]
	.loc	5 160 34 is_stmt 0              @ test/matmult.c:160:34
	add	lr, lr, lr, lsl #2
	add	r12, r12, lr, lsl #4
	ldr	r12, [r12, r2, lsl #2]
	.loc	5 159 13 is_stmt 1              @ test/matmult.c:159:13
	add	r1, r0, r1, lsl #4
	.loc	5 159 32 is_stmt 0              @ test/matmult.c:159:32
	ldr	lr, [r1, r2, lsl #2]
	mla	r0, r3, r12, lr
	str	r0, [r1, r2, lsl #2]
	.loc	5 159 13                        @ test/matmult.c:159:13
	b	.LBB32_7
.LBB32_7:                               @ %for.inc
                                        @   in Loop: Header=BB32_5 Depth=3
	.loc	5 158 51 is_stmt 1              @ test/matmult.c:158:51
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	5 158 10 is_stmt 0              @ test/matmult.c:158:10
	b	.LBB32_5
.LBB32_8:                               @ %for.end
                                        @   in Loop: Header=BB32_3 Depth=2
	.loc	5 161 8 is_stmt 1               @ test/matmult.c:161:8
	b	.LBB32_9
.LBB32_9:                               @ %for.inc14
                                        @   in Loop: Header=BB32_3 Depth=2
	.loc	5 155 48                        @ test/matmult.c:155:48
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	5 155 7 is_stmt 0               @ test/matmult.c:155:7
	b	.LBB32_3
.LBB32_10:                              @ %for.end16
                                        @   in Loop: Header=BB32_1 Depth=1
	.loc	5 161 8 is_stmt 1               @ test/matmult.c:161:8
	b	.LBB32_11
.LBB32_11:                              @ %for.inc17
                                        @   in Loop: Header=BB32_1 Depth=1
	.loc	5 154 45                        @ test/matmult.c:154:45
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	5 154 4 is_stmt 0               @ test/matmult.c:154:4
	b	.LBB32_1
.LBB32_12:                              @ %for.end19
	.loc	5 162 1 is_stmt 1               @ test/matmult.c:162:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp64:
.Lfunc_end32:
	.size	Multiply, .Lfunc_end32-Multiply
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	RandomInteger                   @ -- Begin function RandomInteger
	.p2align	2
	.type	RandomInteger,%function
	.code	32                              @ @RandomInteger
RandomInteger:
.Lfunc_begin33:
	.loc	5 125 0                         @ test/matmult.c:125:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	5 126 13 prologue_end           @ test/matmult.c:126:13
	ldr	r1, .LCPI33_0
	ldr	r2, [r1]
	mov	r3, #133
	.loc	5 126 18 is_stmt 0              @ test/matmult.c:126:18
	mul	r0, r2, r3
	.loc	5 126 25                        @ test/matmult.c:126:25
	add	r0, r0, #81
	ldr	r12, .LCPI33_1
	.loc	5 126 31                        @ test/matmult.c:126:31
	smull	r2, r3, r0, r12
	asr	r2, r3, #9
	add	r3, r2, r3, lsr #31
	mov	r12, #159
	orr	r12, r12, #7936
	mul	r2, r3, r12
	sub	r0, r0, r2
	.loc	5 126 9                         @ test/matmult.c:126:9
	str	r0, [r1]
	.loc	5 127 4 is_stmt 1               @ test/matmult.c:127:4
	bx	lr
.Ltmp65:
	.p2align	2
@ %bb.1:
	.loc	5 0 4 is_stmt 0                 @ test/matmult.c:0:4
.LCPI33_0:
	.long	Seed
.LCPI33_1:
	.long	271652039                       @ 0x103114c7
.Lfunc_end33:
	.size	RandomInteger, .Lfunc_end33-RandomInteger
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg_init                    @ -- Begin function rad2deg_init
	.p2align	2
	.type	rad2deg_init,%function
	.code	32                              @ @rad2deg_init
rad2deg_init:
.Lfunc_begin34:
	.file	6 "/workspaces/llvmta/testcases" "test/rad2deg.c" md5 0x401150ecf0d17ef01b67b50e09624238
	.loc	6 47 0 is_stmt 1                @ test/rad2deg.c:47:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	6 48 13 prologue_end            @ test/rad2deg.c:48:13
	ldr	r1, .LCPI34_0
	mov	r0, #0
	str	r0, [r1]
	.loc	6 49 13                         @ test/rad2deg.c:49:13
	ldr	r1, .LCPI34_1
	str	r0, [r1]
	.loc	6 50 1                          @ test/rad2deg.c:50:1
	bx	lr
.Ltmp66:
	.p2align	2
@ %bb.1:
	.loc	6 0 1 is_stmt 0                 @ test/rad2deg.c:0:1
.LCPI34_0:
	.long	rad2deg_X
.LCPI34_1:
	.long	rad2deg_Y
.Lfunc_end34:
	.size	rad2deg_init, .Lfunc_end34-rad2deg_init
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg_return                  @ -- Begin function rad2deg_return
	.p2align	2
	.type	rad2deg_return,%function
	.code	32                              @ @rad2deg_return
rad2deg_return:
.Lfunc_begin35:
	.loc	6 56 0 is_stmt 1                @ test/rad2deg.c:56:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #4
	.cfi_def_cfa_offset 4
.Ltmp67:
	.loc	6 57 14 prologue_end            @ test/rad2deg.c:57:14
	ldr	r0, .LCPI35_0
	vldr	s0, [r0]
	vcvt.s32.f32	s0, s0
	vmov	r0, s0
	mov	r1, #108
	orr	r1, r1, #64512
	.loc	6 59 7                          @ test/rad2deg.c:59:7
	cmp	r0, r1
	bne	.LBB35_2
	b	.LBB35_1
.LBB35_1:                               @ %if.then
	.loc	6 0 7 is_stmt 0                 @ test/rad2deg.c:0:7
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	6 60 5 is_stmt 1                @ test/rad2deg.c:60:5
	b	.LBB35_3
.LBB35_2:                               @ %if.else
	.loc	6 0 5 is_stmt 0                 @ test/rad2deg.c:0:5
	mvn	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	6 62 5 is_stmt 1                @ test/rad2deg.c:62:5
	b	.LBB35_3
.LBB35_3:                               @ %return
	.loc	6 0 0 is_stmt 0                 @ test/rad2deg.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	6 63 1 is_stmt 1                @ test/rad2deg.c:63:1
	add	sp, sp, #4
	bx	lr
.Ltmp68:
	.p2align	2
@ %bb.4:
	.loc	6 0 1 is_stmt 0                 @ test/rad2deg.c:0:1
.LCPI35_0:
	.long	rad2deg_Y
.Lfunc_end35:
	.size	rad2deg_return, .Lfunc_end35-rad2deg_return
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg_main                    @ -- Begin function rad2deg_main
	.p2align	2
	.type	rad2deg_main,%function
	.code	32                              @ @rad2deg_main
rad2deg_main:
.Lfunc_begin36:
	.loc	6 69 0 is_stmt 1                @ test/rad2deg.c:69:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #4
	.cfi_def_cfa_offset 4
	vldr	s0, .LCPI36_0
	vstr	s0, [sp]                        @ 4-byte Spill
.Ltmp69:
	.loc	6 70 45 prologue_end            @ test/rad2deg.c:70:45
	b	.LBB36_1
.LBB36_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	6 0 0 is_stmt 0                 @ test/rad2deg.c:0:0
	vldr	s0, [sp]                        @ 4-byte Reload
	ldr	r0, .LCPI36_1
	vstr	s0, [r0]
	vldr	s2, .LCPI36_2
	.loc	6 70 40                         @ test/rad2deg.c:70:40
	vcmp.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB36_4
	b	.LBB36_2
.LBB36_2:                               @ %for.body
                                        @   in Loop: Header=BB36_1 Depth=1
	.loc	6 73 20 is_stmt 1               @ test/rad2deg.c:73:20
	ldr	r0, .LCPI36_1
	vldr	s0, [r0]
	vldr	s2, .LCPI36_3
	vmul.f32	s0, s0, s2
	vldr	s2, .LCPI36_4
	vdiv.f32	s2, s0, s2
	.loc	6 73 17 is_stmt 0               @ test/rad2deg.c:73:17
	ldr	r0, .LCPI36_5
	vldr	s0, [r0]
	vadd.f32	s0, s0, s2
	vstr	s0, [r0]
	.loc	6 73 7                          @ test/rad2deg.c:73:7
	b	.LBB36_3
.LBB36_3:                               @ %for.inc
                                        @   in Loop: Header=BB36_1 Depth=1
	.loc	6 72 55 is_stmt 1               @ test/rad2deg.c:72:55
	ldr	r0, .LCPI36_1
	vldr	s0, [r0]
	vldr	s2, .LCPI36_6
	vadd.f32	s0, s0, s2
	vstr	s0, [sp]                        @ 4-byte Spill
	.loc	6 70 40                         @ test/rad2deg.c:70:40
	b	.LBB36_1
.LBB36_4:                               @ %for.end
	.loc	6 74 1                          @ test/rad2deg.c:74:1
	add	sp, sp, #4
	bx	lr
.Ltmp70:
	.p2align	2
@ %bb.5:
	.loc	6 0 1 is_stmt 0                 @ test/rad2deg.c:0:1
.LCPI36_0:
	.long	0x00000000                      @ float 0
.LCPI36_1:
	.long	rad2deg_X
.LCPI36_2:
	.long	0x40c8f5c5                      @ float 6.28000116
.LCPI36_3:
	.long	0x43340000                      @ float 180
.LCPI36_4:
	.long	0x4048f5c3                      @ float 3.1400001
.LCPI36_5:
	.long	rad2deg_Y
.LCPI36_6:
	.long	0x3c8ee7a7                      @ float 0.0174444448
.Lfunc_end36:
	.size	rad2deg_main, .Lfunc_end36-rad2deg_main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	rad2deg                         @ -- Begin function rad2deg
	.p2align	2
	.type	rad2deg,%function
	.code	32                              @ @rad2deg
rad2deg:
.Lfunc_begin37:
	.loc	6 76 0 is_stmt 1                @ test/rad2deg.c:76:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	push	{r11, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	mov	r11, sp
	.cfi_def_cfa_register r11
.Ltmp71:
	.loc	6 77 3 prologue_end             @ test/rad2deg.c:77:3
	bl	rad2deg_init
	.loc	6 78 3                          @ test/rad2deg.c:78:3
	bl	rad2deg_main
	.loc	6 79 3                          @ test/rad2deg.c:79:3
	bl	rad2deg_return
	.loc	6 80 1                          @ test/rad2deg.c:80:1
	pop	{r11, lr}
	bx	lr
.Ltmp72:
.Lfunc_end37:
	.size	rad2deg, .Lfunc_end37-rad2deg
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvdi2                       @ -- Begin function __absvdi2
	.p2align	2
	.type	__absvdi2,%function
	.code	32                              @ @__absvdi2
__absvdi2:
.Lfunc_begin38:
	.file	7 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvdi2.c" md5 0xf0fa545ed84eab29322431dd903e1bd2
	.loc	7 23 0                          @ ../absvdi2.c:23:0
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
.Ltmp73:
	.loc	7 25 11 prologue_end            @ ../absvdi2.c:25:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	7 25 9 is_stmt 0                @ ../absvdi2.c:25:9
	cmp	r0, #0
	bne	.LBB38_2
	b	.LBB38_1
.LBB38_1:                               @ %if.then
	.loc	7 26 9 is_stmt 1                @ ../absvdi2.c:26:9
	ldr	r0, .LCPI38_0
	ldr	r2, .LCPI38_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB38_2:                               @ %if.end
	.loc	7 28 20                         @ ../absvdi2.c:28:20
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adds	r0, r0, r2, asr #31
	eor	r0, r0, r2, asr #31
	adc	r1, r2, r2, asr #31
	eor	r1, r1, r2, asr #31
	.loc	7 28 5 is_stmt 0                @ ../absvdi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp74:
	.p2align	2
@ %bb.3:
	.loc	7 0 5                           @ ../absvdi2.c:0:5
.LCPI38_0:
	.long	.L.str
.LCPI38_1:
	.long	.L__func__.__absvdi2
.Lfunc_end38:
	.size	__absvdi2, .Lfunc_end38-__absvdi2
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
.Lfunc_begin39:
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
.Lfunc_end39:
	.size	compilerrt_abort_impl, .Lfunc_end39-compilerrt_abort_impl
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__absvsi2                       @ -- Begin function __absvsi2
	.p2align	2
	.type	__absvsi2,%function
	.code	32                              @ @__absvsi2
__absvsi2:
.Lfunc_begin40:
	.file	8 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../absvsi2.c" md5 0x4c623fefc2c7ed3929c6e73514b667d1
	.loc	8 23 0 is_stmt 1                @ ../absvsi2.c:23:0
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
.Ltmp75:
	.loc	8 25 9 prologue_end             @ ../absvsi2.c:25:9
	cmp	r0, #-2147483648
	bne	.LBB40_2
	b	.LBB40_1
.LBB40_1:                               @ %if.then
	.loc	8 26 9                          @ ../absvsi2.c:26:9
	ldr	r0, .LCPI40_0
	ldr	r2, .LCPI40_1
	mov	r1, #26
	bl	compilerrt_abort_impl
.LBB40_2:                               @ %if.end
	.loc	8 28 20                         @ ../absvsi2.c:28:20
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	bpl	.LBB40_4
@ %bb.3:                                @ %if.end
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	rsb	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
.LBB40_4:                               @ %if.end
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	8 28 5 is_stmt 0                @ ../absvsi2.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp76:
	.p2align	2
@ %bb.5:
	.loc	8 0 5                           @ ../absvsi2.c:0:5
.LCPI40_0:
	.long	.L.str.1
.LCPI40_1:
	.long	.L__func__.__absvsi2
.Lfunc_end40:
	.size	__absvsi2, .Lfunc_end40-__absvsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvdi3                       @ -- Begin function __addvdi3
	.p2align	2
	.type	__addvdi3,%function
	.code	32                              @ @__addvdi3
__addvdi3:
.Lfunc_begin41:
	.file	9 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvdi3.c" md5 0xaa240ee8ce7c28b2c3bcec10a7603d3f
	.loc	9 23 0 is_stmt 1                @ ../addvdi3.c:23:0
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
.Ltmp77:
	.loc	9 24 27 prologue_end            @ ../addvdi3.c:24:27
	adds	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	9 25 9                          @ ../addvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB41_4
	b	.LBB41_1
.LBB41_1:                               @ %if.then
	.loc	9 27 15                         @ ../addvdi3.c:27:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	9 27 13 is_stmt 0               @ ../addvdi3.c:27:13
	bge	.LBB41_3
	b	.LBB41_2
.LBB41_2:                               @ %if.then2
	.loc	9 28 13 is_stmt 1               @ ../addvdi3.c:28:13
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB41_3:                               @ %if.end
	.loc	9 29 5                          @ ../addvdi3.c:29:5
	b	.LBB41_7
.LBB41_4:                               @ %if.else
	.loc	9 32 15                         @ ../addvdi3.c:32:15
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	9 32 13 is_stmt 0               @ ../addvdi3.c:32:13
	blt	.LBB41_6
	b	.LBB41_5
.LBB41_5:                               @ %if.then4
	.loc	9 33 13 is_stmt 1               @ ../addvdi3.c:33:13
	ldr	r0, .LCPI41_0
	ldr	r2, .LCPI41_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB41_6:                               @ %if.end5
	.loc	9 0 13 is_stmt 0                @ ../addvdi3.c:0:13
	b	.LBB41_7
.LBB41_7:                               @ %if.end6
	.loc	9 35 5 is_stmt 1                @ ../addvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp78:
	.p2align	2
@ %bb.8:
	.loc	9 0 5 is_stmt 0                 @ ../addvdi3.c:0:5
.LCPI41_0:
	.long	.L.str.2
.LCPI41_1:
	.long	.L__func__.__addvdi3
.Lfunc_end41:
	.size	__addvdi3, .Lfunc_end41-__addvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__addvsi3                       @ -- Begin function __addvsi3
	.p2align	2
	.type	__addvsi3,%function
	.code	32                              @ @__addvsi3
__addvsi3:
.Lfunc_begin42:
	.file	10 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../addvsi3.c" md5 0x6cd4d40cc00928f1aaf6f29e299078cd
	.loc	10 23 0 is_stmt 1               @ ../addvsi3.c:23:0
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
.Ltmp79:
	.loc	10 24 27 prologue_end           @ ../addvsi3.c:24:27
	add	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	10 25 9                         @ ../addvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB42_4
	b	.LBB42_1
.LBB42_1:                               @ %if.then
	.loc	10 27 13                        @ ../addvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bge	.LBB42_3
	b	.LBB42_2
.LBB42_2:                               @ %if.then2
	.loc	10 28 13                        @ ../addvsi3.c:28:13
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB42_3:                               @ %if.end
	.loc	10 29 5                         @ ../addvsi3.c:29:5
	b	.LBB42_7
.LBB42_4:                               @ %if.else
	.loc	10 32 13                        @ ../addvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	blt	.LBB42_6
	b	.LBB42_5
.LBB42_5:                               @ %if.then4
	.loc	10 33 13                        @ ../addvsi3.c:33:13
	ldr	r0, .LCPI42_0
	ldr	r2, .LCPI42_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB42_6:                               @ %if.end5
	.loc	10 0 13 is_stmt 0               @ ../addvsi3.c:0:13
	b	.LBB42_7
.LBB42_7:                               @ %if.end6
	.loc	10 35 5 is_stmt 1               @ ../addvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp80:
	.p2align	2
@ %bb.8:
	.loc	10 0 5 is_stmt 0                @ ../addvsi3.c:0:5
.LCPI42_0:
	.long	.L.str.3
.LCPI42_1:
	.long	.L__func__.__addvsi3
.Lfunc_end42:
	.size	__addvsi3, .Lfunc_end42-__addvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashldi3                       @ -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,%function
	.code	32                              @ @__ashldi3
__ashldi3:
.Lfunc_begin43:
	.file	11 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashldi3.c" md5 0xae5236ddcefaf3e5efc4feba69d334b1
	.loc	11 25 0 is_stmt 1               @ ../ashldi3.c:25:0
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
.Ltmp81:
	.loc	11 29 15 prologue_end           @ ../ashldi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	11 30 9                         @ ../ashldi3.c:30:9
	tst	r2, #32
	beq	.LBB43_2
	b	.LBB43_1
.LBB43_1:                               @ %if.then
	.loc	11 0 9 is_stmt 0                @ ../ashldi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	11 32 22 is_stmt 1              @ ../ashldi3.c:32:22
	str	r0, [sp, #24]
	.loc	11 33 33                        @ ../ashldi3.c:33:33
	ldr	r0, [sp, #32]
	.loc	11 33 43 is_stmt 0              @ ../ashldi3.c:33:43
	sub	r1, r1, #32
	.loc	11 33 37                        @ ../ashldi3.c:33:37
	lsl	r0, r0, r1
	.loc	11 33 23                        @ ../ashldi3.c:33:23
	str	r0, [sp, #28]
	.loc	11 34 5 is_stmt 1               @ ../ashldi3.c:34:5
	b	.LBB43_5
.LBB43_2:                               @ %if.else
	.loc	11 37 13                        @ ../ashldi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB43_4
	b	.LBB43_3
.LBB43_3:                               @ %if.then4
	.loc	11 0 13 is_stmt 0               @ ../ashldi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	11 38 13 is_stmt 1              @ ../ashldi3.c:38:13
	b	.LBB43_6
.LBB43_4:                               @ %if.end
	.loc	11 39 33                        @ ../ashldi3.c:39:33
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #32]
	.loc	11 39 37 is_stmt 0              @ ../ashldi3.c:39:37
	lsl	r0, r0, r2
	.loc	11 39 23                        @ ../ashldi3.c:39:23
	str	r0, [sp, #24]
	.loc	11 40 56 is_stmt 1              @ ../ashldi3.c:40:56
	ldr	r1, [sp, #32]
	.loc	11 40 34 is_stmt 0              @ ../ashldi3.c:40:34
	ldr	r0, [sp, #36]
	.loc	11 40 39                        @ ../ashldi3.c:40:39
	lsl	r0, r0, r2
	.loc	11 40 77                        @ ../ashldi3.c:40:77
	rsb	r2, r2, #32
	.loc	11 40 45                        @ ../ashldi3.c:40:45
	orr	r0, r0, r1, lsr r2
	.loc	11 40 23                        @ ../ashldi3.c:40:23
	str	r0, [sp, #28]
	b	.LBB43_5
.LBB43_5:                               @ %if.end18
	.loc	11 42 19 is_stmt 1              @ ../ashldi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	11 42 5 is_stmt 0               @ ../ashldi3.c:42:5
	b	.LBB43_6
.LBB43_6:                               @ %return
	.loc	11 0 0                          @ ../ashldi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	11 43 1 is_stmt 1               @ ../ashldi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp82:
.Lfunc_end43:
	.size	__ashldi3, .Lfunc_end43-__ashldi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ashrdi3                       @ -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,%function
	.code	32                              @ @__ashrdi3
__ashrdi3:
.Lfunc_begin44:
	.file	12 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ashrdi3.c" md5 0xdf60b7a82095e7d7b5c11e1095a5679a
	.loc	12 25 0                         @ ../ashrdi3.c:25:0
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
.Ltmp83:
	.loc	12 29 15 prologue_end           @ ../ashrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	12 30 9                         @ ../ashrdi3.c:30:9
	tst	r2, #32
	beq	.LBB44_2
	b	.LBB44_1
.LBB44_1:                               @ %if.then
	.loc	12 33 33                        @ ../ashrdi3.c:33:33
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	12 33 38 is_stmt 0              @ ../ashrdi3.c:33:38
	asr	r0, r0, #31
	.loc	12 33 23                        @ ../ashrdi3.c:33:23
	str	r0, [sp, #28]
	.loc	12 34 32 is_stmt 1              @ ../ashrdi3.c:34:32
	ldr	r0, [sp, #36]
	.loc	12 34 43 is_stmt 0              @ ../ashrdi3.c:34:43
	sub	r1, r1, #32
	.loc	12 34 37                        @ ../ashrdi3.c:34:37
	asr	r0, r0, r1
	.loc	12 34 22                        @ ../ashrdi3.c:34:22
	str	r0, [sp, #24]
	.loc	12 35 5 is_stmt 1               @ ../ashrdi3.c:35:5
	b	.LBB44_5
.LBB44_2:                               @ %if.else
	.loc	12 38 13                        @ ../ashrdi3.c:38:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB44_4
	b	.LBB44_3
.LBB44_3:                               @ %if.then7
	.loc	12 0 13 is_stmt 0               @ ../ashrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	12 39 13 is_stmt 1              @ ../ashrdi3.c:39:13
	b	.LBB44_6
.LBB44_4:                               @ %if.end
	.loc	12 40 34                        @ ../ashrdi3.c:40:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	12 40 39 is_stmt 0              @ ../ashrdi3.c:40:39
	asr	r0, r0, r2
	.loc	12 40 24                        @ ../ashrdi3.c:40:24
	str	r0, [sp, #28]
	.loc	12 41 72 is_stmt 1              @ ../ashrdi3.c:41:72
	ldr	r1, [sp, #32]
	.loc	12 41 33 is_stmt 0              @ ../ashrdi3.c:41:33
	ldr	r0, [sp, #36]
	.loc	12 41 55                        @ ../ashrdi3.c:41:55
	rsb	r3, r2, #32
	.loc	12 41 38                        @ ../ashrdi3.c:41:38
	lsl	r0, r0, r3
	.loc	12 41 61                        @ ../ashrdi3.c:41:61
	orr	r0, r0, r1, lsr r2
	.loc	12 41 22                        @ ../ashrdi3.c:41:22
	str	r0, [sp, #24]
	b	.LBB44_5
.LBB44_5:                               @ %if.end21
	.loc	12 43 19 is_stmt 1              @ ../ashrdi3.c:43:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	12 43 5 is_stmt 0               @ ../ashrdi3.c:43:5
	b	.LBB44_6
.LBB44_6:                               @ %return
	.loc	12 0 0                          @ ../ashrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	12 44 1 is_stmt 1               @ ../ashrdi3.c:44:1
	add	sp, sp, #40
	bx	lr
.Ltmp84:
.Lfunc_end44:
	.size	__ashrdi3, .Lfunc_end44-__ashrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzdi2                        @ -- Begin function __clzdi2
	.p2align	2
	.type	__clzdi2,%function
	.code	32                              @ @__clzdi2
__clzdi2:
.Lfunc_begin45:
	.file	13 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzdi2.c" md5 0x901c40e0319a50689080965b20695c3e
	.loc	13 23 0                         @ ../clzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp85:
	.loc	13 25 11 prologue_end           @ ../clzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	13 27 49                        @ ../clzdi2.c:27:49
	ldr	r1, [sp]
	.loc	13 26 28                        @ ../clzdi2.c:26:28
	ldr	r2, [sp, #4]
	.loc	13 27 42                        @ ../clzdi2.c:27:42
	cmp	r2, #0
	mov	r0, r2
	moveq	r0, r1
	.loc	13 27 12 is_stmt 0              @ ../clzdi2.c:27:12
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r1, .LCPI45_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI45_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI45_2
	and	r0, r0, r1
	ldr	r1, .LCPI45_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	13 27 59                        @ ../clzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	13 27 5                         @ ../clzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp86:
	.p2align	2
@ %bb.1:
	.loc	13 0 5                          @ ../clzdi2.c:0:5
.LCPI45_0:
	.long	1431655765                      @ 0x55555555
.LCPI45_1:
	.long	858993459                       @ 0x33333333
.LCPI45_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI45_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end45:
	.size	__clzdi2, .Lfunc_end45-__clzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__clzsi2                        @ -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,%function
	.code	32                              @ @__clzsi2
__clzsi2:
.Lfunc_begin46:
	.file	14 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../clzsi2.c" md5 0x9b0156c55102d3143e17bdf85bafbc30
	.loc	14 23 0 is_stmt 1               @ ../clzsi2.c:23:0
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
.Ltmp87:
	.loc	14 25 40 prologue_end           @ ../clzsi2.c:25:40
	lsl	r0, r2, #4
	mov	r1, #16
	.loc	14 26 14                        @ ../clzsi2.c:26:14
	sub	r12, r1, r2, lsl #4
	.loc	14 26 7 is_stmt 0               @ ../clzsi2.c:26:7
	lsr	r2, r3, r12
	mov	r1, #65280
	.loc	14 29 13 is_stmt 1              @ ../clzsi2.c:29:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	mov	r3, #8
	.loc	14 30 13                        @ ../clzsi2.c:30:13
	sub	r12, r3, r1, lsl #3
	.loc	14 30 7 is_stmt 0               @ ../clzsi2.c:30:7
	lsr	r3, r2, r12
	.loc	14 31 7 is_stmt 1               @ ../clzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #240
	.loc	14 33 13                        @ ../clzsi2.c:33:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	mov	r2, #4
	.loc	14 34 13                        @ ../clzsi2.c:34:13
	sub	r12, r2, r1, lsl #2
	.loc	14 34 7 is_stmt 0               @ ../clzsi2.c:34:7
	lsr	r2, r3, r12
	.loc	14 35 7 is_stmt 1               @ ../clzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #12
	.loc	14 37 13                        @ ../clzsi2.c:37:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	lr, r1, r3
	mov	r1, #2
	.loc	14 38 13                        @ ../clzsi2.c:38:13
	sub	r12, r1, lr, lsl #1
	.loc	14 38 7 is_stmt 0               @ ../clzsi2.c:38:7
	lsr	r3, r2, r12
	.loc	14 39 7 is_stmt 1               @ ../clzsi2.c:39:7
	orr	r0, r0, lr, lsl #1
	.loc	14 52 20                        @ ../clzsi2.c:52:20
	sub	r1, r1, r2, lsr r12
	mvn	r2, #1
	.loc	14 52 37 is_stmt 0              @ ../clzsi2.c:52:37
	orr	r2, r2, r3, lsr #1
	add	r2, r2, #1
	.loc	14 52 25                        @ ../clzsi2.c:52:25
	and	r1, r1, r2
	.loc	14 52 14                        @ ../clzsi2.c:52:14
	add	r0, r0, r1
	.loc	14 52 5                         @ ../clzsi2.c:52:5
	pop	{r11, lr}
	bx	lr
.Ltmp88:
.Lfunc_end46:
	.size	__clzsi2, .Lfunc_end46-__clzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__cmpdi2                        @ -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,%function
	.code	32                              @ @__cmpdi2
__cmpdi2:
.Lfunc_begin47:
	.file	15 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../cmpdi2.c" md5 0x79ec8a4b383c8374d228cd0869637319
	.loc	15 24 0 is_stmt 1               @ ../cmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp89:
	.loc	15 26 11 prologue_end           @ ../cmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	15 28 11                        @ ../cmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	15 29 13                        @ ../cmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	15 29 24 is_stmt 0              @ ../cmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	15 29 9                         @ ../cmpdi2.c:29:9
	cmp	r0, r1
	bge	.LBB47_2
	b	.LBB47_1
.LBB47_1:                               @ %if.then
	.loc	15 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	15 30 9 is_stmt 1               @ ../cmpdi2.c:30:9
	b	.LBB47_9
.LBB47_2:                               @ %if.end
	.loc	15 31 13                        @ ../cmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	15 31 24 is_stmt 0              @ ../cmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	15 31 9                         @ ../cmpdi2.c:31:9
	cmp	r0, r1
	ble	.LBB47_4
	b	.LBB47_3
.LBB47_3:                               @ %if.then9
	.loc	15 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	15 32 9 is_stmt 1               @ ../cmpdi2.c:32:9
	b	.LBB47_9
.LBB47_4:                               @ %if.end10
	.loc	15 33 13                        @ ../cmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	15 33 23 is_stmt 0              @ ../cmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	15 33 9                         @ ../cmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB47_6
	b	.LBB47_5
.LBB47_5:                               @ %if.then15
	.loc	15 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	15 34 9 is_stmt 1               @ ../cmpdi2.c:34:9
	b	.LBB47_9
.LBB47_6:                               @ %if.end16
	.loc	15 35 13                        @ ../cmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	15 35 23 is_stmt 0              @ ../cmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	15 35 9                         @ ../cmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB47_8
	b	.LBB47_7
.LBB47_7:                               @ %if.then22
	.loc	15 0 9                          @ ../cmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	15 36 9 is_stmt 1               @ ../cmpdi2.c:36:9
	b	.LBB47_9
.LBB47_8:                               @ %if.end23
	.loc	15 0 9 is_stmt 0                @ ../cmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	15 37 5 is_stmt 1               @ ../cmpdi2.c:37:5
	b	.LBB47_9
.LBB47_9:                               @ %return
	.loc	15 0 0 is_stmt 0                @ ../cmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	15 38 1 is_stmt 1               @ ../cmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp90:
.Lfunc_end47:
	.size	__cmpdi2, .Lfunc_end47-__cmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_lcmp                    @ -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,%function
	.code	32                              @ @__aeabi_lcmp
__aeabi_lcmp:
.Lfunc_begin48:
	.loc	15 47 0                         @ ../cmpdi2.c:47:0
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
.Ltmp91:
	.loc	15 48 9 prologue_end            @ ../cmpdi2.c:48:9
	bl	__cmpdi2
	.loc	15 48 24 is_stmt 0              @ ../cmpdi2.c:48:24
	sub	r0, r0, #1
	.loc	15 48 2                         @ ../cmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp92:
.Lfunc_end48:
	.size	__aeabi_lcmp, .Lfunc_end48-__aeabi_lcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzdi2                        @ -- Begin function __ctzdi2
	.p2align	2
	.type	__ctzdi2,%function
	.code	32                              @ @__ctzdi2
__ctzdi2:
.Lfunc_begin49:
	.file	16 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzdi2.c" md5 0x0415a3f61808ca646548bc24b48a844a
	.loc	16 23 0 is_stmt 1               @ ../ctzdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp93:
	.loc	16 25 11 prologue_end           @ ../ctzdi2.c:25:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	16 26 28                        @ ../ctzdi2.c:26:28
	ldr	r2, [sp]
	.loc	16 27 31                        @ ../ctzdi2.c:27:31
	ldr	r0, [sp, #4]
	.loc	16 27 41 is_stmt 0              @ ../ctzdi2.c:27:41
	cmp	r2, #0
	mov	r1, r2
	moveq	r1, r0
	.loc	16 27 12                        @ ../ctzdi2.c:27:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI49_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r3, .LCPI49_1
	and	r1, r3, r0, lsr #2
	and	r0, r0, r3
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI49_2
	and	r0, r0, r1
	ldr	r1, .LCPI49_3
	mul	r3, r0, r1
	lsr	r0, r3, #24
	mov	r1, #32
	.loc	16 27 59                        @ ../ctzdi2.c:27:59
	add	r1, r1, r3, lsr #24
	cmp	r2, #0
	moveq	r0, r1
	.loc	16 27 5                         @ ../ctzdi2.c:27:5
	add	sp, sp, #8
	bx	lr
.Ltmp94:
	.p2align	2
@ %bb.1:
	.loc	16 0 5                          @ ../ctzdi2.c:0:5
.LCPI49_0:
	.long	1431655765                      @ 0x55555555
.LCPI49_1:
	.long	858993459                       @ 0x33333333
.LCPI49_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI49_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end49:
	.size	__ctzdi2, .Lfunc_end49-__ctzdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ctzsi2                        @ -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,%function
	.code	32                              @ @__ctzsi2
__ctzsi2:
.Lfunc_begin50:
	.file	17 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ctzsi2.c" md5 0x0372a2c6647eddaa73c0b61d8d03c3b1
	.loc	17 23 0 is_stmt 1               @ ../ctzsi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
	mov	r0, #255
	orr	r0, r0, #65280
.Ltmp95:
	.loc	17 25 20 prologue_end           @ ../ctzsi2.c:25:20
	and	r0, r2, r0
	rsbs	r1, r0, #0
	adc	r0, r0, r1
	.loc	17 25 40 is_stmt 0              @ ../ctzsi2.c:25:40
	lsl	r0, r0, #4
	.loc	17 26 7 is_stmt 1               @ ../ctzsi2.c:26:7
	lsr	r3, r2, r0
	mov	r1, #255
	.loc	17 29 13                        @ ../ctzsi2.c:29:13
	and	r1, r1, r2, lsr r0
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	17 29 29 is_stmt 0              @ ../ctzsi2.c:29:29
	lsl	r12, r1, #3
	.loc	17 30 7 is_stmt 1               @ ../ctzsi2.c:30:7
	lsr	r2, r3, r12
	.loc	17 31 7                         @ ../ctzsi2.c:31:7
	orr	r0, r0, r1, lsl #3
	mov	r1, #15
	.loc	17 33 13                        @ ../ctzsi2.c:33:13
	and	r1, r1, r3, lsr r12
	rsbs	r3, r1, #0
	adc	r1, r1, r3
	.loc	17 33 27 is_stmt 0              @ ../ctzsi2.c:33:27
	lsl	r12, r1, #2
	.loc	17 34 7 is_stmt 1               @ ../ctzsi2.c:34:7
	lsr	r3, r2, r12
	.loc	17 35 7                         @ ../ctzsi2.c:35:7
	orr	r0, r0, r1, lsl #2
	mov	r1, #3
	.loc	17 37 13                        @ ../ctzsi2.c:37:13
	and	r1, r1, r2, lsr r12
	rsbs	r2, r1, #0
	adc	r1, r1, r2
	.loc	17 37 26 is_stmt 0              @ ../ctzsi2.c:37:26
	lsl	r12, r1, #1
	.loc	17 38 7 is_stmt 1               @ ../ctzsi2.c:38:7
	lsr	r2, r3, r12
	.loc	17 40 7                         @ ../ctzsi2.c:40:7
	orr	r0, r0, r1, lsl #1
	mov	r1, #1
	.loc	17 56 25                        @ ../ctzsi2.c:56:25
	and	r1, r1, r2, lsr #1
	.loc	17 56 20 is_stmt 0              @ ../ctzsi2.c:56:20
	rsb	r1, r1, #2
	mvn	r2, #1
	.loc	17 56 44                        @ ../ctzsi2.c:56:44
	orr	r2, r2, r3, lsr r12
	add	r2, r2, #1
	.loc	17 56 32                        @ ../ctzsi2.c:56:32
	and	r1, r1, r2
	.loc	17 56 14                        @ ../ctzsi2.c:56:14
	add	r0, r0, r1
	.loc	17 56 5                         @ ../ctzsi2.c:56:5
	bx	lr
.Ltmp96:
.Lfunc_end50:
	.size	__ctzsi2, .Lfunc_end50-__ctzsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divdi3                        @ -- Begin function __divdi3
	.p2align	2
	.type	__divdi3,%function
	.code	32                              @ @__divdi3
__divdi3:
.Lfunc_begin51:
	.file	18 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divdi3.c" md5 0x281227589e0794a81d7211e4ee4a402c
	.loc	18 21 0 is_stmt 1               @ ../divdi3.c:21:0
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
.Ltmp97:
	.loc	18 23 20 prologue_end           @ ../divdi3.c:23:20
	asr	r12, r3, #31
	.loc	18 25 12                        @ ../divdi3.c:25:12
	eor	r0, r0, r3, asr #31
	eor	r1, r3, r3, asr #31
	.loc	18 25 19 is_stmt 0              @ ../divdi3.c:25:19
	subs	r0, r0, r3, asr #31
	sbc	r1, r1, r3, asr #31
	.loc	18 26 12 is_stmt 1              @ ../divdi3.c:26:12
	eor	r2, r2, lr, asr #31
	eor	r3, lr, lr, asr #31
	.loc	18 26 19 is_stmt 0              @ ../divdi3.c:26:19
	subs	r2, r2, lr, asr #31
	sbc	r3, r3, lr, asr #31
	.loc	18 27 9 is_stmt 1               @ ../divdi3.c:27:9
	eor	r12, r12, lr, asr #31
	str	r12, [sp, #4]                   @ 4-byte Spill
	.loc	18 28 13                        @ ../divdi3.c:28:13
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	18 28 44 is_stmt 0              @ ../divdi3.c:28:44
	eor	r1, r1, r2
	eor	r0, r0, r2
	.loc	18 28 51                        @ ../divdi3.c:28:51
	subs	r0, r0, r2
	sbc	r1, r1, r2
	.loc	18 28 5                         @ ../divdi3.c:28:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp98:
.Lfunc_end51:
	.size	__divdi3, .Lfunc_end51-__divdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmoddi4                    @ -- Begin function __udivmoddi4
	.p2align	2
	.type	__udivmoddi4,%function
	.code	32                              @ @__udivmoddi4
__udivmoddi4:
.Lfunc_begin52:
	.file	19 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmoddi4.c" md5 0xeca4b147be989cda91330ba5b56ed879
	.loc	19 25 0 is_stmt 1               @ ../udivmoddi4.c:25:0
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
.Ltmp99:
	.loc	19 29 11 prologue_end           @ ../udivmoddi4.c:29:11
	str	r1, [r11, #-4]
	str	r0, [r11, #-8]
	.loc	19 31 11                        @ ../udivmoddi4.c:31:11
	str	r3, [r11, #-12]
	str	r2, [r11, #-16]
	.loc	19 36 13                        @ ../udivmoddi4.c:36:13
	ldr	r0, [r11, #-4]
	.loc	19 36 9 is_stmt 0               @ ../udivmoddi4.c:36:9
	cmp	r0, #0
	bne	.LBB52_8
	b	.LBB52_1
.LBB52_1:                               @ %if.then
	.loc	19 38 17 is_stmt 1              @ ../udivmoddi4.c:38:17
	ldr	r0, [r11, #-12]
	.loc	19 38 13 is_stmt 0              @ ../udivmoddi4.c:38:13
	cmp	r0, #0
	bne	.LBB52_5
	b	.LBB52_2
.LBB52_2:                               @ %if.then5
	.loc	19 44 17 is_stmt 1              @ ../udivmoddi4.c:44:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_4
	b	.LBB52_3
.LBB52_3:                               @ %if.then6
	.loc	19 45 28                        @ ../udivmoddi4.c:45:28
	ldr	r0, [r11, #-8]
	.loc	19 45 38 is_stmt 0              @ ../udivmoddi4.c:45:38
	ldr	r1, [r11, #-16]
	.loc	19 45 32                        @ ../udivmoddi4.c:45:32
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	19 45 22                        @ ../udivmoddi4.c:45:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 45 17                        @ ../udivmoddi4.c:45:17
	b	.LBB52_4
.LBB52_4:                               @ %if.end
	.loc	19 46 24 is_stmt 1              @ ../udivmoddi4.c:46:24
	ldr	r0, [r11, #-8]
	.loc	19 46 34 is_stmt 0              @ ../udivmoddi4.c:46:34
	ldr	r1, [r11, #-16]
	.loc	19 46 28                        @ ../udivmoddi4.c:46:28
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 46 13                        @ ../udivmoddi4.c:46:13
	b	.LBB52_56
.LBB52_5:                               @ %if.end16
	.loc	19 52 13 is_stmt 1              @ ../udivmoddi4.c:52:13
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_7
	b	.LBB52_6
.LBB52_6:                               @ %if.then18
	.loc	19 53 24                        @ ../udivmoddi4.c:53:24
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	mov	r2, #0
	.loc	19 53 18 is_stmt 0              @ ../udivmoddi4.c:53:18
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 53 13                        @ ../udivmoddi4.c:53:13
	b	.LBB52_7
.LBB52_7:                               @ %if.end22
	.loc	19 0 13                         @ ../udivmoddi4.c:0:13
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 54 9 is_stmt 1               @ ../udivmoddi4.c:54:9
	b	.LBB52_56
.LBB52_8:                               @ %if.end23
	.loc	19 57 13                        @ ../udivmoddi4.c:57:13
	ldr	r0, [r11, #-16]
	.loc	19 57 9 is_stmt 0               @ ../udivmoddi4.c:57:9
	cmp	r0, #0
	bne	.LBB52_26
	b	.LBB52_9
.LBB52_9:                               @ %if.then28
	.loc	19 59 17 is_stmt 1              @ ../udivmoddi4.c:59:17
	ldr	r0, [r11, #-12]
	.loc	19 59 13 is_stmt 0              @ ../udivmoddi4.c:59:13
	cmp	r0, #0
	bne	.LBB52_13
	b	.LBB52_10
.LBB52_10:                              @ %if.then33
	.loc	19 65 17 is_stmt 1              @ ../udivmoddi4.c:65:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_12
	b	.LBB52_11
.LBB52_11:                              @ %if.then35
	.loc	19 66 28                        @ ../udivmoddi4.c:66:28
	ldr	r0, [r11, #-4]
	.loc	19 66 39 is_stmt 0              @ ../udivmoddi4.c:66:39
	ldr	r1, [r11, #-16]
	.loc	19 66 33                        @ ../udivmoddi4.c:66:33
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	mov	r2, #0
	.loc	19 66 22                        @ ../udivmoddi4.c:66:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 66 17                        @ ../udivmoddi4.c:66:17
	b	.LBB52_12
.LBB52_12:                              @ %if.end42
	.loc	19 67 24 is_stmt 1              @ ../udivmoddi4.c:67:24
	ldr	r0, [r11, #-4]
	.loc	19 67 35 is_stmt 0              @ ../udivmoddi4.c:67:35
	ldr	r1, [r11, #-16]
	.loc	19 67 29                        @ ../udivmoddi4.c:67:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 67 13                        @ ../udivmoddi4.c:67:13
	b	.LBB52_56
.LBB52_13:                              @ %if.end49
	.loc	19 70 17 is_stmt 1              @ ../udivmoddi4.c:70:17
	ldr	r0, [r11, #-8]
	.loc	19 70 13 is_stmt 0              @ ../udivmoddi4.c:70:13
	cmp	r0, #0
	bne	.LBB52_17
	b	.LBB52_14
.LBB52_14:                              @ %if.then54
	.loc	19 76 17 is_stmt 1              @ ../udivmoddi4.c:76:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_16
	b	.LBB52_15
.LBB52_15:                              @ %if.then56
	.loc	19 78 32                        @ ../udivmoddi4.c:78:32
	ldr	r0, [r11, #-4]
	.loc	19 78 43 is_stmt 0              @ ../udivmoddi4.c:78:43
	ldr	r1, [r11, #-12]
	.loc	19 78 37                        @ ../udivmoddi4.c:78:37
	bl	__umodsi3
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	.loc	19 78 26                        @ ../udivmoddi4.c:78:26
	str	r0, [r11, #-28]
	mov	r0, #0
	.loc	19 79 25 is_stmt 1              @ ../udivmoddi4.c:79:25
	str	r0, [r11, #-32]
	.loc	19 80 26                        @ ../udivmoddi4.c:80:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	19 80 22 is_stmt 0              @ ../udivmoddi4.c:80:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 81 13 is_stmt 1              @ ../udivmoddi4.c:81:13
	b	.LBB52_16
.LBB52_16:                              @ %if.end67
	.loc	19 82 24                        @ ../udivmoddi4.c:82:24
	ldr	r0, [r11, #-4]
	.loc	19 82 35 is_stmt 0              @ ../udivmoddi4.c:82:35
	ldr	r1, [r11, #-12]
	.loc	19 82 29                        @ ../udivmoddi4.c:82:29
	bl	__udivsi3
	mov	r1, r0
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 82 13                        @ ../udivmoddi4.c:82:13
	b	.LBB52_56
.LBB52_17:                              @ %if.end74
	.loc	19 88 18 is_stmt 1              @ ../udivmoddi4.c:88:18
	ldr	r0, [r11, #-12]
	.loc	19 88 35 is_stmt 0              @ ../udivmoddi4.c:88:35
	sub	r1, r0, #1
	.loc	19 88 13                        @ ../udivmoddi4.c:88:13
	tst	r0, r1
	bne	.LBB52_21
	b	.LBB52_18
.LBB52_18:                              @ %if.then81
	.loc	19 90 17 is_stmt 1              @ ../udivmoddi4.c:90:17
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_20
	b	.LBB52_19
.LBB52_19:                              @ %if.then83
	.loc	19 92 31                        @ ../udivmoddi4.c:92:31
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	19 92 25 is_stmt 0              @ ../udivmoddi4.c:92:25
	str	r0, [r11, #-32]
	.loc	19 93 32 is_stmt 1              @ ../udivmoddi4.c:93:32
	ldr	r0, [r11, #-4]
	.loc	19 93 44 is_stmt 0              @ ../udivmoddi4.c:93:44
	ldr	r2, [r11, #-12]
	.loc	19 93 49                        @ ../udivmoddi4.c:93:49
	sub	r2, r2, #1
	.loc	19 93 37                        @ ../udivmoddi4.c:93:37
	and	r0, r0, r2
	.loc	19 93 26                        @ ../udivmoddi4.c:93:26
	str	r0, [r11, #-28]
	.loc	19 94 26 is_stmt 1              @ ../udivmoddi4.c:94:26
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	19 94 22 is_stmt 0              @ ../udivmoddi4.c:94:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 95 13 is_stmt 1              @ ../udivmoddi4.c:95:13
	b	.LBB52_20
.LBB52_20:                              @ %if.end97
	.loc	19 96 24                        @ ../udivmoddi4.c:96:24
	ldr	r0, [r11, #-4]
	.loc	19 96 50 is_stmt 0              @ ../udivmoddi4.c:96:50
	ldr	r2, [r11, #-12]
	.loc	19 96 32                        @ ../udivmoddi4.c:96:32
	sub	r1, r2, #1
	bic	r1, r1, r2
	ldr	r2, .LCPI52_0
	and	r2, r2, r1, lsr #1
	sub	r1, r1, r2
	ldr	r3, .LCPI52_1
	and	r2, r3, r1, lsr #2
	and	r1, r1, r3
	add	r1, r1, r2
	add	r1, r1, r1, lsr #4
	ldr	r2, .LCPI52_2
	and	r2, r1, r2
	ldr	r3, .LCPI52_3
	mul	r1, r2, r3
	lsr	r1, r1, #24
	.loc	19 96 29                        @ ../udivmoddi4.c:96:29
	lsr	r1, r0, r1
	mov	r0, #0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 96 13                        @ ../udivmoddi4.c:96:13
	b	.LBB52_56
.LBB52_21:                              @ %if.end103
	.loc	19 102 32 is_stmt 1             @ ../udivmoddi4.c:102:32
	ldr	r0, [r11, #-12]
	.loc	19 102 14 is_stmt 0             @ ../udivmoddi4.c:102:14
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI52_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI52_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI52_2
	and	r1, r0, r2
	ldr	r3, .LCPI52_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	19 102 58                       @ ../udivmoddi4.c:102:58
	ldr	r1, [r11, #-4]
	.loc	19 102 40                       @ ../udivmoddi4.c:102:40
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
	.loc	19 102 38                       @ ../udivmoddi4.c:102:38
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #40]                   @ 4-byte Spill
	.loc	19 104 13 is_stmt 1             @ ../udivmoddi4.c:104:13
	cmp	r0, #31
	blo	.LBB52_25
	b	.LBB52_22
.LBB52_22:                              @ %if.then111
	.loc	19 106 16                       @ ../udivmoddi4.c:106:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_24
	b	.LBB52_23
.LBB52_23:                              @ %if.then113
	.loc	19 107 26                       @ ../udivmoddi4.c:107:26
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	19 107 22 is_stmt 0             @ ../udivmoddi4.c:107:22
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 107 17                       @ ../udivmoddi4.c:107:17
	b	.LBB52_24
.LBB52_24:                              @ %if.end115
	.loc	19 0 17                         @ ../udivmoddi4.c:0:17
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 108 13 is_stmt 1             @ ../udivmoddi4.c:108:13
	b	.LBB52_56
.LBB52_25:                              @ %if.end116
	.loc	19 110 9                        @ ../udivmoddi4.c:110:9
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	add	r0, r2, #1
	mov	r1, #0
	.loc	19 113 17                       @ ../udivmoddi4.c:113:17
	str	r1, [r11, #-24]
	.loc	19 114 24                       @ ../udivmoddi4.c:114:24
	ldr	r1, [r11, #-8]
	.loc	19 114 45 is_stmt 0             @ ../udivmoddi4.c:114:45
	rsb	r3, r2, #31
	.loc	19 114 28                       @ ../udivmoddi4.c:114:28
	lsl	r1, r1, r3
	.loc	19 114 18                       @ ../udivmoddi4.c:114:18
	str	r1, [r11, #-20]
	.loc	19 116 24 is_stmt 1             @ ../udivmoddi4.c:116:24
	ldr	r1, [r11, #-4]
	.loc	19 116 29 is_stmt 0             @ ../udivmoddi4.c:116:29
	lsr	r1, r1, r0
	.loc	19 116 18                       @ ../udivmoddi4.c:116:18
	str	r1, [r11, #-28]
	.loc	19 117 60 is_stmt 1             @ ../udivmoddi4.c:117:60
	ldr	r2, [r11, #-8]
	.loc	19 117 24 is_stmt 0             @ ../udivmoddi4.c:117:24
	ldr	r1, [r11, #-4]
	.loc	19 117 29                       @ ../udivmoddi4.c:117:29
	lsl	r1, r1, r3
	.loc	19 117 53                       @ ../udivmoddi4.c:117:53
	orr	r1, r1, r2, lsr r0
	.loc	19 117 17                       @ ../udivmoddi4.c:117:17
	str	r1, [r11, #-32]
	str	r0, [sp, #36]                   @ 4-byte Spill
	.loc	19 118 5 is_stmt 1              @ ../udivmoddi4.c:118:5
	b	.LBB52_49
.LBB52_26:                              @ %if.else
	.loc	19 121 17                       @ ../udivmoddi4.c:121:17
	ldr	r0, [r11, #-12]
	.loc	19 121 13 is_stmt 0             @ ../udivmoddi4.c:121:13
	cmp	r0, #0
	bne	.LBB52_40
	b	.LBB52_27
.LBB52_27:                              @ %if.then142
	.loc	19 127 22 is_stmt 1             @ ../udivmoddi4.c:127:22
	ldr	r0, [r11, #-16]
	.loc	19 127 17 is_stmt 0             @ ../udivmoddi4.c:127:17
	sub	r1, r0, #1
	tst	r0, r1
	bne	.LBB52_33
	b	.LBB52_28
.LBB52_28:                              @ %if.then151
	.loc	19 129 21 is_stmt 1             @ ../udivmoddi4.c:129:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_30
	b	.LBB52_29
.LBB52_29:                              @ %if.then153
	.loc	19 130 32                       @ ../udivmoddi4.c:130:32
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	19 130 43 is_stmt 0             @ ../udivmoddi4.c:130:43
	ldr	r2, [r11, #-16]
	.loc	19 130 47                       @ ../udivmoddi4.c:130:47
	sub	r2, r2, #1
	.loc	19 130 36                       @ ../udivmoddi4.c:130:36
	and	r0, r0, r2
	mov	r2, #0
	.loc	19 130 26                       @ ../udivmoddi4.c:130:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 130 21                       @ ../udivmoddi4.c:130:21
	b	.LBB52_30
.LBB52_30:                              @ %if.end161
	.loc	19 131 25 is_stmt 1             @ ../udivmoddi4.c:131:25
	ldr	r0, [r11, #-16]
	.loc	19 131 21 is_stmt 0             @ ../udivmoddi4.c:131:21
	cmp	r0, #1
	bne	.LBB52_32
	b	.LBB52_31
.LBB52_31:                              @ %if.then166
	.loc	19 132 30 is_stmt 1             @ ../udivmoddi4.c:132:30
	ldr	r1, [r11, #-8]
	ldr	r0, [r11, #-4]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 132 21 is_stmt 0             @ ../udivmoddi4.c:132:21
	b	.LBB52_56
.LBB52_32:                              @ %if.end168
	.loc	19 133 40 is_stmt 1             @ ../udivmoddi4.c:133:40
	ldr	r1, [r11, #-16]
	.loc	19 133 22 is_stmt 0             @ ../udivmoddi4.c:133:22
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI52_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI52_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI52_2
	and	r0, r0, r1
	ldr	r1, .LCPI52_3
	mul	r12, r0, r1
	lsr	r2, r12, #24
	.loc	19 134 32 is_stmt 1             @ ../udivmoddi4.c:134:32
	ldr	r0, [r11, #-4]
	.loc	19 134 37 is_stmt 0             @ ../udivmoddi4.c:134:37
	lsr	r0, r0, r2
	.loc	19 134 26                       @ ../udivmoddi4.c:134:26
	str	r0, [r11, #-20]
	.loc	19 135 68 is_stmt 1             @ ../udivmoddi4.c:135:68
	ldr	r1, [r11, #-8]
	.loc	19 135 32 is_stmt 0             @ ../udivmoddi4.c:135:32
	ldr	r0, [r11, #-4]
	mov	r3, #32
	.loc	19 135 54                       @ ../udivmoddi4.c:135:54
	sub	r3, r3, r12, lsr #24
	.loc	19 135 37                       @ ../udivmoddi4.c:135:37
	lsl	r0, r0, r3
	.loc	19 135 61                       @ ../udivmoddi4.c:135:61
	orr	r0, r0, r1, lsr r2
	.loc	19 135 25                       @ ../udivmoddi4.c:135:25
	str	r0, [r11, #-24]
	.loc	19 136 26 is_stmt 1             @ ../udivmoddi4.c:136:26
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 136 17 is_stmt 0             @ ../udivmoddi4.c:136:17
	b	.LBB52_56
.LBB52_33:                              @ %if.end187
	.loc	19 142 55 is_stmt 1             @ ../udivmoddi4.c:142:55
	ldr	r0, [r11, #-16]
	.loc	19 142 37 is_stmt 0             @ ../udivmoddi4.c:142:37
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI52_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI52_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI52_2
	and	r1, r0, r2
	ldr	r3, .LCPI52_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	19 142 80                       @ ../udivmoddi4.c:142:80
	ldr	r1, [r11, #-4]
	.loc	19 142 62                       @ ../udivmoddi4.c:142:62
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
	.loc	19 142 60                       @ ../udivmoddi4.c:142:60
	sub	r0, r0, r1, lsr #24
	add	r0, r0, #33
	str	r0, [sp, #32]                   @ 4-byte Spill
	.loc	19 147 17 is_stmt 1             @ ../udivmoddi4.c:147:17
	cmp	r0, #32
	bne	.LBB52_35
	b	.LBB52_34
.LBB52_34:                              @ %if.then195
	.loc	19 0 17 is_stmt 0               @ ../udivmoddi4.c:0:17
	mov	r0, #0
	.loc	19 149 25 is_stmt 1             @ ../udivmoddi4.c:149:25
	str	r0, [r11, #-24]
	.loc	19 150 32                       @ ../udivmoddi4.c:150:32
	ldr	r1, [r11, #-8]
	.loc	19 150 26 is_stmt 0             @ ../udivmoddi4.c:150:26
	str	r1, [r11, #-20]
	.loc	19 151 26 is_stmt 1             @ ../udivmoddi4.c:151:26
	str	r0, [r11, #-28]
	.loc	19 152 31                       @ ../udivmoddi4.c:152:31
	ldr	r0, [r11, #-4]
	.loc	19 152 25 is_stmt 0             @ ../udivmoddi4.c:152:25
	str	r0, [r11, #-32]
	.loc	19 153 13 is_stmt 1             @ ../udivmoddi4.c:153:13
	b	.LBB52_39
.LBB52_35:                              @ %if.else208
	.loc	19 154 22                       @ ../udivmoddi4.c:154:22
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	cmp	r0, #31
	bhi	.LBB52_37
	b	.LBB52_36
.LBB52_36:                              @ %if.then211
	.loc	19 0 22 is_stmt 0               @ ../udivmoddi4.c:0:22
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	mov	r0, #0
	.loc	19 156 25 is_stmt 1             @ ../udivmoddi4.c:156:25
	str	r0, [r11, #-24]
	.loc	19 157 32                       @ ../udivmoddi4.c:157:32
	ldr	r0, [r11, #-8]
	.loc	19 157 53 is_stmt 0             @ ../udivmoddi4.c:157:53
	rsb	r3, r2, #32
	.loc	19 157 36                       @ ../udivmoddi4.c:157:36
	lsl	r0, r0, r3
	.loc	19 157 26                       @ ../udivmoddi4.c:157:26
	str	r0, [r11, #-20]
	.loc	19 158 32 is_stmt 1             @ ../udivmoddi4.c:158:32
	ldr	r0, [r11, #-4]
	.loc	19 158 37 is_stmt 0             @ ../udivmoddi4.c:158:37
	lsr	r0, r0, r2
	.loc	19 158 26                       @ ../udivmoddi4.c:158:26
	str	r0, [r11, #-28]
	.loc	19 159 68 is_stmt 1             @ ../udivmoddi4.c:159:68
	ldr	r1, [r11, #-8]
	.loc	19 159 32 is_stmt 0             @ ../udivmoddi4.c:159:32
	ldr	r0, [r11, #-4]
	.loc	19 159 37                       @ ../udivmoddi4.c:159:37
	lsl	r0, r0, r3
	.loc	19 159 61                       @ ../udivmoddi4.c:159:61
	orr	r0, r0, r1, lsr r2
	.loc	19 159 25                       @ ../udivmoddi4.c:159:25
	str	r0, [r11, #-32]
	.loc	19 160 13 is_stmt 1             @ ../udivmoddi4.c:160:13
	b	.LBB52_38
.LBB52_37:                              @ %if.else235
	.loc	19 163 31                       @ ../udivmoddi4.c:163:31
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	19 163 53 is_stmt 0             @ ../udivmoddi4.c:163:53
	rsb	r3, r1, #64
	.loc	19 163 35                       @ ../udivmoddi4.c:163:35
	lsl	r0, r0, r3
	.loc	19 163 25                       @ ../udivmoddi4.c:163:25
	str	r0, [r11, #-24]
	.loc	19 165 33 is_stmt 1             @ ../udivmoddi4.c:165:33
	ldr	r2, [r11, #-8]
	.loc	19 164 33                       @ ../udivmoddi4.c:164:33
	ldr	r0, [r11, #-4]
	.loc	19 164 38 is_stmt 0             @ ../udivmoddi4.c:164:38
	lsl	r0, r0, r3
	.loc	19 165 44 is_stmt 1             @ ../udivmoddi4.c:165:44
	sub	r1, r1, #32
	.loc	19 164 63                       @ ../udivmoddi4.c:164:63
	orr	r0, r0, r2, lsr r1
	.loc	19 164 26 is_stmt 0             @ ../udivmoddi4.c:164:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	19 166 26 is_stmt 1             @ ../udivmoddi4.c:166:26
	str	r0, [r11, #-28]
	.loc	19 167 31                       @ ../udivmoddi4.c:167:31
	ldr	r0, [r11, #-4]
	.loc	19 167 36 is_stmt 0             @ ../udivmoddi4.c:167:36
	lsr	r0, r0, r1
	.loc	19 167 25                       @ ../udivmoddi4.c:167:25
	str	r0, [r11, #-32]
	b	.LBB52_38
.LBB52_38:                              @ %if.end261
	.loc	19 0 25                         @ ../udivmoddi4.c:0:25
	b	.LBB52_39
.LBB52_39:                              @ %if.end262
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	.loc	19 169 9 is_stmt 1              @ ../udivmoddi4.c:169:9
	b	.LBB52_48
.LBB52_40:                              @ %if.else263
	.loc	19 176 36                       @ ../udivmoddi4.c:176:36
	ldr	r0, [r11, #-12]
	.loc	19 176 18 is_stmt 0             @ ../udivmoddi4.c:176:18
	orr	r0, r0, r0, lsr #1
	orr	r0, r0, r0, lsr #2
	orr	r0, r0, r0, lsr #4
	orr	r0, r0, r0, lsr #8
	orr	r0, r0, r0, lsr #16
	mvn	r0, r0
	ldr	r12, .LCPI52_0
	and	r1, r12, r0, lsr #1
	sub	r0, r0, r1
	ldr	lr, .LCPI52_1
	and	r1, lr, r0, lsr #2
	and	r0, r0, lr
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI52_2
	and	r1, r0, r2
	ldr	r3, .LCPI52_3
	mul	r0, r1, r3
	lsr	r0, r0, #24
	.loc	19 176 62                       @ ../udivmoddi4.c:176:62
	ldr	r1, [r11, #-4]
	.loc	19 176 44                       @ ../udivmoddi4.c:176:44
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
	.loc	19 176 42                       @ ../udivmoddi4.c:176:42
	sub	r0, r0, r1, lsr #24
	str	r0, [sp, #24]                   @ 4-byte Spill
	.loc	19 178 17 is_stmt 1             @ ../udivmoddi4.c:178:17
	cmp	r0, #32
	blo	.LBB52_44
	b	.LBB52_41
.LBB52_41:                              @ %if.then271
	.loc	19 180 21                       @ ../udivmoddi4.c:180:21
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB52_43
	b	.LBB52_42
.LBB52_42:                              @ %if.then273
	.loc	19 181 30                       @ ../udivmoddi4.c:181:30
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-8]
	ldr	r2, [r11, #-4]
	.loc	19 181 26 is_stmt 0             @ ../udivmoddi4.c:181:26
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 181 21                       @ ../udivmoddi4.c:181:21
	b	.LBB52_43
.LBB52_43:                              @ %if.end275
	.loc	19 0 21                         @ ../udivmoddi4.c:0:21
	mov	r0, #0
	mov	r1, r0
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 182 17 is_stmt 1             @ ../udivmoddi4.c:182:17
	b	.LBB52_56
.LBB52_44:                              @ %if.end276
	.loc	19 184 13                       @ ../udivmoddi4.c:184:13
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r1, #0
	.loc	19 187 21                       @ ../udivmoddi4.c:187:21
	str	r1, [r11, #-24]
	.loc	19 188 17                       @ ../udivmoddi4.c:188:17
	cmp	r0, #32
	bne	.LBB52_46
	b	.LBB52_45
.LBB52_45:                              @ %if.then282
	.loc	19 190 32                       @ ../udivmoddi4.c:190:32
	ldr	r0, [r11, #-8]
	.loc	19 190 26 is_stmt 0             @ ../udivmoddi4.c:190:26
	str	r0, [r11, #-20]
	mov	r0, #0
	.loc	19 191 26 is_stmt 1             @ ../udivmoddi4.c:191:26
	str	r0, [r11, #-28]
	.loc	19 192 31                       @ ../udivmoddi4.c:192:31
	ldr	r0, [r11, #-4]
	.loc	19 192 25 is_stmt 0             @ ../udivmoddi4.c:192:25
	str	r0, [r11, #-32]
	.loc	19 193 13 is_stmt 1             @ ../udivmoddi4.c:193:13
	b	.LBB52_47
.LBB52_46:                              @ %if.else293
	.loc	19 196 32                       @ ../udivmoddi4.c:196:32
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [r11, #-8]
	.loc	19 196 53 is_stmt 0             @ ../udivmoddi4.c:196:53
	rsb	r3, r1, #31
	.loc	19 196 36                       @ ../udivmoddi4.c:196:36
	lsl	r0, r0, r3
	.loc	19 196 26                       @ ../udivmoddi4.c:196:26
	str	r0, [r11, #-20]
	.loc	19 197 32 is_stmt 1             @ ../udivmoddi4.c:197:32
	ldr	r0, [r11, #-4]
	.loc	19 197 37 is_stmt 0             @ ../udivmoddi4.c:197:37
	lsr	r0, r0, r2
	.loc	19 197 26                       @ ../udivmoddi4.c:197:26
	str	r0, [r11, #-28]
	.loc	19 198 68 is_stmt 1             @ ../udivmoddi4.c:198:68
	ldr	r1, [r11, #-8]
	.loc	19 198 32 is_stmt 0             @ ../udivmoddi4.c:198:32
	ldr	r0, [r11, #-4]
	.loc	19 198 37                       @ ../udivmoddi4.c:198:37
	lsl	r0, r0, r3
	.loc	19 198 61                       @ ../udivmoddi4.c:198:61
	orr	r0, r0, r1, lsr r2
	.loc	19 198 25                       @ ../udivmoddi4.c:198:25
	str	r0, [r11, #-32]
	b	.LBB52_47
.LBB52_47:                              @ %if.end315
	.loc	19 0 25                         @ ../udivmoddi4.c:0:25
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r0, [sp, #28]                   @ 4-byte Spill
	b	.LBB52_48
.LBB52_48:                              @ %if.end316
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #36]                   @ 4-byte Spill
	b	.LBB52_49
.LBB52_49:                              @ %if.end317
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	mov	r0, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	19 209 5 is_stmt 1              @ ../udivmoddi4.c:209:5
	b	.LBB52_50
.LBB52_50:                              @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	19 0 0 is_stmt 0                @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	19 209 5                        @ ../udivmoddi4.c:209:5
	cmp	r0, #0
	beq	.LBB52_53
	b	.LBB52_51
.LBB52_51:                              @ %for.body
                                        @   in Loop: Header=BB52_50 Depth=1
	.loc	19 212 43 is_stmt 1             @ ../udivmoddi4.c:212:43
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [r11, #-32]
	.loc	19 212 25 is_stmt 0             @ ../udivmoddi4.c:212:25
	ldr	r2, [r11, #-28]
	.loc	19 212 36                       @ ../udivmoddi4.c:212:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	19 212 18                       @ ../udivmoddi4.c:212:18
	str	r2, [r11, #-28]
	.loc	19 213 43 is_stmt 1             @ ../udivmoddi4.c:213:43
	ldr	r2, [r11, #-20]
	.loc	19 213 36 is_stmt 0             @ ../udivmoddi4.c:213:36
	lsl	r1, r1, #1
	orr	r1, r1, r2, lsr #31
	.loc	19 213 18                       @ ../udivmoddi4.c:213:18
	str	r1, [r11, #-32]
	.loc	19 214 43 is_stmt 1             @ ../udivmoddi4.c:214:43
	ldr	r1, [r11, #-24]
	.loc	19 214 25 is_stmt 0             @ ../udivmoddi4.c:214:25
	ldr	r2, [r11, #-20]
	.loc	19 214 36                       @ ../udivmoddi4.c:214:36
	lsl	r2, r2, #1
	orr	r2, r2, r1, lsr #31
	.loc	19 214 18                       @ ../udivmoddi4.c:214:18
	str	r2, [r11, #-20]
	.loc	19 215 36 is_stmt 1             @ ../udivmoddi4.c:215:36
	orr	r0, r0, r1, lsl #1
	.loc	19 215 18 is_stmt 0             @ ../udivmoddi4.c:215:18
	str	r0, [r11, #-24]
	.loc	19 223 37 is_stmt 1             @ ../udivmoddi4.c:223:37
	ldr	r12, [r11, #-16]
	ldr	r2, [r11, #-12]
	.loc	19 223 45 is_stmt 0             @ ../udivmoddi4.c:223:45
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	.loc	19 223 49                       @ ../udivmoddi4.c:223:49
	mvn	r3, r1
	mvn	lr, r0
	adds	lr, r12, lr
	adc	r3, r2, r3
	str	r3, [sp]                        @ 4-byte Spill
	.loc	19 225 15 is_stmt 1             @ ../udivmoddi4.c:225:15
	subs	r12, r0, r12
	sbc	r2, r1, r2
	cmp	r3, #0
	movmi	r0, r12
	cmp	r3, #0
	movmi	r1, r2
	str	r1, [r11, #-28]
	str	r0, [r11, #-32]
	.loc	19 226 5                        @ ../udivmoddi4.c:226:5
	b	.LBB52_52
.LBB52_52:                              @ %for.inc
                                        @   in Loop: Header=BB52_50 Depth=1
	.loc	19 224 19                       @ ../udivmoddi4.c:224:19
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	lsr	r0, r0, #31
	.loc	19 209 20                       @ ../udivmoddi4.c:209:20
	sub	r1, r1, #1
	str	r1, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	19 209 5 is_stmt 0              @ ../udivmoddi4.c:209:5
	b	.LBB52_50
.LBB52_53:                              @ %for.end
	.loc	19 227 16 is_stmt 1             @ ../udivmoddi4.c:227:16
	ldr	r0, [r11, #-36]                 @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [r11, #-24]
	ldr	r1, [r11, #-20]
	.loc	19 227 20 is_stmt 0             @ ../udivmoddi4.c:227:20
	lsl	r1, r1, #1
	orr	r1, r1, r3, lsr #31
	.loc	19 227 26                       @ ../udivmoddi4.c:227:26
	orr	r2, r2, r3, lsl #1
	.loc	19 227 11                       @ ../udivmoddi4.c:227:11
	str	r2, [r11, #-24]
	str	r1, [r11, #-20]
	.loc	19 228 9 is_stmt 1              @ ../udivmoddi4.c:228:9
	cmp	r0, #0
	beq	.LBB52_55
	b	.LBB52_54
.LBB52_54:                              @ %if.then371
	.loc	19 229 18                       @ ../udivmoddi4.c:229:18
	ldr	r1, [r11, #-36]                 @ 4-byte Reload
	ldr	r0, [r11, #-32]
	ldr	r2, [r11, #-28]
	.loc	19 229 14 is_stmt 0             @ ../udivmoddi4.c:229:14
	str	r2, [r1, #4]
	str	r0, [r1]
	.loc	19 229 9                        @ ../udivmoddi4.c:229:9
	b	.LBB52_55
.LBB52_55:                              @ %if.end373
	.loc	19 230 14 is_stmt 1             @ ../udivmoddi4.c:230:14
	ldr	r1, [r11, #-24]
	ldr	r0, [r11, #-20]
	str	r1, [sp, #44]                   @ 4-byte Spill
	str	r0, [r11, #-40]                 @ 4-byte Spill
	.loc	19 230 5 is_stmt 0              @ ../udivmoddi4.c:230:5
	b	.LBB52_56
.LBB52_56:                              @ %return
	.loc	19 0 0                          @ ../udivmoddi4.c:0:0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [r11, #-40]                 @ 4-byte Reload
	.loc	19 231 1 is_stmt 1              @ ../udivmoddi4.c:231:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp100:
	.p2align	2
@ %bb.57:
	.loc	19 0 1 is_stmt 0                @ ../udivmoddi4.c:0:1
.LCPI52_0:
	.long	1431655765                      @ 0x55555555
.LCPI52_1:
	.long	858993459                       @ 0x33333333
.LCPI52_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI52_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end52:
	.size	__udivmoddi4, .Lfunc_end52-__udivmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmoddi4                     @ -- Begin function __divmoddi4
	.p2align	2
	.type	__divmoddi4,%function
	.code	32                              @ @__divmoddi4
__divmoddi4:
.Lfunc_begin53:
	.file	20 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmoddi4.c" md5 0xbd72633dccf26f3dd8ee74bf04f7fdac
	.loc	20 21 0 is_stmt 1               @ ../divmoddi4.c:21:0
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
.Ltmp101:
	.loc	20 22 14 prologue_end           @ ../divmoddi4.c:22:14
	mov	r2, r5
	bl	__divdi3
	ldr	r12, [sp]                       @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	ldr	lr, [sp, #12]                   @ 4-byte Reload
	.loc	20 23 16                        @ ../divmoddi4.c:23:16
	umull	r4, r7, r0, r5
	mla	r6, r0, lr, r7
	mla	lr, r1, r5, r6
	.loc	20 23 12 is_stmt 0              @ ../divmoddi4.c:23:12
	subs	r12, r12, r4
	sbc	r2, r2, lr
	.loc	20 23 8                         @ ../divmoddi4.c:23:8
	str	r12, [r3]
	str	r2, [r3, #4]
	.loc	20 24 3 is_stmt 1               @ ../divmoddi4.c:24:3
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp102:
.Lfunc_end53:
	.size	__divmoddi4, .Lfunc_end53-__divmoddi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divmodsi4                     @ -- Begin function __divmodsi4
	.p2align	2
	.type	__divmodsi4,%function
	.code	32                              @ @__divmodsi4
__divmodsi4:
.Lfunc_begin54:
	.file	21 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divmodsi4.c" md5 0x0cf7caca427f8ea020b675e27b5985b5
	.loc	21 21 0                         @ ../divmodsi4.c:21:0
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
.Ltmp103:
	.loc	21 22 14 prologue_end           @ ../divmodsi4.c:22:14
	bl	__divsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	21 23 16                        @ ../divmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	21 23 12 is_stmt 0              @ ../divmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	21 23 8                         @ ../divmodsi4.c:23:8
	str	r1, [r2]
	.loc	21 24 3 is_stmt 1               @ ../divmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp104:
.Lfunc_end54:
	.size	__divmodsi4, .Lfunc_end54-__divmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__divsi3                        @ -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,%function
	.code	32                              @ @__divsi3
__divsi3:
.Lfunc_begin55:
	.file	22 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../divsi3.c" md5 0x7845e3e46788425cf69d463f3cfe00e5
	.loc	22 23 0                         @ ../divsi3.c:23:0
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
.Ltmp105:
	.loc	22 25 20 prologue_end           @ ../divsi3.c:25:20
	asr	r2, r1, #31
	.loc	22 27 12                        @ ../divsi3.c:27:12
	eor	r0, r1, r1, asr #31
	.loc	22 27 19 is_stmt 0              @ ../divsi3.c:27:19
	sub	r0, r0, r1, asr #31
	.loc	22 28 12 is_stmt 1              @ ../divsi3.c:28:12
	eor	r1, r3, r3, asr #31
	.loc	22 28 19 is_stmt 0              @ ../divsi3.c:28:19
	sub	r1, r1, r3, asr #31
	.loc	22 29 9 is_stmt 1               @ ../divsi3.c:29:9
	eor	r2, r2, r3, asr #31
	str	r2, [sp, #4]                    @ 4-byte Spill
	.loc	22 36 22                        @ ../divsi3.c:36:22
	bl	__udivsi3
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	.loc	22 36 33 is_stmt 0              @ ../divsi3.c:36:33
	eor	r0, r0, r1
	.loc	22 36 40                        @ ../divsi3.c:36:40
	sub	r0, r0, r1
	.loc	22 36 5                         @ ../divsi3.c:36:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp106:
.Lfunc_end55:
	.size	__divsi3, .Lfunc_end55-__divsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffsdi2                        @ -- Begin function __ffsdi2
	.p2align	2
	.type	__ffsdi2,%function
	.code	32                              @ @__ffsdi2
__ffsdi2:
.Lfunc_begin56:
	.file	23 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffsdi2.c" md5 0x4b800e1cad35a0bc99971441032171a3
	.loc	23 23 0 is_stmt 1               @ ../ffsdi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
                                        @ kill: def $r2 killed $r1
                                        @ kill: def $r2 killed $r0
.Ltmp107:
	.loc	23 25 11 prologue_end           @ ../ffsdi2.c:25:11
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	.loc	23 26 13                        @ ../ffsdi2.c:26:13
	ldr	r0, [sp, #8]
	.loc	23 26 9 is_stmt 0               @ ../ffsdi2.c:26:9
	cmp	r0, #0
	bne	.LBB56_4
	b	.LBB56_1
.LBB56_1:                               @ %if.then
	.loc	23 28 17 is_stmt 1              @ ../ffsdi2.c:28:17
	ldr	r0, [sp, #12]
	.loc	23 28 13 is_stmt 0              @ ../ffsdi2.c:28:13
	cmp	r0, #0
	bne	.LBB56_3
	b	.LBB56_2
.LBB56_2:                               @ %if.then3
	.loc	23 0 13                         @ ../ffsdi2.c:0:13
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	23 29 13 is_stmt 1              @ ../ffsdi2.c:29:13
	b	.LBB56_5
.LBB56_3:                               @ %if.end
	.loc	23 30 34                        @ ../ffsdi2.c:30:34
	ldr	r1, [sp, #12]
	.loc	23 30 16 is_stmt 0              @ ../ffsdi2.c:30:16
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI56_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI56_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI56_2
	and	r0, r0, r1
	ldr	r2, .LCPI56_3
	mul	r1, r0, r2
	mov	r0, #33
	.loc	23 30 40                        @ ../ffsdi2.c:30:40
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	23 30 9                         @ ../ffsdi2.c:30:9
	b	.LBB56_5
.LBB56_4:                               @ %if.end6
	.loc	23 32 30 is_stmt 1              @ ../ffsdi2.c:32:30
	ldr	r1, [sp, #8]
	.loc	23 32 12 is_stmt 0              @ ../ffsdi2.c:32:12
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI56_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI56_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI56_2
	and	r0, r0, r1
	ldr	r2, .LCPI56_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	23 32 35                        @ ../ffsdi2.c:32:35
	add	r0, r0, r1, lsr #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	23 32 5                         @ ../ffsdi2.c:32:5
	b	.LBB56_5
.LBB56_5:                               @ %return
	.loc	23 0 0                          @ ../ffsdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	23 33 1 is_stmt 1               @ ../ffsdi2.c:33:1
	add	sp, sp, #16
	bx	lr
.Ltmp108:
	.p2align	2
@ %bb.6:
	.loc	23 0 1 is_stmt 0                @ ../ffsdi2.c:0:1
.LCPI56_0:
	.long	1431655765                      @ 0x55555555
.LCPI56_1:
	.long	858993459                       @ 0x33333333
.LCPI56_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI56_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end56:
	.size	__ffsdi2, .Lfunc_end56-__ffsdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ffssi2                        @ -- Begin function __ffssi2
	.p2align	2
	.type	__ffssi2,%function
	.code	32                              @ @__ffssi2
__ffssi2:
.Lfunc_begin57:
	.file	24 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ffssi2.c" md5 0x182169d6765bddc2bf1b03cc7a4f47cb
	.loc	24 23 0 is_stmt 1               @ ../ffssi2.c:23:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	str	r0, [sp, #4]                    @ 4-byte Spill
.Ltmp109:
	.loc	24 24 9 prologue_end            @ ../ffssi2.c:24:9
	cmp	r0, #0
	bne	.LBB57_2
	b	.LBB57_1
.LBB57_1:                               @ %if.then
	.loc	24 0 9 is_stmt 0                @ ../ffssi2.c:0:9
	mov	r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	.loc	24 26 9 is_stmt 1               @ ../ffssi2.c:26:9
	b	.LBB57_3
.LBB57_2:                               @ %if.end
	.loc	24 28 12                        @ ../ffssi2.c:28:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	sub	r0, r1, #1
	bic	r0, r0, r1
	ldr	r1, .LCPI57_0
	and	r1, r1, r0, lsr #1
	sub	r0, r0, r1
	ldr	r2, .LCPI57_1
	and	r1, r2, r0, lsr #2
	and	r0, r0, r2
	add	r0, r0, r1
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI57_2
	and	r0, r0, r1
	ldr	r2, .LCPI57_3
	mul	r1, r0, r2
	mov	r0, #1
	.loc	24 28 29 is_stmt 0              @ ../ffssi2.c:28:29
	add	r0, r0, r1, lsr #24
	str	r0, [sp]                        @ 4-byte Spill
	.loc	24 28 5                         @ ../ffssi2.c:28:5
	b	.LBB57_3
.LBB57_3:                               @ %return
	.loc	24 0 0                          @ ../ffssi2.c:0:0
	ldr	r0, [sp]                        @ 4-byte Reload
	.loc	24 29 1 is_stmt 1               @ ../ffssi2.c:29:1
	add	sp, sp, #8
	bx	lr
.Ltmp110:
	.p2align	2
@ %bb.4:
	.loc	24 0 1 is_stmt 0                @ ../ffssi2.c:0:1
.LCPI57_0:
	.long	1431655765                      @ 0x55555555
.LCPI57_1:
	.long	858993459                       @ 0x33333333
.LCPI57_2:
	.long	252645135                       @ 0xf0f0f0f
.LCPI57_3:
	.long	16843009                        @ 0x1010101
.Lfunc_end57:
	.size	__ffssi2, .Lfunc_end57-__ffssi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__lshrdi3                       @ -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,%function
	.code	32                              @ @__lshrdi3
__lshrdi3:
.Lfunc_begin58:
	.file	25 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../lshrdi3.c" md5 0xc456e45323b3205c3b32d82b51570771
	.loc	25 25 0 is_stmt 1               @ ../lshrdi3.c:25:0
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
.Ltmp111:
	.loc	25 29 15 prologue_end           @ ../lshrdi3.c:29:15
	str	r1, [sp, #36]
	str	r0, [sp, #32]
	.loc	25 30 9                         @ ../lshrdi3.c:30:9
	tst	r2, #32
	beq	.LBB58_2
	b	.LBB58_1
.LBB58_1:                               @ %if.then
	.loc	25 0 9 is_stmt 0                @ ../lshrdi3.c:0:9
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mov	r0, #0
	.loc	25 32 23 is_stmt 1              @ ../lshrdi3.c:32:23
	str	r0, [sp, #28]
	.loc	25 33 32                        @ ../lshrdi3.c:33:32
	ldr	r0, [sp, #36]
	.loc	25 33 43 is_stmt 0              @ ../lshrdi3.c:33:43
	sub	r1, r1, #32
	.loc	25 33 37                        @ ../lshrdi3.c:33:37
	lsr	r0, r0, r1
	.loc	25 33 22                        @ ../lshrdi3.c:33:22
	str	r0, [sp, #24]
	.loc	25 34 5 is_stmt 1               @ ../lshrdi3.c:34:5
	b	.LBB58_5
.LBB58_2:                               @ %if.else
	.loc	25 37 13                        @ ../lshrdi3.c:37:13
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB58_4
	b	.LBB58_3
.LBB58_3:                               @ %if.then4
	.loc	25 0 13 is_stmt 0               @ ../lshrdi3.c:0:13
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	25 38 13 is_stmt 1              @ ../lshrdi3.c:38:13
	b	.LBB58_6
.LBB58_4:                               @ %if.end
	.loc	25 39 34                        @ ../lshrdi3.c:39:34
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	.loc	25 39 39 is_stmt 0              @ ../lshrdi3.c:39:39
	lsr	r0, r0, r2
	.loc	25 39 24                        @ ../lshrdi3.c:39:24
	str	r0, [sp, #28]
	.loc	25 40 72 is_stmt 1              @ ../lshrdi3.c:40:72
	ldr	r1, [sp, #32]
	.loc	25 40 33 is_stmt 0              @ ../lshrdi3.c:40:33
	ldr	r0, [sp, #36]
	.loc	25 40 55                        @ ../lshrdi3.c:40:55
	rsb	r3, r2, #32
	.loc	25 40 38                        @ ../lshrdi3.c:40:38
	lsl	r0, r0, r3
	.loc	25 40 61                        @ ../lshrdi3.c:40:61
	orr	r0, r0, r1, lsr r2
	.loc	25 40 22                        @ ../lshrdi3.c:40:22
	str	r0, [sp, #24]
	b	.LBB58_5
.LBB58_5:                               @ %if.end18
	.loc	25 42 19 is_stmt 1              @ ../lshrdi3.c:42:19
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #28]
	str	r1, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	25 42 5 is_stmt 0               @ ../lshrdi3.c:42:5
	b	.LBB58_6
.LBB58_6:                               @ %return
	.loc	25 0 0                          @ ../lshrdi3.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	.loc	25 43 1 is_stmt 1               @ ../lshrdi3.c:43:1
	add	sp, sp, #40
	bx	lr
.Ltmp112:
.Lfunc_end58:
	.size	__lshrdi3, .Lfunc_end58-__lshrdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__moddi3                        @ -- Begin function __moddi3
	.p2align	2
	.type	__moddi3,%function
	.code	32                              @ @__moddi3
__moddi3:
.Lfunc_begin59:
	.file	26 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../moddi3.c" md5 0x76733914157a978303cbe3d6f6d1c647
	.loc	26 21 0                         @ ../moddi3.c:21:0
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
.Ltmp113:
	.loc	26 24 17 prologue_end           @ ../moddi3.c:24:17
	adds	r1, r2, r3, asr #31
	eor	r2, r1, r3, asr #31
	adc	r1, r3, r3, asr #31
	eor	r3, r1, r3, asr #31
	.loc	26 26 12                        @ ../moddi3.c:26:12
	eor	r0, r0, r12, asr #31
	eor	r1, r12, r12, asr #31
	.loc	26 26 17 is_stmt 0              @ ../moddi3.c:26:17
	subs	r0, r0, r12, asr #31
	sbc	r1, r1, r12, asr #31
	.loc	26 28 5 is_stmt 1               @ ../moddi3.c:28:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	.loc	26 29 21                        @ ../moddi3.c:29:21
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	26 29 23 is_stmt 0              @ ../moddi3.c:29:23
	eor	r1, r1, r2, asr #31
	eor	r0, r0, r2, asr #31
	.loc	26 29 28                        @ ../moddi3.c:29:28
	subs	r0, r0, r2, asr #31
	sbc	r1, r1, r2, asr #31
	.loc	26 29 5                         @ ../moddi3.c:29:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp114:
.Lfunc_end59:
	.size	__moddi3, .Lfunc_end59-__moddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__modsi3                        @ -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,%function
	.code	32                              @ @__modsi3
__modsi3:
.Lfunc_begin60:
	.file	27 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../modsi3.c" md5 0xada583aff17540d2228ce14dc879fdc8
	.loc	27 21 0 is_stmt 1               @ ../modsi3.c:21:0
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
.Ltmp115:
	.loc	27 22 16 prologue_end           @ ../modsi3.c:22:16
	bl	__divsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	27 22 31 is_stmt 0              @ ../modsi3.c:22:31
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	27 22 14                        @ ../modsi3.c:22:14
	sub	r0, r0, r1
	.loc	27 22 5                         @ ../modsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp116:
.Lfunc_end60:
	.size	__modsi3, .Lfunc_end60-__modsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvdi3                       @ -- Begin function __mulvdi3
	.p2align	2
	.type	__mulvdi3,%function
	.code	32                              @ @__mulvdi3
__mulvdi3:
.Lfunc_begin61:
	.file	28 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvdi3.c" md5 0xbb6aa1440e4e37fe94db90279d27db10
	.loc	28 23 0 is_stmt 1               @ ../mulvdi3.c:23:0
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
.Ltmp117:
	.loc	28 27 11 prologue_end           @ ../mulvdi3.c:27:11
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	28 27 9 is_stmt 0               @ ../mulvdi3.c:27:9
	cmp	r0, #0
	bne	.LBB61_5
	b	.LBB61_1
.LBB61_1:                               @ %if.then
	.loc	28 29 15 is_stmt 1              @ ../mulvdi3.c:29:15
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	28 29 20 is_stmt 0              @ ../mulvdi3.c:29:20
	cmp	r0, #0
	beq	.LBB61_3
	b	.LBB61_2
.LBB61_2:                               @ %lor.lhs.false
	.loc	28 29 25                        @ ../mulvdi3.c:29:25
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	28 29 13                        @ ../mulvdi3.c:29:13
	cmp	r0, #0
	bne	.LBB61_4
	b	.LBB61_3
.LBB61_3:                               @ %if.then3
	.loc	28 30 13 is_stmt 1              @ ../mulvdi3.c:30:13
	b	.LBB61_21
.LBB61_4:                               @ %if.end
	.loc	28 31 9                         @ ../mulvdi3.c:31:9
	ldr	r0, .LCPI61_0
	ldr	r2, .LCPI61_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB61_5:                               @ %if.end4
	.loc	28 33 11                        @ ../mulvdi3.c:33:11
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-24]                 @ 4-byte Reload
	eor	r1, r1, #-2147483648
	orr	r0, r0, r1
	.loc	28 33 9 is_stmt 0               @ ../mulvdi3.c:33:9
	cmp	r0, #0
	bne	.LBB61_10
	b	.LBB61_6
.LBB61_6:                               @ %if.then6
	.loc	28 35 15 is_stmt 1              @ ../mulvdi3.c:35:15
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	orr	r0, r0, r1
	.loc	28 35 20 is_stmt 0              @ ../mulvdi3.c:35:20
	cmp	r0, #0
	beq	.LBB61_8
	b	.LBB61_7
.LBB61_7:                               @ %lor.lhs.false8
	.loc	28 35 25                        @ ../mulvdi3.c:35:25
	ldr	r1, [r11, #-16]                 @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	eor	r0, r0, #1
	orr	r0, r0, r1
	.loc	28 35 13                        @ ../mulvdi3.c:35:13
	cmp	r0, #0
	bne	.LBB61_9
	b	.LBB61_8
.LBB61_8:                               @ %if.then10
	.loc	28 36 13 is_stmt 1              @ ../mulvdi3.c:36:13
	b	.LBB61_21
.LBB61_9:                               @ %if.end12
	.loc	28 37 9                         @ ../mulvdi3.c:37:9
	ldr	r0, .LCPI61_0
	ldr	r2, .LCPI61_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB61_10:                              @ %if.end13
	.loc	28 39 19                        @ ../mulvdi3.c:39:19
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	ldr	r2, [r11, #-20]                 @ 4-byte Reload
	ldr	r12, [r11, #-16]                @ 4-byte Reload
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	asr	r1, r12, #31
	str	r1, [sp]                        @ 4-byte Spill
	str	r1, [sp, #4]                    @ 4-byte Spill
	.loc	28 40 23                        @ ../mulvdi3.c:40:23
	eor	r1, r0, r12, asr #31
	eor	r0, r12, r12, asr #31
	.loc	28 40 29 is_stmt 0              @ ../mulvdi3.c:40:29
	subs	r1, r1, r12, asr #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r0, r12, asr #31
	str	r0, [sp, #12]                   @ 4-byte Spill
	.loc	28 41 19 is_stmt 1              @ ../mulvdi3.c:41:19
	asr	r12, r3, #31
	str	r12, [sp, #16]                  @ 4-byte Spill
	str	r12, [sp, #20]                  @ 4-byte Spill
	.loc	28 42 23                        @ ../mulvdi3.c:42:23
	eor	r12, r2, r3, asr #31
	eor	r2, r3, r3, asr #31
	.loc	28 42 29 is_stmt 0              @ ../mulvdi3.c:42:29
	subs	r12, r12, r3, asr #31
	str	r12, [sp, #24]                  @ 4-byte Spill
	sbc	r2, r2, r3, asr #31
	str	r2, [sp, #28]                   @ 4-byte Spill
	.loc	28 43 15 is_stmt 1              @ ../mulvdi3.c:43:15
	subs	r1, r1, #2
	sbcs	r0, r0, #0
	.loc	28 43 19 is_stmt 0              @ ../mulvdi3.c:43:19
	blt	.LBB61_12
	b	.LBB61_11
.LBB61_11:                              @ %lor.lhs.false18
	.loc	28 43 28                        @ ../mulvdi3.c:43:28
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r1, r1, #1
	rscs	r0, r0, #0
	.loc	28 43 9                         @ ../mulvdi3.c:43:9
	blt	.LBB61_13
	b	.LBB61_12
.LBB61_12:                              @ %if.then20
	.loc	28 44 9 is_stmt 1               @ ../mulvdi3.c:44:9
	b	.LBB61_21
.LBB61_13:                              @ %if.end22
	.loc	28 45 12                        @ ../mulvdi3.c:45:12
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	eor	r0, r0, r3
	eor	r1, r1, r2
	orr	r0, r0, r1
	.loc	28 45 9 is_stmt 0               @ ../mulvdi3.c:45:9
	cmp	r0, #0
	bne	.LBB61_17
	b	.LBB61_14
.LBB61_14:                              @ %if.then24
	.loc	28 47 25 is_stmt 1              @ ../mulvdi3.c:47:25
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	mvn	r0, #0
	mvn	r1, #-2147483648
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	28 47 19 is_stmt 0              @ ../mulvdi3.c:47:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	28 47 13                        @ ../mulvdi3.c:47:13
	bge	.LBB61_16
	b	.LBB61_15
.LBB61_15:                              @ %if.then26
	.loc	28 48 13 is_stmt 1              @ ../mulvdi3.c:48:13
	ldr	r0, .LCPI61_0
	ldr	r2, .LCPI61_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB61_16:                              @ %if.end27
	.loc	28 49 5                         @ ../mulvdi3.c:49:5
	b	.LBB61_20
.LBB61_17:                              @ %if.else
	.loc	28 52 27                        @ ../mulvdi3.c:52:27
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	rsbs	r2, r1, #0
	rsc	r3, r0, #0
	mov	r0, #0
	mov	r1, #-2147483648
	.loc	28 52 25 is_stmt 0              @ ../mulvdi3.c:52:25
	bl	__divdi3
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	mov	r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	.loc	28 52 19                        @ ../mulvdi3.c:52:19
	subs	r2, r2, r3
	sbcs	r0, r1, r0
	.loc	28 52 13                        @ ../mulvdi3.c:52:13
	bge	.LBB61_19
	b	.LBB61_18
.LBB61_18:                              @ %if.then31
	.loc	28 53 13 is_stmt 1              @ ../mulvdi3.c:53:13
	ldr	r0, .LCPI61_0
	ldr	r2, .LCPI61_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB61_19:                              @ %if.end32
	.loc	28 0 13 is_stmt 0               @ ../mulvdi3.c:0:13
	b	.LBB61_20
.LBB61_20:                              @ %if.end33
	.loc	28 55 5 is_stmt 1               @ ../mulvdi3.c:55:5
	b	.LBB61_21
.LBB61_21:                              @ %return
	.loc	28 0 0 is_stmt 0                @ ../mulvdi3.c:0:0
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	ldr	r3, [r11, #-20]                 @ 4-byte Reload
	ldr	r1, [r11, #-12]                 @ 4-byte Reload
	ldr	lr, [r11, #-24]                 @ 4-byte Reload
	umull	r0, r4, r1, r3
	mla	r12, r1, lr, r4
	mla	r1, r2, r3, r12
	.loc	28 56 1 is_stmt 1               @ ../mulvdi3.c:56:1
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	bx	lr
.Ltmp118:
	.p2align	2
@ %bb.22:
	.loc	28 0 1 is_stmt 0                @ ../mulvdi3.c:0:1
.LCPI61_0:
	.long	.L.str.8
.LCPI61_1:
	.long	.L__func__.__mulvdi3
.Lfunc_end61:
	.size	__mulvdi3, .Lfunc_end61-__mulvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__mulvsi3                       @ -- Begin function __mulvsi3
	.p2align	2
	.type	__mulvsi3,%function
	.code	32                              @ @__mulvsi3
__mulvsi3:
.Lfunc_begin62:
	.file	29 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../mulvsi3.c" md5 0x32cd947949fac3c039bd0839cd5d7c78
	.loc	29 23 0 is_stmt 1               @ ../mulvsi3.c:23:0
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
.Ltmp119:
	.loc	29 27 9 prologue_end            @ ../mulvsi3.c:27:9
	cmp	r0, #-2147483648
	bne	.LBB62_5
	b	.LBB62_1
.LBB62_1:                               @ %if.then
	.loc	29 29 20                        @ ../mulvsi3.c:29:20
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_3
	b	.LBB62_2
.LBB62_2:                               @ %lor.lhs.false
	.loc	29 29 13 is_stmt 0              @ ../mulvsi3.c:29:13
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB62_4
	b	.LBB62_3
.LBB62_3:                               @ %if.then3
	.loc	29 30 13 is_stmt 1              @ ../mulvsi3.c:30:13
	b	.LBB62_21
.LBB62_4:                               @ %if.end
	.loc	29 31 9                         @ ../mulvsi3.c:31:9
	ldr	r0, .LCPI62_0
	ldr	r2, .LCPI62_1
	mov	r1, #31
	bl	compilerrt_abort_impl
.LBB62_5:                               @ %if.end4
	.loc	29 33 9                         @ ../mulvsi3.c:33:9
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	cmp	r0, #-2147483648
	bne	.LBB62_10
	b	.LBB62_6
.LBB62_6:                               @ %if.then6
	.loc	29 35 20                        @ ../mulvsi3.c:35:20
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB62_8
	b	.LBB62_7
.LBB62_7:                               @ %lor.lhs.false8
	.loc	29 35 13 is_stmt 0              @ ../mulvsi3.c:35:13
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #1
	bne	.LBB62_9
	b	.LBB62_8
.LBB62_8:                               @ %if.then10
	.loc	29 36 13 is_stmt 1              @ ../mulvsi3.c:36:13
	b	.LBB62_21
.LBB62_9:                               @ %if.end12
	.loc	29 37 9                         @ ../mulvsi3.c:37:9
	ldr	r0, .LCPI62_0
	ldr	r2, .LCPI62_1
	mov	r1, #37
	bl	compilerrt_abort_impl
.LBB62_10:                              @ %if.end13
	.loc	29 39 19                        @ ../mulvsi3.c:39:19
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	asr	r0, r1, #31
	str	r0, [sp]                        @ 4-byte Spill
	.loc	29 40 23                        @ ../mulvsi3.c:40:23
	eor	r0, r1, r1, asr #31
	.loc	29 40 29 is_stmt 0              @ ../mulvsi3.c:40:29
	sub	r0, r0, r1, asr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	29 41 19 is_stmt 1              @ ../mulvsi3.c:41:19
	asr	r1, r2, #31
	str	r1, [sp, #8]                    @ 4-byte Spill
	.loc	29 42 23                        @ ../mulvsi3.c:42:23
	eor	r1, r2, r2, asr #31
	.loc	29 42 29 is_stmt 0              @ ../mulvsi3.c:42:29
	sub	r1, r1, r2, asr #31
	str	r1, [sp, #12]                   @ 4-byte Spill
	.loc	29 43 19 is_stmt 1              @ ../mulvsi3.c:43:19
	cmp	r0, #2
	blt	.LBB62_12
	b	.LBB62_11
.LBB62_11:                              @ %lor.lhs.false18
	.loc	29 43 9 is_stmt 0               @ ../mulvsi3.c:43:9
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	cmp	r0, #1
	bgt	.LBB62_13
	b	.LBB62_12
.LBB62_12:                              @ %if.then20
	.loc	29 44 9 is_stmt 1               @ ../mulvsi3.c:44:9
	b	.LBB62_21
.LBB62_13:                              @ %if.end22
	.loc	29 45 9                         @ ../mulvsi3.c:45:9
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB62_17
	b	.LBB62_14
.LBB62_14:                              @ %if.then24
	.loc	29 47 25                        @ ../mulvsi3.c:47:25
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	mvn	r0, #-2147483648
	bl	__divsi3
	mov	r1, r0
	.loc	29 47 13 is_stmt 0              @ ../mulvsi3.c:47:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB62_16
	b	.LBB62_15
.LBB62_15:                              @ %if.then26
	.loc	29 48 13 is_stmt 1              @ ../mulvsi3.c:48:13
	ldr	r0, .LCPI62_0
	ldr	r2, .LCPI62_1
	mov	r1, #48
	bl	compilerrt_abort_impl
.LBB62_16:                              @ %if.end27
	.loc	29 49 5                         @ ../mulvsi3.c:49:5
	b	.LBB62_20
.LBB62_17:                              @ %if.else
	.loc	29 52 27                        @ ../mulvsi3.c:52:27
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	rsb	r1, r0, #0
	mov	r0, #-2147483648
	.loc	29 52 25 is_stmt 0              @ ../mulvsi3.c:52:25
	bl	__divsi3
	mov	r1, r0
	.loc	29 52 13                        @ ../mulvsi3.c:52:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB62_19
	b	.LBB62_18
.LBB62_18:                              @ %if.then31
	.loc	29 53 13 is_stmt 1              @ ../mulvsi3.c:53:13
	ldr	r0, .LCPI62_0
	ldr	r2, .LCPI62_1
	mov	r1, #53
	bl	compilerrt_abort_impl
.LBB62_19:                              @ %if.end32
	.loc	29 0 13 is_stmt 0               @ ../mulvsi3.c:0:13
	b	.LBB62_20
.LBB62_20:                              @ %if.end33
	.loc	29 55 5 is_stmt 1               @ ../mulvsi3.c:55:5
	b	.LBB62_21
.LBB62_21:                              @ %return
	.loc	29 0 0 is_stmt 0                @ ../mulvsi3.c:0:0
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-8]                  @ 4-byte Reload
	mul	r0, r1, r2
	.loc	29 56 1 is_stmt 1               @ ../mulvsi3.c:56:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp120:
	.p2align	2
@ %bb.22:
	.loc	29 0 1 is_stmt 0                @ ../mulvsi3.c:0:1
.LCPI62_0:
	.long	.L.str.9
.LCPI62_1:
	.long	.L__func__.__mulvsi3
.Lfunc_end62:
	.size	__mulvsi3, .Lfunc_end62-__mulvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritydi2                     @ -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,%function
	.code	32                              @ @__paritydi2
__paritydi2:
.Lfunc_begin63:
	.file	30 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritydi2.c" md5 0xbd9549e31bcebf1c2265048ea6f18a77
	.loc	30 21 0 is_stmt 1               @ ../paritydi2.c:21:0
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
.Ltmp121:
	.loc	30 23 11 prologue_end           @ ../paritydi2.c:23:11
	str	r1, [sp, #4]
	str	r0, [sp]
	.loc	30 24 39                        @ ../paritydi2.c:24:39
	ldr	r1, [sp]
	.loc	30 24 28 is_stmt 0              @ ../paritydi2.c:24:28
	ldr	r0, [sp, #4]
	.loc	30 24 33                        @ ../paritydi2.c:24:33
	eor	r0, r0, r1
	.loc	30 24 12                        @ ../paritydi2.c:24:12
	bl	__paritysi2
	.loc	30 24 5                         @ ../paritydi2.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp122:
.Lfunc_end63:
	.size	__paritydi2, .Lfunc_end63-__paritydi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__paritysi2                     @ -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,%function
	.code	32                              @ @__paritysi2
__paritysi2:
.Lfunc_begin64:
	.file	31 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../paritysi2.c" md5 0x235e89e1ac3c55fb43879550247ea25b
	.loc	31 21 0 is_stmt 1               @ ../paritysi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	31 23 7 prologue_end            @ ../paritysi2.c:23:7
	eor	r0, r0, r0, lsr #16
	.loc	31 24 7                         @ ../paritysi2.c:24:7
	eor	r0, r0, r0, lsr #8
	.loc	31 25 7                         @ ../paritysi2.c:25:7
	eor	r0, r0, r0, lsr #4
	.loc	31 26 26                        @ ../paritysi2.c:26:26
	and	r2, r0, #15
	mov	r1, #150
	orr	r1, r1, #26880
	mov	r0, #1
	.loc	31 26 34 is_stmt 0              @ ../paritysi2.c:26:34
	and	r0, r0, r1, lsr r2
	.loc	31 26 5                         @ ../paritysi2.c:26:5
	bx	lr
.Ltmp123:
.Lfunc_end64:
	.size	__paritysi2, .Lfunc_end64-__paritysi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountdi2                   @ -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,%function
	.code	32                              @ @__popcountdi2
__popcountdi2:
.Lfunc_begin65:
	.file	32 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountdi2.c" md5 0x05f001da7fc478c773612fd707769c2a
	.loc	32 21 0 is_stmt 1               @ ../popcountdi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	mov	r2, r0
                                        @ kill: def $r0 killed $r1
                                        @ kill: def $r0 killed $r2
.Ltmp124:
	.loc	32 23 20 prologue_end           @ ../popcountdi2.c:23:20
	lsrs	r0, r1, #1
	rrx	r3, r2
	ldr	r12, .LCPI65_0
	.loc	32 23 26 is_stmt 0              @ ../popcountdi2.c:23:26
	and	r0, r0, r12
	and	r3, r3, r12
	.loc	32 23 13                        @ ../popcountdi2.c:23:13
	subs	r2, r2, r3
	sbc	r3, r1, r0
	ldr	r12, .LCPI65_1
	.loc	32 25 21 is_stmt 1              @ ../popcountdi2.c:25:21
	and	r1, r12, r3, lsr #2
	and	r0, r12, r2, lsr #2
	.loc	32 25 52 is_stmt 0              @ ../popcountdi2.c:25:52
	and	r3, r3, r12
	and	r2, r2, r12
	.loc	32 25 46                        @ ../popcountdi2.c:25:46
	add	r1, r1, r3
	add	r0, r0, r2
	.loc	32 27 14 is_stmt 1              @ ../popcountdi2.c:27:14
	add	r1, r1, r1, lsr #4
	add	r0, r0, r0, lsr #4
	ldr	r2, .LCPI65_2
	.loc	32 27 27 is_stmt 0              @ ../popcountdi2.c:27:27
	and	r1, r1, r2
	and	r0, r0, r2
	.loc	32 29 28 is_stmt 1              @ ../popcountdi2.c:29:28
	add	r0, r0, r1
	.loc	32 32 11                        @ ../popcountdi2.c:32:11
	add	r0, r0, r0, lsr #16
	.loc	32 35 15                        @ ../popcountdi2.c:35:15
	add	r0, r0, r0, lsr #8
	.loc	32 35 27 is_stmt 0              @ ../popcountdi2.c:35:27
	and	r0, r0, #255
	.loc	32 35 5                         @ ../popcountdi2.c:35:5
	bx	lr
.Ltmp125:
	.p2align	2
@ %bb.1:
	.loc	32 0 5                          @ ../popcountdi2.c:0:5
.LCPI65_0:
	.long	1431655765                      @ 0x55555555
.LCPI65_1:
	.long	858993459                       @ 0x33333333
.LCPI65_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end65:
	.size	__popcountdi2, .Lfunc_end65-__popcountdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__popcountsi2                   @ -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,%function
	.code	32                              @ @__popcountsi2
__popcountsi2:
.Lfunc_begin66:
	.file	33 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../popcountsi2.c" md5 0xf9ebedb2d8810ee5a54fff38e1b09d64
	.loc	33 21 0 is_stmt 1               @ ../popcountsi2.c:21:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	ldr	r1, .LCPI66_0
.Ltmp126:
	.loc	33 23 23 prologue_end           @ ../popcountsi2.c:23:23
	and	r1, r1, r0, lsr #1
	.loc	33 23 11 is_stmt 0              @ ../popcountsi2.c:23:11
	sub	r1, r0, r1
	ldr	r2, .LCPI66_1
	.loc	33 25 19 is_stmt 1              @ ../popcountsi2.c:25:19
	and	r0, r2, r1, lsr #2
	.loc	33 25 38 is_stmt 0              @ ../popcountsi2.c:25:38
	and	r1, r1, r2
	.loc	33 25 33                        @ ../popcountsi2.c:25:33
	add	r0, r0, r1
	.loc	33 27 12 is_stmt 1              @ ../popcountsi2.c:27:12
	add	r0, r0, r0, lsr #4
	ldr	r1, .LCPI66_2
	.loc	33 27 24 is_stmt 0              @ ../popcountsi2.c:27:24
	and	r0, r0, r1
	.loc	33 29 12 is_stmt 1              @ ../popcountsi2.c:29:12
	add	r0, r0, r0, lsr #16
	.loc	33 32 15                        @ ../popcountsi2.c:32:15
	add	r0, r0, r0, lsr #8
	.loc	33 32 27 is_stmt 0              @ ../popcountsi2.c:32:27
	and	r0, r0, #255
	.loc	33 32 5                         @ ../popcountsi2.c:32:5
	bx	lr
.Ltmp127:
	.p2align	2
@ %bb.1:
	.loc	33 0 5                          @ ../popcountsi2.c:0:5
.LCPI66_0:
	.long	1431655765                      @ 0x55555555
.LCPI66_1:
	.long	858993459                       @ 0x33333333
.LCPI66_2:
	.long	252645135                       @ 0xf0f0f0f
.Lfunc_end66:
	.size	__popcountsi2, .Lfunc_end66-__popcountsi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvdi3                       @ -- Begin function __subvdi3
	.p2align	2
	.type	__subvdi3,%function
	.code	32                              @ @__subvdi3
__subvdi3:
.Lfunc_begin67:
	.file	34 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvdi3.c" md5 0x5774ab7a3a8e168deb55531047d6a873
	.loc	34 23 0 is_stmt 1               @ ../subvdi3.c:23:0
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
.Ltmp128:
	.loc	34 24 27 prologue_end           @ ../subvdi3.c:24:27
	subs	r0, r0, r2
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbc	r0, r1, r3
	str	r0, [r11, #-4]                  @ 4-byte Spill
	.loc	34 25 9                         @ ../subvdi3.c:25:9
	cmp	r3, #0
	bmi	.LBB67_4
	b	.LBB67_1
.LBB67_1:                               @ %if.then
	.loc	34 27 15                        @ ../subvdi3.c:27:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	34 27 13 is_stmt 0              @ ../subvdi3.c:27:13
	bge	.LBB67_3
	b	.LBB67_2
.LBB67_2:                               @ %if.then2
	.loc	34 28 13 is_stmt 1              @ ../subvdi3.c:28:13
	ldr	r0, .LCPI67_0
	ldr	r2, .LCPI67_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB67_3:                               @ %if.end
	.loc	34 29 5                         @ ../subvdi3.c:29:5
	b	.LBB67_7
.LBB67_4:                               @ %if.else
	.loc	34 32 15                        @ ../subvdi3.c:32:15
	ldr	r0, [sp]                        @ 4-byte Reload
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	subs	r2, r2, r3
	sbcs	r0, r0, r1
	.loc	34 32 13 is_stmt 0              @ ../subvdi3.c:32:13
	blt	.LBB67_6
	b	.LBB67_5
.LBB67_5:                               @ %if.then4
	.loc	34 33 13 is_stmt 1              @ ../subvdi3.c:33:13
	ldr	r0, .LCPI67_0
	ldr	r2, .LCPI67_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB67_6:                               @ %if.end5
	.loc	34 0 13 is_stmt 0               @ ../subvdi3.c:0:13
	b	.LBB67_7
.LBB67_7:                               @ %if.end6
	.loc	34 35 5 is_stmt 1               @ ../subvdi3.c:35:5
	ldr	r1, [r11, #-4]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp129:
	.p2align	2
@ %bb.8:
	.loc	34 0 5 is_stmt 0                @ ../subvdi3.c:0:5
.LCPI67_0:
	.long	.L.str.12
.LCPI67_1:
	.long	.L__func__.__subvdi3
.Lfunc_end67:
	.size	__subvdi3, .Lfunc_end67-__subvdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__subvsi3                       @ -- Begin function __subvsi3
	.p2align	2
	.type	__subvsi3,%function
	.code	32                              @ @__subvsi3
__subvsi3:
.Lfunc_begin68:
	.file	35 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../subvsi3.c" md5 0xc9558a85e8fabce36f42a29933bd87e9
	.loc	35 23 0 is_stmt 1               @ ../subvsi3.c:23:0
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
.Ltmp130:
	.loc	35 24 27 prologue_end           @ ../subvsi3.c:24:27
	sub	r0, r0, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	35 25 9                         @ ../subvsi3.c:25:9
	cmp	r1, #0
	bmi	.LBB68_4
	b	.LBB68_1
.LBB68_1:                               @ %if.then
	.loc	35 27 13                        @ ../subvsi3.c:27:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	ble	.LBB68_3
	b	.LBB68_2
.LBB68_2:                               @ %if.then2
	.loc	35 28 13                        @ ../subvsi3.c:28:13
	ldr	r0, .LCPI68_0
	ldr	r2, .LCPI68_1
	mov	r1, #28
	bl	compilerrt_abort_impl
.LBB68_3:                               @ %if.end
	.loc	35 29 5                         @ ../subvsi3.c:29:5
	b	.LBB68_7
.LBB68_4:                               @ %if.else
	.loc	35 32 13                        @ ../subvsi3.c:32:13
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	cmp	r0, r1
	bgt	.LBB68_6
	b	.LBB68_5
.LBB68_5:                               @ %if.then4
	.loc	35 33 13                        @ ../subvsi3.c:33:13
	ldr	r0, .LCPI68_0
	ldr	r2, .LCPI68_1
	mov	r1, #33
	bl	compilerrt_abort_impl
.LBB68_6:                               @ %if.end5
	.loc	35 0 13 is_stmt 0               @ ../subvsi3.c:0:13
	b	.LBB68_7
.LBB68_7:                               @ %if.end6
	.loc	35 35 5 is_stmt 1               @ ../subvsi3.c:35:5
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp131:
	.p2align	2
@ %bb.8:
	.loc	35 0 5 is_stmt 0                @ ../subvsi3.c:0:5
.LCPI68_0:
	.long	.L.str.13
.LCPI68_1:
	.long	.L__func__.__subvsi3
.Lfunc_end68:
	.size	__subvsi3, .Lfunc_end68-__subvsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__ucmpdi2                       @ -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,%function
	.code	32                              @ @__ucmpdi2
__ucmpdi2:
.Lfunc_begin69:
	.file	36 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../ucmpdi2.c" md5 0x79f778ef54939446d175079e19d07756
	.loc	36 24 0 is_stmt 1               @ ../ucmpdi2.c:24:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	sub	sp, sp, #24
	.cfi_def_cfa_offset 24
                                        @ kill: def $r12 killed $r3
                                        @ kill: def $r12 killed $r2
                                        @ kill: def $r12 killed $r1
                                        @ kill: def $r12 killed $r0
.Ltmp132:
	.loc	36 26 11 prologue_end           @ ../ucmpdi2.c:26:11
	str	r1, [sp, #20]
	str	r0, [sp, #16]
	.loc	36 28 11                        @ ../ucmpdi2.c:28:11
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	.loc	36 29 13                        @ ../ucmpdi2.c:29:13
	ldr	r0, [sp, #20]
	.loc	36 29 24 is_stmt 0              @ ../ucmpdi2.c:29:24
	ldr	r1, [sp, #12]
	.loc	36 29 9                         @ ../ucmpdi2.c:29:9
	cmp	r0, r1
	bhs	.LBB69_2
	b	.LBB69_1
.LBB69_1:                               @ %if.then
	.loc	36 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	36 30 9 is_stmt 1               @ ../ucmpdi2.c:30:9
	b	.LBB69_9
.LBB69_2:                               @ %if.end
	.loc	36 31 13                        @ ../ucmpdi2.c:31:13
	ldr	r0, [sp, #20]
	.loc	36 31 24 is_stmt 0              @ ../ucmpdi2.c:31:24
	ldr	r1, [sp, #12]
	.loc	36 31 9                         @ ../ucmpdi2.c:31:9
	cmp	r0, r1
	bls	.LBB69_4
	b	.LBB69_3
.LBB69_3:                               @ %if.then9
	.loc	36 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	36 32 9 is_stmt 1               @ ../ucmpdi2.c:32:9
	b	.LBB69_9
.LBB69_4:                               @ %if.end10
	.loc	36 33 13                        @ ../ucmpdi2.c:33:13
	ldr	r0, [sp, #16]
	.loc	36 33 23 is_stmt 0              @ ../ucmpdi2.c:33:23
	ldr	r1, [sp, #8]
	.loc	36 33 9                         @ ../ucmpdi2.c:33:9
	cmp	r0, r1
	bhs	.LBB69_6
	b	.LBB69_5
.LBB69_5:                               @ %if.then15
	.loc	36 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	36 34 9 is_stmt 1               @ ../ucmpdi2.c:34:9
	b	.LBB69_9
.LBB69_6:                               @ %if.end16
	.loc	36 35 13                        @ ../ucmpdi2.c:35:13
	ldr	r0, [sp, #16]
	.loc	36 35 23 is_stmt 0              @ ../ucmpdi2.c:35:23
	ldr	r1, [sp, #8]
	.loc	36 35 9                         @ ../ucmpdi2.c:35:9
	cmp	r0, r1
	bls	.LBB69_8
	b	.LBB69_7
.LBB69_7:                               @ %if.then22
	.loc	36 0 9                          @ ../ucmpdi2.c:0:9
	mov	r0, #2
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	36 36 9 is_stmt 1               @ ../ucmpdi2.c:36:9
	b	.LBB69_9
.LBB69_8:                               @ %if.end23
	.loc	36 0 9 is_stmt 0                @ ../ucmpdi2.c:0:9
	mov	r0, #1
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	36 37 5 is_stmt 1               @ ../ucmpdi2.c:37:5
	b	.LBB69_9
.LBB69_9:                               @ %return
	.loc	36 0 0 is_stmt 0                @ ../ucmpdi2.c:0:0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	.loc	36 38 1 is_stmt 1               @ ../ucmpdi2.c:38:1
	add	sp, sp, #24
	bx	lr
.Ltmp133:
.Lfunc_end69:
	.size	__ucmpdi2, .Lfunc_end69-__ucmpdi2
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__aeabi_ulcmp                   @ -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,%function
	.code	32                              @ @__aeabi_ulcmp
__aeabi_ulcmp:
.Lfunc_begin70:
	.loc	36 47 0                         @ ../ucmpdi2.c:47:0
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
.Ltmp134:
	.loc	36 48 9 prologue_end            @ ../ucmpdi2.c:48:9
	bl	__ucmpdi2
	.loc	36 48 25 is_stmt 0              @ ../ucmpdi2.c:48:25
	sub	r0, r0, #1
	.loc	36 48 2                         @ ../ucmpdi2.c:48:2
	pop	{r11, lr}
	bx	lr
.Ltmp135:
.Lfunc_end70:
	.size	__aeabi_ulcmp, .Lfunc_end70-__aeabi_ulcmp
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivdi3                       @ -- Begin function __udivdi3
	.p2align	2
	.type	__udivdi3,%function
	.code	32                              @ @__udivdi3
__udivdi3:
.Lfunc_begin71:
	.file	37 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivdi3.c" md5 0x580a28989090b62fc3d261faa6e31a6b
	.loc	37 21 0 is_stmt 1               @ ../udivdi3.c:21:0
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
.Ltmp136:
	.loc	37 22 12 prologue_end           @ ../udivdi3.c:22:12
	mov	lr, sp
	mov	r12, #0
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	37 22 5 is_stmt 0               @ ../udivdi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp137:
.Lfunc_end71:
	.size	__udivdi3, .Lfunc_end71-__udivdi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivmodsi4                    @ -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,%function
	.code	32                              @ @__udivmodsi4
__udivmodsi4:
.Lfunc_begin72:
	.file	38 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivmodsi4.c" md5 0xc0341684574a20dbcfbe4df0ab9f8538
	.loc	38 21 0 is_stmt 1               @ ../udivmodsi4.c:21:0
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
.Ltmp138:
	.loc	38 22 14 prologue_end           @ ../udivmodsi4.c:22:14
	bl	__udivsi3
	ldr	r12, [sp, #4]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r11, #-4]                  @ 4-byte Reload
	.loc	38 23 16                        @ ../udivmodsi4.c:23:16
	mul	r3, r0, r12
	.loc	38 23 12 is_stmt 0              @ ../udivmodsi4.c:23:12
	sub	r1, r1, r3
	.loc	38 23 8                         @ ../udivmodsi4.c:23:8
	str	r1, [r2]
	.loc	38 24 3 is_stmt 1               @ ../udivmodsi4.c:24:3
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp139:
.Lfunc_end72:
	.size	__udivmodsi4, .Lfunc_end72-__udivmodsi4
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__udivsi3                       @ -- Begin function __udivsi3
	.p2align	2
	.type	__udivsi3,%function
	.code	32                              @ @__udivsi3
__udivsi3:
.Lfunc_begin73:
	.file	39 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../udivsi3.c" md5 0xb74987a973aededf95faab34db33f58a
	.loc	39 26 0                         @ ../udivsi3.c:26:0
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
.Ltmp140:
	.loc	39 32 9 prologue_end            @ ../udivsi3.c:32:9
	cmp	r1, #0
	bne	.LBB73_2
	b	.LBB73_1
.LBB73_1:                               @ %if.then
	.loc	39 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	39 33 9 is_stmt 1               @ ../udivsi3.c:33:9
	b	.LBB73_13
.LBB73_2:                               @ %if.end
	.loc	39 34 9                         @ ../udivsi3.c:34:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	cmp	r0, #0
	bne	.LBB73_4
	b	.LBB73_3
.LBB73_3:                               @ %if.then2
	.loc	39 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	39 35 9 is_stmt 1               @ ../udivsi3.c:35:9
	b	.LBB73_13
.LBB73_4:                               @ %if.end3
	.loc	39 36 10                        @ ../udivsi3.c:36:10
	ldr	r0, [r11, #-8]                  @ 4-byte Reload
	bl	__clzsi2
	mov	r1, r0
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r1, [r11, #-20]                 @ 4-byte Spill
	.loc	39 36 29 is_stmt 0              @ ../udivsi3.c:36:29
	bl	__clzsi2
	mov	r1, r0
	.loc	39 36 27                        @ ../udivsi3.c:36:27
	ldr	r0, [r11, #-20]                 @ 4-byte Reload
	sub	r0, r0, r1
	str	r0, [r11, #-16]                 @ 4-byte Spill
	.loc	39 38 9 is_stmt 1               @ ../udivsi3.c:38:9
	cmp	r0, #32
	blo	.LBB73_6
	b	.LBB73_5
.LBB73_5:                               @ %if.then5
	.loc	39 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	mov	r0, #0
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	39 39 9 is_stmt 1               @ ../udivsi3.c:39:9
	b	.LBB73_13
.LBB73_6:                               @ %if.end6
	.loc	39 40 9                         @ ../udivsi3.c:40:9
	ldr	r0, [r11, #-16]                 @ 4-byte Reload
	cmp	r0, #31
	bne	.LBB73_8
	b	.LBB73_7
.LBB73_7:                               @ %if.then8
	.loc	39 0 9 is_stmt 0                @ ../udivsi3.c:0:9
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	39 41 9 is_stmt 1               @ ../udivsi3.c:41:9
	b	.LBB73_13
.LBB73_8:                               @ %if.end9
	.loc	39 42 5                         @ ../udivsi3.c:42:5
	ldr	r0, [r11, #-4]                  @ 4-byte Reload
	ldr	r2, [r11, #-16]                 @ 4-byte Reload
	add	r1, r2, #1
	.loc	39 45 28                        @ ../udivsi3.c:45:28
	rsb	r2, r2, #31
	.loc	39 45 11 is_stmt 0              @ ../udivsi3.c:45:11
	lsl	r3, r0, r2
	.loc	39 46 11 is_stmt 1              @ ../udivsi3.c:46:11
	lsr	r2, r0, r1
	mov	r0, #0
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	39 48 5                         @ ../udivsi3.c:48:5
	b	.LBB73_9
.LBB73_9:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	39 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r11, #-28]                 @ 4-byte Reload
	ldr	r3, [r11, #-24]                 @ 4-byte Reload
	str	r3, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	str	r2, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	.loc	39 48 5                         @ ../udivsi3.c:48:5
	cmp	r0, #0
	beq	.LBB73_12
	b	.LBB73_10
.LBB73_10:                              @ %for.body
                                        @   in Loop: Header=BB73_9 Depth=1
	.loc	39 51 22 is_stmt 1              @ ../udivsi3.c:51:22
	ldr	r1, [r11, #-8]                  @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	lsl	r0, r0, #1
	orr	r0, r0, r2, lsr #31
	str	r0, [sp, #4]                    @ 4-byte Spill
	.loc	39 60 41                        @ ../udivsi3.c:60:41
	mvn	r0, r0
	add	r0, r0, r1
	str	r0, [sp, #8]                    @ 4-byte Spill
	.loc	39 63 5                         @ ../udivsi3.c:63:5
	b	.LBB73_11
.LBB73_11:                              @ %for.inc
                                        @   in Loop: Header=BB73_9 Depth=1
	.loc	39 62 11                        @ ../udivsi3.c:62:11
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r12, [sp, #24]                  @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	ldr	lr, [r11, #-8]                  @ 4-byte Reload
	sub	lr, r2, lr
	cmp	r0, #0
	movmi	r2, lr
	.loc	39 61 19                        @ ../udivsi3.c:61:19
	lsr	r0, r0, #31
	.loc	39 52 22                        @ ../udivsi3.c:52:22
	orr	r3, r3, r12, lsl #1
	.loc	39 48 20                        @ ../udivsi3.c:48:20
	sub	r1, r1, #1
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r2, [sp, #32]                   @ 4-byte Spill
	str	r1, [r11, #-28]                 @ 4-byte Spill
	str	r0, [r11, #-24]                 @ 4-byte Spill
	.loc	39 48 5 is_stmt 0               @ ../udivsi3.c:48:5
	b	.LBB73_9
.LBB73_12:                              @ %for.end
	.loc	39 64 18 is_stmt 1              @ ../udivsi3.c:64:18
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	orr	r0, r0, r1, lsl #1
	str	r0, [r11, #-12]                 @ 4-byte Spill
	.loc	39 65 5                         @ ../udivsi3.c:65:5
	b	.LBB73_13
.LBB73_13:                              @ %return
	.loc	39 0 0 is_stmt 0                @ ../udivsi3.c:0:0
	ldr	r0, [r11, #-12]                 @ 4-byte Reload
	.loc	39 66 1 is_stmt 1               @ ../udivsi3.c:66:1
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp141:
.Lfunc_end73:
	.size	__udivsi3, .Lfunc_end73-__udivsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umoddi3                       @ -- Begin function __umoddi3
	.p2align	2
	.type	__umoddi3,%function
	.code	32                              @ @__umoddi3
__umoddi3:
.Lfunc_begin74:
	.file	40 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umoddi3.c" md5 0x1a99e635325595a81040fb97dab88295
	.loc	40 21 0                         @ ../umoddi3.c:21:0
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
.Ltmp142:
	.loc	40 23 5 prologue_end            @ ../umoddi3.c:23:5
	mov	lr, sp
	add	r12, sp, #8
	str	r12, [lr]
	bl	__udivmoddi4
	.loc	40 24 12                        @ ../umoddi3.c:24:12
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	.loc	40 24 5 is_stmt 0               @ ../umoddi3.c:24:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp143:
.Lfunc_end74:
	.size	__umoddi3, .Lfunc_end74-__umoddi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	__umodsi3                       @ -- Begin function __umodsi3
	.p2align	2
	.type	__umodsi3,%function
	.code	32                              @ @__umodsi3
__umodsi3:
.Lfunc_begin75:
	.file	41 "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" "../umodsi3.c" md5 0xce74ac33cd2bd170a84f43824cae8961
	.loc	41 21 0 is_stmt 1               @ ../umodsi3.c:21:0
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
.Ltmp144:
	.loc	41 22 16 prologue_end           @ ../umodsi3.c:22:16
	bl	__udivsi3
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r2, r0
	.loc	41 22 32 is_stmt 0              @ ../umodsi3.c:22:32
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	mul	r1, r2, r3
	.loc	41 22 14                        @ ../umodsi3.c:22:14
	sub	r0, r0, r1
	.loc	41 22 5                         @ ../umodsi3.c:22:5
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp145:
.Lfunc_end75:
	.size	__umodsi3, .Lfunc_end75-__umodsi3
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memcpy                          @ -- Begin function memcpy
	.p2align	2
	.type	memcpy,%function
	.code	32                              @ @memcpy
memcpy:
.Lfunc_begin76:
	.file	42 "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" "../memory.c" md5 0xfa9c872a007b30a353222cd13b38538d
	.loc	42 4 0 is_stmt 1                @ ../memory.c:4:0
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
.Ltmp146:
	.loc	42 8 6 prologue_end             @ ../memory.c:8:6
	b	.LBB76_1
.LBB76_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	42 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	42 8 2                          @ ../memory.c:8:2
	cmp	r0, r1
	beq	.LBB76_4
	b	.LBB76_2
.LBB76_2:                               @ %for.body
                                        @   in Loop: Header=BB76_1 Depth=1
	.loc	42 9 21 is_stmt 1               @ ../memory.c:9:21
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldrb	r0, [r0, r2]
	.loc	42 9 19 is_stmt 0               @ ../memory.c:9:19
	strb	r0, [r1, r2]
	.loc	42 10 2 is_stmt 1               @ ../memory.c:10:2
	b	.LBB76_3
.LBB76_3:                               @ %for.inc
                                        @   in Loop: Header=BB76_1 Depth=1
	.loc	42 8 26                         @ ../memory.c:8:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	42 8 2 is_stmt 0                @ ../memory.c:8:2
	b	.LBB76_1
.LBB76_4:                               @ %for.end
                                        @ implicit-def: $r0
	.loc	42 11 1 is_stmt 1               @ ../memory.c:11:1
	add	sp, sp, #20
	bx	lr
.Ltmp147:
.Lfunc_end76:
	.size	memcpy, .Lfunc_end76-memcpy
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	memset                          @ -- Begin function memset
	.p2align	2
	.type	memset,%function
	.code	32                              @ @memset
memset:
.Lfunc_begin77:
	.loc	42 14 0                         @ ../memory.c:14:0
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
.Ltmp148:
	.loc	42 17 6 prologue_end            @ ../memory.c:17:6
	b	.LBB77_1
.LBB77_1:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	.loc	42 0 0 is_stmt 0                @ ../memory.c:0:0
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [sp]                        @ 4-byte Spill
	.loc	42 17 2                         @ ../memory.c:17:2
	cmp	r0, r1
	beq	.LBB77_4
	b	.LBB77_2
.LBB77_2:                               @ %for.body
                                        @   in Loop: Header=BB77_1 Depth=1
	.loc	42 18 11 is_stmt 1              @ ../memory.c:18:11
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp]                        @ 4-byte Reload
	strb	r0, [r1, r2]
	.loc	42 19 2                         @ ../memory.c:19:2
	b	.LBB77_3
.LBB77_3:                               @ %for.inc
                                        @   in Loop: Header=BB77_1 Depth=1
	.loc	42 17 26                        @ ../memory.c:17:26
	ldr	r0, [sp]                        @ 4-byte Reload
	add	r0, r0, #1
	str	r0, [sp, #16]                   @ 4-byte Spill
	.loc	42 17 2 is_stmt 0               @ ../memory.c:17:2
	b	.LBB77_1
.LBB77_4:                               @ %for.end
	.loc	42 20 2 is_stmt 1               @ ../memory.c:20:2
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Ltmp149:
.Lfunc_end77:
	.size	memset, .Lfunc_end77-memset
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	adpcm_dec_compressed,%object    @ @adpcm_dec_compressed
	.data
	.globl	adpcm_dec_compressed
	.p2align	2
adpcm_dec_compressed:
	.long	0                               @ 0x0
	.long	253                             @ 0xfd
	.long	32                              @ 0x20
	.size	adpcm_dec_compressed, 12

	.type	adpcm_dec_h,%object             @ @adpcm_dec_h
	.globl	adpcm_dec_h
	.p2align	2
adpcm_dec_h:
	.long	12                              @ 0xc
	.long	4294967252                      @ 0xffffffd4
	.long	4294967252                      @ 0xffffffd4
	.long	212                             @ 0xd4
	.long	48                              @ 0x30
	.long	4294966672                      @ 0xfffffd90
	.long	128                             @ 0x80
	.long	1448                            @ 0x5a8
	.long	4294966456                      @ 0xfffffcb8
	.long	4294964076                      @ 0xfffff36c
	.long	3804                            @ 0xedc
	.long	15504                           @ 0x3c90
	.long	15504                           @ 0x3c90
	.long	3804                            @ 0xedc
	.long	4294964076                      @ 0xfffff36c
	.long	4294966456                      @ 0xfffffcb8
	.long	1448                            @ 0x5a8
	.long	128                             @ 0x80
	.long	4294966672                      @ 0xfffffd90
	.long	48                              @ 0x30
	.long	212                             @ 0xd4
	.long	4294967252                      @ 0xffffffd4
	.long	4294967252                      @ 0xffffffd4
	.long	12                              @ 0xc
	.size	adpcm_dec_h, 96

	.type	adpcm_dec_qq4_code4_table,%object @ @adpcm_dec_qq4_code4_table
	.globl	adpcm_dec_qq4_code4_table
	.p2align	2
adpcm_dec_qq4_code4_table:
	.long	0                               @ 0x0
	.long	4294946840                      @ 0xffffb018
	.long	4294954400                      @ 0xffffcda0
	.long	4294958328                      @ 0xffffdcf8
	.long	4294961008                      @ 0xffffe770
	.long	4294963056                      @ 0xffffef70
	.long	4294964712                      @ 0xfffff5e8
	.long	4294966096                      @ 0xfffffb50
	.long	20456                           @ 0x4fe8
	.long	12896                           @ 0x3260
	.long	8968                            @ 0x2308
	.long	6288                            @ 0x1890
	.long	4240                            @ 0x1090
	.long	2584                            @ 0xa18
	.long	1200                            @ 0x4b0
	.long	0                               @ 0x0
	.size	adpcm_dec_qq4_code4_table, 64

	.type	adpcm_dec_qq6_code6_table,%object @ @adpcm_dec_qq6_code6_table
	.globl	adpcm_dec_qq6_code6_table
	.p2align	2
adpcm_dec_qq6_code6_table:
	.long	4294967160                      @ 0xffffff78
	.long	4294967160                      @ 0xffffff78
	.long	4294967160                      @ 0xffffff78
	.long	4294967160                      @ 0xffffff78
	.long	4294942488                      @ 0xffff9f18
	.long	4294945392                      @ 0xffffaa70
	.long	4294948288                      @ 0xffffb5c0
	.long	4294950592                      @ 0xffffbec0
	.long	4294952312                      @ 0xffffc578
	.long	4294953784                      @ 0xffffcb38
	.long	4294955016                      @ 0xffffd008
	.long	4294956104                      @ 0xffffd448
	.long	4294957064                      @ 0xffffd808
	.long	4294957936                      @ 0xffffdb70
	.long	4294958720                      @ 0xffffde80
	.long	4294959440                      @ 0xffffe150
	.long	4294960104                      @ 0xffffe3e8
	.long	4294960720                      @ 0xffffe650
	.long	4294961296                      @ 0xffffe890
	.long	4294961840                      @ 0xffffeab0
	.long	4294962352                      @ 0xffffecb0
	.long	4294962832                      @ 0xffffee90
	.long	4294963288                      @ 0xfffff058
	.long	4294963720                      @ 0xfffff208
	.long	4294964128                      @ 0xfffff3a0
	.long	4294964520                      @ 0xfffff528
	.long	4294964896                      @ 0xfffff6a0
	.long	4294965264                      @ 0xfffff810
	.long	4294965608                      @ 0xfffff968
	.long	4294965936                      @ 0xfffffab0
	.long	4294966256                      @ 0xfffffbf0
	.long	4294966568                      @ 0xfffffd28
	.long	24808                           @ 0x60e8
	.long	21904                           @ 0x5590
	.long	19008                           @ 0x4a40
	.long	16704                           @ 0x4140
	.long	14984                           @ 0x3a88
	.long	13512                           @ 0x34c8
	.long	12280                           @ 0x2ff8
	.long	11192                           @ 0x2bb8
	.long	10232                           @ 0x27f8
	.long	9360                            @ 0x2490
	.long	8576                            @ 0x2180
	.long	7856                            @ 0x1eb0
	.long	7192                            @ 0x1c18
	.long	6576                            @ 0x19b0
	.long	6000                            @ 0x1770
	.long	5456                            @ 0x1550
	.long	4944                            @ 0x1350
	.long	4464                            @ 0x1170
	.long	4008                            @ 0xfa8
	.long	3576                            @ 0xdf8
	.long	3168                            @ 0xc60
	.long	2776                            @ 0xad8
	.long	2400                            @ 0x960
	.long	2032                            @ 0x7f0
	.long	1688                            @ 0x698
	.long	1360                            @ 0x550
	.long	1040                            @ 0x410
	.long	728                             @ 0x2d8
	.long	432                             @ 0x1b0
	.long	136                             @ 0x88
	.long	4294966864                      @ 0xfffffe50
	.long	4294967160                      @ 0xffffff78
	.size	adpcm_dec_qq6_code6_table, 256

	.type	adpcm_dec_wl_code_table,%object @ @adpcm_dec_wl_code_table
	.globl	adpcm_dec_wl_code_table
	.p2align	2
adpcm_dec_wl_code_table:
	.long	4294967236                      @ 0xffffffc4
	.long	3042                            @ 0xbe2
	.long	1198                            @ 0x4ae
	.long	538                             @ 0x21a
	.long	334                             @ 0x14e
	.long	172                             @ 0xac
	.long	58                              @ 0x3a
	.long	4294967266                      @ 0xffffffe2
	.long	3042                            @ 0xbe2
	.long	1198                            @ 0x4ae
	.long	538                             @ 0x21a
	.long	334                             @ 0x14e
	.long	172                             @ 0xac
	.long	58                              @ 0x3a
	.long	4294967266                      @ 0xffffffe2
	.long	4294967236                      @ 0xffffffc4
	.size	adpcm_dec_wl_code_table, 64

	.type	adpcm_dec_ilb_table,%object     @ @adpcm_dec_ilb_table
	.globl	adpcm_dec_ilb_table
	.p2align	2
adpcm_dec_ilb_table:
	.long	2048                            @ 0x800
	.long	2093                            @ 0x82d
	.long	2139                            @ 0x85b
	.long	2186                            @ 0x88a
	.long	2233                            @ 0x8b9
	.long	2282                            @ 0x8ea
	.long	2332                            @ 0x91c
	.long	2383                            @ 0x94f
	.long	2435                            @ 0x983
	.long	2489                            @ 0x9b9
	.long	2543                            @ 0x9ef
	.long	2599                            @ 0xa27
	.long	2656                            @ 0xa60
	.long	2714                            @ 0xa9a
	.long	2774                            @ 0xad6
	.long	2834                            @ 0xb12
	.long	2896                            @ 0xb50
	.long	2960                            @ 0xb90
	.long	3025                            @ 0xbd1
	.long	3091                            @ 0xc13
	.long	3158                            @ 0xc56
	.long	3228                            @ 0xc9c
	.long	3298                            @ 0xce2
	.long	3371                            @ 0xd2b
	.long	3444                            @ 0xd74
	.long	3520                            @ 0xdc0
	.long	3597                            @ 0xe0d
	.long	3676                            @ 0xe5c
	.long	3756                            @ 0xeac
	.long	3838                            @ 0xefe
	.long	3922                            @ 0xf52
	.long	4008                            @ 0xfa8
	.size	adpcm_dec_ilb_table, 128

	.type	adpcm_dec_qq2_code2_table,%object @ @adpcm_dec_qq2_code2_table
	.globl	adpcm_dec_qq2_code2_table
	.p2align	2
adpcm_dec_qq2_code2_table:
	.long	4294959888                      @ 0xffffe310
	.long	4294965680                      @ 0xfffff9b0
	.long	7408                            @ 0x1cf0
	.long	1616                            @ 0x650
	.size	adpcm_dec_qq2_code2_table, 16

	.type	adpcm_dec_wh_code_table,%object @ @adpcm_dec_wh_code_table
	.globl	adpcm_dec_wh_code_table
	.p2align	2
adpcm_dec_wh_code_table:
	.long	798                             @ 0x31e
	.long	4294967082                      @ 0xffffff2a
	.long	798                             @ 0x31e
	.long	4294967082                      @ 0xffffff2a
	.size	adpcm_dec_wh_code_table, 16

	.type	adpcm_dec_ilr,%object           @ @adpcm_dec_ilr
	.bss
	.globl	adpcm_dec_ilr
	.p2align	2
adpcm_dec_ilr:
	.long	0                               @ 0x0
	.size	adpcm_dec_ilr, 4

	.type	adpcm_dec_ih,%object            @ @adpcm_dec_ih
	.globl	adpcm_dec_ih
	.p2align	2
adpcm_dec_ih:
	.long	0                               @ 0x0
	.size	adpcm_dec_ih, 4

	.type	adpcm_dec_dec_del_bpl,%object   @ @adpcm_dec_dec_del_bpl
	.globl	adpcm_dec_dec_del_bpl
	.p2align	2
adpcm_dec_dec_del_bpl:
	.zero	24
	.size	adpcm_dec_dec_del_bpl, 24

	.type	adpcm_dec_dec_del_dltx,%object  @ @adpcm_dec_dec_del_dltx
	.globl	adpcm_dec_dec_del_dltx
	.p2align	2
adpcm_dec_dec_del_dltx:
	.zero	24
	.size	adpcm_dec_dec_del_dltx, 24

	.type	adpcm_dec_dec_szl,%object       @ @adpcm_dec_dec_szl
	.globl	adpcm_dec_dec_szl
	.p2align	2
adpcm_dec_dec_szl:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_szl, 4

	.type	adpcm_dec_dec_rlt1,%object      @ @adpcm_dec_dec_rlt1
	.globl	adpcm_dec_dec_rlt1
	.p2align	2
adpcm_dec_dec_rlt1:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_rlt1, 4

	.type	adpcm_dec_dec_al1,%object       @ @adpcm_dec_dec_al1
	.globl	adpcm_dec_dec_al1
	.p2align	2
adpcm_dec_dec_al1:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_al1, 4

	.type	adpcm_dec_dec_rlt2,%object      @ @adpcm_dec_dec_rlt2
	.globl	adpcm_dec_dec_rlt2
	.p2align	2
adpcm_dec_dec_rlt2:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_rlt2, 4

	.type	adpcm_dec_dec_al2,%object       @ @adpcm_dec_dec_al2
	.globl	adpcm_dec_dec_al2
	.p2align	2
adpcm_dec_dec_al2:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_al2, 4

	.type	adpcm_dec_dec_spl,%object       @ @adpcm_dec_dec_spl
	.globl	adpcm_dec_dec_spl
	.p2align	2
adpcm_dec_dec_spl:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_spl, 4

	.type	adpcm_dec_dec_sl,%object        @ @adpcm_dec_dec_sl
	.globl	adpcm_dec_dec_sl
	.p2align	2
adpcm_dec_dec_sl:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_sl, 4

	.type	adpcm_dec_dec_detl,%object      @ @adpcm_dec_dec_detl
	.globl	adpcm_dec_dec_detl
	.p2align	2
adpcm_dec_dec_detl:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_detl, 4

	.type	adpcm_dec_dec_dlt,%object       @ @adpcm_dec_dec_dlt
	.globl	adpcm_dec_dec_dlt
	.p2align	2
adpcm_dec_dec_dlt:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_dlt, 4

	.type	adpcm_dec_il,%object            @ @adpcm_dec_il
	.globl	adpcm_dec_il
	.p2align	2
adpcm_dec_il:
	.long	0                               @ 0x0
	.size	adpcm_dec_il, 4

	.type	adpcm_dec_dl,%object            @ @adpcm_dec_dl
	.globl	adpcm_dec_dl
	.p2align	2
adpcm_dec_dl:
	.long	0                               @ 0x0
	.size	adpcm_dec_dl, 4

	.type	adpcm_dec_rl,%object            @ @adpcm_dec_rl
	.globl	adpcm_dec_rl
	.p2align	2
adpcm_dec_rl:
	.long	0                               @ 0x0
	.size	adpcm_dec_rl, 4

	.type	adpcm_dec_dec_nbl,%object       @ @adpcm_dec_dec_nbl
	.globl	adpcm_dec_dec_nbl
	.p2align	2
adpcm_dec_dec_nbl:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_nbl, 4

	.type	adpcm_dec_dec_plt,%object       @ @adpcm_dec_dec_plt
	.globl	adpcm_dec_dec_plt
	.p2align	2
adpcm_dec_dec_plt:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_plt, 4

	.type	adpcm_dec_dec_plt1,%object      @ @adpcm_dec_dec_plt1
	.globl	adpcm_dec_dec_plt1
	.p2align	2
adpcm_dec_dec_plt1:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_plt1, 4

	.type	adpcm_dec_dec_plt2,%object      @ @adpcm_dec_dec_plt2
	.globl	adpcm_dec_dec_plt2
	.p2align	2
adpcm_dec_dec_plt2:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_plt2, 4

	.type	adpcm_dec_dec_rlt,%object       @ @adpcm_dec_dec_rlt
	.globl	adpcm_dec_dec_rlt
	.p2align	2
adpcm_dec_dec_rlt:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_rlt, 4

	.type	adpcm_dec_dec_del_bph,%object   @ @adpcm_dec_dec_del_bph
	.globl	adpcm_dec_dec_del_bph
	.p2align	2
adpcm_dec_dec_del_bph:
	.zero	24
	.size	adpcm_dec_dec_del_bph, 24

	.type	adpcm_dec_dec_del_dhx,%object   @ @adpcm_dec_dec_del_dhx
	.globl	adpcm_dec_dec_del_dhx
	.p2align	2
adpcm_dec_dec_del_dhx:
	.zero	24
	.size	adpcm_dec_dec_del_dhx, 24

	.type	adpcm_dec_dec_szh,%object       @ @adpcm_dec_dec_szh
	.globl	adpcm_dec_dec_szh
	.p2align	2
adpcm_dec_dec_szh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_szh, 4

	.type	adpcm_dec_dec_rh1,%object       @ @adpcm_dec_dec_rh1
	.globl	adpcm_dec_dec_rh1
	.p2align	2
adpcm_dec_dec_rh1:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_rh1, 4

	.type	adpcm_dec_dec_ah1,%object       @ @adpcm_dec_dec_ah1
	.globl	adpcm_dec_dec_ah1
	.p2align	2
adpcm_dec_dec_ah1:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_ah1, 4

	.type	adpcm_dec_dec_rh2,%object       @ @adpcm_dec_dec_rh2
	.globl	adpcm_dec_dec_rh2
	.p2align	2
adpcm_dec_dec_rh2:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_rh2, 4

	.type	adpcm_dec_dec_ah2,%object       @ @adpcm_dec_dec_ah2
	.globl	adpcm_dec_dec_ah2
	.p2align	2
adpcm_dec_dec_ah2:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_ah2, 4

	.type	adpcm_dec_dec_sph,%object       @ @adpcm_dec_dec_sph
	.globl	adpcm_dec_dec_sph
	.p2align	2
adpcm_dec_dec_sph:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_sph, 4

	.type	adpcm_dec_dec_sh,%object        @ @adpcm_dec_dec_sh
	.globl	adpcm_dec_dec_sh
	.p2align	2
adpcm_dec_dec_sh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_sh, 4

	.type	adpcm_dec_dec_deth,%object      @ @adpcm_dec_dec_deth
	.globl	adpcm_dec_dec_deth
	.p2align	2
adpcm_dec_dec_deth:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_deth, 4

	.type	adpcm_dec_dec_dh,%object        @ @adpcm_dec_dec_dh
	.globl	adpcm_dec_dec_dh
	.p2align	2
adpcm_dec_dec_dh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_dh, 4

	.type	adpcm_dec_dec_nbh,%object       @ @adpcm_dec_dec_nbh
	.globl	adpcm_dec_dec_nbh
	.p2align	2
adpcm_dec_dec_nbh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_nbh, 4

	.type	adpcm_dec_dec_ph,%object        @ @adpcm_dec_dec_ph
	.globl	adpcm_dec_dec_ph
	.p2align	2
adpcm_dec_dec_ph:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_ph, 4

	.type	adpcm_dec_dec_ph1,%object       @ @adpcm_dec_dec_ph1
	.globl	adpcm_dec_dec_ph1
	.p2align	2
adpcm_dec_dec_ph1:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_ph1, 4

	.type	adpcm_dec_dec_ph2,%object       @ @adpcm_dec_dec_ph2
	.globl	adpcm_dec_dec_ph2
	.p2align	2
adpcm_dec_dec_ph2:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_ph2, 4

	.type	adpcm_dec_rh,%object            @ @adpcm_dec_rh
	.globl	adpcm_dec_rh
	.p2align	2
adpcm_dec_rh:
	.long	0                               @ 0x0
	.size	adpcm_dec_rh, 4

	.type	adpcm_dec_xd,%object            @ @adpcm_dec_xd
	.globl	adpcm_dec_xd
	.p2align	2
adpcm_dec_xd:
	.long	0                               @ 0x0
	.size	adpcm_dec_xd, 4

	.type	adpcm_dec_xs,%object            @ @adpcm_dec_xs
	.globl	adpcm_dec_xs
	.p2align	2
adpcm_dec_xs:
	.long	0                               @ 0x0
	.size	adpcm_dec_xs, 4

	.type	adpcm_dec_accumc,%object        @ @adpcm_dec_accumc
	.globl	adpcm_dec_accumc
	.p2align	2
adpcm_dec_accumc:
	.zero	44
	.size	adpcm_dec_accumc, 44

	.type	adpcm_dec_accumd,%object        @ @adpcm_dec_accumd
	.globl	adpcm_dec_accumd
	.p2align	2
adpcm_dec_accumd:
	.zero	44
	.size	adpcm_dec_accumd, 44

	.type	adpcm_dec_xout1,%object         @ @adpcm_dec_xout1
	.globl	adpcm_dec_xout1
	.p2align	2
adpcm_dec_xout1:
	.long	0                               @ 0x0
	.size	adpcm_dec_xout1, 4

	.type	adpcm_dec_xout2,%object         @ @adpcm_dec_xout2
	.globl	adpcm_dec_xout2
	.p2align	2
adpcm_dec_xout2:
	.long	0                               @ 0x0
	.size	adpcm_dec_xout2, 4

	.type	adpcm_dec_detl,%object          @ @adpcm_dec_detl
	.globl	adpcm_dec_detl
	.p2align	2
adpcm_dec_detl:
	.long	0                               @ 0x0
	.size	adpcm_dec_detl, 4

	.type	adpcm_dec_deth,%object          @ @adpcm_dec_deth
	.globl	adpcm_dec_deth
	.p2align	2
adpcm_dec_deth:
	.long	0                               @ 0x0
	.size	adpcm_dec_deth, 4

	.type	adpcm_dec_rlt2,%object          @ @adpcm_dec_rlt2
	.globl	adpcm_dec_rlt2
	.p2align	2
adpcm_dec_rlt2:
	.long	0                               @ 0x0
	.size	adpcm_dec_rlt2, 4

	.type	adpcm_dec_rlt1,%object          @ @adpcm_dec_rlt1
	.globl	adpcm_dec_rlt1
	.p2align	2
adpcm_dec_rlt1:
	.long	0                               @ 0x0
	.size	adpcm_dec_rlt1, 4

	.type	adpcm_dec_plt2,%object          @ @adpcm_dec_plt2
	.globl	adpcm_dec_plt2
	.p2align	2
adpcm_dec_plt2:
	.long	0                               @ 0x0
	.size	adpcm_dec_plt2, 4

	.type	adpcm_dec_plt1,%object          @ @adpcm_dec_plt1
	.globl	adpcm_dec_plt1
	.p2align	2
adpcm_dec_plt1:
	.long	0                               @ 0x0
	.size	adpcm_dec_plt1, 4

	.type	adpcm_dec_al2,%object           @ @adpcm_dec_al2
	.globl	adpcm_dec_al2
	.p2align	2
adpcm_dec_al2:
	.long	0                               @ 0x0
	.size	adpcm_dec_al2, 4

	.type	adpcm_dec_al1,%object           @ @adpcm_dec_al1
	.globl	adpcm_dec_al1
	.p2align	2
adpcm_dec_al1:
	.long	0                               @ 0x0
	.size	adpcm_dec_al1, 4

	.type	adpcm_dec_nbl,%object           @ @adpcm_dec_nbl
	.globl	adpcm_dec_nbl
	.p2align	2
adpcm_dec_nbl:
	.long	0                               @ 0x0
	.size	adpcm_dec_nbl, 4

	.type	adpcm_dec_rh2,%object           @ @adpcm_dec_rh2
	.globl	adpcm_dec_rh2
	.p2align	2
adpcm_dec_rh2:
	.long	0                               @ 0x0
	.size	adpcm_dec_rh2, 4

	.type	adpcm_dec_rh1,%object           @ @adpcm_dec_rh1
	.globl	adpcm_dec_rh1
	.p2align	2
adpcm_dec_rh1:
	.long	0                               @ 0x0
	.size	adpcm_dec_rh1, 4

	.type	adpcm_dec_ph2,%object           @ @adpcm_dec_ph2
	.globl	adpcm_dec_ph2
	.p2align	2
adpcm_dec_ph2:
	.long	0                               @ 0x0
	.size	adpcm_dec_ph2, 4

	.type	adpcm_dec_ph1,%object           @ @adpcm_dec_ph1
	.globl	adpcm_dec_ph1
	.p2align	2
adpcm_dec_ph1:
	.long	0                               @ 0x0
	.size	adpcm_dec_ph1, 4

	.type	adpcm_dec_ah2,%object           @ @adpcm_dec_ah2
	.globl	adpcm_dec_ah2
	.p2align	2
adpcm_dec_ah2:
	.long	0                               @ 0x0
	.size	adpcm_dec_ah2, 4

	.type	adpcm_dec_ah1,%object           @ @adpcm_dec_ah1
	.globl	adpcm_dec_ah1
	.p2align	2
adpcm_dec_ah1:
	.long	0                               @ 0x0
	.size	adpcm_dec_ah1, 4

	.type	adpcm_dec_nbh,%object           @ @adpcm_dec_nbh
	.globl	adpcm_dec_nbh
	.p2align	2
adpcm_dec_nbh:
	.long	0                               @ 0x0
	.size	adpcm_dec_nbh, 4

	.type	adpcm_dec_delay_dhx,%object     @ @adpcm_dec_delay_dhx
	.globl	adpcm_dec_delay_dhx
	.p2align	2
adpcm_dec_delay_dhx:
	.zero	24
	.size	adpcm_dec_delay_dhx, 24

	.type	adpcm_dec_delay_bph,%object     @ @adpcm_dec_delay_bph
	.globl	adpcm_dec_delay_bph
	.p2align	2
adpcm_dec_delay_bph:
	.zero	24
	.size	adpcm_dec_delay_bph, 24

	.type	adpcm_dec_test_data,%object     @ @adpcm_dec_test_data
	.globl	adpcm_dec_test_data
	.p2align	2
adpcm_dec_test_data:
	.zero	24
	.size	adpcm_dec_test_data, 24

	.type	adpcm_dec_result,%object        @ @adpcm_dec_result
	.globl	adpcm_dec_result
	.p2align	2
adpcm_dec_result:
	.zero	24
	.size	adpcm_dec_result, 24

	.type	adpcm_dec_szl,%object           @ @adpcm_dec_szl
	.globl	adpcm_dec_szl
	.p2align	2
adpcm_dec_szl:
	.long	0                               @ 0x0
	.size	adpcm_dec_szl, 4

	.type	adpcm_dec_spl,%object           @ @adpcm_dec_spl
	.globl	adpcm_dec_spl
	.p2align	2
adpcm_dec_spl:
	.long	0                               @ 0x0
	.size	adpcm_dec_spl, 4

	.type	adpcm_dec_sl,%object            @ @adpcm_dec_sl
	.globl	adpcm_dec_sl
	.p2align	2
adpcm_dec_sl:
	.long	0                               @ 0x0
	.size	adpcm_dec_sl, 4

	.type	adpcm_dec_el,%object            @ @adpcm_dec_el
	.globl	adpcm_dec_el
	.p2align	2
adpcm_dec_el:
	.long	0                               @ 0x0
	.size	adpcm_dec_el, 4

	.type	adpcm_dec_plt,%object           @ @adpcm_dec_plt
	.globl	adpcm_dec_plt
	.p2align	2
adpcm_dec_plt:
	.long	0                               @ 0x0
	.size	adpcm_dec_plt, 4

	.type	adpcm_dec_rs,%object            @ @adpcm_dec_rs
	.globl	adpcm_dec_rs
	.p2align	2
adpcm_dec_rs:
	.long	0                               @ 0x0
	.size	adpcm_dec_rs, 4

	.type	adpcm_dec_dlt,%object           @ @adpcm_dec_dlt
	.globl	adpcm_dec_dlt
	.p2align	2
adpcm_dec_dlt:
	.long	0                               @ 0x0
	.size	adpcm_dec_dlt, 4

	.type	adpcm_dec_rlt,%object           @ @adpcm_dec_rlt
	.globl	adpcm_dec_rlt
	.p2align	2
adpcm_dec_rlt:
	.long	0                               @ 0x0
	.size	adpcm_dec_rlt, 4

	.type	adpcm_dec_sh,%object            @ @adpcm_dec_sh
	.globl	adpcm_dec_sh
	.p2align	2
adpcm_dec_sh:
	.long	0                               @ 0x0
	.size	adpcm_dec_sh, 4

	.type	adpcm_dec_eh,%object            @ @adpcm_dec_eh
	.globl	adpcm_dec_eh
	.p2align	2
adpcm_dec_eh:
	.long	0                               @ 0x0
	.size	adpcm_dec_eh, 4

	.type	adpcm_dec_dh,%object            @ @adpcm_dec_dh
	.globl	adpcm_dec_dh
	.p2align	2
adpcm_dec_dh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dh, 4

	.type	adpcm_dec_szh,%object           @ @adpcm_dec_szh
	.globl	adpcm_dec_szh
	.p2align	2
adpcm_dec_szh:
	.long	0                               @ 0x0
	.size	adpcm_dec_szh, 4

	.type	adpcm_dec_sph,%object           @ @adpcm_dec_sph
	.globl	adpcm_dec_sph
	.p2align	2
adpcm_dec_sph:
	.long	0                               @ 0x0
	.size	adpcm_dec_sph, 4

	.type	adpcm_dec_ph,%object            @ @adpcm_dec_ph
	.globl	adpcm_dec_ph
	.p2align	2
adpcm_dec_ph:
	.long	0                               @ 0x0
	.size	adpcm_dec_ph, 4

	.type	adpcm_dec_yh,%object            @ @adpcm_dec_yh
	.globl	adpcm_dec_yh
	.p2align	2
adpcm_dec_yh:
	.long	0                               @ 0x0
	.size	adpcm_dec_yh, 4

	.type	adpcm_dec_yl,%object            @ @adpcm_dec_yl
	.globl	adpcm_dec_yl
	.p2align	2
adpcm_dec_yl:
	.long	0                               @ 0x0
	.size	adpcm_dec_yl, 4

	.type	adpcm_dec_dec_yh,%object        @ @adpcm_dec_dec_yh
	.globl	adpcm_dec_dec_yh
	.p2align	2
adpcm_dec_dec_yh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_yh, 4

	.type	adpcm_dec_dec_rh,%object        @ @adpcm_dec_dec_rh
	.globl	adpcm_dec_dec_rh
	.p2align	2
adpcm_dec_dec_rh:
	.long	0                               @ 0x0
	.size	adpcm_dec_dec_rh, 4

	.type	data,%object                    @ @data
	.data
	.globl	data
	.p2align	2
data:
	.long	1                               @ 0x1
	.long	100                             @ 0x64
	.long	5                               @ 0x5
	.long	200                             @ 0xc8
	.long	6                               @ 0x6
	.long	300                             @ 0x12c
	.long	7                               @ 0x7
	.long	700                             @ 0x2bc
	.long	8                               @ 0x8
	.long	900                             @ 0x384
	.long	9                               @ 0x9
	.long	250                             @ 0xfa
	.long	10                              @ 0xa
	.long	400                             @ 0x190
	.long	11                              @ 0xb
	.long	600                             @ 0x258
	.long	12                              @ 0xc
	.long	800                             @ 0x320
	.long	13                              @ 0xd
	.long	1500                            @ 0x5dc
	.long	14                              @ 0xe
	.long	1200                            @ 0x4b0
	.long	15                              @ 0xf
	.long	110                             @ 0x6e
	.long	16                              @ 0x10
	.long	140                             @ 0x8c
	.long	17                              @ 0x11
	.long	133                             @ 0x85
	.long	18                              @ 0x12
	.long	10                              @ 0xa
	.size	data, 120

	.type	lms_sintab,%object              @ @lms_sintab
	.globl	lms_sintab
	.p2align	3
lms_sintab:
	.long	0                               @ double 0
	.long	0
	.long	466982482                       @ double 0.43701603620715901
	.long	1071380498
	.long	3305321608                      @ double 0.831253895559386
	.long	1072339361
	.long	3169265311                      @ double 1.1441228274365256
	.long	1072844371
	.long	2643065494                      @ double 1.3449970392099764
	.long	1073055003
	.long	1719614407                      @ double 1.4142135623730938
	.long	1073127582
	.size	lms_sintab, 48

	.type	lms_input,%object               @ @lms_input
	.bss
	.globl	lms_input
	.p2align	2
lms_input:
	.zero	808
	.size	lms_input, 808

	.type	lms_output,%object              @ @lms_output
	.globl	lms_output
	.p2align	2
lms_output:
	.zero	808
	.size	lms_output, 808

	.type	ArrayA,%object                  @ @ArrayA
	.globl	ArrayA
	.p2align	2
ArrayA:
	.zero	1600
	.size	ArrayA, 1600

	.type	ArrayB,%object                  @ @ArrayB
	.globl	ArrayB
	.p2align	2
ArrayB:
	.zero	1600
	.size	ArrayB, 1600

	.type	ResultArray,%object             @ @ResultArray
	.globl	ResultArray
	.p2align	2
ResultArray:
	.zero	1600
	.size	ResultArray, 1600

	.type	Seed,%object                    @ @Seed
	.globl	Seed
	.p2align	2
Seed:
	.long	0                               @ 0x0
	.size	Seed, 4

	.type	rad2deg_X,%object               @ @rad2deg_X
	.globl	rad2deg_X
	.p2align	2
rad2deg_X:
	.long	0x00000000                      @ float 0
	.size	rad2deg_X, 4

	.type	rad2deg_Y,%object               @ @rad2deg_Y
	.globl	rad2deg_Y
	.p2align	2
rad2deg_Y:
	.long	0x00000000                      @ float 0
	.size	rad2deg_Y, 4

	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"../absvdi2.c"
	.size	.L.str, 13

	.type	.L__func__.__absvdi2,%object    @ @__func__.__absvdi2
.L__func__.__absvdi2:
	.asciz	"__absvdi2"
	.size	.L__func__.__absvdi2, 10

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"../absvsi2.c"
	.size	.L.str.1, 13

	.type	.L__func__.__absvsi2,%object    @ @__func__.__absvsi2
.L__func__.__absvsi2:
	.asciz	"__absvsi2"
	.size	.L__func__.__absvsi2, 10

	.type	.L.str.2,%object                @ @.str.2
.L.str.2:
	.asciz	"../addvdi3.c"
	.size	.L.str.2, 13

	.type	.L__func__.__addvdi3,%object    @ @__func__.__addvdi3
.L__func__.__addvdi3:
	.asciz	"__addvdi3"
	.size	.L__func__.__addvdi3, 10

	.type	.L.str.3,%object                @ @.str.3
.L.str.3:
	.asciz	"../addvsi3.c"
	.size	.L.str.3, 13

	.type	.L__func__.__addvsi3,%object    @ @__func__.__addvsi3
.L__func__.__addvsi3:
	.asciz	"__addvsi3"
	.size	.L__func__.__addvsi3, 10

	.type	.L.str.8,%object                @ @.str.8
.L.str.8:
	.asciz	"../mulvdi3.c"
	.size	.L.str.8, 13

	.type	.L__func__.__mulvdi3,%object    @ @__func__.__mulvdi3
.L__func__.__mulvdi3:
	.asciz	"__mulvdi3"
	.size	.L__func__.__mulvdi3, 10

	.type	.L.str.9,%object                @ @.str.9
.L.str.9:
	.asciz	"../mulvsi3.c"
	.size	.L.str.9, 13

	.type	.L__func__.__mulvsi3,%object    @ @__func__.__mulvsi3
.L__func__.__mulvsi3:
	.asciz	"__mulvsi3"
	.size	.L__func__.__mulvsi3, 10

	.type	.L.str.12,%object               @ @.str.12
.L.str.12:
	.asciz	"../subvdi3.c"
	.size	.L.str.12, 13

	.type	.L__func__.__subvdi3,%object    @ @__func__.__subvdi3
.L__func__.__subvdi3:
	.asciz	"__subvdi3"
	.size	.L__func__.__subvdi3, 10

	.type	.L.str.13,%object               @ @.str.13
.L.str.13:
	.asciz	"../subvsi3.c"
	.size	.L.str.13, 13

	.type	.L__func__.__subvsi3,%object    @ @__func__.__subvsi3
.L__func__.__subvsi3:
	.asciz	"__subvsi3"
	.size	.L__func__.__subvsi3, 10

	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	0                               @ DW_CHILDREN_no
	.byte	37                              @ DW_AT_producer
	.byte	37                              @ DW_FORM_strx1
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	114                             @ DW_AT_str_offsets_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	16                              @ DW_AT_stmt_list
	.byte	23                              @ DW_FORM_sec_offset
	.byte	27                              @ DW_AT_comp_dir
	.byte	37                              @ DW_FORM_strx1
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	115                             @ DW_AT_addr_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	0                               @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin0      @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1 @ Length of Unit
.Ldebug_info_start1:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	3                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	1                               @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin17     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2 @ Length of Unit
.Ldebug_info_start2:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	4                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	2                               @ DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin19     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end2:
.Lcu_begin3:
	.long	.Ldebug_info_end3-.Ldebug_info_start3 @ Length of Unit
.Ldebug_info_start3:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	5                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	3                               @ DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin22     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end3:
.Lcu_begin4:
	.long	.Ldebug_info_end4-.Ldebug_info_start4 @ Length of Unit
.Ldebug_info_start4:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	6                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	4                               @ DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin28     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end4:
.Lcu_begin5:
	.long	.Ldebug_info_end5-.Ldebug_info_start5 @ Length of Unit
.Ldebug_info_start5:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	7                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	5                               @ DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin34     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end5:
.Lcu_begin6:
	.long	.Ldebug_info_end6-.Ldebug_info_start6 @ Length of Unit
.Ldebug_info_start6:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	9                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	6                               @ DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end6:
.Lcu_begin7:
	.long	.Ldebug_info_end7-.Ldebug_info_start7 @ Length of Unit
.Ldebug_info_start7:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	11                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	7                               @ DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end7:
.Lcu_begin8:
	.long	.Ldebug_info_end8-.Ldebug_info_start8 @ Length of Unit
.Ldebug_info_start8:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	12                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	8                               @ DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end8:
.Lcu_begin9:
	.long	.Ldebug_info_end9-.Ldebug_info_start9 @ Length of Unit
.Ldebug_info_start9:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	13                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	9                               @ DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end9:
.Lcu_begin10:
	.long	.Ldebug_info_end10-.Ldebug_info_start10 @ Length of Unit
.Ldebug_info_start10:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	14                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	10                              @ DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end10:
.Lcu_begin11:
	.long	.Ldebug_info_end11-.Ldebug_info_start11 @ Length of Unit
.Ldebug_info_start11:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	15                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	11                              @ DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end11:
.Lcu_begin12:
	.long	.Ldebug_info_end12-.Ldebug_info_start12 @ Length of Unit
.Ldebug_info_start12:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	16                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	12                              @ DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin44     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end12:
.Lcu_begin13:
	.long	.Ldebug_info_end13-.Ldebug_info_start13 @ Length of Unit
.Ldebug_info_start13:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	17                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	13                              @ DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin45     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end13:
.Lcu_begin14:
	.long	.Ldebug_info_end14-.Ldebug_info_start14 @ Length of Unit
.Ldebug_info_start14:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	18                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	14                              @ DW_AT_low_pc
	.long	.Lfunc_end46-.Lfunc_begin46     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end14:
.Lcu_begin15:
	.long	.Ldebug_info_end15-.Ldebug_info_start15 @ Length of Unit
.Ldebug_info_start15:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	19                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	15                              @ DW_AT_low_pc
	.long	.Lfunc_end48-.Lfunc_begin47     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end15:
.Lcu_begin16:
	.long	.Ldebug_info_end16-.Ldebug_info_start16 @ Length of Unit
.Ldebug_info_start16:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	20                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	16                              @ DW_AT_low_pc
	.long	.Lfunc_end49-.Lfunc_begin49     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end16:
.Lcu_begin17:
	.long	.Ldebug_info_end17-.Ldebug_info_start17 @ Length of Unit
.Ldebug_info_start17:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	21                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	17                              @ DW_AT_low_pc
	.long	.Lfunc_end50-.Lfunc_begin50     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end17:
.Lcu_begin18:
	.long	.Ldebug_info_end18-.Ldebug_info_start18 @ Length of Unit
.Ldebug_info_start18:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	22                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	18                              @ DW_AT_low_pc
	.long	.Lfunc_end51-.Lfunc_begin51     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end18:
.Lcu_begin19:
	.long	.Ldebug_info_end19-.Ldebug_info_start19 @ Length of Unit
.Ldebug_info_start19:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	23                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	19                              @ DW_AT_low_pc
	.long	.Lfunc_end52-.Lfunc_begin52     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end19:
.Lcu_begin20:
	.long	.Ldebug_info_end20-.Ldebug_info_start20 @ Length of Unit
.Ldebug_info_start20:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	24                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	20                              @ DW_AT_low_pc
	.long	.Lfunc_end53-.Lfunc_begin53     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end20:
.Lcu_begin21:
	.long	.Ldebug_info_end21-.Ldebug_info_start21 @ Length of Unit
.Ldebug_info_start21:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	25                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	21                              @ DW_AT_low_pc
	.long	.Lfunc_end54-.Lfunc_begin54     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end21:
.Lcu_begin22:
	.long	.Ldebug_info_end22-.Ldebug_info_start22 @ Length of Unit
.Ldebug_info_start22:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	26                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	22                              @ DW_AT_low_pc
	.long	.Lfunc_end55-.Lfunc_begin55     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end22:
.Lcu_begin23:
	.long	.Ldebug_info_end23-.Ldebug_info_start23 @ Length of Unit
.Ldebug_info_start23:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	27                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	23                              @ DW_AT_low_pc
	.long	.Lfunc_end56-.Lfunc_begin56     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end23:
.Lcu_begin24:
	.long	.Ldebug_info_end24-.Ldebug_info_start24 @ Length of Unit
.Ldebug_info_start24:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	28                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	24                              @ DW_AT_low_pc
	.long	.Lfunc_end57-.Lfunc_begin57     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end24:
.Lcu_begin25:
	.long	.Ldebug_info_end25-.Ldebug_info_start25 @ Length of Unit
.Ldebug_info_start25:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	29                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	25                              @ DW_AT_low_pc
	.long	.Lfunc_end58-.Lfunc_begin58     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end25:
.Lcu_begin26:
	.long	.Ldebug_info_end26-.Ldebug_info_start26 @ Length of Unit
.Ldebug_info_start26:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	30                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	26                              @ DW_AT_low_pc
	.long	.Lfunc_end59-.Lfunc_begin59     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end26:
.Lcu_begin27:
	.long	.Ldebug_info_end27-.Ldebug_info_start27 @ Length of Unit
.Ldebug_info_start27:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	31                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	27                              @ DW_AT_low_pc
	.long	.Lfunc_end60-.Lfunc_begin60     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end27:
.Lcu_begin28:
	.long	.Ldebug_info_end28-.Ldebug_info_start28 @ Length of Unit
.Ldebug_info_start28:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	32                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	28                              @ DW_AT_low_pc
	.long	.Lfunc_end61-.Lfunc_begin61     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end28:
.Lcu_begin29:
	.long	.Ldebug_info_end29-.Ldebug_info_start29 @ Length of Unit
.Ldebug_info_start29:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	33                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	29                              @ DW_AT_low_pc
	.long	.Lfunc_end62-.Lfunc_begin62     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end29:
.Lcu_begin30:
	.long	.Ldebug_info_end30-.Ldebug_info_start30 @ Length of Unit
.Ldebug_info_start30:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	34                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	30                              @ DW_AT_low_pc
	.long	.Lfunc_end63-.Lfunc_begin63     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end30:
.Lcu_begin31:
	.long	.Ldebug_info_end31-.Ldebug_info_start31 @ Length of Unit
.Ldebug_info_start31:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	35                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	31                              @ DW_AT_low_pc
	.long	.Lfunc_end64-.Lfunc_begin64     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end31:
.Lcu_begin32:
	.long	.Ldebug_info_end32-.Ldebug_info_start32 @ Length of Unit
.Ldebug_info_start32:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	36                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	32                              @ DW_AT_low_pc
	.long	.Lfunc_end65-.Lfunc_begin65     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end32:
.Lcu_begin33:
	.long	.Ldebug_info_end33-.Ldebug_info_start33 @ Length of Unit
.Ldebug_info_start33:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	37                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	33                              @ DW_AT_low_pc
	.long	.Lfunc_end66-.Lfunc_begin66     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end33:
.Lcu_begin34:
	.long	.Ldebug_info_end34-.Ldebug_info_start34 @ Length of Unit
.Ldebug_info_start34:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	38                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	34                              @ DW_AT_low_pc
	.long	.Lfunc_end67-.Lfunc_begin67     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end34:
.Lcu_begin35:
	.long	.Ldebug_info_end35-.Ldebug_info_start35 @ Length of Unit
.Ldebug_info_start35:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	39                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	35                              @ DW_AT_low_pc
	.long	.Lfunc_end68-.Lfunc_begin68     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end35:
.Lcu_begin36:
	.long	.Ldebug_info_end36-.Ldebug_info_start36 @ Length of Unit
.Ldebug_info_start36:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	40                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	36                              @ DW_AT_low_pc
	.long	.Lfunc_end70-.Lfunc_begin69     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end36:
.Lcu_begin37:
	.long	.Ldebug_info_end37-.Ldebug_info_start37 @ Length of Unit
.Ldebug_info_start37:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	41                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	37                              @ DW_AT_low_pc
	.long	.Lfunc_end71-.Lfunc_begin71     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end37:
.Lcu_begin38:
	.long	.Ldebug_info_end38-.Ldebug_info_start38 @ Length of Unit
.Ldebug_info_start38:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	42                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	38                              @ DW_AT_low_pc
	.long	.Lfunc_end72-.Lfunc_begin72     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end38:
.Lcu_begin39:
	.long	.Ldebug_info_end39-.Ldebug_info_start39 @ Length of Unit
.Ldebug_info_start39:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	43                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	39                              @ DW_AT_low_pc
	.long	.Lfunc_end73-.Lfunc_begin73     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end39:
.Lcu_begin40:
	.long	.Ldebug_info_end40-.Ldebug_info_start40 @ Length of Unit
.Ldebug_info_start40:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	44                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	40                              @ DW_AT_low_pc
	.long	.Lfunc_end74-.Lfunc_begin74     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end40:
.Lcu_begin41:
	.long	.Ldebug_info_end41-.Ldebug_info_start41 @ Length of Unit
.Ldebug_info_start41:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	45                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	10                              @ DW_AT_comp_dir
	.byte	41                              @ DW_AT_low_pc
	.long	.Lfunc_end75-.Lfunc_begin75     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end41:
.Lcu_begin42:
	.long	.Ldebug_info_end42-.Ldebug_info_start42 @ Length of Unit
.Ldebug_info_start42:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x17 DW_TAG_compile_unit
	.byte	8                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	46                              @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	47                              @ DW_AT_comp_dir
	.byte	42                              @ DW_AT_low_pc
	.long	.Lfunc_end77-.Lfunc_begin76     @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
.Ldebug_info_end42:
	.section	.debug_str_offsets,"",%progbits
	.long	196                             @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)" @ string offset=0
.Linfo_string1:
	.asciz	"/workspaces/llvmta/testcases/test/adpcm_dec.c" @ string offset=99
.Linfo_string2:
	.asciz	"/workspaces/llvmta/testcases/dirforgdb" @ string offset=145
.Linfo_string3:
	.asciz	"/workspaces/llvmta/testcases/test/bs.c" @ string offset=184
.Linfo_string4:
	.asciz	"/workspaces/llvmta/testcases/test/expint.c" @ string offset=223
.Linfo_string5:
	.asciz	"/workspaces/llvmta/testcases/test/lms.c" @ string offset=266
.Linfo_string6:
	.asciz	"/workspaces/llvmta/testcases/test/matmult.c" @ string offset=306
.Linfo_string7:
	.asciz	"/workspaces/llvmta/testcases/test/rad2deg.c" @ string offset=350
.Linfo_string8:
	.asciz	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)" @ string offset=394
.Linfo_string9:
	.asciz	"../absvdi2.c"                  @ string offset=515
.Linfo_string10:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4" @ string offset=528
.Linfo_string11:
	.asciz	"../int_util.c"                 @ string offset=590
.Linfo_string12:
	.asciz	"../absvsi2.c"                  @ string offset=604
.Linfo_string13:
	.asciz	"../addvdi3.c"                  @ string offset=617
.Linfo_string14:
	.asciz	"../addvsi3.c"                  @ string offset=630
.Linfo_string15:
	.asciz	"../ashldi3.c"                  @ string offset=643
.Linfo_string16:
	.asciz	"../ashrdi3.c"                  @ string offset=656
.Linfo_string17:
	.asciz	"../clzdi2.c"                   @ string offset=669
.Linfo_string18:
	.asciz	"../clzsi2.c"                   @ string offset=681
.Linfo_string19:
	.asciz	"../cmpdi2.c"                   @ string offset=693
.Linfo_string20:
	.asciz	"../ctzdi2.c"                   @ string offset=705
.Linfo_string21:
	.asciz	"../ctzsi2.c"                   @ string offset=717
.Linfo_string22:
	.asciz	"../divdi3.c"                   @ string offset=729
.Linfo_string23:
	.asciz	"../udivmoddi4.c"               @ string offset=741
.Linfo_string24:
	.asciz	"../divmoddi4.c"                @ string offset=757
.Linfo_string25:
	.asciz	"../divmodsi4.c"                @ string offset=772
.Linfo_string26:
	.asciz	"../divsi3.c"                   @ string offset=787
.Linfo_string27:
	.asciz	"../ffsdi2.c"                   @ string offset=799
.Linfo_string28:
	.asciz	"../ffssi2.c"                   @ string offset=811
.Linfo_string29:
	.asciz	"../lshrdi3.c"                  @ string offset=823
.Linfo_string30:
	.asciz	"../moddi3.c"                   @ string offset=836
.Linfo_string31:
	.asciz	"../modsi3.c"                   @ string offset=848
.Linfo_string32:
	.asciz	"../mulvdi3.c"                  @ string offset=860
.Linfo_string33:
	.asciz	"../mulvsi3.c"                  @ string offset=873
.Linfo_string34:
	.asciz	"../paritydi2.c"                @ string offset=886
.Linfo_string35:
	.asciz	"../paritysi2.c"                @ string offset=901
.Linfo_string36:
	.asciz	"../popcountdi2.c"              @ string offset=916
.Linfo_string37:
	.asciz	"../popcountsi2.c"              @ string offset=933
.Linfo_string38:
	.asciz	"../subvdi3.c"                  @ string offset=950
.Linfo_string39:
	.asciz	"../subvsi3.c"                  @ string offset=963
.Linfo_string40:
	.asciz	"../ucmpdi2.c"                  @ string offset=976
.Linfo_string41:
	.asciz	"../udivdi3.c"                  @ string offset=989
.Linfo_string42:
	.asciz	"../udivmodsi4.c"               @ string offset=1002
.Linfo_string43:
	.asciz	"../udivsi3.c"                  @ string offset=1018
.Linfo_string44:
	.asciz	"../umoddi3.c"                  @ string offset=1031
.Linfo_string45:
	.asciz	"../umodsi3.c"                  @ string offset=1044
.Linfo_string46:
	.asciz	"../memory.c"                   @ string offset=1057
.Linfo_string47:
	.asciz	"/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4" @ string offset=1069
	.section	.debug_str_offsets,"",%progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	.Lfunc_begin0
	.long	.Lfunc_begin17
	.long	.Lfunc_begin19
	.long	.Lfunc_begin22
	.long	.Lfunc_begin28
	.long	.Lfunc_begin34
	.long	.Lfunc_begin38
	.long	.Lfunc_begin39
	.long	.Lfunc_begin40
	.long	.Lfunc_begin41
	.long	.Lfunc_begin42
	.long	.Lfunc_begin43
	.long	.Lfunc_begin44
	.long	.Lfunc_begin45
	.long	.Lfunc_begin46
	.long	.Lfunc_begin47
	.long	.Lfunc_begin49
	.long	.Lfunc_begin50
	.long	.Lfunc_begin51
	.long	.Lfunc_begin52
	.long	.Lfunc_begin53
	.long	.Lfunc_begin54
	.long	.Lfunc_begin55
	.long	.Lfunc_begin56
	.long	.Lfunc_begin57
	.long	.Lfunc_begin58
	.long	.Lfunc_begin59
	.long	.Lfunc_begin60
	.long	.Lfunc_begin61
	.long	.Lfunc_begin62
	.long	.Lfunc_begin63
	.long	.Lfunc_begin64
	.long	.Lfunc_begin65
	.long	.Lfunc_begin66
	.long	.Lfunc_begin67
	.long	.Lfunc_begin68
	.long	.Lfunc_begin69
	.long	.Lfunc_begin71
	.long	.Lfunc_begin72
	.long	.Lfunc_begin73
	.long	.Lfunc_begin74
	.long	.Lfunc_begin75
	.long	.Lfunc_begin76
.Ldebug_addr_end0:
	.globl	__aeabi_llsl
	.type	__aeabi_llsl,%function
.set __aeabi_llsl, __ashldi3
	.globl	__aeabi_lasr
	.type	__aeabi_lasr,%function
.set __aeabi_lasr, __ashrdi3
	.globl	__aeabi_idiv
	.type	__aeabi_idiv,%function
.set __aeabi_idiv, __divsi3
	.globl	__aeabi_llsr
	.type	__aeabi_llsr,%function
.set __aeabi_llsr, __lshrdi3
	.globl	__aeabi_uidiv
	.type	__aeabi_uidiv,%function
.set __aeabi_uidiv, __udivsi3
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)"
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)"
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)"
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)"
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)"
	.ident	"clang version 14.0.6 (git@github.com:RTS-SYSU/llvmta.git ec7757d20f37093f6574c772ddfdc96af2a0088a)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.ident	"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"
	.section	".note.GNU-stack","",%progbits
	.section	.debug_line,"",%progbits
.Lline_table_start0:
