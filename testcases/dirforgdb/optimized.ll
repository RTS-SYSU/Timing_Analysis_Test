; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }
%struct.NDES_GREAT = type { i32, i32, i32 }
%union.dwords = type { i64 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4
@cover_cnt = internal global i32 0, align 4
@lin = dso_local global [256 x i8] c"asdffeagewaHAFEFaeDsFEawFdsFaefaeerdjgp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@icrc.icrctb = internal global [256 x i16] zeroinitializer, align 2
@icrc.init = internal global i16 0, align 2
@icrc.rchr = internal global [256 x i8] zeroinitializer, align 1
@icrc.it = internal global [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 1
@deg2rad_X = dso_local global float 0.000000e+00, align 4
@deg2rad_Y = dso_local global float 0.000000e+00, align 4
@block = dso_local global [64 x i16] [i16 99, i16 104, i16 109, i16 113, i16 115, i16 115, i16 55, i16 55, i16 104, i16 111, i16 113, i16 116, i16 119, i16 56, i16 56, i16 56, i16 110, i16 115, i16 120, i16 119, i16 118, i16 56, i16 56, i16 56, i16 119, i16 121, i16 122, i16 120, i16 120, i16 59, i16 59, i16 59, i16 119, i16 120, i16 121, i16 122, i16 122, i16 55, i16 55, i16 55, i16 121, i16 121, i16 121, i16 121, i16 60, i16 57, i16 57, i16 57, i16 122, i16 122, i16 61, i16 63, i16 62, i16 57, i16 57, i16 57, i16 62, i16 62, i16 61, i16 61, i16 63, i16 58, i16 58, i16 58], align 2
@out = dso_local global i32 0, align 4
@lms_sintab = dso_local global [6 x double] [double 0.000000e+00, double 0x3FDBF8121BD59652, double 0x3FEA99A1C5033488, double 0x3FF24E53BCE7269F, double 0x3FF5851B9D89FA96, double 0x3FF6A09E667F3BC7], align 8
@lms_input = dso_local global [202 x float] zeroinitializer, align 4
@lms_output = dso_local global [202 x float] zeroinitializer, align 4
@ArrayA = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@ArrayB = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@ResultArray = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@Seed = dso_local global i32 0, align 4
@ndes_value = dso_local global i32 1, align 4
@ndes_init.ndes_ipc1_tmp = internal global [57 x i8] c"\0091)!\19\11\09\01:2*\22\1A\12\0A\02;3+#\1B\13\0B\03<4,$?7/'\1F\17\0F\07>6.&\1E\16\0E\06=5-%\1D\15\0D\05\1C\14\0C\04", align 1
@ndes_init.ndes_ipc2_tmp = internal global [49 x i8] c"\00\0E\11\0B\18\01\05\03\1C\0F\06\15\0A\17\13\0C\04\1A\08\10\07\1B\14\0D\02)4\1F%/7\1E(3-!0,1'8\225.*2$\1D ", align 1
@ndes_ipc1 = internal global [57 x i8] zeroinitializer, align 1
@ndes_ipc2 = internal global [49 x i8] zeroinitializer, align 1
@ndes_inp = dso_local global %struct.DATA zeroinitializer, align 4
@ndes_key = dso_local global %struct.DATA zeroinitializer, align 4
@ndes_newkey = dso_local global i32 0, align 4
@ndes_isw = dso_local global i32 0, align 4
@ndes_des.ip = internal global [65 x i8] c"\00:2*\22\1A\12\0A\02<4,$\1C\14\0C\04>6.&\1E\16\0E\06@80( \18\10\0891)!\19\11\09\01;3+#\1B\13\0B\03=5-%\1D\15\0D\05?7/'\1F\17\0F\07", align 1
@ndes_des.ipm = internal global [65 x i8] c"\00(\080\108\18@ '\07/\0F7\17?\1F&\06.\0E6\16>\1E%\05-\0D5\15=\1D$\04,\0C4\14<\1C#\03+\0B3\13;\1B\22\02*\0A2\12:\1A!\01)\091\119\19", align 1
@ndes_des.kns = internal global [17 x %struct.NDES_GREAT] zeroinitializer, align 4
@ndes_des.initflag = internal global i32 1, align 4
@ndes_bit = dso_local global [33 x i32] zeroinitializer, align 4
@ndes_icd = internal global %struct.DATA zeroinitializer, align 4
@ndes_cyfun.iet = internal global [49 x i32] [i32 0, i32 32, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 28, i32 29, i32 30, i32 31, i32 32, i32 1], align 4
@ndes_cyfun.ipp = internal global [33 x i32] [i32 0, i32 16, i32 7, i32 20, i32 21, i32 29, i32 12, i32 28, i32 17, i32 1, i32 15, i32 23, i32 26, i32 5, i32 18, i32 31, i32 10, i32 2, i32 8, i32 24, i32 14, i32 32, i32 27, i32 3, i32 9, i32 19, i32 13, i32 30, i32 6, i32 22, i32 11, i32 4, i32 25], align 4
@ndes_cyfun.is = internal global [16 x [4 x [9 x i32]]] [[4 x [9 x i32]] [[9 x i32] [i32 0, i32 14, i32 15, i32 10, i32 7, i32 2, i32 12, i32 4, i32 13], [9 x i32] [i32 0, i32 0, i32 3, i32 13, i32 13, i32 14, i32 10, i32 13, i32 1], [9 x i32] [i32 0, i32 4, i32 0, i32 13, i32 10, i32 4, i32 9, i32 1, i32 7], [9 x i32] [i32 0, i32 15, i32 13, i32 1, i32 3, i32 11, i32 4, i32 6, i32 2]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 4, i32 1, i32 0, i32 13, i32 12, i32 1, i32 11, i32 2], [9 x i32] [i32 0, i32 15, i32 13, i32 7, i32 8, i32 11, i32 15, i32 0, i32 15], [9 x i32] [i32 0, i32 1, i32 14, i32 6, i32 6, i32 2, i32 14, i32 4, i32 11], [9 x i32] [i32 0, i32 12, i32 8, i32 10, i32 15, i32 8, i32 3, i32 11, i32 1]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 13, i32 8, i32 9, i32 14, i32 4, i32 10, i32 2, i32 8], [9 x i32] [i32 0, i32 7, i32 4, i32 0, i32 11, i32 2, i32 4, i32 11, i32 13], [9 x i32] [i32 0, i32 14, i32 7, i32 4, i32 9, i32 1, i32 15, i32 11, i32 4], [9 x i32] [i32 0, i32 8, i32 10, i32 13, i32 0, i32 12, i32 2, i32 13, i32 14]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 1, i32 14, i32 14, i32 3, i32 1, i32 15, i32 14, i32 4], [9 x i32] [i32 0, i32 4, i32 7, i32 9, i32 5, i32 12, i32 2, i32 7, i32 8], [9 x i32] [i32 0, i32 8, i32 11, i32 9, i32 0, i32 11, i32 5, i32 13, i32 1], [9 x i32] [i32 0, i32 2, i32 1, i32 0, i32 6, i32 7, i32 12, i32 8, i32 7]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 2, i32 6, i32 6, i32 0, i32 7, i32 9, i32 15, i32 6], [9 x i32] [i32 0, i32 14, i32 15, i32 3, i32 6, i32 4, i32 7, i32 4, i32 10], [9 x i32] [i32 0, i32 13, i32 10, i32 8, i32 12, i32 10, i32 2, i32 12, i32 9], [9 x i32] [i32 0, i32 4, i32 3, i32 6, i32 10, i32 1, i32 9, i32 1, i32 4]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 15, i32 11, i32 3, i32 6, i32 10, i32 2, i32 0, i32 15], [9 x i32] [i32 0, i32 2, i32 2, i32 4, i32 15, i32 7, i32 12, i32 9, i32 3], [9 x i32] [i32 0, i32 6, i32 4, i32 15, i32 11, i32 13, i32 8, i32 3, i32 12], [9 x i32] [i32 0, i32 9, i32 15, i32 9, i32 1, i32 14, i32 5, i32 4, i32 10]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 11, i32 3, i32 15, i32 9, i32 11, i32 6, i32 8, i32 11], [9 x i32] [i32 0, i32 13, i32 8, i32 6, i32 0, i32 13, i32 9, i32 1, i32 7], [9 x i32] [i32 0, i32 2, i32 13, i32 3, i32 7, i32 7, i32 12, i32 7, i32 14], [9 x i32] [i32 0, i32 1, i32 4, i32 8, i32 13, i32 2, i32 15, i32 10, i32 8]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 8, i32 4, i32 5, i32 10, i32 6, i32 8, i32 13, i32 1], [9 x i32] [i32 0, i32 1, i32 14, i32 10, i32 3, i32 1, i32 5, i32 10, i32 4], [9 x i32] [i32 0, i32 11, i32 1, i32 0, i32 13, i32 8, i32 3, i32 14, i32 2], [9 x i32] [i32 0, i32 7, i32 2, i32 7, i32 8, i32 13, i32 10, i32 7, i32 13]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 3, i32 9, i32 1, i32 1, i32 8, i32 0, i32 3, i32 10], [9 x i32] [i32 0, i32 10, i32 12, i32 2, i32 4, i32 5, i32 6, i32 14, i32 12], [9 x i32] [i32 0, i32 15, i32 5, i32 11, i32 15, i32 15, i32 7, i32 10, i32 0], [9 x i32] [i32 0, i32 5, i32 11, i32 4, i32 9, i32 6, i32 11, i32 9, i32 15]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 10, i32 7, i32 13, i32 2, i32 5, i32 13, i32 12, i32 9], [9 x i32] [i32 0, i32 6, i32 0, i32 8, i32 7, i32 0, i32 1, i32 3, i32 5], [9 x i32] [i32 0, i32 12, i32 8, i32 1, i32 1, i32 9, i32 0, i32 15, i32 6], [9 x i32] [i32 0, i32 11, i32 6, i32 15, i32 4, i32 15, i32 14, i32 5, i32 12]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 6, i32 2, i32 12, i32 8, i32 3, i32 3, i32 9, i32 3], [9 x i32] [i32 0, i32 12, i32 1, i32 5, i32 2, i32 15, i32 13, i32 5, i32 6], [9 x i32] [i32 0, i32 9, i32 12, i32 2, i32 3, i32 12, i32 4, i32 6, i32 10], [9 x i32] [i32 0, i32 3, i32 7, i32 14, i32 5, i32 0, i32 1, i32 0, i32 9]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 12, i32 13, i32 7, i32 5, i32 15, i32 4, i32 7, i32 14], [9 x i32] [i32 0, i32 11, i32 10, i32 14, i32 12, i32 10, i32 14, i32 12, i32 11], [9 x i32] [i32 0, i32 7, i32 6, i32 12, i32 14, i32 5, i32 10, i32 8, i32 13], [9 x i32] [i32 0, i32 14, i32 12, i32 3, i32 11, i32 9, i32 7, i32 15, i32 0]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 5, i32 12, i32 11, i32 11, i32 13, i32 14, i32 5, i32 5], [9 x i32] [i32 0, i32 9, i32 6, i32 12, i32 1, i32 3, i32 0, i32 2, i32 0], [9 x i32] [i32 0, i32 3, i32 9, i32 5, i32 5, i32 6, i32 1, i32 0, i32 15], [9 x i32] [i32 0, i32 10, i32 0, i32 11, i32 12, i32 10, i32 6, i32 14, i32 3]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 9, i32 0, i32 4, i32 12, i32 0, i32 7, i32 10, i32 0], [9 x i32] [i32 0, i32 5, i32 9, i32 11, i32 10, i32 9, i32 11, i32 15, i32 14], [9 x i32] [i32 0, i32 10, i32 3, i32 10, i32 2, i32 3, i32 13, i32 5, i32 3], [9 x i32] [i32 0, i32 0, i32 5, i32 5, i32 7, i32 4, i32 0, i32 2, i32 5]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 0, i32 5, i32 2, i32 4, i32 14, i32 5, i32 6, i32 12], [9 x i32] [i32 0, i32 3, i32 11, i32 15, i32 14, i32 8, i32 3, i32 8, i32 9], [9 x i32] [i32 0, i32 5, i32 2, i32 14, i32 8, i32 0, i32 11, i32 9, i32 5], [9 x i32] [i32 0, i32 6, i32 14, i32 2, i32 2, i32 5, i32 8, i32 3, i32 6]], [4 x [9 x i32]] [[9 x i32] [i32 0, i32 7, i32 10, i32 8, i32 15, i32 9, i32 11, i32 1, i32 7], [9 x i32] [i32 0, i32 8, i32 5, i32 1, i32 9, i32 6, i32 8, i32 6, i32 2], [9 x i32] [i32 0, i32 0, i32 15, i32 7, i32 4, i32 14, i32 6, i32 2, i32 8], [9 x i32] [i32 0, i32 13, i32 9, i32 12, i32 14, i32 3, i32 13, i32 12, i32 11]]], align 4
@__const.ndes_cyfun.ibin = private unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 1
@ndes_out = dso_local global %struct.DATA zeroinitializer, align 4
@prime_seed = dso_local global i32 0, align 4
@prime_x = dso_local global i32 0, align 4
@prime_y = dso_local global i32 0, align 4
@prime_result = dso_local global i32 0, align 4
@rad2deg_X = dso_local global float 0.000000e+00, align 4
@rad2deg_Y = dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [13 x i8] c"../absvdi2.c\00", align 1
@__func__.__absvdi2 = private unnamed_addr constant [10 x i8] c"__absvdi2\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"../absvsi2.c\00", align 1
@__func__.__absvsi2 = private unnamed_addr constant [10 x i8] c"__absvsi2\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"../addvdi3.c\00", align 1
@__func__.__addvdi3 = private unnamed_addr constant [10 x i8] c"__addvdi3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"../addvsi3.c\00", align 1
@__func__.__addvsi3 = private unnamed_addr constant [10 x i8] c"__addvsi3\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"../mulvdi3.c\00", align 1
@__func__.__mulvdi3 = private unnamed_addr constant [10 x i8] c"__mulvdi3\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"../mulvsi3.c\00", align 1
@__func__.__mulvsi3 = private unnamed_addr constant [10 x i8] c"__mulvsi3\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"../subvdi3.c\00", align 1
@__func__.__subvdi3 = private unnamed_addr constant [10 x i8] c"__subvdi3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"../subvsi3.c\00", align 1
@__func__.__subvsi3 = private unnamed_addr constant [10 x i8] c"__subvsi3\00", align 1

@__aeabi_llsl = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashldi3 to void (...)*)
@__aeabi_lasr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__ashrdi3 to void (...)*)
@__aeabi_idiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__divsi3 to void (...)*)
@__aeabi_llsr = dso_local alias void (...), bitcast (i64 (i64, i32)* @__lshrdi3 to void (...)*)
@__aeabi_uidiv = dso_local alias void (...), bitcast (i32 (i32, i32)* @__udivsi3 to void (...)*)

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @bs() #0 !dbg !147 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #5, !dbg !151
  ret i32 undef, !dbg !152
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !153 {
entry:
  br label %while.cond, !dbg !154

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !155
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !155
  %low.0 = phi i32 [ 0, %entry ], [ %low.2, %if.end10 ], !dbg !156
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !157
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !154

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !158
  %shr = ashr i32 %add, 1, !dbg !159
  %key = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !160
  %0 = load i32, i32* %key, align 4, !dbg !160
  %cmp1 = icmp eq i32 %0, %x, !dbg !161
  br i1 %cmp1, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !163
  %value = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 1, !dbg !164
  %1 = load i32, i32* %value, align 4, !dbg !164
  br label %if.end10, !dbg !165

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !166
  %2 = load i32, i32* %key4, align 4, !dbg !166
  %cmp5 = icmp sgt i32 %2, %x, !dbg !167
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !168

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !169
  br label %if.end, !dbg !170

if.else8:                                         ; preds = %if.else
  %add9 = add nsw i32 %shr, 1, !dbg !171
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !155
  %low.1 = phi i32 [ %low.0, %if.then6 ], [ %add9, %if.else8 ], !dbg !155
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !155
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !155
  %low.2 = phi i32 [ %low.0, %if.then ], [ %low.1, %if.end ], !dbg !156
  br label %while.cond, !dbg !154, !llvm.loop !172

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !175
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover_init() #0 !dbg !176 {
entry:
  store volatile i32 0, i32* @cover_cnt, align 4, !dbg !178
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_return() #0 !dbg !180 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !181
  %sub = add nsw i32 %0, -180, !dbg !182
  ret i32 %sub, !dbg !183
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %c) #0 !dbg !184 {
entry:
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !186

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !186, !llvm.loop !188

for.end:                                          ; preds = %for.cond
  %0 = add i32 %c, -120, !dbg !185
  ret i32 %0, !dbg !189
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %c) #0 !dbg !190 {
entry:
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !192

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !192, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  %0 = add i32 %c, -50, !dbg !191
  ret i32 %0, !dbg !195
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %c) #0 !dbg !196 {
entry:
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !198

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !198, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  %0 = add i32 %c, -10, !dbg !197
  ret i32 %0, !dbg !201
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover_main() #0 !dbg !202 {
entry:
  %0 = load volatile i32, i32* @cover_cnt, align 4, !dbg !203
  %call = call arm_aapcs_vfpcc i32 @cover_swi10(i32 noundef %0) #5, !dbg !204
  store volatile i32 %call, i32* @cover_cnt, align 4, !dbg !205
  %1 = load volatile i32, i32* @cover_cnt, align 4, !dbg !206
  %call1 = call arm_aapcs_vfpcc i32 @cover_swi50(i32 noundef %1) #5, !dbg !207
  store volatile i32 %call1, i32* @cover_cnt, align 4, !dbg !208
  %2 = load volatile i32, i32* @cover_cnt, align 4, !dbg !209
  %call2 = call arm_aapcs_vfpcc i32 @cover_swi120(i32 noundef %2) #5, !dbg !210
  store volatile i32 %call2, i32* @cover_cnt, align 4, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @cover(i8* noundef %n) #0 !dbg !213 {
entry:
  call arm_aapcs_vfpcc void @cover_init() #5, !dbg !214
  call arm_aapcs_vfpcc void @cover_main() #5, !dbg !215
  %call = call arm_aapcs_vfpcc i32 @cover_return() #5, !dbg !216
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i16 @icrc1(i16 noundef zeroext %crc, i8 noundef zeroext %onech) #0 !dbg !218 {
entry:
  %conv1 = zext i8 %onech to i16, !dbg !220
  %shl = shl nuw i16 %conv1, 8, !dbg !221
  %xor = xor i16 %shl, %crc, !dbg !222
  br label %for.cond, !dbg !223

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !224
  %ans.0 = phi i16 [ %xor, %entry ], [ %ans.1, %for.inc ], !dbg !224
  %exitcond.not = icmp eq i32 %i.0, 8, !dbg !225
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !226

for.body:                                         ; preds = %for.cond
  %tobool.not = icmp sgt i16 %ans.0, -1, !dbg !227
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !228

if.then:                                          ; preds = %for.body
  %shl6 = shl i16 %ans.0, 1, !dbg !229
  %0 = xor i16 %shl6, 4129, !dbg !230
  br label %if.end, !dbg !231

if.else:                                          ; preds = %for.body
  %shl12 = shl i16 %ans.0, 1, !dbg !232
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ans.1 = phi i16 [ %0, %if.then ], [ %shl12, %if.else ], !dbg !224
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.0, 1, !dbg !234
  br label %for.cond, !dbg !226, !llvm.loop !235

for.end:                                          ; preds = %for.cond
  ret i16 %ans.0, !dbg !236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext %crc, i32 noundef %len, i16 noundef signext %jinit, i32 noundef %jrev) #0 !dbg !237 {
entry:
  %0 = load i16, i16* @icrc.init, align 2, !dbg !238
  %tobool.not = icmp eq i16 %0, 0, !dbg !238
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  store i16 1, i16* @icrc.init, align 2, !dbg !240
  br label %for.cond, !dbg !241

for.cond:                                         ; preds = %for.inc, %if.then
  %j.0 = phi i16 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !242
  %cmp = icmp ult i16 %j.0, 256, !dbg !243
  br i1 %cmp, label %for.body, label %for.end, !dbg !244

for.body:                                         ; preds = %for.cond
  %shl = shl i16 %j.0, 8, !dbg !245
  %call = call arm_aapcs_vfpcc zeroext i16 @icrc1(i16 noundef zeroext %shl, i8 noundef zeroext 0) #5, !dbg !246
  %idxprom = zext i16 %j.0 to i32, !dbg !247
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i32 0, i32 %idxprom, !dbg !247
  store i16 %call, i16* %arrayidx, align 2, !dbg !248
  %1 = and i16 %j.0, 15, !dbg !249
  %and = zext i16 %1 to i32, !dbg !249
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i32 0, i32 %and, !dbg !250
  %2 = load i8, i8* %arrayidx5, align 1, !dbg !250
  %shl7 = shl i8 %2, 4, !dbg !251
  %3 = lshr i16 %j.0, 4, !dbg !252
  %4 = zext i16 %3 to i32, !dbg !252
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i32 0, i32 %4, !dbg !253
  %5 = load i8, i8* %arrayidx9, align 1, !dbg !253
  %or = or i8 %shl7, %5, !dbg !254
  %idxprom12 = zext i16 %j.0 to i32, !dbg !255
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom12, !dbg !255
  store i8 %or, i8* %arrayidx13, align 1, !dbg !256
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i16 %j.0, 1, !dbg !258
  br label %for.cond, !dbg !244, !llvm.loop !259

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !260

if.end:                                           ; preds = %for.end, %entry
  %cmp15 = icmp sgt i16 %jinit, -1, !dbg !261
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !262

if.then17:                                        ; preds = %if.end
  %6 = and i16 %jinit, 255, !dbg !263
  %7 = shl i16 %jinit, 8, !dbg !264
  %or232 = or i16 %6, %7, !dbg !265
  br label %if.end44, !dbg !266

if.else:                                          ; preds = %if.end
  %cmp25 = icmp slt i32 %jrev, 0, !dbg !267
  br i1 %cmp25, label %if.then27, label %if.end43, !dbg !268

if.then27:                                        ; preds = %if.else
  %8 = lshr i16 %crc, 8, !dbg !269
  %conv30 = zext i16 %8 to i32, !dbg !269
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %conv30, !dbg !270
  %9 = load i8, i8* %arrayidx32, align 1, !dbg !270
  %conv33 = zext i8 %9 to i16, !dbg !270
  %10 = and i16 %crc, 255, !dbg !271
  %idxprom37 = zext i16 %10 to i32, !dbg !271
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom37, !dbg !271
  %11 = load i8, i8* %arrayidx38, align 1, !dbg !271
  %conv39 = zext i8 %11 to i16, !dbg !271
  %shl40 = shl nuw i16 %conv39, 8, !dbg !272
  %or41 = or i16 %shl40, %conv33, !dbg !273
  br label %if.end43, !dbg !274

if.end43:                                         ; preds = %if.then27, %if.else
  %cword.0 = phi i16 [ %or41, %if.then27 ], [ %crc, %if.else ], !dbg !242
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  %cword.1 = phi i16 [ %or232, %if.then17 ], [ %cword.0, %if.end43 ], !dbg !242
  br label %for.cond45, !dbg !275

for.cond45:                                       ; preds = %for.inc84, %if.end44
  %j.1 = phi i16 [ 1, %if.end44 ], [ %inc85, %for.inc84 ], !dbg !242
  %cword.2 = phi i16 [ %cword.1, %if.end44 ], [ %xor821, %for.inc84 ], !dbg !242
  %conv46 = zext i16 %j.1 to i32, !dbg !276
  %cmp47.not = icmp ugt i32 %conv46, %len, !dbg !277
  br i1 %cmp47.not, label %for.end86, label %for.body49, !dbg !278

for.body49:                                       ; preds = %for.cond45
  %cmp50 = icmp slt i32 %jrev, 0, !dbg !279
  br i1 %cmp50, label %if.then52, label %if.else63, !dbg !280

if.then52:                                        ; preds = %for.body49
  %idxprom53 = zext i16 %j.1 to i32, !dbg !281
  %arrayidx54 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %idxprom53, !dbg !281
  %12 = load i8, i8* %arrayidx54, align 1, !dbg !281
  %idxprom55 = zext i8 %12 to i32, !dbg !282
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom55, !dbg !282
  %13 = load i8, i8* %arrayidx56, align 1, !dbg !282
  %conv57 = zext i8 %13 to i16, !dbg !282
  %14 = lshr i16 %cword.2, 8, !dbg !283
  %xor = xor i16 %14, %conv57, !dbg !284
  br label %if.end73, !dbg !285

if.else63:                                        ; preds = %for.body49
  %idxprom64 = zext i16 %j.1 to i32, !dbg !286
  %arrayidx65 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %idxprom64, !dbg !286
  %15 = load i8, i8* %arrayidx65, align 1, !dbg !286
  %conv66 = zext i8 %15 to i16, !dbg !286
  %16 = lshr i16 %cword.2, 8, !dbg !287
  %xor71 = xor i16 %16, %conv66, !dbg !288
  br label %if.end73

if.end73:                                         ; preds = %if.else63, %if.then52
  %tmp1.0 = phi i16 [ %xor, %if.then52 ], [ %xor71, %if.else63 ], !dbg !242
  br label %for.inc84, !dbg !289

for.inc84:                                        ; preds = %if.end73
  %idxprom74 = zext i16 %tmp1.0 to i32, !dbg !290
  %arrayidx75 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i32 0, i32 %idxprom74, !dbg !290
  %17 = load i16, i16* %arrayidx75, align 2, !dbg !290
  %18 = shl i16 %cword.2, 8, !dbg !291
  %xor821 = xor i16 %17, %18, !dbg !292
  %inc85 = add i16 %j.1, 1, !dbg !293
  br label %for.cond45, !dbg !278, !llvm.loop !294

for.end86:                                        ; preds = %for.cond45
  %cmp87 = icmp sgt i32 %jrev, -1, !dbg !295
  br i1 %cmp87, label %if.then89, label %if.else90, !dbg !296

if.then89:                                        ; preds = %for.end86
  br label %if.end106, !dbg !297

if.else90:                                        ; preds = %for.end86
  %19 = lshr i16 %cword.2, 8, !dbg !298
  %conv93 = zext i16 %19 to i32, !dbg !298
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %conv93, !dbg !299
  %20 = load i8, i8* %arrayidx95, align 1, !dbg !299
  %conv96 = zext i8 %20 to i16, !dbg !299
  %21 = and i16 %cword.2, 255, !dbg !300
  %idxprom100 = zext i16 %21 to i32, !dbg !300
  %arrayidx101 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom100, !dbg !300
  %22 = load i8, i8* %arrayidx101, align 1, !dbg !300
  %conv102 = zext i8 %22 to i16, !dbg !300
  %shl103 = shl nuw i16 %conv102, 8, !dbg !301
  %or104 = or i16 %shl103, %conv96, !dbg !302
  br label %if.end106

if.end106:                                        ; preds = %if.else90, %if.then89
  %tmp2.0 = phi i16 [ %cword.2, %if.then89 ], [ %or104, %if.else90 ], !dbg !242
  ret i16 %tmp2.0, !dbg !303
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @crc() #0 !dbg !304 {
entry:
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i32 0, i32 41), align 1, !dbg !305
  %call = call arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext 0, i32 noundef 40, i16 noundef signext 0, i32 noundef 1) #5, !dbg !306
  %0 = lshr i16 %call, 8, !dbg !307
  %conv1 = trunc i16 %0 to i8, !dbg !307
  store i8 %conv1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i32 0, i32 41), align 1, !dbg !308
  %conv5 = trunc i16 %call to i8, !dbg !309
  store i8 %conv5, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i32 0, i32 42), align 1, !dbg !310
  %call9 = call arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext %call, i32 noundef 42, i16 noundef signext 0, i32 noundef 1) #5, !dbg !311
  ret i32 0, !dbg !312
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @deg2rad_init() #0 !dbg !313 {
entry:
  store float 0.000000e+00, float* @deg2rad_X, align 4, !dbg !315
  store float 0.000000e+00, float* @deg2rad_Y, align 4, !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @deg2rad_return() #0 !dbg !318 {
entry:
  %0 = load float, float* @deg2rad_Y, align 4, !dbg !319
  %conv = fptosi float %0 to i32, !dbg !319
  %cmp = icmp eq i32 %conv, 1133, !dbg !320
  br i1 %cmp, label %if.then, label %if.else, !dbg !321

if.then:                                          ; preds = %entry
  br label %return, !dbg !322

if.else:                                          ; preds = %entry
  br label %return, !dbg !323

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !324
  ret i32 %retval.0, !dbg !325
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @deg2rad_main() #0 !dbg !326 {
entry:
  br label %for.cond, !dbg !327

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi float [ 0.000000e+00, %entry ], [ %add1, %for.inc ], !dbg !328
  store float %storemerge, float* @deg2rad_X, align 4, !dbg !328
  %cmp = fcmp ugt float %storemerge, 3.600000e+02, !dbg !329
  br i1 %cmp, label %for.end, label %for.body, !dbg !330

for.body:                                         ; preds = %for.cond
  %0 = load float, float* @deg2rad_X, align 4, !dbg !331
  %mul = fmul float %0, 0x40091EB860000000, !dbg !331
  %div = fdiv float %mul, 1.800000e+02, !dbg !331
  %1 = load float, float* @deg2rad_Y, align 4, !dbg !332
  %add = fadd float %1, %div, !dbg !332
  store float %add, float* @deg2rad_Y, align 4, !dbg !332
  br label %for.inc, !dbg !333

for.inc:                                          ; preds = %for.body
  %2 = load float, float* @deg2rad_X, align 4, !dbg !334
  %add1 = fadd float %2, 1.000000e+00, !dbg !334
  br label %for.cond, !dbg !330, !llvm.loop !335

for.end:                                          ; preds = %for.cond
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @deg2rad_entry() #0 !dbg !337 {
entry:
  call arm_aapcs_vfpcc void @deg2rad_init() #5, !dbg !338
  call arm_aapcs_vfpcc void @deg2rad_main() #5, !dbg !339
  %call = call arm_aapcs_vfpcc i32 @deg2rad_return() #5, !dbg !340
  ret i32 %call, !dbg !341
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @expint() #0 !dbg !342 {
entry:
  %call = call arm_aapcs_vfpcc i32 @expint_expint(i32 noundef 50, i32 noundef 1) #5, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @expint_expint(i32 noundef %n, i32 noundef %x) #0 !dbg !346 {
entry:
  %sub = add nsw i32 %n, -1, !dbg !347
  %cmp = icmp sgt i32 %x, 1, !dbg !348
  br i1 %cmp, label %if.then, label %if.else, !dbg !349

if.then:                                          ; preds = %entry
  %add = add nsw i32 %x, %n, !dbg !350
  br label %for.cond, !dbg !351

for.cond:                                         ; preds = %for.inc, %if.then
  %d.0 = phi i32 [ 30000000, %if.then ], [ %mul7, %for.inc ], !dbg !352
  %c.0 = phi i32 [ 2000000, %if.then ], [ %add8, %for.inc ], !dbg !352
  %b.0 = phi i32 [ %add, %if.then ], [ %add4, %for.inc ], !dbg !352
  %h.0 = phi i32 [ 30000000, %if.then ], [ %mul10, %for.inc ], !dbg !352
  %i.0 = phi i32 [ 1, %if.then ], [ %inc, %for.inc ], !dbg !352
  %exitcond1.not = icmp eq i32 %i.0, 101, !dbg !353
  br i1 %exitcond1.not, label %for.end, label %for.body, !dbg !354

for.body:                                         ; preds = %for.cond
  %add3 = add nsw i32 %sub, %i.0, !dbg !355
  %0 = mul i32 %i.0, %add3, !dbg !356
  %mul = sub i32 0, %0, !dbg !356
  %add4 = add nsw i32 %b.0, 2, !dbg !357
  %mul5 = mul nsw i32 %d.0, %mul, !dbg !358
  %add6 = add nsw i32 %mul5, %add4, !dbg !359
  %mul7 = mul nsw i32 %add6, 10, !dbg !360
  %div = sdiv i32 %mul, %c.0, !dbg !361
  %add8 = add nsw i32 %add4, %div, !dbg !362
  %mul9 = mul nsw i32 %add8, %mul7, !dbg !363
  %mul10 = mul nsw i32 %h.0, %mul9, !dbg !364
  %cmp11 = icmp slt i32 %mul9, 10000, !dbg !365
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !366

if.then12:                                        ; preds = %for.body
  %1 = mul i32 %mul10, %x, !dbg !367
  %mul14 = sub i32 0, %1, !dbg !367
  br label %return, !dbg !368

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !369

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.0, 1, !dbg !370
  br label %for.cond, !dbg !354, !llvm.loop !371

for.end:                                          ; preds = %for.cond
  br label %if.end43, !dbg !372

if.else:                                          ; preds = %entry
  %cmp15.not = icmp eq i32 %sub, 0, !dbg !373
  %cond = select i1 %cmp15.not, i32 1000, i32 2, !dbg !374
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 1), !dbg !375
  %2 = add nsw i32 %smax, -1, !dbg !375
  %3 = mul i32 %2, %n, !dbg !375
  %4 = zext i32 %2 to i33, !dbg !375
  %5 = add nsw i32 %smax, -2, !dbg !375
  %6 = zext i32 %5 to i33, !dbg !375
  %7 = mul i33 %4, %6, !dbg !375
  %8 = lshr i33 %7, 1, !dbg !375
  %9 = trunc i33 %8 to i32, !dbg !375
  %10 = add i32 %3, %9, !dbg !375
  %11 = add i32 %10, 255, !dbg !375
  br label %for.cond16, !dbg !375

for.cond16:                                       ; preds = %for.inc40, %if.else
  %fact.0.neg = phi i32 [ -1, %if.else ], [ %12, %for.inc40 ], !dbg !352
  %fact.0 = phi i32 [ 1, %if.else ], [ %.neg, %for.inc40 ], !dbg !352
  %i.1 = phi i32 [ 1, %if.else ], [ %inc41, %for.inc40 ], !dbg !352
  %ans.0 = phi i32 [ %cond, %if.else ], [ %add39, %for.inc40 ], !dbg !352
  %exitcond.not = icmp eq i32 %i.1, 101, !dbg !376
  br i1 %exitcond.not, label %for.end42, label %for.body18, !dbg !377

for.body18:                                       ; preds = %for.cond16
  %div202 = sdiv i32 %x, %i.1, !dbg !378
  %.neg = mul i32 %fact.0.neg, %div202, !dbg !379
  %12 = mul i32 %div202, %fact.0, !dbg !379
  %cmp22.not = icmp eq i32 %i.1, %sub, !dbg !380
  br i1 %cmp22.not, label %if.else27, label %if.then23, !dbg !381

if.then23:                                        ; preds = %for.body18
  %sub25 = sub nsw i32 %i.1, %sub, !dbg !382
  %div263 = sdiv i32 %.neg, %sub25, !dbg !383
  %div26 = sub nsw i32 0, %div263, !dbg !383
  br label %if.end38, !dbg !384

if.else27:                                        ; preds = %for.body18
  br label %for.cond28, !dbg !385

for.cond28:                                       ; preds = %for.inc33, %if.else27
  br i1 false, label %for.body30, label %for.end35, !dbg !386

for.body30:                                       ; preds = %for.cond28
  br label %for.inc33, !dbg !387

for.inc33:                                        ; preds = %for.body30
  br label %for.cond28, !dbg !386, !llvm.loop !388

for.end35:                                        ; preds = %for.cond28
  %call = call arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #5, !dbg !390
  %mul36 = mul nsw i32 %.neg, %call, !dbg !391
  %add37 = add nsw i32 %11, %mul36, !dbg !392
  br label %if.end38

if.end38:                                         ; preds = %for.end35, %if.then23
  %del.0 = phi i32 [ %div26, %if.then23 ], [ %add37, %for.end35 ], !dbg !352
  br label %for.inc40, !dbg !393

for.inc40:                                        ; preds = %if.end38
  %add39 = add nsw i32 %ans.0, %del.0, !dbg !394
  %inc41 = add nuw nsw i32 %i.1, 1, !dbg !395
  br label %for.cond16, !dbg !377, !llvm.loop !396

for.end42:                                        ; preds = %for.cond16
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end
  %ans.1 = phi i32 [ undef, %for.end ], [ %ans.0, %for.end42 ]
  br label %return, !dbg !397

return:                                           ; preds = %if.end43, %if.then12
  %retval.0 = phi i32 [ %mul14, %if.then12 ], [ %ans.1, %if.end43 ], !dbg !352
  ret i32 %retval.0, !dbg !398
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #0 !dbg !399 {
entry:
  %mul11 = add i32 %x, 8, !dbg !400
  %add = mul i32 %mul11, %x, !dbg !400
  %sub = sub nsw i32 4, %x, !dbg !401
  %shl = shl i32 %add, %sub, !dbg !402
  ret i32 %shl, !dbg !403
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @fdct_fdct(i16* noundef %blk, i32 noundef %lx) #0 !dbg !404 {
entry:
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !407
  %block.0 = phi i16* [ %blk, %entry ], [ %add.ptr, %for.inc ], !dbg !407
  %exitcond.not = icmp eq i32 %i.0, 8, !dbg !408
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !409

for.body:                                         ; preds = %for.cond
  %0 = load i16, i16* %block.0, align 2, !dbg !410
  %conv = sext i16 %0 to i32, !dbg !410
  %arrayidx1 = getelementptr inbounds i16, i16* %block.0, i32 7, !dbg !411
  %1 = load i16, i16* %arrayidx1, align 2, !dbg !411
  %conv2 = sext i16 %1 to i32, !dbg !411
  %add = add nsw i32 %conv, %conv2, !dbg !412
  %conv4 = sext i16 %0 to i32, !dbg !413
  %conv6 = sext i16 %1 to i32, !dbg !414
  %sub = sub nsw i32 %conv4, %conv6, !dbg !415
  %arrayidx7 = getelementptr inbounds i16, i16* %block.0, i32 1, !dbg !416
  %2 = load i16, i16* %arrayidx7, align 2, !dbg !416
  %conv8 = sext i16 %2 to i32, !dbg !416
  %arrayidx9 = getelementptr inbounds i16, i16* %block.0, i32 6, !dbg !417
  %3 = load i16, i16* %arrayidx9, align 2, !dbg !417
  %conv10 = sext i16 %3 to i32, !dbg !417
  %add11 = add nsw i32 %conv8, %conv10, !dbg !418
  %arrayidx12 = getelementptr inbounds i16, i16* %block.0, i32 1, !dbg !419
  %4 = load i16, i16* %arrayidx12, align 2, !dbg !419
  %conv13 = sext i16 %4 to i32, !dbg !419
  %arrayidx14 = getelementptr inbounds i16, i16* %block.0, i32 6, !dbg !420
  %5 = load i16, i16* %arrayidx14, align 2, !dbg !420
  %conv15 = sext i16 %5 to i32, !dbg !420
  %sub16 = sub nsw i32 %conv13, %conv15, !dbg !421
  %arrayidx17 = getelementptr inbounds i16, i16* %block.0, i32 2, !dbg !422
  %6 = load i16, i16* %arrayidx17, align 2, !dbg !422
  %conv18 = sext i16 %6 to i32, !dbg !422
  %arrayidx19 = getelementptr inbounds i16, i16* %block.0, i32 5, !dbg !423
  %7 = load i16, i16* %arrayidx19, align 2, !dbg !423
  %conv20 = sext i16 %7 to i32, !dbg !423
  %add21 = add nsw i32 %conv18, %conv20, !dbg !424
  %arrayidx22 = getelementptr inbounds i16, i16* %block.0, i32 2, !dbg !425
  %8 = load i16, i16* %arrayidx22, align 2, !dbg !425
  %conv23 = sext i16 %8 to i32, !dbg !425
  %arrayidx24 = getelementptr inbounds i16, i16* %block.0, i32 5, !dbg !426
  %9 = load i16, i16* %arrayidx24, align 2, !dbg !426
  %conv25 = sext i16 %9 to i32, !dbg !426
  %sub26 = sub nsw i32 %conv23, %conv25, !dbg !427
  %arrayidx27 = getelementptr inbounds i16, i16* %block.0, i32 3, !dbg !428
  %10 = load i16, i16* %arrayidx27, align 2, !dbg !428
  %conv28 = sext i16 %10 to i32, !dbg !428
  %arrayidx29 = getelementptr inbounds i16, i16* %block.0, i32 4, !dbg !429
  %11 = load i16, i16* %arrayidx29, align 2, !dbg !429
  %conv30 = sext i16 %11 to i32, !dbg !429
  %add31 = add nsw i32 %conv28, %conv30, !dbg !430
  %arrayidx32 = getelementptr inbounds i16, i16* %block.0, i32 3, !dbg !431
  %12 = load i16, i16* %arrayidx32, align 2, !dbg !431
  %conv33 = sext i16 %12 to i32, !dbg !431
  %arrayidx34 = getelementptr inbounds i16, i16* %block.0, i32 4, !dbg !432
  %13 = load i16, i16* %arrayidx34, align 2, !dbg !432
  %conv35 = sext i16 %13 to i32, !dbg !432
  %sub36 = sub nsw i32 %conv33, %conv35, !dbg !433
  %add37 = add nsw i32 %add, %add31, !dbg !434
  %sub38 = sub nsw i32 %add, %add31, !dbg !435
  %add39 = add nsw i32 %add11, %add21, !dbg !436
  %sub40 = sub nsw i32 %add11, %add21, !dbg !437
  %add41 = add nsw i32 %add37, %add39, !dbg !438
  %add41.tr = trunc i32 %add41 to i16, !dbg !439
  %conv42 = shl i16 %add41.tr, 2, !dbg !439
  store i16 %conv42, i16* %block.0, align 2, !dbg !440
  %sub44 = sub nsw i32 %add37, %add39, !dbg !441
  %sub44.tr = trunc i32 %sub44 to i16, !dbg !442
  %conv46 = shl i16 %sub44.tr, 2, !dbg !442
  %arrayidx47 = getelementptr inbounds i16, i16* %block.0, i32 4, !dbg !443
  store i16 %conv46, i16* %arrayidx47, align 2, !dbg !444
  %add48 = add nsw i32 %sub40, %sub38, !dbg !445
  %mul = mul nsw i32 %add48, 4433, !dbg !446
  %mul49 = mul nsw i32 %sub38, 6270, !dbg !447
  %add50 = add nsw i32 %mul, %mul49, !dbg !448
  %14 = lshr i32 %add50, 11, !dbg !449
  %conv51 = trunc i32 %14 to i16, !dbg !450
  %arrayidx52 = getelementptr inbounds i16, i16* %block.0, i32 2, !dbg !451
  store i16 %conv51, i16* %arrayidx52, align 2, !dbg !452
  %mul53 = mul nsw i32 %sub40, -15137, !dbg !453
  %add54 = add nsw i32 %mul, %mul53, !dbg !454
  %15 = lshr i32 %add54, 11, !dbg !455
  %conv56 = trunc i32 %15 to i16, !dbg !456
  %arrayidx57 = getelementptr inbounds i16, i16* %block.0, i32 6, !dbg !457
  store i16 %conv56, i16* %arrayidx57, align 2, !dbg !458
  %add58 = add nsw i32 %sub36, %sub, !dbg !459
  %add59 = add nsw i32 %sub26, %sub16, !dbg !460
  %add60 = add nsw i32 %sub36, %sub16, !dbg !461
  %add61 = add nsw i32 %sub26, %sub, !dbg !462
  %add62 = add nsw i32 %add60, %add61, !dbg !463
  %mul63 = mul nsw i32 %add62, 9633, !dbg !464
  %mul64 = mul nsw i32 %sub36, 2446, !dbg !465
  %mul65 = mul nsw i32 %sub26, 16819, !dbg !466
  %mul66 = mul nsw i32 %sub16, 25172, !dbg !467
  %mul67 = mul nsw i32 %sub, 12299, !dbg !468
  %mul68 = mul nsw i32 %add58, -7373, !dbg !469
  %mul69 = mul nsw i32 %add59, -20995, !dbg !470
  %mul70 = mul nsw i32 %add60, -16069, !dbg !471
  %mul71 = mul nsw i32 %add61, -3196, !dbg !472
  %add72 = add nsw i32 %mul70, %mul63, !dbg !473
  %add73 = add nsw i32 %mul71, %mul63, !dbg !474
  %add74 = add nsw i32 %mul64, %mul68, !dbg !475
  %add75 = add nsw i32 %add74, %add72, !dbg !476
  %16 = lshr i32 %add75, 11, !dbg !477
  %conv77 = trunc i32 %16 to i16, !dbg !478
  %arrayidx78 = getelementptr inbounds i16, i16* %block.0, i32 7, !dbg !479
  store i16 %conv77, i16* %arrayidx78, align 2, !dbg !480
  %add79 = add nsw i32 %mul65, %mul69, !dbg !481
  %add80 = add nsw i32 %add79, %add73, !dbg !482
  %17 = lshr i32 %add80, 11, !dbg !483
  %conv82 = trunc i32 %17 to i16, !dbg !484
  %arrayidx83 = getelementptr inbounds i16, i16* %block.0, i32 5, !dbg !485
  store i16 %conv82, i16* %arrayidx83, align 2, !dbg !486
  %add84 = add nsw i32 %mul66, %mul69, !dbg !487
  %add85 = add nsw i32 %add84, %add72, !dbg !488
  %18 = lshr i32 %add85, 11, !dbg !489
  %conv87 = trunc i32 %18 to i16, !dbg !490
  %arrayidx88 = getelementptr inbounds i16, i16* %block.0, i32 3, !dbg !491
  store i16 %conv87, i16* %arrayidx88, align 2, !dbg !492
  %add89 = add nsw i32 %mul67, %mul68, !dbg !493
  %add90 = add nsw i32 %add89, %add73, !dbg !494
  %19 = lshr i32 %add90, 11, !dbg !495
  %conv92 = trunc i32 %19 to i16, !dbg !496
  %arrayidx93 = getelementptr inbounds i16, i16* %block.0, i32 1, !dbg !497
  store i16 %conv92, i16* %arrayidx93, align 2, !dbg !498
  br label %for.inc, !dbg !499

for.inc:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i16, i16* %block.0, i32 %lx, !dbg !500
  %inc = add nuw nsw i32 %i.0, 1, !dbg !501
  br label %for.cond, !dbg !409, !llvm.loop !502

for.end:                                          ; preds = %for.cond
  br label %for.cond94, !dbg !503

for.cond94:                                       ; preds = %for.inc216, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc217, %for.inc216 ], !dbg !407
  %block.1 = phi i16* [ %blk, %for.end ], [ %incdec.ptr, %for.inc216 ], !dbg !407
  %exitcond1.not = icmp eq i32 %i.1, 8, !dbg !504
  br i1 %exitcond1.not, label %for.end218, label %for.body97, !dbg !505

for.body97:                                       ; preds = %for.cond94
  %20 = load i16, i16* %block.1, align 2, !dbg !506
  %conv99 = sext i16 %20 to i32, !dbg !506
  %mul100 = mul nsw i32 %lx, 7, !dbg !507
  %arrayidx101 = getelementptr inbounds i16, i16* %block.1, i32 %mul100, !dbg !508
  %21 = load i16, i16* %arrayidx101, align 2, !dbg !508
  %conv102 = sext i16 %21 to i32, !dbg !508
  %add103 = add nsw i32 %conv99, %conv102, !dbg !509
  %22 = load i16, i16* %block.1, align 2, !dbg !510
  %conv105 = sext i16 %22 to i32, !dbg !510
  %mul106 = mul nsw i32 %lx, 7, !dbg !511
  %arrayidx107 = getelementptr inbounds i16, i16* %block.1, i32 %mul106, !dbg !512
  %23 = load i16, i16* %arrayidx107, align 2, !dbg !512
  %conv108 = sext i16 %23 to i32, !dbg !512
  %sub109 = sub nsw i32 %conv105, %conv108, !dbg !513
  %arrayidx110 = getelementptr inbounds i16, i16* %block.1, i32 %lx, !dbg !514
  %24 = load i16, i16* %arrayidx110, align 2, !dbg !514
  %conv111 = sext i16 %24 to i32, !dbg !514
  %mul112 = mul nsw i32 %lx, 6, !dbg !515
  %arrayidx113 = getelementptr inbounds i16, i16* %block.1, i32 %mul112, !dbg !516
  %25 = load i16, i16* %arrayidx113, align 2, !dbg !516
  %conv114 = sext i16 %25 to i32, !dbg !516
  %add115 = add nsw i32 %conv111, %conv114, !dbg !517
  %arrayidx116 = getelementptr inbounds i16, i16* %block.1, i32 %lx, !dbg !518
  %26 = load i16, i16* %arrayidx116, align 2, !dbg !518
  %conv117 = sext i16 %26 to i32, !dbg !518
  %mul118 = mul nsw i32 %lx, 6, !dbg !519
  %arrayidx119 = getelementptr inbounds i16, i16* %block.1, i32 %mul118, !dbg !520
  %27 = load i16, i16* %arrayidx119, align 2, !dbg !520
  %conv120 = sext i16 %27 to i32, !dbg !520
  %sub121 = sub nsw i32 %conv117, %conv120, !dbg !521
  %mul122 = shl nsw i32 %lx, 1, !dbg !522
  %arrayidx123 = getelementptr inbounds i16, i16* %block.1, i32 %mul122, !dbg !523
  %28 = load i16, i16* %arrayidx123, align 2, !dbg !523
  %conv124 = sext i16 %28 to i32, !dbg !523
  %mul125 = mul nsw i32 %lx, 5, !dbg !524
  %arrayidx126 = getelementptr inbounds i16, i16* %block.1, i32 %mul125, !dbg !525
  %29 = load i16, i16* %arrayidx126, align 2, !dbg !525
  %conv127 = sext i16 %29 to i32, !dbg !525
  %add128 = add nsw i32 %conv124, %conv127, !dbg !526
  %mul129 = shl nsw i32 %lx, 1, !dbg !527
  %arrayidx130 = getelementptr inbounds i16, i16* %block.1, i32 %mul129, !dbg !528
  %30 = load i16, i16* %arrayidx130, align 2, !dbg !528
  %conv131 = sext i16 %30 to i32, !dbg !528
  %mul132 = mul nsw i32 %lx, 5, !dbg !529
  %arrayidx133 = getelementptr inbounds i16, i16* %block.1, i32 %mul132, !dbg !530
  %31 = load i16, i16* %arrayidx133, align 2, !dbg !530
  %conv134 = sext i16 %31 to i32, !dbg !530
  %sub135 = sub nsw i32 %conv131, %conv134, !dbg !531
  %mul136 = mul nsw i32 %lx, 3, !dbg !532
  %arrayidx137 = getelementptr inbounds i16, i16* %block.1, i32 %mul136, !dbg !533
  %32 = load i16, i16* %arrayidx137, align 2, !dbg !533
  %conv138 = sext i16 %32 to i32, !dbg !533
  %mul139 = shl nsw i32 %lx, 2, !dbg !534
  %arrayidx140 = getelementptr inbounds i16, i16* %block.1, i32 %mul139, !dbg !535
  %33 = load i16, i16* %arrayidx140, align 2, !dbg !535
  %conv141 = sext i16 %33 to i32, !dbg !535
  %add142 = add nsw i32 %conv138, %conv141, !dbg !536
  %mul143 = mul nsw i32 %lx, 3, !dbg !537
  %arrayidx144 = getelementptr inbounds i16, i16* %block.1, i32 %mul143, !dbg !538
  %34 = load i16, i16* %arrayidx144, align 2, !dbg !538
  %conv145 = sext i16 %34 to i32, !dbg !538
  %mul146 = shl nsw i32 %lx, 2, !dbg !539
  %arrayidx147 = getelementptr inbounds i16, i16* %block.1, i32 %mul146, !dbg !540
  %35 = load i16, i16* %arrayidx147, align 2, !dbg !540
  %conv148 = sext i16 %35 to i32, !dbg !540
  %sub149 = sub nsw i32 %conv145, %conv148, !dbg !541
  %add150 = add nsw i32 %add103, %add142, !dbg !542
  %sub151 = sub nsw i32 %add103, %add142, !dbg !543
  %add152 = add nsw i32 %add115, %add128, !dbg !544
  %sub153 = sub nsw i32 %add115, %add128, !dbg !545
  %add154 = add nsw i32 %add150, %add152, !dbg !546
  %shr155 = ashr i32 %add154, 5, !dbg !547
  %conv156 = trunc i32 %shr155 to i16, !dbg !548
  store i16 %conv156, i16* %block.1, align 2, !dbg !549
  %sub158 = sub nsw i32 %add150, %add152, !dbg !550
  %shr159 = ashr i32 %sub158, 5, !dbg !551
  %conv160 = trunc i32 %shr159 to i16, !dbg !552
  %mul161 = shl nsw i32 %lx, 2, !dbg !553
  %arrayidx162 = getelementptr inbounds i16, i16* %block.1, i32 %mul161, !dbg !554
  store i16 %conv160, i16* %arrayidx162, align 2, !dbg !555
  %add163 = add nsw i32 %sub153, %sub151, !dbg !556
  %mul164 = mul nsw i32 %add163, 4433, !dbg !557
  %mul165 = mul nsw i32 %sub151, 6270, !dbg !558
  %add166 = add nsw i32 %mul164, %mul165, !dbg !559
  %shr167 = ashr i32 %add166, 18, !dbg !560
  %conv168 = trunc i32 %shr167 to i16, !dbg !561
  %mul169 = shl nsw i32 %lx, 1, !dbg !562
  %arrayidx170 = getelementptr inbounds i16, i16* %block.1, i32 %mul169, !dbg !563
  store i16 %conv168, i16* %arrayidx170, align 2, !dbg !564
  %mul171 = mul nsw i32 %sub153, -15137, !dbg !565
  %add172 = add nsw i32 %mul164, %mul171, !dbg !566
  %shr173 = ashr i32 %add172, 18, !dbg !567
  %conv174 = trunc i32 %shr173 to i16, !dbg !568
  %mul175 = mul nsw i32 %lx, 6, !dbg !569
  %arrayidx176 = getelementptr inbounds i16, i16* %block.1, i32 %mul175, !dbg !570
  store i16 %conv174, i16* %arrayidx176, align 2, !dbg !571
  %add177 = add nsw i32 %sub149, %sub109, !dbg !572
  %add178 = add nsw i32 %sub135, %sub121, !dbg !573
  %add179 = add nsw i32 %sub149, %sub121, !dbg !574
  %add180 = add nsw i32 %sub135, %sub109, !dbg !575
  %add181 = add nsw i32 %add179, %add180, !dbg !576
  %mul182 = mul nsw i32 %add181, 9633, !dbg !577
  %mul183 = mul nsw i32 %sub149, 2446, !dbg !578
  %mul184 = mul nsw i32 %sub135, 16819, !dbg !579
  %mul185 = mul nsw i32 %sub121, 25172, !dbg !580
  %mul186 = mul nsw i32 %sub109, 12299, !dbg !581
  %mul187 = mul nsw i32 %add177, -7373, !dbg !582
  %mul188 = mul nsw i32 %add178, -20995, !dbg !583
  %mul189 = mul nsw i32 %add179, -16069, !dbg !584
  %mul190 = mul nsw i32 %add180, -3196, !dbg !585
  %add191 = add nsw i32 %mul189, %mul182, !dbg !586
  %add192 = add nsw i32 %mul190, %mul182, !dbg !587
  %add193 = add nsw i32 %mul183, %mul187, !dbg !588
  %add194 = add nsw i32 %add193, %add191, !dbg !589
  %shr195 = ashr i32 %add194, 18, !dbg !590
  %conv196 = trunc i32 %shr195 to i16, !dbg !591
  %mul197 = mul nsw i32 %lx, 7, !dbg !592
  %arrayidx198 = getelementptr inbounds i16, i16* %block.1, i32 %mul197, !dbg !593
  store i16 %conv196, i16* %arrayidx198, align 2, !dbg !594
  %add199 = add nsw i32 %mul184, %mul188, !dbg !595
  %add200 = add nsw i32 %add199, %add192, !dbg !596
  %shr201 = ashr i32 %add200, 18, !dbg !597
  %conv202 = trunc i32 %shr201 to i16, !dbg !598
  %mul203 = mul nsw i32 %lx, 5, !dbg !599
  %arrayidx204 = getelementptr inbounds i16, i16* %block.1, i32 %mul203, !dbg !600
  store i16 %conv202, i16* %arrayidx204, align 2, !dbg !601
  %add205 = add nsw i32 %mul185, %mul188, !dbg !602
  %add206 = add nsw i32 %add205, %add191, !dbg !603
  %shr207 = ashr i32 %add206, 18, !dbg !604
  %conv208 = trunc i32 %shr207 to i16, !dbg !605
  %mul209 = mul nsw i32 %lx, 3, !dbg !606
  %arrayidx210 = getelementptr inbounds i16, i16* %block.1, i32 %mul209, !dbg !607
  store i16 %conv208, i16* %arrayidx210, align 2, !dbg !608
  %add211 = add nsw i32 %mul186, %mul187, !dbg !609
  %add212 = add nsw i32 %add211, %add192, !dbg !610
  %shr213 = ashr i32 %add212, 18, !dbg !611
  %conv214 = trunc i32 %shr213 to i16, !dbg !612
  %arrayidx215 = getelementptr inbounds i16, i16* %block.1, i32 %lx, !dbg !613
  store i16 %conv214, i16* %arrayidx215, align 2, !dbg !614
  br label %for.inc216, !dbg !615

for.inc216:                                       ; preds = %for.body97
  %incdec.ptr = getelementptr inbounds i16, i16* %block.1, i32 1, !dbg !616
  %inc217 = add nuw nsw i32 %i.1, 1, !dbg !617
  br label %for.cond94, !dbg !505, !llvm.loop !618

for.end218:                                       ; preds = %for.cond94
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @fdct() #0 !dbg !620 {
entry:
  call arm_aapcs_vfpcc void @fdct_fdct(i16* noundef getelementptr inbounds ([64 x i16], [64 x i16]* @block, i32 0, i32 0), i32 noundef 8) #5, !dbg !621
  %0 = load i16, i16* getelementptr inbounds ([64 x i16], [64 x i16]* @block, i32 0, i32 0), align 2, !dbg !622
  %conv = sext i16 %0 to i32, !dbg !622
  ret i32 %conv, !dbg !623
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc double @lms_sinus(i32 noundef %i) #0 !dbg !624 {
entry:
  %rem = srem i32 %i, 20, !dbg !626
  %cmp = icmp sgt i32 %rem, 9, !dbg !627
  br i1 %cmp, label %if.then, label %if.end, !dbg !628

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %rem, 15, !dbg !629
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !630

cond.true:                                        ; preds = %if.then
  %sub = sub nsw i32 20, %rem, !dbg !631
  br label %cond.end, !dbg !630

cond.false:                                       ; preds = %if.then
  %sub2 = add nsw i32 %rem, -10, !dbg !632
  br label %cond.end, !dbg !630

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub2, %cond.false ], !dbg !630
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond, !dbg !633
  %0 = load double, double* %arrayidx, align 8, !dbg !633
  %fneg = fneg double %0, !dbg !634
  br label %return, !dbg !635

if.end:                                           ; preds = %entry
  %cmp3 = icmp sgt i32 %rem, 5, !dbg !636
  br i1 %cmp3, label %cond.true4, label %cond.false6, !dbg !637

cond.true4:                                       ; preds = %if.end
  %sub5 = sub nsw i32 10, %rem, !dbg !638
  br label %cond.end7, !dbg !637

cond.false6:                                      ; preds = %if.end
  br label %cond.end7, !dbg !637

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %sub5, %cond.true4 ], [ %rem, %cond.false6 ], !dbg !637
  %arrayidx9 = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond8, !dbg !639
  %1 = load double, double* %arrayidx9, align 8, !dbg !639
  br label %return, !dbg !640

return:                                           ; preds = %cond.end7, %cond.end
  %retval.0 = phi double [ %fneg, %cond.end ], [ %1, %cond.end7 ], !dbg !641
  ret double %retval.0, !dbg !642
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_init() #0 !dbg !643 {
entry:
  store float 0.000000e+00, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 0), align 4, !dbg !644
  br label %do.body, !dbg !645

do.body:                                          ; preds = %do.cond, %entry
  br label %do.cond, !dbg !646

do.cond:                                          ; preds = %do.body
  br i1 false, label %do.body, label %do.end, !dbg !646, !llvm.loop !647

do.end:                                           ; preds = %do.cond
  %call = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef 1) #5, !dbg !649
  %0 = fadd double %call, 0xBFF8A068E044FADD, !dbg !650
  %conv11 = fptrunc double %0 to float, !dbg !649
  store float %conv11, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 1), align 4, !dbg !651
  br label %for.cond, !dbg !652

for.cond:                                         ; preds = %for.inc, %do.end
  %k.0 = phi i32 [ 2, %do.end ], [ %add46, %for.inc ], !dbg !653
  %seed.1 = phi i32 [ -1770082073, %do.end ], [ %add25, %for.inc ], !dbg !653
  %cmp12 = icmp ult i32 %k.0, 201, !dbg !654
  br i1 %cmp12, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  br label %do.body18, !dbg !656

do.body18:                                        ; preds = %do.cond31, %for.body
  %seed.2 = phi i32 [ %seed.1, %for.body ], [ %add25, %do.cond31 ], !dbg !653
  %mul19 = mul i32 %seed.2, 1103515245, !dbg !657
  %add20 = add i32 %mul19, 12345, !dbg !658
  %and21 = and i32 %add20, 2147483647, !dbg !659
  %conv22 = uitofp i32 %and21 to double, !dbg !660
  %1 = call double @llvm.fmuladd.f64(double %conv22, double 0x3E10000000000000, double -1.000000e+00), !dbg !661
  %mul24 = mul i32 %add20, 1103515245, !dbg !662
  %add25 = add i32 %mul24, 12345, !dbg !663
  %and26 = and i32 %add25, 2147483647, !dbg !664
  %conv27 = uitofp i32 %and26 to double, !dbg !665
  %2 = call double @llvm.fmuladd.f64(double %conv27, double 0x3E10000000000000, double -1.000000e+00), !dbg !666
  %mul30 = fmul double %2, %2, !dbg !667
  %3 = call double @llvm.fmuladd.f64(double %1, double %1, double %mul30), !dbg !668
  br label %do.cond31, !dbg !669

do.cond31:                                        ; preds = %do.body18
  %cmp32 = fcmp ogt double %3, 1.000000e+00, !dbg !670
  br i1 %cmp32, label %do.body18, label %do.end34, !dbg !669, !llvm.loop !671

do.end34:                                         ; preds = %do.cond31
  %div36 = fdiv double 1.000000e+00, %3, !dbg !673
  %call37 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %k.0) #5, !dbg !674
  %4 = call double @llvm.fmuladd.f64(double %div36, double %2, double %call37), !dbg !675
  %conv39 = fptrunc double %4 to float, !dbg !674
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %k.0, !dbg !676
  store float %conv39, float* %arrayidx, align 4, !dbg !677
  %add40 = or i32 %k.0, 1, !dbg !678
  %call41 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %add40) #5, !dbg !679
  %5 = call double @llvm.fmuladd.f64(double %div36, double %1, double %call41), !dbg !680
  %conv43 = fptrunc double %5 to float, !dbg !679
  %add44 = or i32 %k.0, 1, !dbg !681
  %arrayidx45 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add44, !dbg !682
  store float %conv43, float* %arrayidx45, align 4, !dbg !683
  br label %for.inc, !dbg !684

for.inc:                                          ; preds = %do.end34
  %add46 = add nuw nsw i32 %k.0, 2, !dbg !685
  br label %for.cond, !dbg !655, !llvm.loop !686

for.end:                                          ; preds = %for.cond
  ret void, !dbg !687
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @lms_calc(float noundef %x, float noundef %d, float* noundef %b, i32 noundef %l, float noundef %mu, float noundef %alpha, float* noundef %history, float* noundef %sigma) #0 !dbg !688 {
entry:
  br label %for.cond, !dbg !689

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %l, %entry ], [ %dec, %for.inc ], !dbg !690
  %cmp = icmp sgt i32 %i.0, 0, !dbg !691
  br i1 %cmp, label %for.body, label %for.end, !dbg !692

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %i.0, -1, !dbg !693
  %arrayidx = getelementptr inbounds float, float* %history, i32 %sub, !dbg !694
  %0 = load float, float* %arrayidx, align 4, !dbg !694
  %arrayidx1 = getelementptr inbounds float, float* %history, i32 %i.0, !dbg !695
  store float %0, float* %arrayidx1, align 4, !dbg !696
  br label %for.inc, !dbg !695

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !697
  br label %for.cond, !dbg !692, !llvm.loop !698

for.end:                                          ; preds = %for.cond
  store float %x, float* %history, align 4, !dbg !700
  %mul = fmul float %alpha, %x, !dbg !701
  %sub4 = fsub float 1.000000e+00, %alpha, !dbg !702
  %1 = load float, float* %sigma, align 4, !dbg !703
  %mul5 = fmul float %sub4, %1, !dbg !704
  %2 = call float @llvm.fmuladd.f32(float %mul, float %x, float %mul5), !dbg !705
  store float %2, float* %sigma, align 4, !dbg !706
  %3 = call i32 @llvm.smax.i32(i32 %l, i32 -1), !dbg !707
  %smax = add nsw i32 %3, 1, !dbg !707
  br label %for.cond6, !dbg !707

for.cond6:                                        ; preds = %for.inc12, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc, %for.inc12 ], !dbg !690
  %y.0 = phi float [ 0.000000e+00, %for.end ], [ %6, %for.inc12 ], !dbg !690
  %exitcond.not = icmp eq i32 %i.1, %smax, !dbg !708
  br i1 %exitcond.not, label %for.end13, label %for.body8, !dbg !709

for.body8:                                        ; preds = %for.cond6
  br label %for.inc12, !dbg !710

for.inc12:                                        ; preds = %for.body8
  %arrayidx9 = getelementptr inbounds float, float* %b, i32 %i.1, !dbg !711
  %4 = load float, float* %arrayidx9, align 4, !dbg !711
  %arrayidx10 = getelementptr inbounds float, float* %history, i32 %i.1, !dbg !712
  %5 = load float, float* %arrayidx10, align 4, !dbg !712
  %6 = call float @llvm.fmuladd.f32(float %4, float %5, float %y.0), !dbg !713
  %inc = add nuw i32 %i.1, 1, !dbg !714
  br label %for.cond6, !dbg !709, !llvm.loop !715

for.end13:                                        ; preds = %for.cond6
  %sub14 = fsub float %d, %y.0, !dbg !717
  %mul15 = fmul float %sub14, %mu, !dbg !718
  %7 = load float, float* %sigma, align 4, !dbg !719
  %div = fdiv float %mul15, %7, !dbg !720
  br label %for.cond16, !dbg !721

for.cond16:                                       ; preds = %for.inc22, %for.end13
  %i.2 = phi i32 [ 0, %for.end13 ], [ %inc23, %for.inc22 ], !dbg !690
  %exitcond1.not = icmp eq i32 %i.2, %smax, !dbg !722
  br i1 %exitcond1.not, label %for.end24, label %for.body18, !dbg !723

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %history, i32 %i.2, !dbg !724
  %8 = load float, float* %arrayidx19, align 4, !dbg !724
  %arrayidx21 = getelementptr inbounds float, float* %b, i32 %i.2, !dbg !725
  %9 = load float, float* %arrayidx21, align 4, !dbg !726
  %10 = call float @llvm.fmuladd.f32(float %div, float %8, float %9), !dbg !726
  store float %10, float* %arrayidx21, align 4, !dbg !726
  br label %for.inc22, !dbg !725

for.inc22:                                        ; preds = %for.body18
  %inc23 = add nuw i32 %i.2, 1, !dbg !727
  br label %for.cond16, !dbg !723, !llvm.loop !728

for.end24:                                        ; preds = %for.cond16
  ret float %y.0, !dbg !730
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_main() #0 !dbg !731 {
entry:
  %b = alloca [21 x float], align 4
  %history = alloca [21 x float], align 4
  %sigma = alloca float, align 4
  store float 2.000000e+00, float* %sigma, align 4, !dbg !732
  br label %for.cond, !dbg !733

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !734
  %exitcond.not = icmp eq i32 %i.0, 21, !dbg !735
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !736

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 %i.0, !dbg !737
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !738
  %arrayidx1 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 %i.0, !dbg !739
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !740
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !742
  br label %for.cond, !dbg !736, !llvm.loop !743

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !744

for.cond2:                                        ; preds = %for.inc9, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc10, %for.inc9 ], !dbg !734
  %exitcond1.not = icmp eq i32 %i.1, 201, !dbg !745
  br i1 %exitcond1.not, label %for.end11, label %for.body4, !dbg !746

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %i.1, !dbg !747
  %0 = load float, float* %arrayidx5, align 4, !dbg !747
  %add = add nuw nsw i32 %i.1, 1, !dbg !748
  %arrayidx6 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add, !dbg !749
  %1 = load float, float* %arrayidx6, align 4, !dbg !749
  %arraydecay = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 0, !dbg !750
  %arraydecay7 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 0, !dbg !751
  %call = call arm_aapcs_vfpcc float @lms_calc(float noundef %0, float noundef %1, float* noundef nonnull %arraydecay, i32 noundef 20, float noundef 0x3F4F352680000000, float noundef 0x3F847AE140000000, float* noundef nonnull %arraydecay7, float* noundef nonnull %sigma) #5, !dbg !752
  %arrayidx8 = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %i.1, !dbg !753
  store float %call, float* %arrayidx8, align 4, !dbg !754
  br label %for.inc9, !dbg !755

for.inc9:                                         ; preds = %for.body4
  %inc10 = add nuw nsw i32 %i.1, 1, !dbg !756
  br label %for.cond2, !dbg !746, !llvm.loop !757

for.end11:                                        ; preds = %for.cond2
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @lms_return() #0 !dbg !759 {
entry:
  br label %for.cond, !dbg !760

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi double [ 0.000000e+00, %entry ], [ %add, %for.inc ], !dbg !761
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !761
  %exitcond.not = icmp eq i32 %i.0, 201, !dbg !762
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !763

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !764

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %i.0, !dbg !765
  %0 = load float, float* %arrayidx, align 4, !dbg !765
  %conv = fpext float %0 to double, !dbg !765
  %add = fadd double %sum.0, %conv, !dbg !766
  %inc = add nuw nsw i32 %i.0, 1, !dbg !767
  br label %for.cond, !dbg !763, !llvm.loop !768

for.end:                                          ; preds = %for.cond
  %add1 = fadd double %sum.0, 0x4012D2A80064A9CE, !dbg !769
  %mul = fmul double %add1, 1.000000e+06, !dbg !770
  %conv2 = fptosi double %mul to i32, !dbg !771
  ret i32 %conv2, !dbg !772
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms(i8* noundef %n) #0 !dbg !773 {
entry:
  call arm_aapcs_vfpcc void @lms_init() #5, !dbg !774
  call arm_aapcs_vfpcc void @lms_main() #5, !dbg !775
  %call = call arm_aapcs_vfpcc i32 @lms_return() #5, !dbg !776
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @exec() #0 !dbg !778 {
entry:
  br label %for.cond, !dbg !780

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !781

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !782

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !781, !llvm.loop !783

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !784
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @a() #0 !dbg !785 {
entry:
  br label %for.cond, !dbg !786

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !787
  %exitcond.not = icmp eq i32 %i.0, 12, !dbg !788
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !789

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @exec() #5, !dbg !790
  br label %for.inc, !dbg !791

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !792
  br label %for.cond, !dbg !789, !llvm.loop !793

for.end:                                          ; preds = %for.cond
  ret i32 1, !dbg !794
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @b() #0 !dbg !795 {
entry:
  br label %for.cond, !dbg !796

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc, %for.inc ], !dbg !797
  %exitcond.not = icmp eq i32 %i.0, 5, !dbg !798
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !799

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @exec() #5, !dbg !800
  br label %for.inc, !dbg !801

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !802
  br label %for.cond, !dbg !799, !llvm.loop !803

for.end:                                          ; preds = %for.cond
  ret i32 2, !dbg !804
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @loop() #0 !dbg !805 {
entry:
  br label %for.cond, !dbg !806

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !807
  %exitcond.not = icmp eq i32 %i.0, 3, !dbg !808
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !809

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @a() #5, !dbg !810
  %call1 = call arm_aapcs_vfpcc i32 @b() #5, !dbg !811
  br label %for.inc, !dbg !812

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !813
  br label %for.cond, !dbg !809, !llvm.loop !814

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !815
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matmult() #0 !dbg !816 {
entry:
  call arm_aapcs_vfpcc void @InitSeed() #5, !dbg !818
  call arm_aapcs_vfpcc void @Test([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ResultArray, i32 0, i32 0)) #5, !dbg !819
  ret void, !dbg !820
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @InitSeed() #0 !dbg !821 {
entry:
  store i32 0, i32* @Seed, align 4, !dbg !822
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Test([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !824 {
entry:
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %A) #5, !dbg !825
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %B) #5, !dbg !826
  call arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #5, !dbg !827
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %Array) #0 !dbg !829 {
entry:
  br label %for.cond, !dbg !830

for.cond:                                         ; preds = %for.inc5, %entry
  %OuterIndex.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !831
  %exitcond1.not = icmp eq i32 %OuterIndex.0, 20, !dbg !832
  br i1 %exitcond1.not, label %for.end7, label %for.body, !dbg !833

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !834

for.cond1:                                        ; preds = %for.inc, %for.body
  %InnerIndex.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !831
  %exitcond.not = icmp eq i32 %InnerIndex.0, 20, !dbg !835
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !836

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @RandomInteger() #5, !dbg !837
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %OuterIndex.0, i32 %InnerIndex.0, !dbg !838
  store i32 %call, i32* %arrayidx4, align 4, !dbg !839
  br label %for.inc, !dbg !838

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %InnerIndex.0, 1, !dbg !840
  br label %for.cond1, !dbg !836, !llvm.loop !841

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !842

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %OuterIndex.0, 1, !dbg !843
  br label %for.cond, !dbg !833, !llvm.loop !844

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !846 {
entry:
  br label %for.cond, !dbg !847

for.cond:                                         ; preds = %for.inc17, %entry
  %Outer.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !848
  %exitcond2.not = icmp eq i32 %Outer.0, 20, !dbg !849
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !850

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !851

for.cond1:                                        ; preds = %for.inc14, %for.body
  %Inner.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !dbg !848
  %exitcond1.not = icmp eq i32 %Inner.0, 20, !dbg !852
  br i1 %exitcond1.not, label %for.end16, label %for.body3, !dbg !853

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Res, i32 %Outer.0, i32 %Inner.0, !dbg !854
  store i32 0, i32* %arrayidx4, align 4, !dbg !855
  br label %for.cond5, !dbg !856

for.cond5:                                        ; preds = %for.inc, %for.body3
  %Index.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !dbg !848
  %exitcond.not = icmp eq i32 %Index.0, 20, !dbg !857
  br i1 %exitcond.not, label %for.end, label %for.body7, !dbg !858

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* %A, i32 %Outer.0, i32 %Index.0, !dbg !859
  %0 = load i32, i32* %arrayidx9, align 4, !dbg !859
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %B, i32 %Index.0, i32 %Inner.0, !dbg !860
  %1 = load i32, i32* %arrayidx11, align 4, !dbg !860
  %mul = mul nsw i32 %0, %1, !dbg !861
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %Res, i32 %Outer.0, i32 %Inner.0, !dbg !862
  %2 = load i32, i32* %arrayidx13, align 4, !dbg !863
  %add = add nsw i32 %2, %mul, !dbg !863
  store i32 %add, i32* %arrayidx13, align 4, !dbg !863
  br label %for.inc, !dbg !862

for.inc:                                          ; preds = %for.body7
  %inc = add nuw nsw i32 %Index.0, 1, !dbg !864
  br label %for.cond5, !dbg !858, !llvm.loop !865

for.end:                                          ; preds = %for.cond5
  br label %for.inc14, !dbg !867

for.inc14:                                        ; preds = %for.end
  %inc15 = add nuw nsw i32 %Inner.0, 1, !dbg !868
  br label %for.cond1, !dbg !853, !llvm.loop !869

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !867

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nuw nsw i32 %Outer.0, 1, !dbg !870
  br label %for.cond, !dbg !850, !llvm.loop !871

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !872
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @RandomInteger() #0 !dbg !873 {
entry:
  %0 = load i32, i32* @Seed, align 4, !dbg !874
  %mul = mul nsw i32 %0, 133, !dbg !875
  %add = add nsw i32 %mul, 81, !dbg !876
  %rem = srem i32 %add, 8095, !dbg !877
  store i32 %rem, i32* @Seed, align 4, !dbg !878
  ret i32 %rem, !dbg !879
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_init() #0 !dbg !880 {
entry:
  br label %for.cond, !dbg !882

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !883
  %exitcond.not = icmp eq i32 %i.0, 57, !dbg !884
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !885

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_init.ndes_ipc1_tmp, i32 0, i32 %i.0, !dbg !886
  %0 = load volatile i8, i8* %arrayidx, align 1, !dbg !886
  %arrayidx1 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %i.0, !dbg !887
  store i8 %0, i8* %arrayidx1, align 1, !dbg !888
  br label %for.inc, !dbg !887

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !889
  br label %for.cond, !dbg !885, !llvm.loop !890

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !892

for.cond2:                                        ; preds = %for.inc7, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.inc7 ], !dbg !883
  %exitcond1.not = icmp eq i32 %i.1, 49, !dbg !893
  br i1 %exitcond1.not, label %for.end9, label %for.body4, !dbg !894

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_init.ndes_ipc2_tmp, i32 0, i32 %i.1, !dbg !895
  %1 = load volatile i8, i8* %arrayidx5, align 1, !dbg !895
  %arrayidx6 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %i.1, !dbg !896
  store i8 %1, i8* %arrayidx6, align 1, !dbg !897
  br label %for.inc7, !dbg !896

for.inc7:                                         ; preds = %for.body4
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !898
  br label %for.cond2, !dbg !894, !llvm.loop !899

for.end9:                                         ; preds = %for.cond2
  store i32 35, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 0), align 4, !dbg !901
  store i32 26, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 1), align 4, !dbg !902
  store i32 2, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 0), align 4, !dbg !903
  store i32 16, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 1), align 4, !dbg !904
  %2 = load i32, i32* @ndes_value, align 4, !dbg !905
  store i32 %2, i32* @ndes_newkey, align 4, !dbg !906
  store i32 %2, i32* @ndes_isw, align 4, !dbg !907
  ret void, !dbg !908
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_des([2 x i32] %inp.coerce, [2 x i32] %key.coerce, i32* noundef %newkey, i32 noundef %isw, %struct.DATA* noundef %out) #0 !dbg !909 {
entry:
  %inp = alloca %struct.DATA, align 4
  %key = alloca %struct.DATA, align 4
  %ic = alloca i32, align 4
  %itmp = alloca %struct.DATA, align 4
  %pg = alloca %struct.NDES_GREAT, align 4
  %.repack = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 0
  %inp.coerce.elt = extractvalue [2 x i32] %inp.coerce, 0
  store i32 %inp.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 1
  %inp.coerce.elt4 = extractvalue [2 x i32] %inp.coerce, 1
  store i32 %inp.coerce.elt4, i32* %0, align 4
  %.repack5 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 0
  %key.coerce.elt = extractvalue [2 x i32] %key.coerce, 0
  store i32 %key.coerce.elt, i32* %.repack5, align 4
  %1 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 1
  %key.coerce.elt7 = extractvalue [2 x i32] %key.coerce, 1
  store i32 %key.coerce.elt7, i32* %1, align 4
  %2 = load i32, i32* @ndes_des.initflag, align 4, !dbg !910
  %tobool.not = icmp eq i32 %2, 0, !dbg !910
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !910

if.then:                                          ; preds = %entry
  store i32 0, i32* @ndes_des.initflag, align 4, !dbg !911
  store i32 1, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 1), align 4, !dbg !912
  br label %for.cond, !dbg !913

for.cond:                                         ; preds = %for.inc, %if.then
  %j.0 = phi i32 [ 2, %if.then ], [ %inc, %for.inc ], !dbg !914
  %shifter.0 = phi i32 [ 1, %if.then ], [ %shl, %for.inc ], !dbg !914
  %exitcond.not = icmp eq i32 %j.0, 33, !dbg !915
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !916

for.body:                                         ; preds = %for.cond
  %shl = shl i32 %shifter.0, 1, !dbg !917
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %j.0, !dbg !918
  store i32 %shl, i32* %arrayidx, align 4, !dbg !919
  br label %for.inc, !dbg !918

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %j.0, 1, !dbg !920
  br label %for.cond, !dbg !916, !llvm.loop !921

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !923

if.end:                                           ; preds = %for.end, %entry
  %3 = load i32, i32* %newkey, align 4, !dbg !924
  %tobool1.not = icmp eq i32 %3, 0, !dbg !924
  br i1 %tobool1.not, label %if.end25, label %if.then2, !dbg !924

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %newkey, align 4, !dbg !925
  store i32 0, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !926
  store i32 0, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !927
  br label %for.cond3, !dbg !928

for.cond3:                                        ; preds = %for.inc13, %if.then2
  %j.1 = phi i32 [ 28, %if.then2 ], [ %dec, %for.inc13 ], !dbg !914
  %k.0 = phi i32 [ 56, %if.then2 ], [ %dec14, %for.inc13 ], !dbg !914
  %cmp4.not = icmp eq i32 %j.1, 0, !dbg !929
  br i1 %cmp4.not, label %for.end15, label %for.body5, !dbg !930

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !931
  %shl6 = shl i32 %4, 1, !dbg !932
  %arrayidx7 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %j.1, !dbg !933
  %5 = load i8, i8* %arrayidx7, align 1, !dbg !933
  %conv = zext i8 %5 to i32, !dbg !933
  %.elt28 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 0, !dbg !934
  %.unpack29 = load i32, i32* %.elt28, align 4, !dbg !934
  %6 = insertvalue [2 x i32] undef, i32 %.unpack29, 0, !dbg !934
  %7 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 1, !dbg !934
  %.unpack31 = load i32, i32* %7, align 4, !dbg !934
  %8 = insertvalue [2 x i32] %6, i32 %.unpack31, 1, !dbg !934
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %8, i32 noundef %conv, i32 noundef 32) #5, !dbg !934
  %or = or i32 %shl6, %call, !dbg !935
  store i32 %or, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !936
  %9 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !937
  %shl8 = shl i32 %9, 1, !dbg !938
  store i32 %shl8, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !939
  %arrayidx9 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %k.0, !dbg !940
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !940
  %conv10 = zext i8 %10 to i32, !dbg !940
  %.elt32 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 0, !dbg !941
  %.unpack33 = load i32, i32* %.elt32, align 4, !dbg !941
  %11 = insertvalue [2 x i32] undef, i32 %.unpack33, 0, !dbg !941
  %12 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 1, !dbg !941
  %.unpack35 = load i32, i32* %12, align 4, !dbg !941
  %13 = insertvalue [2 x i32] %11, i32 %.unpack35, 1, !dbg !941
  %call11 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %13, i32 noundef %conv10, i32 noundef 32) #5, !dbg !941
  %or12 = or i32 %shl8, %call11, !dbg !942
  store i32 %or12, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !943
  br label %for.inc13, !dbg !944

for.inc13:                                        ; preds = %for.body5
  %dec = add nsw i32 %j.1, -1, !dbg !945
  %dec14 = add nsw i32 %k.0, -1, !dbg !946
  br label %for.cond3, !dbg !930, !llvm.loop !947

for.end15:                                        ; preds = %for.cond3
  br label %for.cond16, !dbg !948

for.cond16:                                       ; preds = %for.inc22, %for.end15
  %i.0 = phi i32 [ 1, %for.end15 ], [ %inc23, %for.inc22 ], !dbg !914
  %exitcond1.not = icmp eq i32 %i.0, 17, !dbg !949
  br i1 %exitcond1.not, label %for.end24, label %for.body19, !dbg !950

for.body19:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %i.0, !dbg !951
  %14 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !951
  %15 = bitcast %struct.NDES_GREAT* %arrayidx20 to i8*, !dbg !951
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %14, i8* noundef nonnull align 4 dereferenceable(12) %15, i32 12, i1 false), !dbg !951
  call arm_aapcs_vfpcc void @ndes_ks(i32 noundef %i.0, %struct.NDES_GREAT* noundef nonnull %pg) #5, !dbg !952
  %arrayidx21 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %i.0, !dbg !953
  %16 = bitcast %struct.NDES_GREAT* %arrayidx21 to i8*, !dbg !954
  %17 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !954
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %16, i8* noundef nonnull align 4 dereferenceable(12) %17, i32 12, i1 false), !dbg !954
  br label %for.inc22, !dbg !955

for.inc22:                                        ; preds = %for.body19
  %inc23 = add nuw nsw i32 %i.0, 1, !dbg !956
  br label %for.cond16, !dbg !950, !llvm.loop !957

for.end24:                                        ; preds = %for.cond16
  br label %if.end25, !dbg !958

if.end25:                                         ; preds = %for.end24, %if.end
  %l = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !959
  store i32 0, i32* %l, align 4, !dbg !960
  %r = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !961
  store i32 0, i32* %r, align 4, !dbg !962
  br label %for.cond26, !dbg !963

for.cond26:                                       ; preds = %for.inc48, %if.end25
  %j.2 = phi i32 [ 32, %if.end25 ], [ %dec49, %for.inc48 ], !dbg !914
  %k.1 = phi i32 [ 64, %if.end25 ], [ %dec50, %for.inc48 ], !dbg !914
  %cmp27.not = icmp eq i32 %j.2, 0, !dbg !964
  br i1 %cmp27.not, label %for.end51, label %for.body29, !dbg !965

for.body29:                                       ; preds = %for.cond26
  %r30 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !966
  %18 = load i32, i32* %r30, align 4, !dbg !966
  %shl31 = shl i32 %18, 1, !dbg !967
  %r32 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !968
  store i32 %shl31, i32* %r32, align 4, !dbg !969
  %arrayidx34 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %j.2, !dbg !970
  %19 = load volatile i8, i8* %arrayidx34, align 1, !dbg !970
  %conv35 = zext i8 %19 to i32, !dbg !970
  %.elt20 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 0, !dbg !971
  %.unpack21 = load i32, i32* %.elt20, align 4, !dbg !971
  %20 = insertvalue [2 x i32] undef, i32 %.unpack21, 0, !dbg !971
  %21 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 1, !dbg !971
  %.unpack23 = load i32, i32* %21, align 4, !dbg !971
  %22 = insertvalue [2 x i32] %20, i32 %.unpack23, 1, !dbg !971
  %call36 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %22, i32 noundef %conv35, i32 noundef 32) #5, !dbg !971
  %or37 = or i32 %shl31, %call36, !dbg !972
  %r38 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !973
  store i32 %or37, i32* %r38, align 4, !dbg !974
  %l39 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !975
  %23 = load i32, i32* %l39, align 4, !dbg !975
  %shl40 = shl i32 %23, 1, !dbg !976
  %l41 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !977
  store i32 %shl40, i32* %l41, align 4, !dbg !978
  %arrayidx43 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %k.1, !dbg !979
  %24 = load volatile i8, i8* %arrayidx43, align 1, !dbg !979
  %conv44 = zext i8 %24 to i32, !dbg !979
  %.elt24 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 0, !dbg !980
  %.unpack25 = load i32, i32* %.elt24, align 4, !dbg !980
  %25 = insertvalue [2 x i32] undef, i32 %.unpack25, 0, !dbg !980
  %26 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 1, !dbg !980
  %.unpack27 = load i32, i32* %26, align 4, !dbg !980
  %27 = insertvalue [2 x i32] %25, i32 %.unpack27, 1, !dbg !980
  %call45 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %27, i32 noundef %conv44, i32 noundef 32) #5, !dbg !980
  %or46 = or i32 %shl40, %call45, !dbg !981
  %l47 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !982
  store i32 %or46, i32* %l47, align 4, !dbg !983
  br label %for.inc48, !dbg !984

for.inc48:                                        ; preds = %for.body29
  %dec49 = add nsw i32 %j.2, -1, !dbg !985
  %dec50 = add nsw i32 %k.1, -1, !dbg !986
  br label %for.cond26, !dbg !965, !llvm.loop !987

for.end51:                                        ; preds = %for.cond26
  br label %for.cond52, !dbg !988

for.cond52:                                       ; preds = %for.inc64, %for.end51
  %i.1 = phi i32 [ 1, %for.end51 ], [ %inc65, %for.inc64 ], !dbg !914
  %exitcond2.not = icmp eq i32 %i.1, 17, !dbg !989
  br i1 %exitcond2.not, label %for.end66, label %for.body55, !dbg !990

for.body55:                                       ; preds = %for.cond52
  %cmp56 = icmp eq i32 %isw, 1, !dbg !991
  br i1 %cmp56, label %cond.true, label %cond.false, !dbg !992

cond.true:                                        ; preds = %for.body55
  %sub = sub nuw nsw i32 17, %i.1, !dbg !993
  br label %cond.end, !dbg !992

cond.false:                                       ; preds = %for.body55
  br label %cond.end, !dbg !992

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %i.1, %cond.false ], !dbg !992
  %l58 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !994
  %28 = load i32, i32* %l58, align 4, !dbg !994
  %.elt14 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 0, !dbg !995
  %.unpack15 = load i32, i32* %.elt14, align 4, !dbg !995
  %29 = insertvalue [3 x i32] undef, i32 %.unpack15, 0, !dbg !995
  %30 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 1, !dbg !995
  %.unpack17 = load i32, i32* %30, align 4, !dbg !995
  %31 = insertvalue [3 x i32] %29, i32 %.unpack17, 1, !dbg !995
  %32 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 2, !dbg !995
  %.unpack19 = load i32, i32* %32, align 4, !dbg !995
  %33 = insertvalue [3 x i32] %31, i32 %.unpack19, 2, !dbg !995
  call arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %28, [3 x i32] %33, i32* noundef nonnull %ic) #5, !dbg !995
  %r60 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !996
  %34 = load i32, i32* %r60, align 4, !dbg !996
  %35 = load i32, i32* %ic, align 4, !dbg !997
  %xor = xor i32 %35, %34, !dbg !997
  store i32 %xor, i32* %ic, align 4, !dbg !997
  %l61 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !998
  %36 = load i32, i32* %l61, align 4, !dbg !998
  %r62 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !999
  store i32 %36, i32* %r62, align 4, !dbg !1000
  %l63 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !1001
  store i32 %xor, i32* %l63, align 4, !dbg !1002
  br label %for.inc64, !dbg !1003

for.inc64:                                        ; preds = %cond.end
  %inc65 = add nuw nsw i32 %i.1, 1, !dbg !1004
  br label %for.cond52, !dbg !990, !llvm.loop !1005

for.end66:                                        ; preds = %for.cond52
  %r67 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !1006
  %37 = load i32, i32* %r67, align 4, !dbg !1006
  store i32 %37, i32* %ic, align 4, !dbg !1007
  %l68 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !1008
  %38 = load i32, i32* %l68, align 4, !dbg !1008
  %r69 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !1009
  store i32 %38, i32* %r69, align 4, !dbg !1010
  %l70 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !1011
  store i32 %37, i32* %l70, align 4, !dbg !1012
  %l71 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !1013
  store i32 0, i32* %l71, align 4, !dbg !1014
  %r72 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !1015
  store i32 0, i32* %r72, align 4, !dbg !1016
  br label %for.cond73, !dbg !1017

for.cond73:                                       ; preds = %for.inc95, %for.end66
  %j.3 = phi i32 [ 32, %for.end66 ], [ %dec96, %for.inc95 ], !dbg !914
  %k.2 = phi i32 [ 64, %for.end66 ], [ %dec97, %for.inc95 ], !dbg !914
  %cmp74.not = icmp eq i32 %j.3, 0, !dbg !1018
  br i1 %cmp74.not, label %for.end98, label %for.body76, !dbg !1019

for.body76:                                       ; preds = %for.cond73
  %r77 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !1020
  %39 = load i32, i32* %r77, align 4, !dbg !1020
  %shl78 = shl i32 %39, 1, !dbg !1021
  %r79 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !1022
  store i32 %shl78, i32* %r79, align 4, !dbg !1023
  %arrayidx81 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %j.3, !dbg !1024
  %40 = load volatile i8, i8* %arrayidx81, align 1, !dbg !1024
  %conv82 = zext i8 %40 to i32, !dbg !1024
  %.elt = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !1025
  %.unpack = load i32, i32* %.elt, align 4, !dbg !1025
  %41 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !1025
  %42 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !1025
  %.unpack9 = load i32, i32* %42, align 4, !dbg !1025
  %43 = insertvalue [2 x i32] %41, i32 %.unpack9, 1, !dbg !1025
  %call83 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %43, i32 noundef %conv82, i32 noundef 32) #5, !dbg !1025
  %or84 = or i32 %shl78, %call83, !dbg !1026
  %r85 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !1027
  store i32 %or84, i32* %r85, align 4, !dbg !1028
  %l86 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !1029
  %44 = load i32, i32* %l86, align 4, !dbg !1029
  %shl87 = shl i32 %44, 1, !dbg !1030
  %l88 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !1031
  store i32 %shl87, i32* %l88, align 4, !dbg !1032
  %arrayidx90 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %k.2, !dbg !1033
  %45 = load volatile i8, i8* %arrayidx90, align 1, !dbg !1033
  %conv91 = zext i8 %45 to i32, !dbg !1033
  %.elt10 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !1034
  %.unpack11 = load i32, i32* %.elt10, align 4, !dbg !1034
  %46 = insertvalue [2 x i32] undef, i32 %.unpack11, 0, !dbg !1034
  %47 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !1034
  %.unpack13 = load i32, i32* %47, align 4, !dbg !1034
  %48 = insertvalue [2 x i32] %46, i32 %.unpack13, 1, !dbg !1034
  %call92 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %48, i32 noundef %conv91, i32 noundef 32) #5, !dbg !1034
  %or93 = or i32 %shl87, %call92, !dbg !1035
  %l94 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !1036
  store i32 %or93, i32* %l94, align 4, !dbg !1037
  br label %for.inc95, !dbg !1038

for.inc95:                                        ; preds = %for.body76
  %dec96 = add nsw i32 %j.3, -1, !dbg !1039
  %dec97 = add nsw i32 %k.2, -1, !dbg !1040
  br label %for.cond73, !dbg !1019, !llvm.loop !1041

for.end98:                                        ; preds = %for.cond73
  ret void, !dbg !1042
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %source.coerce, i32 noundef %bitno, i32 noundef %nbits) #0 !dbg !1043 {
entry:
  %source = alloca %struct.DATA, align 4
  %.repack = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 0
  %source.coerce.elt = extractvalue [2 x i32] %source.coerce, 0
  store i32 %source.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 1
  %source.coerce.elt2 = extractvalue [2 x i32] %source.coerce, 1
  store i32 %source.coerce.elt2, i32* %0, align 4
  %cmp.not = icmp sgt i32 %bitno, %nbits, !dbg !1044
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1045

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %bitno, !dbg !1046
  %1 = load i32, i32* %arrayidx, align 4, !dbg !1046
  %r = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 1, !dbg !1047
  %2 = load i32, i32* %r, align 4, !dbg !1047
  %and = and i32 %1, %2, !dbg !1048
  br label %return, !dbg !1049

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bitno, %nbits, !dbg !1050
  %arrayidx1 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %sub, !dbg !1051
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !1051
  %l = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 0, !dbg !1052
  %4 = load i32, i32* %l, align 4, !dbg !1052
  %and2 = and i32 %3, %4, !dbg !1053
  br label %return, !dbg !1054

return:                                           ; preds = %if.else, %if.then
  %retval.0.in.in = phi i32 [ %and, %if.then ], [ %and2, %if.else ]
  %retval.0.in = icmp ne i32 %retval.0.in.in, 0, !dbg !1055
  %retval.0 = zext i1 %retval.0.in to i32, !dbg !1055
  ret i32 %retval.0, !dbg !1056
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_ks(i32 noundef %n, %struct.NDES_GREAT* noundef %kn) #0 !dbg !1057 {
entry:
  %cmp = icmp eq i32 %n, 1, !dbg !1058
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1059

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq i32 %n, 2, !dbg !1060
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !1061

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %cmp3 = icmp eq i32 %n, 9, !dbg !1062
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !1063

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %cmp5 = icmp eq i32 %n, 16, !dbg !1064
  br i1 %cmp5, label %if.then, label %if.else, !dbg !1065

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1066
  %and = shl i32 %0, 28, !dbg !1067
  %shl = and i32 %and, 268435456, !dbg !1067
  %or = or i32 %0, %shl, !dbg !1068
  %shr = lshr i32 %or, 1, !dbg !1069
  store i32 %shr, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1070
  %1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1071
  %and6 = shl i32 %1, 28, !dbg !1072
  %shl7 = and i32 %and6, 268435456, !dbg !1072
  %or8 = or i32 %1, %shl7, !dbg !1073
  %shr9 = lshr i32 %or8, 1, !dbg !1074
  store i32 %shr9, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1075
  br label %if.end, !dbg !1076

if.else:                                          ; preds = %lor.lhs.false4
  br label %for.cond, !dbg !1077

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ], !dbg !1078
  %exitcond.not = icmp eq i32 %i.0, 3, !dbg !1079
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1080

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1081
  %and11 = shl i32 %2, 28, !dbg !1082
  %shl12 = and i32 %and11, 268435456, !dbg !1082
  %or13 = or i32 %2, %shl12, !dbg !1083
  %shr14 = lshr i32 %or13, 1, !dbg !1084
  store i32 %shr14, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1085
  %3 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1086
  %and15 = shl i32 %3, 28, !dbg !1087
  %shl16 = and i32 %and15, 268435456, !dbg !1087
  %or17 = or i32 %3, %shl16, !dbg !1088
  %shr18 = lshr i32 %or17, 1, !dbg !1089
  store i32 %shr18, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1090
  br label %for.inc, !dbg !1091

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1092
  br label %for.cond, !dbg !1080, !llvm.loop !1093

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %l19 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1094
  store i32 0, i32* %l19, align 4, !dbg !1095
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1096
  store i32 0, i32* %c, align 4, !dbg !1097
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1098
  store i32 0, i32* %r, align 4, !dbg !1099
  br label %for.cond20, !dbg !1100

for.cond20:                                       ; preds = %for.inc53, %if.end
  %j.0 = phi i32 [ 16, %if.end ], [ %dec, %for.inc53 ], !dbg !1078
  %k.0 = phi i32 [ 32, %if.end ], [ %dec54, %for.inc53 ], !dbg !1078
  %l.0 = phi i32 [ 48, %if.end ], [ %dec55, %for.inc53 ], !dbg !1078
  %cmp21.not = icmp eq i32 %j.0, 0, !dbg !1101
  br i1 %cmp21.not, label %for.end56, label %for.body22, !dbg !1102

for.body22:                                       ; preds = %for.cond20
  %r23 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1103
  %4 = load i32, i32* %r23, align 4, !dbg !1103
  %shl24 = shl i32 %4, 1, !dbg !1104
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1105
  store i32 %shl24, i32* %r25, align 4, !dbg !1106
  %arrayidx = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %j.0, !dbg !1107
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1107
  %conv = zext i8 %5 to i32, !dbg !1107
  %.unpack = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1108
  %6 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !1108
  %.unpack1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1108
  %7 = insertvalue [2 x i32] %6, i32 %.unpack1, 1, !dbg !1108
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %7, i32 noundef %conv, i32 noundef 28) #5, !dbg !1108
  %conv28 = and i32 %call, 65535, !dbg !1109
  %or29 = or i32 %shl24, %conv28, !dbg !1110
  %r30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1111
  store i32 %or29, i32* %r30, align 4, !dbg !1112
  %c31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1113
  %8 = load i32, i32* %c31, align 4, !dbg !1113
  %shl32 = shl i32 %8, 1, !dbg !1114
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1115
  store i32 %shl32, i32* %c33, align 4, !dbg !1116
  %arrayidx35 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %k.0, !dbg !1117
  %9 = load i8, i8* %arrayidx35, align 1, !dbg !1117
  %conv36 = zext i8 %9 to i32, !dbg !1117
  %.unpack2 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1118
  %10 = insertvalue [2 x i32] undef, i32 %.unpack2, 0, !dbg !1118
  %.unpack3 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1118
  %11 = insertvalue [2 x i32] %10, i32 %.unpack3, 1, !dbg !1118
  %call37 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %11, i32 noundef %conv36, i32 noundef 28) #5, !dbg !1118
  %conv39 = and i32 %call37, 65535, !dbg !1119
  %or40 = or i32 %shl32, %conv39, !dbg !1120
  %c41 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1121
  store i32 %or40, i32* %c41, align 4, !dbg !1122
  %l42 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1123
  %12 = load i32, i32* %l42, align 4, !dbg !1123
  %shl43 = shl i32 %12, 1, !dbg !1124
  %l44 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1125
  store i32 %shl43, i32* %l44, align 4, !dbg !1126
  %arrayidx46 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %l.0, !dbg !1127
  %13 = load i8, i8* %arrayidx46, align 1, !dbg !1127
  %conv47 = zext i8 %13 to i32, !dbg !1127
  %.unpack4 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1128
  %14 = insertvalue [2 x i32] undef, i32 %.unpack4, 0, !dbg !1128
  %.unpack5 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1128
  %15 = insertvalue [2 x i32] %14, i32 %.unpack5, 1, !dbg !1128
  %call48 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %15, i32 noundef %conv47, i32 noundef 28) #5, !dbg !1128
  %conv50 = and i32 %call48, 65535, !dbg !1129
  %or51 = or i32 %shl43, %conv50, !dbg !1130
  %l52 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1131
  store i32 %or51, i32* %l52, align 4, !dbg !1132
  br label %for.inc53, !dbg !1133

for.inc53:                                        ; preds = %for.body22
  %dec = add nsw i32 %j.0, -1, !dbg !1134
  %dec54 = add nsw i32 %k.0, -1, !dbg !1135
  %dec55 = add nsw i32 %l.0, -1, !dbg !1136
  br label %for.cond20, !dbg !1102, !llvm.loop !1137

for.end56:                                        ; preds = %for.cond20
  ret void, !dbg !1138
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %ir, [3 x i32] %k.coerce, i32* noundef %iout) #0 !dbg !1139 {
entry:
  %k = alloca %struct.NDES_GREAT, align 4
  %ibin = alloca [16 x i8], align 1
  %ie = alloca %struct.NDES_GREAT, align 4
  %iec = alloca [9 x i8], align 1
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %.repack = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 0
  %k.coerce.elt = extractvalue [3 x i32] %k.coerce, 0
  store i32 %k.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 1
  %k.coerce.elt2 = extractvalue [3 x i32] %k.coerce, 1
  store i32 %k.coerce.elt2, i32* %0, align 4
  %1 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 2
  %k.coerce.elt4 = extractvalue [3 x i32] %k.coerce, 2
  store i32 %k.coerce.elt4, i32* %1, align 4
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 0, !dbg !1140
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %2, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.ndes_cyfun.ibin, i32 0, i32 0), i32 16, i1 true), !dbg !1140
  %l1 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1141
  store i32 0, i32* %l1, align 4, !dbg !1142
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1143
  store i32 0, i32* %c, align 4, !dbg !1144
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1145
  store i32 0, i32* %r, align 4, !dbg !1146
  store volatile i32 16, i32* %j, align 4, !dbg !1147
  br label %for.cond, !dbg !1148

for.cond:                                         ; preds = %for.inc, %entry
  %l.0 = phi i32 [ 32, %entry ], [ %dec23, %for.inc ], !dbg !1149
  %m.0 = phi i32 [ 48, %entry ], [ %dec24, %for.inc ], !dbg !1149
  %3 = load volatile i32, i32* %j, align 4, !dbg !1150
  %cmp = icmp sgt i32 %3, 0, !dbg !1151
  br i1 %cmp, label %for.body, label %for.end, !dbg !1152

for.body:                                         ; preds = %for.cond
  %r2 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1153
  %4 = load i32, i32* %r2, align 4, !dbg !1153
  %shl = shl i32 %4, 1, !dbg !1154
  %5 = load volatile i32, i32* %j, align 4, !dbg !1155
  %arrayidx = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %5, !dbg !1156
  %6 = load volatile i32, i32* %arrayidx, align 4, !dbg !1156
  %arrayidx3 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %6, !dbg !1157
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !1157
  %and = and i32 %7, %ir, !dbg !1158
  %tobool.not = icmp ne i32 %and, 0, !dbg !1157
  %cond = zext i1 %tobool.not to i32, !dbg !1157
  %or = or i32 %shl, %cond, !dbg !1159
  %r4 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1160
  store i32 %or, i32* %r4, align 4, !dbg !1161
  %c5 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1162
  %8 = load i32, i32* %c5, align 4, !dbg !1162
  %shl6 = shl i32 %8, 1, !dbg !1163
  %arrayidx7 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %l.0, !dbg !1164
  %9 = load volatile i32, i32* %arrayidx7, align 4, !dbg !1164
  %arrayidx8 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %9, !dbg !1165
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !1165
  %and9 = and i32 %10, %ir, !dbg !1166
  %tobool10.not = icmp ne i32 %and9, 0, !dbg !1165
  %cond11 = zext i1 %tobool10.not to i32, !dbg !1165
  %or12 = or i32 %shl6, %cond11, !dbg !1167
  %c13 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1168
  store i32 %or12, i32* %c13, align 4, !dbg !1169
  %l14 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1170
  %11 = load i32, i32* %l14, align 4, !dbg !1170
  %shl15 = shl i32 %11, 1, !dbg !1171
  %arrayidx16 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %m.0, !dbg !1172
  %12 = load volatile i32, i32* %arrayidx16, align 4, !dbg !1172
  %arrayidx17 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %12, !dbg !1173
  %13 = load i32, i32* %arrayidx17, align 4, !dbg !1173
  %and18 = and i32 %13, %ir, !dbg !1174
  %tobool19.not = icmp ne i32 %and18, 0, !dbg !1173
  %cond20 = zext i1 %tobool19.not to i32, !dbg !1173
  %or21 = or i32 %shl15, %cond20, !dbg !1175
  %l22 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1176
  store i32 %or21, i32* %l22, align 4, !dbg !1177
  br label %for.inc, !dbg !1178

for.inc:                                          ; preds = %for.body
  %14 = load volatile i32, i32* %j, align 4, !dbg !1179
  %dec = add nsw i32 %14, -1, !dbg !1179
  store volatile i32 %dec, i32* %j, align 4, !dbg !1179
  %dec23 = add nsw i32 %l.0, -1, !dbg !1180
  %dec24 = add nsw i32 %m.0, -1, !dbg !1181
  br label %for.cond, !dbg !1152, !llvm.loop !1182

for.end:                                          ; preds = %for.cond
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 2, !dbg !1183
  %15 = load i32, i32* %r25, align 4, !dbg !1183
  %r26 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1184
  %16 = load i32, i32* %r26, align 4, !dbg !1185
  %xor = xor i32 %16, %15, !dbg !1185
  store i32 %xor, i32* %r26, align 4, !dbg !1185
  %c27 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 1, !dbg !1186
  %17 = load i32, i32* %c27, align 4, !dbg !1186
  %c28 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1187
  %18 = load i32, i32* %c28, align 4, !dbg !1188
  %xor29 = xor i32 %18, %17, !dbg !1188
  store i32 %xor29, i32* %c28, align 4, !dbg !1188
  %l30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 0, !dbg !1189
  %19 = load i32, i32* %l30, align 4, !dbg !1189
  %l31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1190
  %20 = load i32, i32* %l31, align 4, !dbg !1191
  %xor32 = xor i32 %20, %19, !dbg !1191
  store i32 %xor32, i32* %l31, align 4, !dbg !1191
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1192
  %21 = load i32, i32* %c33, align 4, !dbg !1192
  %shl34 = shl i32 %21, 16, !dbg !1193
  %r35 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1194
  %22 = load i32, i32* %r35, align 4, !dbg !1194
  %add = add i32 %shl34, %22, !dbg !1195
  %l36 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1196
  %23 = load i32, i32* %l36, align 4, !dbg !1196
  %shl37 = shl i32 %23, 8, !dbg !1197
  %c38 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1198
  %24 = load i32, i32* %c38, align 4, !dbg !1198
  %shr = lshr i32 %24, 8, !dbg !1199
  %add39 = add i32 %shl37, %shr, !dbg !1200
  store volatile i32 1, i32* %j, align 4, !dbg !1201
  br label %for.cond40, !dbg !1202

for.cond40:                                       ; preds = %for.inc50, %for.end
  %ietmp2.0 = phi i32 [ %add39, %for.end ], [ %shr49, %for.inc50 ], !dbg !1149
  %ietmp1.0 = phi i32 [ %add, %for.end ], [ %shr48, %for.inc50 ], !dbg !1149
  %m.1 = phi i32 [ 5, %for.end ], [ %inc51, %for.inc50 ], !dbg !1149
  %25 = load volatile i32, i32* %j, align 4, !dbg !1203
  %cmp41 = icmp slt i32 %25, 5, !dbg !1204
  br i1 %cmp41, label %for.body42, label %for.end52, !dbg !1205

for.body42:                                       ; preds = %for.cond40
  %26 = trunc i32 %ietmp1.0 to i8, !dbg !1206
  %conv = and i8 %26, 63, !dbg !1206
  %27 = load volatile i32, i32* %j, align 4, !dbg !1207
  %arrayidx44 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %27, !dbg !1208
  store i8 %conv, i8* %arrayidx44, align 1, !dbg !1209
  %28 = trunc i32 %ietmp2.0 to i8, !dbg !1210
  %conv46 = and i8 %28, 63, !dbg !1210
  %arrayidx47 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %m.1, !dbg !1211
  store i8 %conv46, i8* %arrayidx47, align 1, !dbg !1212
  br label %for.inc50, !dbg !1213

for.inc50:                                        ; preds = %for.body42
  %shr49 = lshr i32 %ietmp2.0, 6, !dbg !1214
  %shr48 = lshr i32 %ietmp1.0, 6, !dbg !1215
  %29 = load volatile i32, i32* %j, align 4, !dbg !1216
  %inc = add nsw i32 %29, 1, !dbg !1216
  store volatile i32 %inc, i32* %j, align 4, !dbg !1216
  %inc51 = add nuw nsw i32 %m.1, 1, !dbg !1217
  br label %for.cond40, !dbg !1205, !llvm.loop !1218

for.end52:                                        ; preds = %for.cond40
  store volatile i32 8, i32* %jj, align 4, !dbg !1219
  br label %for.cond53, !dbg !1220

for.cond53:                                       ; preds = %for.inc81, %for.end52
  %itmp.0 = phi i32 [ 0, %for.end52 ], [ %or80, %for.inc81 ], !dbg !1149
  %30 = load volatile i32, i32* %jj, align 4, !dbg !1221
  %cmp54 = icmp sgt i32 %30, 0, !dbg !1222
  br i1 %cmp54, label %for.body56, label %for.end83, !dbg !1223

for.body56:                                       ; preds = %for.cond53
  %31 = load volatile i32, i32* %jj, align 4, !dbg !1224
  %arrayidx57 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %31, !dbg !1225
  %32 = load i8, i8* %arrayidx57, align 1, !dbg !1225
  %conv58 = zext i8 %32 to i32, !dbg !1225
  store volatile i32 %conv58, i32* %j, align 4, !dbg !1226
  %33 = load volatile i32, i32* %j, align 4, !dbg !1227
  %and59 = shl i32 %33, 1, !dbg !1228
  %shl60 = and i32 %and59, 2, !dbg !1228
  %34 = load volatile i32, i32* %j, align 4, !dbg !1229
  %and61 = lshr i32 %34, 5, !dbg !1230
  %35 = and i32 %and61, 1, !dbg !1230
  %add63 = or i32 %shl60, %35, !dbg !1231
  %36 = load volatile i32, i32* %j, align 4, !dbg !1232
  %and64 = shl i32 %36, 2, !dbg !1233
  %shl65 = and i32 %and64, 8, !dbg !1233
  %37 = load volatile i32, i32* %j, align 4, !dbg !1234
  %and66 = and i32 %37, 4, !dbg !1235
  %add67 = or i32 %shl65, %and66, !dbg !1236
  %38 = load volatile i32, i32* %j, align 4, !dbg !1237
  %and68 = lshr i32 %38, 2, !dbg !1238
  %39 = and i32 %and68, 2, !dbg !1238
  %add70 = or i32 %add67, %39, !dbg !1239
  %40 = load volatile i32, i32* %j, align 4, !dbg !1240
  %and71 = lshr i32 %40, 4, !dbg !1241
  %41 = and i32 %and71, 1, !dbg !1241
  %add73 = or i32 %add70, %41, !dbg !1242
  %42 = load volatile i32, i32* %jj, align 4, !dbg !1243
  %arrayidx76 = getelementptr inbounds [16 x [4 x [9 x i32]]], [16 x [4 x [9 x i32]]]* @ndes_cyfun.is, i32 0, i32 %add73, i32 %add63, i32 %42, !dbg !1244
  %43 = load volatile i32, i32* %arrayidx76, align 4, !dbg !1244
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 %43, !dbg !1245
  %44 = load volatile i8, i8* %arrayidx78, align 1, !dbg !1245
  br label %for.inc81, !dbg !1246

for.inc81:                                        ; preds = %for.body56
  %shl77 = shl i32 %itmp.0, 4, !dbg !1247
  %conv79 = zext i8 %44 to i32, !dbg !1245
  %or80 = or i32 %shl77, %conv79, !dbg !1248
  %45 = load volatile i32, i32* %jj, align 4, !dbg !1249
  %dec82 = add nsw i32 %45, -1, !dbg !1249
  store volatile i32 %dec82, i32* %jj, align 4, !dbg !1249
  br label %for.cond53, !dbg !1223, !llvm.loop !1250

for.end83:                                        ; preds = %for.cond53
  store i32 0, i32* %iout, align 4, !dbg !1251
  store volatile i32 32, i32* %j, align 4, !dbg !1252
  br label %for.cond84, !dbg !1253

for.cond84:                                       ; preds = %for.inc89, %for.end83
  %46 = load volatile i32, i32* %j, align 4, !dbg !1254
  %cmp85 = icmp sgt i32 %46, 0, !dbg !1255
  br i1 %cmp85, label %for.body87, label %for.end91, !dbg !1256

for.body87:                                       ; preds = %for.cond84
  %47 = load i32, i32* %iout, align 4, !dbg !1257
  %shl88 = shl i32 %47, 1, !dbg !1258
  store i32 %shl88, i32* %iout, align 4, !dbg !1259
  br label %for.inc89, !dbg !1260

for.inc89:                                        ; preds = %for.body87
  %48 = load volatile i32, i32* %j, align 4, !dbg !1261
  %dec90 = add nsw i32 %48, -1, !dbg !1261
  store volatile i32 %dec90, i32* %j, align 4, !dbg !1261
  br label %for.cond84, !dbg !1256, !llvm.loop !1262

for.end91:                                        ; preds = %for.cond84
  %49 = load volatile i32, i32* %j, align 4, !dbg !1264
  %arrayidx92 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_cyfun.ipp, i32 0, i32 %49, !dbg !1265
  %50 = load volatile i32, i32* %arrayidx92, align 4, !dbg !1265
  %arrayidx93 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %50, !dbg !1266
  %51 = load i32, i32* %arrayidx93, align 4, !dbg !1266
  %and94 = and i32 %51, %itmp.0, !dbg !1267
  %tobool95.not = icmp ne i32 %and94, 0, !dbg !1266
  %cond96 = zext i1 %tobool95.not to i32, !dbg !1266
  %52 = load i32, i32* %iout, align 4, !dbg !1268
  %or97 = or i32 %52, %cond96, !dbg !1268
  store i32 %or97, i32* %iout, align 4, !dbg !1268
  ret void, !dbg !1269
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_return() #0 !dbg !1270 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1271
  %1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1272
  %add = add i32 %0, %1, !dbg !1273
  %cmp = icmp ne i32 %add, 8390656, !dbg !1274
  %conv = zext i1 %cmp to i32, !dbg !1274
  ret i32 %conv, !dbg !1275
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_main() #0 !dbg !1276 {
entry:
  %0 = load i32, i32* @ndes_isw, align 4, !dbg !1277
  %.unpack = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 0), align 4, !dbg !1278
  %1 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !1278
  %.unpack1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 1), align 4, !dbg !1278
  %2 = insertvalue [2 x i32] %1, i32 %.unpack1, 1, !dbg !1278
  %.unpack2 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 0), align 4, !dbg !1278
  %3 = insertvalue [2 x i32] undef, i32 %.unpack2, 0, !dbg !1278
  %.unpack3 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 1), align 4, !dbg !1278
  %4 = insertvalue [2 x i32] %3, i32 %.unpack3, 1, !dbg !1278
  call arm_aapcs_vfpcc void @ndes_des([2 x i32] %2, [2 x i32] %4, i32* noundef nonnull @ndes_newkey, i32 noundef %0, %struct.DATA* noundef nonnull @ndes_out) #5, !dbg !1278
  ret void, !dbg !1279
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes() #0 !dbg !1280 {
entry:
  call arm_aapcs_vfpcc void @ndes_init() #5, !dbg !1281
  call arm_aapcs_vfpcc void @ndes_main() #5, !dbg !1282
  %call = call arm_aapcs_vfpcc i32 @ndes_return() #5, !dbg !1283
  ret i32 %call, !dbg !1284
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_initSeed() #0 !dbg !1285 {
entry:
  store volatile i32 0, i32* @prime_seed, align 4, !dbg !1287
  ret void, !dbg !1288
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @prime_randomInteger() #0 !dbg !1289 {
entry:
  %0 = load volatile i32, i32* @prime_seed, align 4, !dbg !1290
  %mul = mul nsw i32 %0, 133, !dbg !1291
  %add = add nsw i32 %mul, 81, !dbg !1292
  %rem = srem i32 %add, 8095, !dbg !1293
  store volatile i32 %rem, i32* @prime_seed, align 4, !dbg !1294
  %1 = load volatile i32, i32* @prime_seed, align 4, !dbg !1295
  ret i32 %1, !dbg !1296
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_init() #0 !dbg !1297 {
entry:
  call arm_aapcs_vfpcc void @prime_initSeed() #5, !dbg !1298
  %call = call arm_aapcs_vfpcc i32 @prime_randomInteger() #5, !dbg !1299
  store i32 %call, i32* @prime_x, align 4, !dbg !1300
  %call1 = call arm_aapcs_vfpcc i32 @prime_randomInteger() #5, !dbg !1301
  store i32 %call1, i32* @prime_y, align 4, !dbg !1302
  ret void, !dbg !1303
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @prime_return() #0 !dbg !1304 {
entry:
  %0 = load i32, i32* @prime_result, align 4, !dbg !1305
  ret i32 %0, !dbg !1306
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef %n, i32 noundef %m) #0 !dbg !1307 {
entry:
  %rem = urem i32 %m, %n, !dbg !1308
  %cmp = icmp eq i32 %rem, 0, !dbg !1309
  %conv1 = zext i1 %cmp to i8, !dbg !1310
  ret i8 %conv1, !dbg !1311
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_even(i32 noundef %n) #0 !dbg !1312 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef 2, i32 noundef %n) #5, !dbg !1313
  ret i8 %call, !dbg !1314
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %n) #0 !dbg !1315 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_even(i32 noundef %n) #5, !dbg !1316
  %tobool.not = icmp eq i8 %call, 0, !dbg !1316
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1316

if.then:                                          ; preds = %entry
  %cmp = icmp eq i32 %n, 2, !dbg !1317
  br label %return, !dbg !1318

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !1319

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 3, %if.end ], [ %add, %for.inc ], !dbg !1320
  %mul = mul i32 %i.0, %i.0, !dbg !1321
  %cmp2.not = icmp ugt i32 %mul, %n, !dbg !1322
  br i1 %cmp2.not, label %for.end, label %for.body, !dbg !1323

for.body:                                         ; preds = %for.cond
  %call4 = call arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef %i.0, i32 noundef %n) #5, !dbg !1324
  %tobool5.not = icmp eq i8 %call4, 0, !dbg !1324
  br i1 %tobool5.not, label %if.end7, label %if.then6, !dbg !1324

if.then6:                                         ; preds = %for.body
  br label %return, !dbg !1325

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !1326

for.inc:                                          ; preds = %if.end7
  %add = add i32 %i.0, 2, !dbg !1327
  br label %for.cond, !dbg !1323, !llvm.loop !1328

for.end:                                          ; preds = %for.cond
  %cmp8 = icmp ugt i32 %n, 1, !dbg !1329
  br label %return, !dbg !1330

return:                                           ; preds = %for.end, %if.then6, %if.then
  %retval.0.shrunk = phi i1 [ %cmp, %if.then ], [ false, %if.then6 ], [ %cmp8, %for.end ]
  %retval.0 = zext i1 %retval.0.shrunk to i8, !dbg !1320
  ret i8 %retval.0, !dbg !1331
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_swap(i32* noundef %a, i32* noundef %b) #0 !dbg !1332 {
entry:
  %0 = load i32, i32* %a, align 4, !dbg !1333
  %1 = load i32, i32* %b, align 4, !dbg !1334
  store i32 %1, i32* %a, align 4, !dbg !1335
  store i32 %0, i32* %b, align 4, !dbg !1336
  ret void, !dbg !1337
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_main() #0 !dbg !1338 {
entry:
  call arm_aapcs_vfpcc void @prime_swap(i32* noundef nonnull @prime_x, i32* noundef nonnull @prime_y) #5, !dbg !1339
  %0 = load i32, i32* @prime_x, align 4, !dbg !1340
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %0) #5, !dbg !1341
  %tobool.not = icmp eq i8 %call, 0, !dbg !1341
  br i1 %tobool.not, label %land.rhs, label %land.end, !dbg !1342

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* @prime_y, align 4, !dbg !1343
  %call1 = call arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %1) #5, !dbg !1344
  %tobool2.not = icmp ne i8 %call1, 0, !dbg !1345
  %phi.cast = zext i1 %tobool2.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %land.rhs ]
  store i32 %2, i32* @prime_result, align 4, !dbg !1346
  ret void, !dbg !1347
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime(i8* noundef %0) #0 !dbg !1348 {
entry:
  call arm_aapcs_vfpcc void @prime_init() #5, !dbg !1349
  call arm_aapcs_vfpcc void @prime_main() #5, !dbg !1350
  %call = call arm_aapcs_vfpcc i32 @prime_return() #5, !dbg !1351
  ret void, !dbg !1352
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_init() #0 !dbg !1353 {
entry:
  store float 0.000000e+00, float* @rad2deg_X, align 4, !dbg !1355
  store float 0.000000e+00, float* @rad2deg_Y, align 4, !dbg !1356
  ret void, !dbg !1357
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @rad2deg_return() #0 !dbg !1358 {
entry:
  %0 = load float, float* @rad2deg_Y, align 4, !dbg !1359
  %conv = fptosi float %0 to i32, !dbg !1359
  %cmp = icmp eq i32 %conv, 64620, !dbg !1360
  br i1 %cmp, label %if.then, label %if.else, !dbg !1361

if.then:                                          ; preds = %entry
  br label %return, !dbg !1362

if.else:                                          ; preds = %entry
  br label %return, !dbg !1363

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !1364
  ret i32 %retval.0, !dbg !1365
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_main() #0 !dbg !1366 {
entry:
  br label %for.cond, !dbg !1367

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi float [ 0.000000e+00, %entry ], [ %add1, %for.inc ], !dbg !1368
  store float %storemerge, float* @rad2deg_X, align 4, !dbg !1368
  %cmp = fcmp ugt float %storemerge, 0x40191EB8A0000000, !dbg !1369
  br i1 %cmp, label %for.end, label %for.body, !dbg !1370

for.body:                                         ; preds = %for.cond
  %0 = load float, float* @rad2deg_X, align 4, !dbg !1371
  %mul = fmul float %0, 1.800000e+02, !dbg !1371
  %div = fdiv float %mul, 0x40091EB860000000, !dbg !1371
  %1 = load float, float* @rad2deg_Y, align 4, !dbg !1372
  %add = fadd float %1, %div, !dbg !1372
  store float %add, float* @rad2deg_Y, align 4, !dbg !1372
  br label %for.inc, !dbg !1373

for.inc:                                          ; preds = %for.body
  %2 = load float, float* @rad2deg_X, align 4, !dbg !1374
  %add1 = fadd float %2, 0x3F91DCF4E0000000, !dbg !1374
  br label %for.cond, !dbg !1370, !llvm.loop !1375

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1376
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg(i8* noundef %n) #0 !dbg !1377 {
entry:
  call arm_aapcs_vfpcc void @rad2deg_init() #5, !dbg !1378
  call arm_aapcs_vfpcc void @rad2deg_main() #5, !dbg !1379
  %call = call arm_aapcs_vfpcc i32 @rad2deg_return() #5, !dbg !1380
  ret void, !dbg !1381
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #3 !dbg !1382 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1383
  br i1 %cmp, label %if.then, label %if.end, !dbg !1384

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #6, !dbg !1385
  unreachable, !dbg !1385

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !1386
  ret i64 %0, !dbg !1387
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #4 !dbg !1388 {
entry:
  unreachable, !dbg !1389
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #3 !dbg !1390 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1391
  br i1 %cmp, label %if.then, label %if.end, !dbg !1392

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #6, !dbg !1393
  unreachable, !dbg !1393

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !1394
  ret i32 %0, !dbg !1395
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1396 {
entry:
  %add = add i64 %a, %b, !dbg !1397
  %cmp = icmp sgt i64 %b, -1, !dbg !1398
  br i1 %cmp, label %if.then, label %if.else, !dbg !1399

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !1400
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1401

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !1402
  unreachable, !dbg !1402

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1403

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !1404
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1405

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !1406
  unreachable, !dbg !1406

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !1407
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1408 {
entry:
  %add = add i32 %a, %b, !dbg !1409
  %cmp = icmp sgt i32 %b, -1, !dbg !1410
  br i1 %cmp, label %if.then, label %if.else, !dbg !1411

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !1412
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1413

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !1414
  unreachable, !dbg !1414

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1415

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !1416
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1417

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !1418
  unreachable, !dbg !1418

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !1419
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1420 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1421
  store i64 %a, i64* %all, align 8, !dbg !1422
  %and = and i32 %b, 32, !dbg !1423
  %tobool.not = icmp eq i32 %and, 0, !dbg !1423
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1424

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !1425
  store i32 0, i32* %low, align 8, !dbg !1426
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !1427
  %0 = load i32, i32* %low2, align 8, !dbg !1427
  %sub = add nsw i32 %b, -32, !dbg !1428
  %shl = shl i32 %0, %sub, !dbg !1429
  %s3 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1430
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !1431
  store i32 %shl, i32* %high, align 4, !dbg !1432
  br label %if.end18, !dbg !1433

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1434
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1435

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1436

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !1437
  %1 = load i32, i32* %low6, align 8, !dbg !1437
  %shl7 = shl i32 %1, %b, !dbg !1438
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !1439
  store i32 %shl7, i32* %low9, align 8, !dbg !1440
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1441
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !1442
  %2 = load i32, i32* %high11, align 4, !dbg !1442
  %shl12 = shl i32 %2, %b, !dbg !1443
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1444
  %3 = load i32, i32* %low14, align 8, !dbg !1444
  %sub15 = sub nsw i32 32, %b, !dbg !1445
  %shr = lshr i32 %3, %sub15, !dbg !1446
  %or = or i32 %shl12, %shr, !dbg !1447
  %s16 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1448
  %high17 = getelementptr inbounds %struct.DATA, %struct.DATA* %s16, i32 0, i32 1, !dbg !1449
  store i32 %or, i32* %high17, align 4, !dbg !1450
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1451
  %4 = load i64, i64* %all19, align 8, !dbg !1451
  br label %return, !dbg !1452

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1453
  ret i64 %retval.0, !dbg !1454
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1455 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1456
  store i64 %a, i64* %all, align 8, !dbg !1457
  %and = and i32 %b, 32, !dbg !1458
  %tobool.not = icmp eq i32 %and, 0, !dbg !1458
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1459

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1460
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1461
  %0 = load i32, i32* %high, align 4, !dbg !1461
  %shr = ashr i32 %0, 31, !dbg !1462
  %s1 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1463
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1464
  store i32 %shr, i32* %high2, align 4, !dbg !1465
  %s3 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1466
  %high4 = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !1467
  %1 = load i32, i32* %high4, align 4, !dbg !1467
  %sub = add nsw i32 %b, -32, !dbg !1468
  %shr5 = ashr i32 %1, %sub, !dbg !1469
  %low = bitcast %union.dwords* %result to i32*, !dbg !1470
  store i32 %shr5, i32* %low, align 8, !dbg !1471
  br label %if.end21, !dbg !1472

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1473
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1474

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !1475

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1476
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !1477
  %2 = load i32, i32* %high9, align 4, !dbg !1477
  %shr10 = ashr i32 %2, %b, !dbg !1478
  %s11 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1479
  %high12 = getelementptr inbounds %struct.DATA, %struct.DATA* %s11, i32 0, i32 1, !dbg !1480
  store i32 %shr10, i32* %high12, align 4, !dbg !1481
  %s13 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1482
  %high14 = getelementptr inbounds %struct.DATA, %struct.DATA* %s13, i32 0, i32 1, !dbg !1483
  %3 = load i32, i32* %high14, align 4, !dbg !1483
  %sub15 = sub nsw i32 32, %b, !dbg !1484
  %shl = shl i32 %3, %sub15, !dbg !1485
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !1486
  %4 = load i32, i32* %low17, align 8, !dbg !1486
  %shr18 = lshr i32 %4, %b, !dbg !1487
  %or = or i32 %shl, %shr18, !dbg !1488
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !1489
  store i32 %or, i32* %low20, align 8, !dbg !1490
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1491
  %5 = load i64, i64* %all22, align 8, !dbg !1491
  br label %return, !dbg !1492

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !1493
  ret i64 %retval.0, !dbg !1494
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #3 !dbg !1495 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1496
  store i64 %a, i64* %all, align 8, !dbg !1497
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1498
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1499
  %0 = load i32, i32* %high, align 4, !dbg !1499
  %cmp = icmp eq i32 %0, 0, !dbg !1500
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1501
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1502
  %1 = load i32, i32* %high2, align 4, !dbg !1502
  %low = bitcast %union.dwords* %x to i32*, !dbg !1503
  %2 = load i32, i32* %low, align 8, !dbg !1503
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !1504
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !1505, !range !1506
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1507
  %add = add nuw nsw i32 %4, %and5, !dbg !1508
  ret i32 %add, !dbg !1509
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #3 !dbg !1510 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1511
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1512
  %sub = sub nuw nsw i32 16, %shl, !dbg !1513
  %shr = lshr i32 %a, %sub, !dbg !1514
  %and1 = and i32 %shr, 65280, !dbg !1515
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1516
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1517
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1518
  %shr6 = lshr i32 %shr, %sub5, !dbg !1519
  %add = or i32 %shl, %shl4, !dbg !1520
  %and7 = and i32 %shr6, 240, !dbg !1521
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1522
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1523
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1524
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1525
  %add13 = or i32 %add, %shl10, !dbg !1526
  %and14 = and i32 %shr12, 12, !dbg !1527
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1528
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1529
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1530
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1531
  %add20 = or i32 %add13, %shl17, !dbg !1532
  %sub21 = sub i32 2, %shr19, !dbg !1533
  %and22 = lshr i32 %shr19, 1, !dbg !1534
  %0 = or i32 %and22, -2, !dbg !1534
  %.neg = add nsw i32 %0, 1, !dbg !1534
  %and26 = and i32 %sub21, %.neg, !dbg !1535
  %add27 = add i32 %add20, %and26, !dbg !1536
  ret i32 %add27, !dbg !1537
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !1538 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1539
  store i64 %a, i64* %all, align 8, !dbg !1540
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1541
  store i64 %b, i64* %all1, align 8, !dbg !1542
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1543
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1544
  %0 = load i32, i32* %high, align 4, !dbg !1544
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1545
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1546
  %1 = load i32, i32* %high3, align 4, !dbg !1546
  %cmp = icmp slt i32 %0, %1, !dbg !1547
  br i1 %cmp, label %if.then, label %if.end, !dbg !1548

if.then:                                          ; preds = %entry
  br label %return, !dbg !1549

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1550
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1551
  %2 = load i32, i32* %high5, align 4, !dbg !1551
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1552
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1553
  %3 = load i32, i32* %high7, align 4, !dbg !1553
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1554
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1555

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1556

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1557
  %4 = load i32, i32* %low, align 8, !dbg !1557
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1558
  %5 = load i32, i32* %low13, align 8, !dbg !1558
  %cmp14 = icmp ult i32 %4, %5, !dbg !1559
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1560

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1561

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1562
  %6 = load i32, i32* %low18, align 8, !dbg !1562
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1563
  %7 = load i32, i32* %low20, align 8, !dbg !1563
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1564
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1565

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1566

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1567

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1568
  ret i32 %retval.0, !dbg !1569
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !1570 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !1571
  %sub = add nsw i32 %call, -1, !dbg !1572
  ret i32 %sub, !dbg !1573
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #3 !dbg !1574 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1575
  store i64 %a, i64* %all, align 8, !dbg !1576
  %low = bitcast %union.dwords* %x to i32*, !dbg !1577
  %0 = load i32, i32* %low, align 8, !dbg !1577
  %cmp = icmp eq i32 %0, 0, !dbg !1578
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1579
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1580
  %1 = load i32, i32* %high, align 4, !dbg !1580
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1581
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1582, !range !1506
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1583
  %add = add nuw nsw i32 %3, %and5, !dbg !1584
  ret i32 %add, !dbg !1585
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #3 !dbg !1586 {
entry:
  %and = and i32 %a, 65535, !dbg !1587
  %cmp = icmp eq i32 %and, 0, !dbg !1588
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1589
  %shr = lshr i32 %a, %shl, !dbg !1590
  %and1 = and i32 %shr, 255, !dbg !1591
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1592
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1593
  %shr5 = lshr i32 %shr, %shl4, !dbg !1594
  %add = or i32 %shl, %shl4, !dbg !1595
  %and6 = and i32 %shr5, 15, !dbg !1596
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1597
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1598
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1599
  %add11 = or i32 %add, %shl9, !dbg !1600
  %and12 = and i32 %shr10, 3, !dbg !1601
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1602
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1603
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1604
  %add18 = or i32 %add11, %shl15, !dbg !1605
  %and17 = lshr i32 %shr16, 1, !dbg !1606
  %shr19 = and i32 %and17, 1, !dbg !1606
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1607
  %0 = or i32 %shr16, -2, !dbg !1608
  %.neg = add nsw i32 %0, 1, !dbg !1608
  %and24 = and i32 %sub, %.neg, !dbg !1609
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1610
  ret i32 %add25, !dbg !1611
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1612 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1613
  %shr1 = ashr i64 %b, 63, !dbg !1614
  %xor = xor i64 %shr, %a, !dbg !1615
  %sub = sub nsw i64 %xor, %shr, !dbg !1616
  %xor2 = xor i64 %shr1, %b, !dbg !1617
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1618
  %xor4 = xor i64 %shr, %shr1, !dbg !1619
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #5, !dbg !1620
  %xor5 = xor i64 %call, %xor4, !dbg !1621
  %sub6 = sub i64 %xor5, %xor4, !dbg !1622
  ret i64 %sub6, !dbg !1623
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1624 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1625
  store i64 %a, i64* %all, align 8, !dbg !1626
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1627
  store i64 %b, i64* %all1, align 8, !dbg !1628
  %s = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1629
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1630
  %0 = load i32, i32* %high, align 4, !dbg !1630
  %cmp = icmp eq i32 %0, 0, !dbg !1631
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1632

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1633
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1634
  %1 = load i32, i32* %high3, align 4, !dbg !1634
  %cmp4 = icmp eq i32 %1, 0, !dbg !1635
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1636

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1637
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1637

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1638
  %2 = load i32, i32* %low, align 8, !dbg !1638
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1639
  %3 = load i32, i32* %low9, align 8, !dbg !1639
  %rem10 = urem i32 %2, %3, !dbg !1640
  %conv = zext i32 %rem10 to i64, !dbg !1641
  store i64 %conv, i64* %rem, align 8, !dbg !1642
  br label %if.end, !dbg !1643

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1644
  %4 = load i32, i32* %low12, align 8, !dbg !1644
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1645
  %5 = load i32, i32* %low14, align 8, !dbg !1645
  %div = udiv i32 %4, %5, !dbg !1646
  %conv15 = zext i32 %div to i64, !dbg !1647
  br label %return, !dbg !1648

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1649
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1649

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1650
  %6 = load i32, i32* %low20, align 8, !dbg !1650
  %conv21 = zext i32 %6 to i64, !dbg !1651
  store i64 %conv21, i64* %rem, align 8, !dbg !1652
  br label %if.end22, !dbg !1653

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1654

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1655
  %7 = load i32, i32* %low25, align 8, !dbg !1655
  %cmp26 = icmp eq i32 %7, 0, !dbg !1656
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1657

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1658
  %high30 = getelementptr inbounds %struct.DATA, %struct.DATA* %s29, i32 0, i32 1, !dbg !1659
  %8 = load i32, i32* %high30, align 4, !dbg !1659
  %cmp31 = icmp eq i32 %8, 0, !dbg !1660
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1661

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1662
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1662

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1663
  %high37 = getelementptr inbounds %struct.DATA, %struct.DATA* %s36, i32 0, i32 1, !dbg !1664
  %9 = load i32, i32* %high37, align 4, !dbg !1664
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1665
  %10 = load i32, i32* %low39, align 8, !dbg !1665
  %rem40 = urem i32 %9, %10, !dbg !1666
  %conv41 = zext i32 %rem40 to i64, !dbg !1667
  store i64 %conv41, i64* %rem, align 8, !dbg !1668
  br label %if.end42, !dbg !1669

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1670
  %high44 = getelementptr inbounds %struct.DATA, %struct.DATA* %s43, i32 0, i32 1, !dbg !1671
  %11 = load i32, i32* %high44, align 4, !dbg !1671
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1672
  %12 = load i32, i32* %low46, align 8, !dbg !1672
  %div47 = udiv i32 %11, %12, !dbg !1673
  %conv48 = zext i32 %div47 to i64, !dbg !1674
  br label %return, !dbg !1675

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1676
  %13 = load i32, i32* %low51, align 8, !dbg !1676
  %cmp52 = icmp eq i32 %13, 0, !dbg !1677
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1678

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1679
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1679

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1680
  %high58 = getelementptr inbounds %struct.DATA, %struct.DATA* %s57, i32 0, i32 1, !dbg !1681
  %14 = load i32, i32* %high58, align 4, !dbg !1681
  %s59 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1682
  %high60 = getelementptr inbounds %struct.DATA, %struct.DATA* %s59, i32 0, i32 1, !dbg !1683
  %15 = load i32, i32* %high60, align 4, !dbg !1683
  %rem61 = urem i32 %14, %15, !dbg !1684
  %s62 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1685
  %high63 = getelementptr inbounds %struct.DATA, %struct.DATA* %s62, i32 0, i32 1, !dbg !1686
  store i32 %rem61, i32* %high63, align 4, !dbg !1687
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1688
  store i32 0, i32* %low65, align 8, !dbg !1689
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1690
  %16 = load i64, i64* %all66, align 8, !dbg !1690
  store i64 %16, i64* %rem, align 8, !dbg !1691
  br label %if.end67, !dbg !1692

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1693
  %high69 = getelementptr inbounds %struct.DATA, %struct.DATA* %s68, i32 0, i32 1, !dbg !1694
  %17 = load i32, i32* %high69, align 4, !dbg !1694
  %s70 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1695
  %high71 = getelementptr inbounds %struct.DATA, %struct.DATA* %s70, i32 0, i32 1, !dbg !1696
  %18 = load i32, i32* %high71, align 4, !dbg !1696
  %div72 = udiv i32 %17, %18, !dbg !1697
  %conv73 = zext i32 %div72 to i64, !dbg !1698
  br label %return, !dbg !1699

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1700
  %high76 = getelementptr inbounds %struct.DATA, %struct.DATA* %s75, i32 0, i32 1, !dbg !1701
  %19 = load i32, i32* %high76, align 4, !dbg !1701
  %s77 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1702
  %high78 = getelementptr inbounds %struct.DATA, %struct.DATA* %s77, i32 0, i32 1, !dbg !1703
  %20 = load i32, i32* %high78, align 4, !dbg !1703
  %sub = add i32 %20, -1, !dbg !1704
  %and = and i32 %19, %sub, !dbg !1705
  %cmp79 = icmp eq i32 %and, 0, !dbg !1706
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1707

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1708
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1708

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1709
  %21 = load i32, i32* %low85, align 8, !dbg !1709
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1710
  store i32 %21, i32* %low87, align 8, !dbg !1711
  %s88 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1712
  %high89 = getelementptr inbounds %struct.DATA, %struct.DATA* %s88, i32 0, i32 1, !dbg !1713
  %22 = load i32, i32* %high89, align 4, !dbg !1713
  %s90 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1714
  %high91 = getelementptr inbounds %struct.DATA, %struct.DATA* %s90, i32 0, i32 1, !dbg !1715
  %23 = load i32, i32* %high91, align 4, !dbg !1715
  %sub92 = add i32 %23, -1, !dbg !1716
  %and93 = and i32 %22, %sub92, !dbg !1717
  %s94 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1718
  %high95 = getelementptr inbounds %struct.DATA, %struct.DATA* %s94, i32 0, i32 1, !dbg !1719
  store i32 %and93, i32* %high95, align 4, !dbg !1720
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1721
  %24 = load i64, i64* %all96, align 8, !dbg !1721
  store i64 %24, i64* %rem, align 8, !dbg !1722
  br label %if.end97, !dbg !1723

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1724
  %high99 = getelementptr inbounds %struct.DATA, %struct.DATA* %s98, i32 0, i32 1, !dbg !1725
  %25 = load i32, i32* %high99, align 4, !dbg !1725
  %s100 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1726
  %high101 = getelementptr inbounds %struct.DATA, %struct.DATA* %s100, i32 0, i32 1, !dbg !1727
  %26 = load i32, i32* %high101, align 4, !dbg !1727
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1728, !range !1506
  %shr = lshr i32 %25, %27, !dbg !1729
  %conv102 = zext i32 %shr to i64, !dbg !1730
  br label %return, !dbg !1731

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1732
  %high105 = getelementptr inbounds %struct.DATA, %struct.DATA* %s104, i32 0, i32 1, !dbg !1733
  %28 = load i32, i32* %high105, align 4, !dbg !1733
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1734, !range !1506
  %s106 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1735
  %high107 = getelementptr inbounds %struct.DATA, %struct.DATA* %s106, i32 0, i32 1, !dbg !1736
  %30 = load i32, i32* %high107, align 4, !dbg !1736
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1737, !range !1506
  %sub108 = sub nsw i32 %29, %31, !dbg !1738
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1739
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1740

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1741
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1741

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1742
  %32 = load i64, i64* %all114, align 8, !dbg !1742
  store i64 %32, i64* %rem, align 8, !dbg !1743
  br label %if.end115, !dbg !1744

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1745

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1746
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1747
  store i32 0, i32* %low118, align 8, !dbg !1748
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1749
  %33 = load i32, i32* %low120, align 8, !dbg !1749
  %sub121 = sub nsw i32 31, %sub108, !dbg !1750
  %shl = shl i32 %33, %sub121, !dbg !1751
  %s122 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1752
  %high123 = getelementptr inbounds %struct.DATA, %struct.DATA* %s122, i32 0, i32 1, !dbg !1753
  store i32 %shl, i32* %high123, align 4, !dbg !1754
  %s124 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1755
  %high125 = getelementptr inbounds %struct.DATA, %struct.DATA* %s124, i32 0, i32 1, !dbg !1756
  %34 = load i32, i32* %high125, align 4, !dbg !1756
  %shr126 = lshr i32 %34, %inc, !dbg !1757
  %s127 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1758
  %high128 = getelementptr inbounds %struct.DATA, %struct.DATA* %s127, i32 0, i32 1, !dbg !1759
  store i32 %shr126, i32* %high128, align 4, !dbg !1760
  %s129 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1761
  %high130 = getelementptr inbounds %struct.DATA, %struct.DATA* %s129, i32 0, i32 1, !dbg !1762
  %35 = load i32, i32* %high130, align 4, !dbg !1762
  %sub131 = sub nsw i32 31, %sub108, !dbg !1763
  %shl132 = shl i32 %35, %sub131, !dbg !1764
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1765
  %36 = load i32, i32* %low134, align 8, !dbg !1765
  %shr135 = lshr i32 %36, %inc, !dbg !1766
  %or = or i32 %shl132, %shr135, !dbg !1767
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1768
  store i32 %or, i32* %low137, align 8, !dbg !1769
  br label %if.end317, !dbg !1770

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1771
  %high139 = getelementptr inbounds %struct.DATA, %struct.DATA* %s138, i32 0, i32 1, !dbg !1772
  %37 = load i32, i32* %high139, align 4, !dbg !1772
  %cmp140 = icmp eq i32 %37, 0, !dbg !1773
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1774

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1775
  %38 = load i32, i32* %low144, align 8, !dbg !1775
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1776, !range !1506
  %cmp149 = icmp ult i32 %39, 2, !dbg !1776
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1777

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1778
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1778

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1779
  %40 = load i32, i32* %low155, align 8, !dbg !1779
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1780
  %41 = load i32, i32* %low157, align 8, !dbg !1780
  %sub158 = add i32 %41, -1, !dbg !1781
  %and159 = and i32 %40, %sub158, !dbg !1782
  %conv160 = zext i32 %and159 to i64, !dbg !1783
  store i64 %conv160, i64* %rem, align 8, !dbg !1784
  br label %if.end161, !dbg !1785

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1786
  %42 = load i32, i32* %low163, align 8, !dbg !1786
  %cmp164 = icmp eq i32 %42, 1, !dbg !1787
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1788

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1789
  %43 = load i64, i64* %all167, align 8, !dbg !1789
  br label %return, !dbg !1790

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1791
  %44 = load i32, i32* %low170, align 8, !dbg !1791
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1792, !range !1506
  %s171 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1793
  %high172 = getelementptr inbounds %struct.DATA, %struct.DATA* %s171, i32 0, i32 1, !dbg !1794
  %46 = load i32, i32* %high172, align 4, !dbg !1794
  %shr173 = lshr i32 %46, %45, !dbg !1795
  %s174 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1796
  %high175 = getelementptr inbounds %struct.DATA, %struct.DATA* %s174, i32 0, i32 1, !dbg !1797
  store i32 %shr173, i32* %high175, align 4, !dbg !1798
  %s176 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1799
  %high177 = getelementptr inbounds %struct.DATA, %struct.DATA* %s176, i32 0, i32 1, !dbg !1800
  %47 = load i32, i32* %high177, align 4, !dbg !1800
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1801
  %shl179 = shl i32 %47, %sub178, !dbg !1802
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1803
  %48 = load i32, i32* %low181, align 8, !dbg !1803
  %shr182 = lshr i32 %48, %45, !dbg !1804
  %or183 = or i32 %shl179, %shr182, !dbg !1805
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1806
  store i32 %or183, i32* %low185, align 8, !dbg !1807
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1808
  %49 = load i64, i64* %all186, align 8, !dbg !1808
  br label %return, !dbg !1809

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1810
  %50 = load i32, i32* %low189, align 8, !dbg !1810
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1811, !range !1506
  %add = add nuw nsw i32 %51, 33, !dbg !1812
  %s190 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1813
  %high191 = getelementptr inbounds %struct.DATA, %struct.DATA* %s190, i32 0, i32 1, !dbg !1814
  %52 = load i32, i32* %high191, align 4, !dbg !1814
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1815, !range !1506
  %sub192 = sub nsw i32 %add, %53, !dbg !1816
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1817
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1818

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1819
  store i32 0, i32* %low197, align 8, !dbg !1820
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1821
  %54 = load i32, i32* %low199, align 8, !dbg !1821
  %s200 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1822
  %high201 = getelementptr inbounds %struct.DATA, %struct.DATA* %s200, i32 0, i32 1, !dbg !1823
  store i32 %54, i32* %high201, align 4, !dbg !1824
  %s202 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1825
  %high203 = getelementptr inbounds %struct.DATA, %struct.DATA* %s202, i32 0, i32 1, !dbg !1826
  store i32 0, i32* %high203, align 4, !dbg !1827
  %s204 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1828
  %high205 = getelementptr inbounds %struct.DATA, %struct.DATA* %s204, i32 0, i32 1, !dbg !1829
  %55 = load i32, i32* %high205, align 4, !dbg !1829
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1830
  store i32 %55, i32* %low207, align 8, !dbg !1831
  br label %if.end262, !dbg !1832

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1833
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1834

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1835
  store i32 0, i32* %low213, align 8, !dbg !1836
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1837
  %56 = load i32, i32* %low215, align 8, !dbg !1837
  %sub216 = sub nsw i32 32, %sub192, !dbg !1838
  %shl217 = shl i32 %56, %sub216, !dbg !1839
  %s218 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1840
  %high219 = getelementptr inbounds %struct.DATA, %struct.DATA* %s218, i32 0, i32 1, !dbg !1841
  store i32 %shl217, i32* %high219, align 4, !dbg !1842
  %s220 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1843
  %high221 = getelementptr inbounds %struct.DATA, %struct.DATA* %s220, i32 0, i32 1, !dbg !1844
  %57 = load i32, i32* %high221, align 4, !dbg !1844
  %shr222 = lshr i32 %57, %sub192, !dbg !1845
  %s223 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1846
  %high224 = getelementptr inbounds %struct.DATA, %struct.DATA* %s223, i32 0, i32 1, !dbg !1847
  store i32 %shr222, i32* %high224, align 4, !dbg !1848
  %s225 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1849
  %high226 = getelementptr inbounds %struct.DATA, %struct.DATA* %s225, i32 0, i32 1, !dbg !1850
  %58 = load i32, i32* %high226, align 4, !dbg !1850
  %sub227 = sub nsw i32 32, %sub192, !dbg !1851
  %shl228 = shl i32 %58, %sub227, !dbg !1852
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1853
  %59 = load i32, i32* %low230, align 8, !dbg !1853
  %shr231 = lshr i32 %59, %sub192, !dbg !1854
  %or232 = or i32 %shl228, %shr231, !dbg !1855
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1856
  store i32 %or232, i32* %low234, align 8, !dbg !1857
  br label %if.end261, !dbg !1858

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1859
  %60 = load i32, i32* %low237, align 8, !dbg !1859
  %sub238 = sub nsw i32 64, %sub192, !dbg !1860
  %shl239 = shl i32 %60, %sub238, !dbg !1861
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1862
  store i32 %shl239, i32* %low241, align 8, !dbg !1863
  %s242 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1864
  %high243 = getelementptr inbounds %struct.DATA, %struct.DATA* %s242, i32 0, i32 1, !dbg !1865
  %61 = load i32, i32* %high243, align 4, !dbg !1865
  %sub244 = sub nsw i32 64, %sub192, !dbg !1866
  %shl245 = shl i32 %61, %sub244, !dbg !1867
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1868
  %62 = load i32, i32* %low247, align 8, !dbg !1868
  %sub248 = add nsw i32 %sub192, -32, !dbg !1869
  %shr249 = lshr i32 %62, %sub248, !dbg !1870
  %or250 = or i32 %shl245, %shr249, !dbg !1871
  %s251 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1872
  %high252 = getelementptr inbounds %struct.DATA, %struct.DATA* %s251, i32 0, i32 1, !dbg !1873
  store i32 %or250, i32* %high252, align 4, !dbg !1874
  %s253 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1875
  %high254 = getelementptr inbounds %struct.DATA, %struct.DATA* %s253, i32 0, i32 1, !dbg !1876
  store i32 0, i32* %high254, align 4, !dbg !1877
  %s255 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1878
  %high256 = getelementptr inbounds %struct.DATA, %struct.DATA* %s255, i32 0, i32 1, !dbg !1879
  %63 = load i32, i32* %high256, align 4, !dbg !1879
  %sub257 = add nsw i32 %sub192, -32, !dbg !1880
  %shr258 = lshr i32 %63, %sub257, !dbg !1881
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1882
  store i32 %shr258, i32* %low260, align 8, !dbg !1883
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1884

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1885
  %high265 = getelementptr inbounds %struct.DATA, %struct.DATA* %s264, i32 0, i32 1, !dbg !1886
  %64 = load i32, i32* %high265, align 4, !dbg !1886
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1887, !range !1506
  %s266 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1888
  %high267 = getelementptr inbounds %struct.DATA, %struct.DATA* %s266, i32 0, i32 1, !dbg !1889
  %66 = load i32, i32* %high267, align 4, !dbg !1889
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1890, !range !1506
  %sub268 = sub nsw i32 %65, %67, !dbg !1891
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1892
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1893

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1894
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1894

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1895
  %68 = load i64, i64* %all274, align 8, !dbg !1895
  store i64 %68, i64* %rem, align 8, !dbg !1896
  br label %if.end275, !dbg !1897

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1898

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1899
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1900
  store i32 0, i32* %low279, align 8, !dbg !1901
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1902
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1903

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1904
  %69 = load i32, i32* %low284, align 8, !dbg !1904
  %s285 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1905
  %high286 = getelementptr inbounds %struct.DATA, %struct.DATA* %s285, i32 0, i32 1, !dbg !1906
  store i32 %69, i32* %high286, align 4, !dbg !1907
  %s287 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1908
  %high288 = getelementptr inbounds %struct.DATA, %struct.DATA* %s287, i32 0, i32 1, !dbg !1909
  store i32 0, i32* %high288, align 4, !dbg !1910
  %s289 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1911
  %high290 = getelementptr inbounds %struct.DATA, %struct.DATA* %s289, i32 0, i32 1, !dbg !1912
  %70 = load i32, i32* %high290, align 4, !dbg !1912
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1913
  store i32 %70, i32* %low292, align 8, !dbg !1914
  br label %if.end315, !dbg !1915

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1916
  %71 = load i32, i32* %low295, align 8, !dbg !1916
  %sub296 = sub nsw i32 31, %sub268, !dbg !1917
  %shl297 = shl i32 %71, %sub296, !dbg !1918
  %s298 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1919
  %high299 = getelementptr inbounds %struct.DATA, %struct.DATA* %s298, i32 0, i32 1, !dbg !1920
  store i32 %shl297, i32* %high299, align 4, !dbg !1921
  %s300 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1922
  %high301 = getelementptr inbounds %struct.DATA, %struct.DATA* %s300, i32 0, i32 1, !dbg !1923
  %72 = load i32, i32* %high301, align 4, !dbg !1923
  %shr302 = lshr i32 %72, %inc277, !dbg !1924
  %s303 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1925
  %high304 = getelementptr inbounds %struct.DATA, %struct.DATA* %s303, i32 0, i32 1, !dbg !1926
  store i32 %shr302, i32* %high304, align 4, !dbg !1927
  %s305 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1928
  %high306 = getelementptr inbounds %struct.DATA, %struct.DATA* %s305, i32 0, i32 1, !dbg !1929
  %73 = load i32, i32* %high306, align 4, !dbg !1929
  %sub307 = sub nsw i32 31, %sub268, !dbg !1930
  %shl308 = shl i32 %73, %sub307, !dbg !1931
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1932
  %74 = load i32, i32* %low310, align 8, !dbg !1932
  %shr311 = lshr i32 %74, %inc277, !dbg !1933
  %or312 = or i32 %shl308, %shr311, !dbg !1934
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1935
  store i32 %or312, i32* %low314, align 8, !dbg !1936
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1937
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1937
  br label %for.cond, !dbg !1938

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1937
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1937
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1939
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1938

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1940
  %high321 = getelementptr inbounds %struct.DATA, %struct.DATA* %s320, i32 0, i32 1, !dbg !1941
  %75 = load i32, i32* %high321, align 4, !dbg !1941
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1942
  %76 = load i32, i32* %low324, align 8, !dbg !1942
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1943
  %s327 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1944
  %high328 = getelementptr inbounds %struct.DATA, %struct.DATA* %s327, i32 0, i32 1, !dbg !1945
  store i32 %or326, i32* %high328, align 4, !dbg !1946
  %s332 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1947
  %high333 = getelementptr inbounds %struct.DATA, %struct.DATA* %s332, i32 0, i32 1, !dbg !1948
  %77 = load i32, i32* %high333, align 4, !dbg !1948
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1949
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1950
  store i32 %or335, i32* %low337, align 8, !dbg !1951
  %s338 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1952
  %high339 = getelementptr inbounds %struct.DATA, %struct.DATA* %s338, i32 0, i32 1, !dbg !1953
  %78 = load i32, i32* %high339, align 4, !dbg !1953
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1954
  %79 = load i32, i32* %low342, align 8, !dbg !1954
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1955
  %s345 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1956
  %high346 = getelementptr inbounds %struct.DATA, %struct.DATA* %s345, i32 0, i32 1, !dbg !1957
  store i32 %or344, i32* %high346, align 4, !dbg !1958
  %shl349 = shl i32 %79, 1, !dbg !1959
  %or350 = or i32 %shl349, %carry.0, !dbg !1960
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1961
  store i32 %or350, i32* %low352, align 8, !dbg !1962
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1963
  %80 = load i64, i64* %all354, align 8, !dbg !1963
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1964
  %81 = load i64, i64* %all355, align 8, !dbg !1964
  %82 = xor i64 %81, -1, !dbg !1965
  %sub357 = add i64 %80, %82, !dbg !1965
  %isneg = icmp slt i64 %sub357, 0, !dbg !1966
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1966
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1967
  %sub364 = sub i64 %81, %and362, !dbg !1968
  store i64 %sub364, i64* %all363, align 8, !dbg !1968
  br label %for.inc, !dbg !1969

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1970
  %conv360 = trunc i64 %and359 to i32, !dbg !1971
  %dec = add i32 %sr.2, -1, !dbg !1972
  br label %for.cond, !dbg !1938, !llvm.loop !1973

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1974
  %83 = load i64, i64* %all365, align 8, !dbg !1974
  %shl366 = shl i64 %83, 1, !dbg !1975
  %conv367 = zext i32 %carry.0 to i64, !dbg !1976
  %or368 = or i64 %shl366, %conv367, !dbg !1977
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1978
  store i64 %or368, i64* %all369, align 8, !dbg !1979
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1980
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1980

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1981
  %84 = load i64, i64* %all372, align 8, !dbg !1981
  store i64 %84, i64* %rem, align 8, !dbg !1982
  br label %if.end373, !dbg !1983

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1984
  %85 = load i64, i64* %all374, align 8, !dbg !1984
  br label %return, !dbg !1985

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1937
  ret i64 %retval.0, !dbg !1986
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1987 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #5, !dbg !1988
  %mul = mul nsw i64 %call, %b, !dbg !1989
  %sub = sub nsw i64 %a, %mul, !dbg !1990
  store i64 %sub, i64* %rem, align 8, !dbg !1991
  ret i64 %call, !dbg !1992
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !1993 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1994
  %mul = mul nsw i32 %call, %b, !dbg !1995
  %sub = sub nsw i32 %a, %mul, !dbg !1996
  store i32 %sub, i32* %rem, align 4, !dbg !1997
  ret i32 %call, !dbg !1998
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1999 {
entry:
  %shr = ashr i32 %a, 31, !dbg !2000
  %shr1 = ashr i32 %b, 31, !dbg !2001
  %xor = xor i32 %shr, %a, !dbg !2002
  %sub = sub nsw i32 %xor, %shr, !dbg !2003
  %xor2 = xor i32 %shr1, %b, !dbg !2004
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !2005
  %xor4 = xor i32 %shr, %shr1, !dbg !2006
  %div = udiv i32 %sub, %sub3, !dbg !2007
  %xor5 = xor i32 %div, %xor4, !dbg !2008
  %sub6 = sub i32 %xor5, %xor4, !dbg !2009
  ret i32 %sub6, !dbg !2010
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #3 !dbg !2011 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2012
  store i64 %a, i64* %all, align 8, !dbg !2013
  %low = bitcast %union.dwords* %x to i32*, !dbg !2014
  %0 = load i32, i32* %low, align 8, !dbg !2014
  %cmp = icmp eq i32 %0, 0, !dbg !2015
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2016

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2017
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !2018
  %1 = load i32, i32* %high, align 4, !dbg !2018
  %cmp2 = icmp eq i32 %1, 0, !dbg !2019
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2020

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !2021

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2022
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !2023
  %2 = load i32, i32* %high5, align 4, !dbg !2023
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !2024, !range !1506
  %add = add nuw nsw i32 %3, 33, !dbg !2025
  br label %return, !dbg !2026

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !2027
  %4 = load i32, i32* %low8, align 8, !dbg !2027
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !2028, !range !1506
  %add9 = add nuw nsw i32 %5, 1, !dbg !2029
  br label %return, !dbg !2030

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !2031
  ret i32 %retval.0, !dbg !2032
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #3 !dbg !2033 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !2034
  br i1 %cmp, label %if.then, label %if.end, !dbg !2035

if.then:                                          ; preds = %entry
  br label %return, !dbg !2036

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !2037, !range !1506
  %add = add nuw nsw i32 %0, 1, !dbg !2038
  br label %return, !dbg !2039

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !2040
  ret i32 %retval.0, !dbg !2041
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !2042 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !2043
  store i64 %a, i64* %all, align 8, !dbg !2044
  %and = and i32 %b, 32, !dbg !2045
  %tobool.not = icmp eq i32 %and, 0, !dbg !2045
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2046

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.DATA*, !dbg !2047
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !2048
  store i32 0, i32* %high, align 4, !dbg !2049
  %s1 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !2050
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !2051
  %0 = load i32, i32* %high2, align 4, !dbg !2051
  %sub = add nsw i32 %b, -32, !dbg !2052
  %shr = lshr i32 %0, %sub, !dbg !2053
  %low = bitcast %union.dwords* %result to i32*, !dbg !2054
  store i32 %shr, i32* %low, align 8, !dbg !2055
  br label %if.end18, !dbg !2056

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !2057
  br i1 %cmp, label %if.then4, label %if.end, !dbg !2058

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !2059

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !2060
  %high6 = getelementptr inbounds %struct.DATA, %struct.DATA* %s5, i32 0, i32 1, !dbg !2061
  %1 = load i32, i32* %high6, align 4, !dbg !2061
  %shr7 = lshr i32 %1, %b, !dbg !2062
  %s8 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !2063
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !2064
  store i32 %shr7, i32* %high9, align 4, !dbg !2065
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !2066
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !2067
  %2 = load i32, i32* %high11, align 4, !dbg !2067
  %sub12 = sub nsw i32 32, %b, !dbg !2068
  %shl = shl i32 %2, %sub12, !dbg !2069
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !2070
  %3 = load i32, i32* %low14, align 8, !dbg !2070
  %shr15 = lshr i32 %3, %b, !dbg !2071
  %or = or i32 %shl, %shr15, !dbg !2072
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !2073
  store i32 %or, i32* %low17, align 8, !dbg !2074
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !2075
  %4 = load i64, i64* %all19, align 8, !dbg !2075
  br label %return, !dbg !2076

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !2077
  ret i64 %retval.0, !dbg !2078
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2079 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !2080
  %shr1 = ashr i64 %a, 63, !dbg !2081
  %xor2 = xor i64 %shr1, %a, !dbg !2082
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !2083
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #5, !dbg !2084
  %1 = load i64, i64* %r, align 8, !dbg !2085
  %xor4 = xor i64 %1, %shr1, !dbg !2086
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !2087
  ret i64 %sub5, !dbg !2088
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2089 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !2090
  %mul = mul nsw i32 %call, %b, !dbg !2091
  %sub = sub nsw i32 %a, %mul, !dbg !2092
  ret i32 %sub, !dbg !2093
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2094 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !2095
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2096

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !2097
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2098

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !2099
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2100

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2101

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2102
  unreachable, !dbg !2102

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !2103
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2104

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !2105
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2106

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !2107
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2108

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2109

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2110
  unreachable, !dbg !2110

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !2111
  %xor = xor i64 %shr, %a, !dbg !2112
  %sub = sub nsw i64 %xor, %shr, !dbg !2113
  %shr14 = ashr i64 %b, 63, !dbg !2114
  %xor15 = xor i64 %shr14, %b, !dbg !2115
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !2116
  %cmp17 = icmp slt i64 %sub, 2, !dbg !2117
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2118

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !2119
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2120

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2121

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !2122
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2123

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !2124
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !2125
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2126

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2127
  unreachable, !dbg !2127

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2128

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !2129
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !2130
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !2131
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2132

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2133
  unreachable, !dbg !2133

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2134

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !2135
  ret i64 %retval.0, !dbg !2136
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2137 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !2138
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2139

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !2140
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2141

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !2142
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2143

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2144

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2145
  unreachable, !dbg !2145

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !2146
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2147

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !2148
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2149

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !2150
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2151

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2152

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2153
  unreachable, !dbg !2153

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !2154
  %xor = xor i32 %shr, %a, !dbg !2155
  %sub = sub nsw i32 %xor, %shr, !dbg !2156
  %shr14 = ashr i32 %b, 31, !dbg !2157
  %xor15 = xor i32 %shr14, %b, !dbg !2158
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !2159
  %cmp17 = icmp slt i32 %sub, 2, !dbg !2160
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2161

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !2162
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2163

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2164

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !2165
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2166

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !2167
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !2168
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2169

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2170
  unreachable, !dbg !2170

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2171

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !2172
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !2173
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !2174
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2175

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2176
  unreachable, !dbg !2176

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2177

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !2178
  ret i32 %retval.0, !dbg !2179
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #3 !dbg !2180 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2181
  store i64 %a, i64* %all, align 8, !dbg !2182
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2183
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !2184
  %0 = load i32, i32* %high, align 4, !dbg !2184
  %low = bitcast %union.dwords* %x to i32*, !dbg !2185
  %1 = load i32, i32* %low, align 8, !dbg !2185
  %xor = xor i32 %0, %1, !dbg !2186
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #5, !dbg !2187
  ret i32 %call, !dbg !2188
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #3 !dbg !2189 {
entry:
  %shr = lshr i32 %a, 16, !dbg !2190
  %xor = xor i32 %shr, %a, !dbg !2191
  %shr1 = lshr i32 %xor, 8, !dbg !2192
  %xor2 = xor i32 %xor, %shr1, !dbg !2193
  %shr3 = lshr i32 %xor2, 4, !dbg !2194
  %xor4 = xor i32 %xor2, %shr3, !dbg !2195
  %and = and i32 %xor4, 15, !dbg !2196
  %shr5 = lshr i32 27030, %and, !dbg !2197
  %and6 = and i32 %shr5, 1, !dbg !2198
  ret i32 %and6, !dbg !2199
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #3 !dbg !2200 {
entry:
  %shr = lshr i64 %a, 1, !dbg !2201
  %and = and i64 %shr, 6148914691236517205, !dbg !2202
  %sub = sub i64 %a, %and, !dbg !2203
  %shr1 = lshr i64 %sub, 2, !dbg !2204
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !2205
  %and3 = and i64 %sub, 3689348814741910323, !dbg !2206
  %add = add nuw nsw i64 %and2, %and3, !dbg !2207
  %shr4 = lshr i64 %add, 4, !dbg !2208
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !2209
  %and6 = and i64 %add5, 1085102592571150095, !dbg !2210
  %shr7 = lshr i64 %and6, 32, !dbg !2211
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !2212
  %conv = trunc i64 %add8 to i32, !dbg !2213
  %shr9 = lshr i32 %conv, 16, !dbg !2214
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !2215
  %shr11 = lshr i32 %add10, 8, !dbg !2216
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !2217
  %and13 = and i32 %add12, 127, !dbg !2218
  ret i32 %and13, !dbg !2219
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #3 !dbg !2220 {
entry:
  %shr = lshr i32 %a, 1, !dbg !2221
  %and = and i32 %shr, 1431655765, !dbg !2222
  %sub = sub i32 %a, %and, !dbg !2223
  %shr1 = lshr i32 %sub, 2, !dbg !2224
  %and2 = and i32 %shr1, 858993459, !dbg !2225
  %and3 = and i32 %sub, 858993459, !dbg !2226
  %add = add nuw nsw i32 %and2, %and3, !dbg !2227
  %shr4 = lshr i32 %add, 4, !dbg !2228
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !2229
  %and6 = and i32 %add5, 252645135, !dbg !2230
  %shr7 = lshr i32 %and6, 16, !dbg !2231
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !2232
  %shr9 = lshr i32 %add8, 8, !dbg !2233
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !2234
  %and11 = and i32 %add10, 63, !dbg !2235
  ret i32 %and11, !dbg !2236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2237 {
entry:
  %sub = sub i64 %a, %b, !dbg !2238
  %cmp = icmp sgt i64 %b, -1, !dbg !2239
  br i1 %cmp, label %if.then, label %if.else, !dbg !2240

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !2241
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2242

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !2243
  unreachable, !dbg !2243

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2244

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !2245
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2246

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !2247
  unreachable, !dbg !2247

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !2248
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2249 {
entry:
  %sub = sub i32 %a, %b, !dbg !2250
  %cmp = icmp sgt i32 %b, -1, !dbg !2251
  br i1 %cmp, label %if.then, label %if.else, !dbg !2252

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !2253
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2254

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !2255
  unreachable, !dbg !2255

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2256

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !2257
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2258

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !2259
  unreachable, !dbg !2259

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !2260
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !2261 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2262
  store i64 %a, i64* %all, align 8, !dbg !2263
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !2264
  store i64 %b, i64* %all1, align 8, !dbg !2265
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2266
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !2267
  %0 = load i32, i32* %high, align 4, !dbg !2267
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !2268
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !2269
  %1 = load i32, i32* %high3, align 4, !dbg !2269
  %cmp = icmp ult i32 %0, %1, !dbg !2270
  br i1 %cmp, label %if.then, label %if.end, !dbg !2271

if.then:                                          ; preds = %entry
  br label %return, !dbg !2272

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2273
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !2274
  %2 = load i32, i32* %high5, align 4, !dbg !2274
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !2275
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !2276
  %3 = load i32, i32* %high7, align 4, !dbg !2276
  %cmp8 = icmp ugt i32 %2, %3, !dbg !2277
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2278

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !2279

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !2280
  %4 = load i32, i32* %low, align 8, !dbg !2280
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !2281
  %5 = load i32, i32* %low13, align 8, !dbg !2281
  %cmp14 = icmp ult i32 %4, %5, !dbg !2282
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2283

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !2284

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !2285
  %6 = load i32, i32* %low18, align 8, !dbg !2285
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !2286
  %7 = load i32, i32* %low20, align 8, !dbg !2286
  %cmp21 = icmp ugt i32 %6, %7, !dbg !2287
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2288

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !2289

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !2290

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !2291
  ret i32 %retval.0, !dbg !2292
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !2293 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !2294
  %sub = add nsw i32 %call, -1, !dbg !2295
  ret i32 %sub, !dbg !2296
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2297 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #5, !dbg !2298
  ret i64 %call, !dbg !2299
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !2300 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !2301
  %mul = mul i32 %call, %b, !dbg !2302
  %sub = sub i32 %a, %mul, !dbg !2303
  store i32 %sub, i32* %rem, align 4, !dbg !2304
  ret i32 %call, !dbg !2305
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #3 !dbg !2306 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !2307
  br i1 %cmp, label %if.then, label %if.end, !dbg !2308

if.then:                                          ; preds = %entry
  br label %return, !dbg !2309

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !2310
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2311

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2312

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !2313, !range !1506
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !2314, !range !1506
  %sub = sub nsw i32 %0, %1, !dbg !2315
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !2316
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2317

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !2318

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !2319
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2320

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !2321

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !2322
  %sub10 = sub nsw i32 31, %sub, !dbg !2323
  %shl = shl i32 %n, %sub10, !dbg !2324
  %shr = lshr i32 %n, %inc, !dbg !2325
  br label %for.cond, !dbg !2326

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !2327
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !2327
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !2327
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !2327
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !2328
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !2326

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !2329
  %2 = xor i32 %or, -1, !dbg !2330
  %sub17 = add i32 %2, %d, !dbg !2330
  br label %for.inc, !dbg !2331

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !2332
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !2332
  %sub20 = sub i32 %or, %and19, !dbg !2333
  %and = lshr i32 %sub17, 31, !dbg !2334
  %shl14 = shl i32 %q.0, 1, !dbg !2335
  %or15 = or i32 %shl14, %carry.0, !dbg !2336
  %dec = add i32 %sr.0, -1, !dbg !2337
  br label %for.cond, !dbg !2326, !llvm.loop !2338

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !2339
  %or22 = or i32 %shl21, %carry.0, !dbg !2340
  br label %return, !dbg !2341

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !2327
  ret i32 %retval.0, !dbg !2342
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2343 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #5, !dbg !2344
  %0 = load i64, i64* %r, align 8, !dbg !2345
  ret i64 %0, !dbg !2346
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2347 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !2348
  %mul = mul i32 %call, %b, !dbg !2349
  %sub = sub i32 %a, %mul, !dbg !2350
  ret i32 %sub, !dbg !2351
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #3 !dbg !2352 {
entry:
  br label %for.cond, !dbg !2353

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2354
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2355
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2356

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !2357
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2357
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !2358
  store i8 %0, i8* %arrayidx1, align 1, !dbg !2359
  br label %for.inc, !dbg !2360

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2361
  br label %for.cond, !dbg !2356, !llvm.loop !2362

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !2363
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #3 !dbg !2364 {
entry:
  br label %for.cond, !dbg !2365

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2366
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2367
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2368

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !2369
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !2370
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2371
  br label %for.inc, !dbg !2372

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2373
  br label %for.cond, !dbg !2368, !llvm.loop !2374

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !2375
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.ident = !{!136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !136, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145, !146}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/bs.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "bd8125837db9308c88c5ffb782c95b7d")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/test/cover.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "bcb3621d8336c0abe930d39121af3358")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/workspaces/llvmta/testcases/test/crc.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "81914fd9a6e58bd16dffffd8d82cb702")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/workspaces/llvmta/testcases/test/deg2rad.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "ad454ed45c3261192fed6cc3bb5e553e")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/workspaces/llvmta/testcases/test/expint.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/workspaces/llvmta/testcases/test/fdct.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "14ba389f54880aec137a5706c61250ef")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/workspaces/llvmta/testcases/test/lms.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/workspaces/llvmta/testcases/test/loopsinmultiplefunction.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "5e1a6fd0dca690f9783cfba6a0b985f5")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/workspaces/llvmta/testcases/test/matmult.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/workspaces/llvmta/testcases/test/ndes.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "6a4124562fff6afefc25084a1c1c3d13")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/workspaces/llvmta/testcases/test/prime.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "93a752eea1599691c878402ecbe8f5e7")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/workspaces/llvmta/testcases/test/rad2deg.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!132 = distinct !DICompileUnit(language: DW_LANG_C99, file: !133, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!133 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!134 = distinct !DICompileUnit(language: DW_LANG_C99, file: !135, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!135 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!136 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git 433861ba697f56477d8849df0fa6165a1e09982d)"}
!137 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!138 = !{i32 7, !"Dwarf Version", i32 5}
!139 = !{i32 2, !"Debug Info Version", i32 3}
!140 = !{i32 1, !"wchar_size", i32 4}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 1, !"branch-target-enforcement", i32 0}
!143 = !{i32 1, !"sign-return-address", i32 0}
!144 = !{i32 1, !"sign-return-address-all", i32 0}
!145 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = distinct !DISubprogram(name: "bs", scope: !148, file: !148, line: 71, type: !149, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !150)
!148 = !DIFile(filename: "test/bs.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "bd8125837db9308c88c5ffb782c95b7d")
!149 = !DISubroutineType(types: !150)
!150 = !{}
!151 = !DILocation(line: 73, column: 2, scope: !147)
!152 = !DILocation(line: 74, column: 1, scope: !147)
!153 = distinct !DISubprogram(name: "binary_search", scope: !148, file: !148, line: 76, type: !149, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !150)
!154 = !DILocation(line: 83, column: 3, scope: !153)
!155 = !DILocation(line: 0, scope: !153)
!156 = !DILocation(line: 80, column: 7, scope: !153)
!157 = !DILocation(line: 83, column: 14, scope: !153)
!158 = !DILocation(line: 84, column: 16, scope: !153)
!159 = !DILocation(line: 84, column: 22, scope: !153)
!160 = !DILocation(line: 85, column: 20, scope: !153)
!161 = !DILocation(line: 85, column: 24, scope: !153)
!162 = !DILocation(line: 85, column: 10, scope: !153)
!163 = !DILocation(line: 86, column: 16, scope: !153)
!164 = !DILocation(line: 87, column: 26, scope: !153)
!165 = !DILocation(line: 91, column: 5, scope: !153)
!166 = !DILocation(line: 93, column: 22, scope: !153)
!167 = !DILocation(line: 93, column: 26, scope: !153)
!168 = !DILocation(line: 93, column: 12, scope: !153)
!169 = !DILocation(line: 94, column: 11, scope: !153)
!170 = !DILocation(line: 98, column: 7, scope: !153)
!171 = !DILocation(line: 100, column: 25, scope: !153)
!172 = distinct !{!172, !154, !173, !174}
!173 = !DILocation(line: 108, column: 3, scope: !153)
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 112, column: 3, scope: !153)
!176 = distinct !DISubprogram(name: "cover_init", scope: !177, file: !177, line: 45, type: !149, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!177 = !DIFile(filename: "test/cover.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "bcb3621d8336c0abe930d39121af3358")
!178 = !DILocation(line: 45, column: 35, scope: !176)
!179 = !DILocation(line: 45, column: 40, scope: !176)
!180 = distinct !DISubprogram(name: "cover_return", scope: !177, file: !177, line: 47, type: !149, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!181 = !DILocation(line: 47, column: 33, scope: !180)
!182 = !DILocation(line: 47, column: 43, scope: !180)
!183 = !DILocation(line: 47, column: 26, scope: !180)
!184 = distinct !DISubprogram(name: "cover_swi120", scope: !177, file: !177, line: 53, type: !149, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!185 = !DILocation(line: 56, column: 45, scope: !184)
!186 = !DILocation(line: 56, column: 40, scope: !184)
!187 = !DILocation(line: 56, column: 73, scope: !184)
!188 = distinct !{!188, !186, !187, !174}
!189 = !DILocation(line: 57, column: 3, scope: !184)
!190 = distinct !DISubprogram(name: "cover_swi50", scope: !177, file: !177, line: 60, type: !149, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!191 = !DILocation(line: 63, column: 43, scope: !190)
!192 = !DILocation(line: 63, column: 38, scope: !190)
!193 = !DILocation(line: 63, column: 70, scope: !190)
!194 = distinct !{!194, !192, !193, !174}
!195 = !DILocation(line: 64, column: 3, scope: !190)
!196 = distinct !DISubprogram(name: "cover_swi10", scope: !177, file: !177, line: 67, type: !149, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!197 = !DILocation(line: 70, column: 43, scope: !196)
!198 = !DILocation(line: 70, column: 38, scope: !196)
!199 = !DILocation(line: 70, column: 70, scope: !196)
!200 = distinct !{!200, !198, !199, !174}
!201 = !DILocation(line: 71, column: 3, scope: !196)
!202 = distinct !DISubprogram(name: "cover_main", scope: !177, file: !177, line: 74, type: !149, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!203 = !DILocation(line: 75, column: 27, scope: !202)
!204 = !DILocation(line: 75, column: 15, scope: !202)
!205 = !DILocation(line: 75, column: 13, scope: !202)
!206 = !DILocation(line: 77, column: 27, scope: !202)
!207 = !DILocation(line: 77, column: 15, scope: !202)
!208 = !DILocation(line: 77, column: 13, scope: !202)
!209 = !DILocation(line: 79, column: 28, scope: !202)
!210 = !DILocation(line: 79, column: 15, scope: !202)
!211 = !DILocation(line: 79, column: 13, scope: !202)
!212 = !DILocation(line: 80, column: 1, scope: !202)
!213 = distinct !DISubprogram(name: "cover", scope: !177, file: !177, line: 86, type: !149, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !150)
!214 = !DILocation(line: 87, column: 3, scope: !213)
!215 = !DILocation(line: 88, column: 3, scope: !213)
!216 = !DILocation(line: 90, column: 3, scope: !213)
!217 = !DILocation(line: 91, column: 1, scope: !213)
!218 = distinct !DISubprogram(name: "icrc1", scope: !219, file: !219, line: 57, type: !149, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !150)
!219 = !DIFile(filename: "test/crc.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "81914fd9a6e58bd16dffffd8d82cb702")
!220 = !DILocation(line: 60, column: 26, scope: !218)
!221 = !DILocation(line: 60, column: 32, scope: !218)
!222 = !DILocation(line: 60, column: 25, scope: !218)
!223 = !DILocation(line: 62, column: 7, scope: !218)
!224 = !DILocation(line: 0, scope: !218)
!225 = !DILocation(line: 62, column: 12, scope: !218)
!226 = !DILocation(line: 62, column: 2, scope: !218)
!227 = !DILocation(line: 63, column: 11, scope: !218)
!228 = !DILocation(line: 63, column: 7, scope: !218)
!229 = !DILocation(line: 64, column: 15, scope: !218)
!230 = !DILocation(line: 64, column: 22, scope: !218)
!231 = !DILocation(line: 64, column: 4, scope: !218)
!232 = !DILocation(line: 66, column: 8, scope: !218)
!233 = !DILocation(line: 67, column: 2, scope: !218)
!234 = !DILocation(line: 62, column: 16, scope: !218)
!235 = distinct !{!235, !226, !233, !174}
!236 = !DILocation(line: 68, column: 2, scope: !218)
!237 = distinct !DISubprogram(name: "icrc", scope: !219, file: !219, line: 71, type: !149, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !150)
!238 = !DILocation(line: 80, column: 8, scope: !237)
!239 = !DILocation(line: 80, column: 7, scope: !237)
!240 = !DILocation(line: 81, column: 9, scope: !237)
!241 = !DILocation(line: 82, column: 10, scope: !237)
!242 = !DILocation(line: 0, scope: !237)
!243 = !DILocation(line: 82, column: 15, scope: !237)
!244 = !DILocation(line: 82, column: 5, scope: !237)
!245 = !DILocation(line: 83, column: 25, scope: !237)
!246 = !DILocation(line: 83, column: 17, scope: !237)
!247 = !DILocation(line: 83, column: 7, scope: !237)
!248 = !DILocation(line: 83, column: 16, scope: !237)
!249 = !DILocation(line: 84, column: 28, scope: !237)
!250 = !DILocation(line: 84, column: 23, scope: !237)
!251 = !DILocation(line: 84, column: 35, scope: !237)
!252 = !DILocation(line: 84, column: 47, scope: !237)
!253 = !DILocation(line: 84, column: 42, scope: !237)
!254 = !DILocation(line: 84, column: 40, scope: !237)
!255 = !DILocation(line: 84, column: 7, scope: !237)
!256 = !DILocation(line: 84, column: 14, scope: !237)
!257 = !DILocation(line: 85, column: 5, scope: !237)
!258 = !DILocation(line: 82, column: 22, scope: !237)
!259 = distinct !{!259, !244, !257, !174}
!260 = !DILocation(line: 86, column: 3, scope: !237)
!261 = !DILocation(line: 87, column: 13, scope: !237)
!262 = !DILocation(line: 87, column: 7, scope: !237)
!263 = !DILocation(line: 87, column: 25, scope: !237)
!264 = !DILocation(line: 87, column: 60, scope: !237)
!265 = !DILocation(line: 87, column: 41, scope: !237)
!266 = !DILocation(line: 87, column: 19, scope: !237)
!267 = !DILocation(line: 88, column: 17, scope: !237)
!268 = !DILocation(line: 88, column: 12, scope: !237)
!269 = !DILocation(line: 89, column: 16, scope: !237)
!270 = !DILocation(line: 89, column: 11, scope: !237)
!271 = !DILocation(line: 89, column: 33, scope: !237)
!272 = !DILocation(line: 89, column: 53, scope: !237)
!273 = !DILocation(line: 89, column: 31, scope: !237)
!274 = !DILocation(line: 89, column: 5, scope: !237)
!275 = !DILocation(line: 93, column: 8, scope: !237)
!276 = !DILocation(line: 93, column: 12, scope: !237)
!277 = !DILocation(line: 93, column: 13, scope: !237)
!278 = !DILocation(line: 93, column: 3, scope: !237)
!279 = !DILocation(line: 94, column: 14, scope: !237)
!280 = !DILocation(line: 94, column: 9, scope: !237)
!281 = !DILocation(line: 95, column: 19, scope: !237)
!282 = !DILocation(line: 95, column: 14, scope: !237)
!283 = !DILocation(line: 95, column: 28, scope: !237)
!284 = !DILocation(line: 95, column: 26, scope: !237)
!285 = !DILocation(line: 96, column: 5, scope: !237)
!286 = !DILocation(line: 98, column: 14, scope: !237)
!287 = !DILocation(line: 98, column: 22, scope: !237)
!288 = !DILocation(line: 98, column: 20, scope: !237)
!289 = !DILocation(line: 101, column: 3, scope: !237)
!290 = !DILocation(line: 100, column: 13, scope: !237)
!291 = !DILocation(line: 100, column: 42, scope: !237)
!292 = !DILocation(line: 100, column: 26, scope: !237)
!293 = !DILocation(line: 93, column: 20, scope: !237)
!294 = distinct !{!294, !278, !289, !174}
!295 = !DILocation(line: 102, column: 12, scope: !237)
!296 = !DILocation(line: 102, column: 7, scope: !237)
!297 = !DILocation(line: 104, column: 3, scope: !237)
!298 = !DILocation(line: 106, column: 17, scope: !237)
!299 = !DILocation(line: 106, column: 12, scope: !237)
!300 = !DILocation(line: 106, column: 34, scope: !237)
!301 = !DILocation(line: 106, column: 54, scope: !237)
!302 = !DILocation(line: 106, column: 32, scope: !237)
!303 = !DILocation(line: 108, column: 3, scope: !237)
!304 = distinct !DISubprogram(name: "crc", scope: !219, file: !219, line: 112, type: !149, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !150)
!305 = !DILocation(line: 119, column: 11, scope: !304)
!306 = !DILocation(line: 120, column: 6, scope: !304)
!307 = !DILocation(line: 121, column: 12, scope: !304)
!308 = !DILocation(line: 121, column: 11, scope: !304)
!309 = !DILocation(line: 122, column: 12, scope: !304)
!310 = !DILocation(line: 122, column: 11, scope: !304)
!311 = !DILocation(line: 123, column: 6, scope: !304)
!312 = !DILocation(line: 124, column: 3, scope: !304)
!313 = distinct !DISubprogram(name: "deg2rad_init", scope: !314, file: !314, line: 49, type: !149, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !150)
!314 = !DIFile(filename: "test/deg2rad.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "ad454ed45c3261192fed6cc3bb5e553e")
!315 = !DILocation(line: 51, column: 13, scope: !313)
!316 = !DILocation(line: 52, column: 13, scope: !313)
!317 = !DILocation(line: 53, column: 1, scope: !313)
!318 = distinct !DISubprogram(name: "deg2rad_return", scope: !314, file: !314, line: 60, type: !149, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !150)
!319 = !DILocation(line: 62, column: 14, scope: !318)
!320 = !DILocation(line: 64, column: 13, scope: !318)
!321 = !DILocation(line: 64, column: 8, scope: !318)
!322 = !DILocation(line: 65, column: 5, scope: !318)
!323 = !DILocation(line: 67, column: 5, scope: !318)
!324 = !DILocation(line: 0, scope: !318)
!325 = !DILocation(line: 69, column: 1, scope: !318)
!326 = distinct !DISubprogram(name: "deg2rad_main", scope: !314, file: !314, line: 76, type: !149, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !150)
!327 = !DILocation(line: 80, column: 9, scope: !326)
!328 = !DILocation(line: 0, scope: !326)
!329 = !DILocation(line: 80, column: 37, scope: !326)
!330 = !DILocation(line: 80, column: 3, scope: !326)
!331 = !DILocation(line: 81, column: 18, scope: !326)
!332 = !DILocation(line: 81, column: 15, scope: !326)
!333 = !DILocation(line: 81, column: 5, scope: !326)
!334 = !DILocation(line: 80, column: 58, scope: !326)
!335 = distinct !{!335, !330, !331, !174}
!336 = !DILocation(line: 82, column: 1, scope: !326)
!337 = distinct !DISubprogram(name: "deg2rad_entry", scope: !314, file: !314, line: 85, type: !149, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !150)
!338 = !DILocation(line: 87, column: 3, scope: !337)
!339 = !DILocation(line: 88, column: 3, scope: !337)
!340 = !DILocation(line: 89, column: 10, scope: !337)
!341 = !DILocation(line: 89, column: 3, scope: !337)
!342 = distinct !DISubprogram(name: "expint", scope: !343, file: !343, line: 29, type: !149, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !150)
!343 = !DIFile(filename: "test/expint.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!344 = !DILocation(line: 33, column: 3, scope: !342)
!345 = !DILocation(line: 38, column: 1, scope: !342)
!346 = distinct !DISubprogram(name: "expint_expint", scope: !343, file: !343, line: 56, type: !149, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !150)
!347 = !DILocation(line: 66, column: 8, scope: !346)
!348 = !DILocation(line: 70, column: 7, scope: !346)
!349 = !DILocation(line: 70, column: 6, scope: !346)
!350 = !DILocation(line: 74, column: 10, scope: !346)
!351 = !DILocation(line: 84, column: 12, scope: !346)
!352 = !DILocation(line: 0, scope: !346)
!353 = !DILocation(line: 84, column: 17, scope: !346)
!354 = !DILocation(line: 84, column: 7, scope: !346)
!355 = !DILocation(line: 88, column: 22, scope: !346)
!356 = !DILocation(line: 88, column: 17, scope: !346)
!357 = !DILocation(line: 90, column: 13, scope: !346)
!358 = !DILocation(line: 92, column: 18, scope: !346)
!359 = !DILocation(line: 92, column: 20, scope: !346)
!360 = !DILocation(line: 92, column: 15, scope: !346)
!361 = !DILocation(line: 94, column: 16, scope: !346)
!362 = !DILocation(line: 94, column: 14, scope: !346)
!363 = !DILocation(line: 96, column: 16, scope: !346)
!364 = !DILocation(line: 98, column: 13, scope: !346)
!365 = !DILocation(line: 100, column: 19, scope: !346)
!366 = !DILocation(line: 100, column: 15, scope: !346)
!367 = !DILocation(line: 104, column: 20, scope: !346)
!368 = !DILocation(line: 106, column: 15, scope: !346)
!369 = !DILocation(line: 110, column: 9, scope: !346)
!370 = !DILocation(line: 84, column: 24, scope: !346)
!371 = distinct !{!371, !354, !369, !174}
!372 = !DILocation(line: 112, column: 5, scope: !346)
!373 = !DILocation(line: 122, column: 17, scope: !346)
!374 = !DILocation(line: 122, column: 13, scope: !346)
!375 = !DILocation(line: 126, column: 12, scope: !346)
!376 = !DILocation(line: 126, column: 17, scope: !346)
!377 = !DILocation(line: 126, column: 7, scope: !346)
!378 = !DILocation(line: 130, column: 21, scope: !346)
!379 = !DILocation(line: 130, column: 16, scope: !346)
!380 = !DILocation(line: 132, column: 17, scope: !346)
!381 = !DILocation(line: 132, column: 15, scope: !346)
!382 = !DILocation(line: 134, column: 27, scope: !346)
!383 = !DILocation(line: 134, column: 24, scope: !346)
!384 = !DILocation(line: 134, column: 13, scope: !346)
!385 = !DILocation(line: 142, column: 20, scope: !346)
!386 = !DILocation(line: 142, column: 15, scope: !346)
!387 = !DILocation(line: 144, column: 17, scope: !346)
!388 = distinct !{!388, !386, !389, !174}
!389 = !DILocation(line: 144, column: 29, scope: !346)
!390 = !DILocation(line: 146, column: 28, scope: !346)
!391 = !DILocation(line: 146, column: 27, scope: !346)
!392 = !DILocation(line: 146, column: 22, scope: !346)
!393 = !DILocation(line: 154, column: 9, scope: !346)
!394 = !DILocation(line: 150, column: 15, scope: !346)
!395 = !DILocation(line: 126, column: 24, scope: !346)
!396 = distinct !{!396, !377, !393, !174}
!397 = !DILocation(line: 160, column: 3, scope: !346)
!398 = !DILocation(line: 162, column: 1, scope: !346)
!399 = distinct !DISubprogram(name: "foo", scope: !343, file: !343, line: 40, type: !149, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !150)
!400 = !DILocation(line: 44, column: 13, scope: !399)
!401 = !DILocation(line: 44, column: 22, scope: !399)
!402 = !DILocation(line: 44, column: 19, scope: !399)
!403 = !DILocation(line: 44, column: 3, scope: !399)
!404 = distinct !DISubprogram(name: "fdct_fdct", scope: !405, file: !405, line: 67, type: !149, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !150)
!405 = !DIFile(filename: "test/fdct.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "14ba389f54880aec137a5706c61250ef")
!406 = !DILocation(line: 83, column: 8, scope: !404)
!407 = !DILocation(line: 0, scope: !404)
!408 = !DILocation(line: 83, column: 14, scope: !404)
!409 = !DILocation(line: 83, column: 3, scope: !404)
!410 = !DILocation(line: 85, column: 12, scope: !404)
!411 = !DILocation(line: 85, column: 23, scope: !404)
!412 = !DILocation(line: 85, column: 21, scope: !404)
!413 = !DILocation(line: 86, column: 12, scope: !404)
!414 = !DILocation(line: 86, column: 23, scope: !404)
!415 = !DILocation(line: 86, column: 21, scope: !404)
!416 = !DILocation(line: 87, column: 12, scope: !404)
!417 = !DILocation(line: 87, column: 23, scope: !404)
!418 = !DILocation(line: 87, column: 21, scope: !404)
!419 = !DILocation(line: 88, column: 12, scope: !404)
!420 = !DILocation(line: 88, column: 23, scope: !404)
!421 = !DILocation(line: 88, column: 21, scope: !404)
!422 = !DILocation(line: 89, column: 12, scope: !404)
!423 = !DILocation(line: 89, column: 23, scope: !404)
!424 = !DILocation(line: 89, column: 21, scope: !404)
!425 = !DILocation(line: 90, column: 12, scope: !404)
!426 = !DILocation(line: 90, column: 23, scope: !404)
!427 = !DILocation(line: 90, column: 21, scope: !404)
!428 = !DILocation(line: 91, column: 12, scope: !404)
!429 = !DILocation(line: 91, column: 23, scope: !404)
!430 = !DILocation(line: 91, column: 21, scope: !404)
!431 = !DILocation(line: 92, column: 12, scope: !404)
!432 = !DILocation(line: 92, column: 23, scope: !404)
!433 = !DILocation(line: 92, column: 21, scope: !404)
!434 = !DILocation(line: 98, column: 18, scope: !404)
!435 = !DILocation(line: 99, column: 18, scope: !404)
!436 = !DILocation(line: 100, column: 18, scope: !404)
!437 = !DILocation(line: 101, column: 18, scope: !404)
!438 = !DILocation(line: 103, column: 23, scope: !404)
!439 = !DILocation(line: 103, column: 16, scope: !404)
!440 = !DILocation(line: 103, column: 14, scope: !404)
!441 = !DILocation(line: 104, column: 23, scope: !404)
!442 = !DILocation(line: 104, column: 16, scope: !404)
!443 = !DILocation(line: 104, column: 5, scope: !404)
!444 = !DILocation(line: 104, column: 14, scope: !404)
!445 = !DILocation(line: 107, column: 17, scope: !404)
!446 = !DILocation(line: 107, column: 26, scope: !404)
!447 = !DILocation(line: 109, column: 29, scope: !404)
!448 = !DILocation(line: 109, column: 20, scope: !404)
!449 = !DILocation(line: 109, column: 42, scope: !404)
!450 = !DILocation(line: 109, column: 16, scope: !404)
!451 = !DILocation(line: 109, column: 5, scope: !404)
!452 = !DILocation(line: 109, column: 14, scope: !404)
!453 = !DILocation(line: 111, column: 29, scope: !404)
!454 = !DILocation(line: 111, column: 20, scope: !404)
!455 = !DILocation(line: 111, column: 42, scope: !404)
!456 = !DILocation(line: 111, column: 16, scope: !404)
!457 = !DILocation(line: 111, column: 5, scope: !404)
!458 = !DILocation(line: 111, column: 14, scope: !404)
!459 = !DILocation(line: 118, column: 15, scope: !404)
!460 = !DILocation(line: 119, column: 15, scope: !404)
!461 = !DILocation(line: 120, column: 15, scope: !404)
!462 = !DILocation(line: 121, column: 15, scope: !404)
!463 = !DILocation(line: 123, column: 15, scope: !404)
!464 = !DILocation(line: 123, column: 21, scope: !404)
!465 = !DILocation(line: 126, column: 18, scope: !404)
!466 = !DILocation(line: 128, column: 18, scope: !404)
!467 = !DILocation(line: 130, column: 18, scope: !404)
!468 = !DILocation(line: 132, column: 18, scope: !404)
!469 = !DILocation(line: 134, column: 14, scope: !404)
!470 = !DILocation(line: 136, column: 14, scope: !404)
!471 = !DILocation(line: 138, column: 14, scope: !404)
!472 = !DILocation(line: 140, column: 14, scope: !404)
!473 = !DILocation(line: 142, column: 8, scope: !404)
!474 = !DILocation(line: 143, column: 8, scope: !404)
!475 = !DILocation(line: 145, column: 22, scope: !404)
!476 = !DILocation(line: 145, column: 27, scope: !404)
!477 = !DILocation(line: 145, column: 33, scope: !404)
!478 = !DILocation(line: 145, column: 16, scope: !404)
!479 = !DILocation(line: 145, column: 5, scope: !404)
!480 = !DILocation(line: 145, column: 14, scope: !404)
!481 = !DILocation(line: 146, column: 22, scope: !404)
!482 = !DILocation(line: 146, column: 27, scope: !404)
!483 = !DILocation(line: 146, column: 33, scope: !404)
!484 = !DILocation(line: 146, column: 16, scope: !404)
!485 = !DILocation(line: 146, column: 5, scope: !404)
!486 = !DILocation(line: 146, column: 14, scope: !404)
!487 = !DILocation(line: 147, column: 22, scope: !404)
!488 = !DILocation(line: 147, column: 27, scope: !404)
!489 = !DILocation(line: 147, column: 33, scope: !404)
!490 = !DILocation(line: 147, column: 16, scope: !404)
!491 = !DILocation(line: 147, column: 5, scope: !404)
!492 = !DILocation(line: 147, column: 14, scope: !404)
!493 = !DILocation(line: 148, column: 22, scope: !404)
!494 = !DILocation(line: 148, column: 27, scope: !404)
!495 = !DILocation(line: 148, column: 33, scope: !404)
!496 = !DILocation(line: 148, column: 16, scope: !404)
!497 = !DILocation(line: 148, column: 5, scope: !404)
!498 = !DILocation(line: 148, column: 14, scope: !404)
!499 = !DILocation(line: 155, column: 3, scope: !404)
!500 = !DILocation(line: 153, column: 11, scope: !404)
!501 = !DILocation(line: 83, column: 19, scope: !404)
!502 = distinct !{!502, !409, !499, !174}
!503 = !DILocation(line: 161, column: 8, scope: !404)
!504 = !DILocation(line: 161, column: 16, scope: !404)
!505 = !DILocation(line: 161, column: 3, scope: !404)
!506 = !DILocation(line: 163, column: 12, scope: !404)
!507 = !DILocation(line: 163, column: 30, scope: !404)
!508 = !DILocation(line: 163, column: 23, scope: !404)
!509 = !DILocation(line: 163, column: 21, scope: !404)
!510 = !DILocation(line: 164, column: 12, scope: !404)
!511 = !DILocation(line: 164, column: 30, scope: !404)
!512 = !DILocation(line: 164, column: 23, scope: !404)
!513 = !DILocation(line: 164, column: 21, scope: !404)
!514 = !DILocation(line: 165, column: 12, scope: !404)
!515 = !DILocation(line: 165, column: 31, scope: !404)
!516 = !DILocation(line: 165, column: 24, scope: !404)
!517 = !DILocation(line: 165, column: 22, scope: !404)
!518 = !DILocation(line: 166, column: 12, scope: !404)
!519 = !DILocation(line: 166, column: 30, scope: !404)
!520 = !DILocation(line: 166, column: 23, scope: !404)
!521 = !DILocation(line: 166, column: 21, scope: !404)
!522 = !DILocation(line: 167, column: 19, scope: !404)
!523 = !DILocation(line: 167, column: 12, scope: !404)
!524 = !DILocation(line: 167, column: 33, scope: !404)
!525 = !DILocation(line: 167, column: 26, scope: !404)
!526 = !DILocation(line: 167, column: 24, scope: !404)
!527 = !DILocation(line: 168, column: 19, scope: !404)
!528 = !DILocation(line: 168, column: 12, scope: !404)
!529 = !DILocation(line: 168, column: 33, scope: !404)
!530 = !DILocation(line: 168, column: 26, scope: !404)
!531 = !DILocation(line: 168, column: 24, scope: !404)
!532 = !DILocation(line: 169, column: 19, scope: !404)
!533 = !DILocation(line: 169, column: 12, scope: !404)
!534 = !DILocation(line: 169, column: 33, scope: !404)
!535 = !DILocation(line: 169, column: 26, scope: !404)
!536 = !DILocation(line: 169, column: 24, scope: !404)
!537 = !DILocation(line: 170, column: 19, scope: !404)
!538 = !DILocation(line: 170, column: 12, scope: !404)
!539 = !DILocation(line: 170, column: 33, scope: !404)
!540 = !DILocation(line: 170, column: 26, scope: !404)
!541 = !DILocation(line: 170, column: 24, scope: !404)
!542 = !DILocation(line: 176, column: 18, scope: !404)
!543 = !DILocation(line: 177, column: 18, scope: !404)
!544 = !DILocation(line: 178, column: 18, scope: !404)
!545 = !DILocation(line: 179, column: 18, scope: !404)
!546 = !DILocation(line: 181, column: 23, scope: !404)
!547 = !DILocation(line: 181, column: 32, scope: !404)
!548 = !DILocation(line: 181, column: 16, scope: !404)
!549 = !DILocation(line: 181, column: 14, scope: !404)
!550 = !DILocation(line: 182, column: 26, scope: !404)
!551 = !DILocation(line: 182, column: 35, scope: !404)
!552 = !DILocation(line: 182, column: 19, scope: !404)
!553 = !DILocation(line: 182, column: 12, scope: !404)
!554 = !DILocation(line: 182, column: 5, scope: !404)
!555 = !DILocation(line: 182, column: 17, scope: !404)
!556 = !DILocation(line: 185, column: 18, scope: !404)
!557 = !DILocation(line: 185, column: 27, scope: !404)
!558 = !DILocation(line: 187, column: 32, scope: !404)
!559 = !DILocation(line: 187, column: 23, scope: !404)
!560 = !DILocation(line: 187, column: 45, scope: !404)
!561 = !DILocation(line: 187, column: 19, scope: !404)
!562 = !DILocation(line: 187, column: 12, scope: !404)
!563 = !DILocation(line: 187, column: 5, scope: !404)
!564 = !DILocation(line: 187, column: 17, scope: !404)
!565 = !DILocation(line: 189, column: 32, scope: !404)
!566 = !DILocation(line: 189, column: 23, scope: !404)
!567 = !DILocation(line: 189, column: 45, scope: !404)
!568 = !DILocation(line: 189, column: 19, scope: !404)
!569 = !DILocation(line: 189, column: 12, scope: !404)
!570 = !DILocation(line: 189, column: 5, scope: !404)
!571 = !DILocation(line: 189, column: 17, scope: !404)
!572 = !DILocation(line: 196, column: 15, scope: !404)
!573 = !DILocation(line: 197, column: 15, scope: !404)
!574 = !DILocation(line: 198, column: 15, scope: !404)
!575 = !DILocation(line: 199, column: 15, scope: !404)
!576 = !DILocation(line: 201, column: 15, scope: !404)
!577 = !DILocation(line: 201, column: 21, scope: !404)
!578 = !DILocation(line: 204, column: 18, scope: !404)
!579 = !DILocation(line: 206, column: 18, scope: !404)
!580 = !DILocation(line: 208, column: 18, scope: !404)
!581 = !DILocation(line: 210, column: 18, scope: !404)
!582 = !DILocation(line: 212, column: 14, scope: !404)
!583 = !DILocation(line: 214, column: 14, scope: !404)
!584 = !DILocation(line: 216, column: 14, scope: !404)
!585 = !DILocation(line: 218, column: 14, scope: !404)
!586 = !DILocation(line: 220, column: 8, scope: !404)
!587 = !DILocation(line: 221, column: 8, scope: !404)
!588 = !DILocation(line: 223, column: 25, scope: !404)
!589 = !DILocation(line: 223, column: 30, scope: !404)
!590 = !DILocation(line: 223, column: 36, scope: !404)
!591 = !DILocation(line: 223, column: 19, scope: !404)
!592 = !DILocation(line: 223, column: 12, scope: !404)
!593 = !DILocation(line: 223, column: 5, scope: !404)
!594 = !DILocation(line: 223, column: 17, scope: !404)
!595 = !DILocation(line: 224, column: 25, scope: !404)
!596 = !DILocation(line: 224, column: 30, scope: !404)
!597 = !DILocation(line: 224, column: 36, scope: !404)
!598 = !DILocation(line: 224, column: 19, scope: !404)
!599 = !DILocation(line: 224, column: 12, scope: !404)
!600 = !DILocation(line: 224, column: 5, scope: !404)
!601 = !DILocation(line: 224, column: 17, scope: !404)
!602 = !DILocation(line: 225, column: 25, scope: !404)
!603 = !DILocation(line: 225, column: 30, scope: !404)
!604 = !DILocation(line: 225, column: 36, scope: !404)
!605 = !DILocation(line: 225, column: 19, scope: !404)
!606 = !DILocation(line: 225, column: 12, scope: !404)
!607 = !DILocation(line: 225, column: 5, scope: !404)
!608 = !DILocation(line: 225, column: 17, scope: !404)
!609 = !DILocation(line: 226, column: 24, scope: !404)
!610 = !DILocation(line: 226, column: 29, scope: !404)
!611 = !DILocation(line: 226, column: 35, scope: !404)
!612 = !DILocation(line: 226, column: 18, scope: !404)
!613 = !DILocation(line: 226, column: 5, scope: !404)
!614 = !DILocation(line: 226, column: 15, scope: !404)
!615 = !DILocation(line: 230, column: 3, scope: !404)
!616 = !DILocation(line: 229, column: 10, scope: !404)
!617 = !DILocation(line: 161, column: 21, scope: !404)
!618 = distinct !{!618, !505, !615, !174}
!619 = !DILocation(line: 231, column: 1, scope: !404)
!620 = distinct !DISubprogram(name: "fdct", scope: !405, file: !405, line: 233, type: !149, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !150)
!621 = !DILocation(line: 237, column: 3, scope: !620)
!622 = !DILocation(line: 243, column: 10, scope: !620)
!623 = !DILocation(line: 243, column: 3, scope: !620)
!624 = distinct !DISubprogram(name: "lms_sinus", scope: !625, file: !625, line: 57, type: !149, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !150)
!625 = !DIFile(filename: "test/lms.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!626 = !DILocation(line: 58, column: 13, scope: !624)
!627 = !DILocation(line: 59, column: 9, scope: !624)
!628 = !DILocation(line: 59, column: 7, scope: !624)
!629 = !DILocation(line: 60, column: 27, scope: !624)
!630 = !DILocation(line: 60, column: 24, scope: !624)
!631 = !DILocation(line: 60, column: 59, scope: !624)
!632 = !DILocation(line: 61, column: 48, scope: !624)
!633 = !DILocation(line: 60, column: 13, scope: !624)
!634 = !DILocation(line: 60, column: 12, scope: !624)
!635 = !DILocation(line: 60, column: 5, scope: !624)
!636 = !DILocation(line: 62, column: 24, scope: !624)
!637 = !DILocation(line: 62, column: 21, scope: !624)
!638 = !DILocation(line: 62, column: 52, scope: !624)
!639 = !DILocation(line: 62, column: 10, scope: !624)
!640 = !DILocation(line: 62, column: 3, scope: !624)
!641 = !DILocation(line: 0, scope: !624)
!642 = !DILocation(line: 63, column: 1, scope: !624)
!643 = distinct !DISubprogram(name: "lms_init", scope: !625, file: !625, line: 65, type: !149, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !150)
!644 = !DILocation(line: 69, column: 16, scope: !643)
!645 = !DILocation(line: 73, column: 5, scope: !643)
!646 = !DILocation(line: 80, column: 5, scope: !643)
!647 = distinct !{!647, !645, !648, !174}
!648 = !DILocation(line: 80, column: 21, scope: !643)
!649 = !DILocation(line: 85, column: 20, scope: !643)
!650 = !DILocation(line: 85, column: 33, scope: !643)
!651 = !DILocation(line: 85, column: 18, scope: !643)
!652 = !DILocation(line: 88, column: 45, scope: !643)
!653 = !DILocation(line: 0, scope: !643)
!654 = !DILocation(line: 88, column: 54, scope: !643)
!655 = !DILocation(line: 88, column: 40, scope: !643)
!656 = !DILocation(line: 91, column: 5, scope: !643)
!657 = !DILocation(line: 93, column: 19, scope: !643)
!658 = !DILocation(line: 93, column: 32, scope: !643)
!659 = !DILocation(line: 94, column: 18, scope: !643)
!660 = !DILocation(line: 94, column: 12, scope: !643)
!661 = !DILocation(line: 94, column: 50, scope: !643)
!662 = !DILocation(line: 95, column: 19, scope: !643)
!663 = !DILocation(line: 95, column: 32, scope: !643)
!664 = !DILocation(line: 96, column: 18, scope: !643)
!665 = !DILocation(line: 96, column: 12, scope: !643)
!666 = !DILocation(line: 96, column: 50, scope: !643)
!667 = !DILocation(line: 97, column: 24, scope: !643)
!668 = !DILocation(line: 97, column: 19, scope: !643)
!669 = !DILocation(line: 98, column: 5, scope: !643)
!670 = !DILocation(line: 98, column: 16, scope: !643)
!671 = distinct !{!671, !656, !672, !174}
!672 = !DILocation(line: 98, column: 21, scope: !643)
!673 = !DILocation(line: 102, column: 22, scope: !643)
!674 = !DILocation(line: 103, column: 20, scope: !643)
!675 = !DILocation(line: 103, column: 33, scope: !643)
!676 = !DILocation(line: 103, column: 5, scope: !643)
!677 = !DILocation(line: 103, column: 18, scope: !643)
!678 = !DILocation(line: 104, column: 36, scope: !643)
!679 = !DILocation(line: 104, column: 24, scope: !643)
!680 = !DILocation(line: 104, column: 41, scope: !643)
!681 = !DILocation(line: 104, column: 17, scope: !643)
!682 = !DILocation(line: 104, column: 5, scope: !643)
!683 = !DILocation(line: 104, column: 22, scope: !643)
!684 = !DILocation(line: 105, column: 3, scope: !643)
!685 = !DILocation(line: 88, column: 61, scope: !643)
!686 = distinct !{!686, !655, !684, !174}
!687 = !DILocation(line: 106, column: 1, scope: !643)
!688 = distinct !DISubprogram(name: "lms_calc", scope: !625, file: !625, line: 108, type: !149, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !150)
!689 = !DILocation(line: 113, column: 43, scope: !688)
!690 = !DILocation(line: 0, scope: !688)
!691 = !DILocation(line: 113, column: 52, scope: !688)
!692 = !DILocation(line: 113, column: 38, scope: !688)
!693 = !DILocation(line: 114, column: 17, scope: !688)
!694 = !DILocation(line: 114, column: 7, scope: !688)
!695 = !DILocation(line: 113, column: 63, scope: !688)
!696 = !DILocation(line: 113, column: 74, scope: !688)
!697 = !DILocation(line: 113, column: 59, scope: !688)
!698 = distinct !{!698, !692, !699, !174}
!699 = !DILocation(line: 114, column: 20, scope: !688)
!700 = !DILocation(line: 115, column: 14, scope: !688)
!701 = !DILocation(line: 119, column: 18, scope: !688)
!702 = !DILocation(line: 119, column: 31, scope: !688)
!703 = !DILocation(line: 119, column: 43, scope: !688)
!704 = !DILocation(line: 119, column: 40, scope: !688)
!705 = !DILocation(line: 119, column: 26, scope: !688)
!706 = !DILocation(line: 119, column: 10, scope: !688)
!707 = !DILocation(line: 121, column: 43, scope: !688)
!708 = !DILocation(line: 121, column: 52, scope: !688)
!709 = !DILocation(line: 121, column: 38, scope: !688)
!710 = !DILocation(line: 121, column: 63, scope: !688)
!711 = !DILocation(line: 122, column: 7, scope: !688)
!712 = !DILocation(line: 122, column: 14, scope: !688)
!713 = !DILocation(line: 121, column: 65, scope: !688)
!714 = !DILocation(line: 121, column: 59, scope: !688)
!715 = distinct !{!715, !709, !716, !174}
!716 = !DILocation(line: 122, column: 23, scope: !688)
!717 = !DILocation(line: 125, column: 21, scope: !688)
!718 = !DILocation(line: 125, column: 16, scope: !688)
!719 = !DILocation(line: 125, column: 29, scope: !688)
!720 = !DILocation(line: 125, column: 26, scope: !688)
!721 = !DILocation(line: 127, column: 43, scope: !688)
!722 = !DILocation(line: 127, column: 52, scope: !688)
!723 = !DILocation(line: 127, column: 38, scope: !688)
!724 = !DILocation(line: 128, column: 11, scope: !688)
!725 = !DILocation(line: 127, column: 63, scope: !688)
!726 = !DILocation(line: 127, column: 68, scope: !688)
!727 = !DILocation(line: 127, column: 59, scope: !688)
!728 = distinct !{!728, !723, !729, !174}
!729 = !DILocation(line: 128, column: 20, scope: !688)
!730 = !DILocation(line: 130, column: 3, scope: !688)
!731 = distinct !DISubprogram(name: "lms_main", scope: !625, file: !625, line: 133, type: !149, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !150)
!732 = !DILocation(line: 137, column: 9, scope: !731)
!733 = !DILocation(line: 139, column: 43, scope: !731)
!734 = !DILocation(line: 0, scope: !731)
!735 = !DILocation(line: 139, column: 52, scope: !731)
!736 = !DILocation(line: 139, column: 38, scope: !731)
!737 = !DILocation(line: 140, column: 5, scope: !731)
!738 = !DILocation(line: 140, column: 10, scope: !731)
!739 = !DILocation(line: 141, column: 5, scope: !731)
!740 = !DILocation(line: 141, column: 16, scope: !731)
!741 = !DILocation(line: 142, column: 3, scope: !731)
!742 = !DILocation(line: 139, column: 59, scope: !731)
!743 = distinct !{!743, !736, !741, !174}
!744 = !DILocation(line: 144, column: 45, scope: !731)
!745 = !DILocation(line: 144, column: 54, scope: !731)
!746 = !DILocation(line: 144, column: 40, scope: !731)
!747 = !DILocation(line: 145, column: 30, scope: !731)
!748 = !DILocation(line: 145, column: 56, scope: !731)
!749 = !DILocation(line: 145, column: 44, scope: !731)
!750 = !DILocation(line: 145, column: 62, scope: !731)
!751 = !DILocation(line: 146, column: 52, scope: !731)
!752 = !DILocation(line: 145, column: 21, scope: !731)
!753 = !DILocation(line: 145, column: 5, scope: !731)
!754 = !DILocation(line: 145, column: 19, scope: !731)
!755 = !DILocation(line: 147, column: 3, scope: !731)
!756 = !DILocation(line: 144, column: 60, scope: !731)
!757 = distinct !{!757, !746, !755, !174}
!758 = !DILocation(line: 148, column: 1, scope: !731)
!759 = distinct !DISubprogram(name: "lms_return", scope: !625, file: !625, line: 150, type: !149, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !150)
!760 = !DILocation(line: 154, column: 45, scope: !759)
!761 = !DILocation(line: 0, scope: !759)
!762 = !DILocation(line: 154, column: 54, scope: !759)
!763 = !DILocation(line: 154, column: 40, scope: !759)
!764 = !DILocation(line: 156, column: 3, scope: !759)
!765 = !DILocation(line: 155, column: 12, scope: !759)
!766 = !DILocation(line: 155, column: 9, scope: !759)
!767 = !DILocation(line: 154, column: 60, scope: !759)
!768 = distinct !{!768, !763, !764, !174}
!769 = !DILocation(line: 158, column: 33, scope: !759)
!770 = !DILocation(line: 158, column: 26, scope: !759)
!771 = !DILocation(line: 158, column: 10, scope: !759)
!772 = !DILocation(line: 158, column: 3, scope: !759)
!773 = distinct !DISubprogram(name: "lms", scope: !625, file: !625, line: 163, type: !149, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !150)
!774 = !DILocation(line: 164, column: 3, scope: !773)
!775 = !DILocation(line: 165, column: 3, scope: !773)
!776 = !DILocation(line: 166, column: 3, scope: !773)
!777 = !DILocation(line: 167, column: 1, scope: !773)
!778 = distinct !DISubprogram(name: "exec", scope: !779, file: !779, line: 1, type: !149, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !150)
!779 = !DIFile(filename: "test/loopsinmultiplefunction.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "5e1a6fd0dca690f9783cfba6a0b985f5")
!780 = !DILocation(line: 3, column: 6, scope: !778)
!781 = !DILocation(line: 3, column: 2, scope: !778)
!782 = !DILocation(line: 6, column: 2, scope: !778)
!783 = distinct !{!783, !781, !782, !174}
!784 = !DILocation(line: 7, column: 2, scope: !778)
!785 = distinct !DISubprogram(name: "a", scope: !779, file: !779, line: 10, type: !149, scopeLine: 10, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !150)
!786 = !DILocation(line: 12, column: 7, scope: !785)
!787 = !DILocation(line: 0, scope: !785)
!788 = !DILocation(line: 12, column: 20, scope: !785)
!789 = !DILocation(line: 12, column: 2, scope: !785)
!790 = !DILocation(line: 13, column: 3, scope: !785)
!791 = !DILocation(line: 14, column: 2, scope: !785)
!792 = !DILocation(line: 12, column: 26, scope: !785)
!793 = distinct !{!793, !789, !791, !174}
!794 = !DILocation(line: 15, column: 2, scope: !785)
!795 = distinct !DISubprogram(name: "b", scope: !779, file: !779, line: 18, type: !149, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !150)
!796 = !DILocation(line: 20, column: 7, scope: !795)
!797 = !DILocation(line: 0, scope: !795)
!798 = !DILocation(line: 20, column: 20, scope: !795)
!799 = !DILocation(line: 20, column: 2, scope: !795)
!800 = !DILocation(line: 21, column: 3, scope: !795)
!801 = !DILocation(line: 22, column: 2, scope: !795)
!802 = !DILocation(line: 20, column: 25, scope: !795)
!803 = distinct !{!803, !799, !801, !174}
!804 = !DILocation(line: 23, column: 2, scope: !795)
!805 = distinct !DISubprogram(name: "loop", scope: !779, file: !779, line: 26, type: !149, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !150)
!806 = !DILocation(line: 28, column: 6, scope: !805)
!807 = !DILocation(line: 0, scope: !805)
!808 = !DILocation(line: 28, column: 15, scope: !805)
!809 = !DILocation(line: 28, column: 2, scope: !805)
!810 = !DILocation(line: 29, column: 3, scope: !805)
!811 = !DILocation(line: 30, column: 3, scope: !805)
!812 = !DILocation(line: 31, column: 2, scope: !805)
!813 = !DILocation(line: 28, column: 19, scope: !805)
!814 = distinct !{!814, !809, !812, !174}
!815 = !DILocation(line: 32, column: 2, scope: !805)
!816 = distinct !DISubprogram(name: "matmult", scope: !817, file: !817, line: 52, type: !149, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !150)
!817 = !DIFile(filename: "test/matmult.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!818 = !DILocation(line: 54, column: 4, scope: !816)
!819 = !DILocation(line: 61, column: 4, scope: !816)
!820 = !DILocation(line: 62, column: 1, scope: !816)
!821 = distinct !DISubprogram(name: "InitSeed", scope: !817, file: !817, line: 65, type: !149, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !150)
!822 = !DILocation(line: 73, column: 8, scope: !821)
!823 = !DILocation(line: 74, column: 1, scope: !821)
!824 = distinct !DISubprogram(name: "Test", scope: !817, file: !817, line: 77, type: !149, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !150)
!825 = !DILocation(line: 88, column: 4, scope: !824)
!826 = !DILocation(line: 89, column: 4, scope: !824)
!827 = !DILocation(line: 96, column: 4, scope: !824)
!828 = !DILocation(line: 105, column: 1, scope: !824)
!829 = distinct !DISubprogram(name: "Initialize", scope: !817, file: !817, line: 108, type: !149, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !150)
!830 = !DILocation(line: 115, column: 9, scope: !829)
!831 = !DILocation(line: 0, scope: !829)
!832 = !DILocation(line: 115, column: 36, scope: !829)
!833 = !DILocation(line: 115, column: 4, scope: !829)
!834 = !DILocation(line: 116, column: 12, scope: !829)
!835 = !DILocation(line: 116, column: 39, scope: !829)
!836 = !DILocation(line: 116, column: 7, scope: !829)
!837 = !DILocation(line: 117, column: 42, scope: !829)
!838 = !DILocation(line: 117, column: 10, scope: !829)
!839 = !DILocation(line: 117, column: 40, scope: !829)
!840 = !DILocation(line: 116, column: 63, scope: !829)
!841 = distinct !{!841, !836, !842, !174}
!842 = !DILocation(line: 117, column: 56, scope: !829)
!843 = !DILocation(line: 115, column: 60, scope: !829)
!844 = distinct !{!844, !833, !842, !174}
!845 = !DILocation(line: 118, column: 1, scope: !829)
!846 = distinct !DISubprogram(name: "Multiply", scope: !817, file: !817, line: 147, type: !149, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !150)
!847 = !DILocation(line: 154, column: 9, scope: !846)
!848 = !DILocation(line: 0, scope: !846)
!849 = !DILocation(line: 154, column: 26, scope: !846)
!850 = !DILocation(line: 154, column: 4, scope: !846)
!851 = !DILocation(line: 155, column: 12, scope: !846)
!852 = !DILocation(line: 155, column: 29, scope: !846)
!853 = !DILocation(line: 155, column: 7, scope: !846)
!854 = !DILocation(line: 157, column: 10, scope: !846)
!855 = !DILocation(line: 157, column: 29, scope: !846)
!856 = !DILocation(line: 158, column: 15, scope: !846)
!857 = !DILocation(line: 158, column: 32, scope: !846)
!858 = !DILocation(line: 158, column: 10, scope: !846)
!859 = !DILocation(line: 160, column: 16, scope: !846)
!860 = !DILocation(line: 160, column: 34, scope: !846)
!861 = !DILocation(line: 160, column: 32, scope: !846)
!862 = !DILocation(line: 159, column: 13, scope: !846)
!863 = !DILocation(line: 159, column: 32, scope: !846)
!864 = !DILocation(line: 158, column: 51, scope: !846)
!865 = distinct !{!865, !858, !866, !174}
!866 = !DILocation(line: 160, column: 48, scope: !846)
!867 = !DILocation(line: 161, column: 8, scope: !846)
!868 = !DILocation(line: 155, column: 48, scope: !846)
!869 = distinct !{!869, !853, !867, !174}
!870 = !DILocation(line: 154, column: 45, scope: !846)
!871 = distinct !{!871, !850, !867, !174}
!872 = !DILocation(line: 162, column: 1, scope: !846)
!873 = distinct !DISubprogram(name: "RandomInteger", scope: !817, file: !817, line: 121, type: !149, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !150)
!874 = !DILocation(line: 126, column: 13, scope: !873)
!875 = !DILocation(line: 126, column: 18, scope: !873)
!876 = !DILocation(line: 126, column: 25, scope: !873)
!877 = !DILocation(line: 126, column: 31, scope: !873)
!878 = !DILocation(line: 126, column: 9, scope: !873)
!879 = !DILocation(line: 127, column: 4, scope: !873)
!880 = distinct !DISubprogram(name: "ndes_init", scope: !881, file: !881, line: 63, type: !149, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!881 = !DIFile(filename: "test/ndes.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "6a4124562fff6afefc25084a1c1c3d13")
!882 = !DILocation(line: 79, column: 9, scope: !880)
!883 = !DILocation(line: 0, scope: !880)
!884 = !DILocation(line: 79, column: 18, scope: !880)
!885 = !DILocation(line: 79, column: 3, scope: !880)
!886 = !DILocation(line: 80, column: 22, scope: !880)
!887 = !DILocation(line: 80, column: 5, scope: !880)
!888 = !DILocation(line: 80, column: 20, scope: !880)
!889 = !DILocation(line: 79, column: 25, scope: !880)
!890 = distinct !{!890, !885, !891, !174}
!891 = !DILocation(line: 80, column: 39, scope: !880)
!892 = !DILocation(line: 82, column: 9, scope: !880)
!893 = !DILocation(line: 82, column: 18, scope: !880)
!894 = !DILocation(line: 82, column: 3, scope: !880)
!895 = !DILocation(line: 83, column: 22, scope: !880)
!896 = !DILocation(line: 83, column: 5, scope: !880)
!897 = !DILocation(line: 83, column: 20, scope: !880)
!898 = !DILocation(line: 82, column: 25, scope: !880)
!899 = distinct !{!899, !894, !900, !174}
!900 = !DILocation(line: 83, column: 39, scope: !880)
!901 = !DILocation(line: 85, column: 14, scope: !880)
!902 = !DILocation(line: 86, column: 14, scope: !880)
!903 = !DILocation(line: 87, column: 14, scope: !880)
!904 = !DILocation(line: 88, column: 14, scope: !880)
!905 = !DILocation(line: 90, column: 17, scope: !880)
!906 = !DILocation(line: 90, column: 15, scope: !880)
!907 = !DILocation(line: 91, column: 12, scope: !880)
!908 = !DILocation(line: 92, column: 1, scope: !880)
!909 = distinct !DISubprogram(name: "ndes_des", scope: !881, file: !881, line: 96, type: !149, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!910 = !DILocation(line: 127, column: 8, scope: !909)
!911 = !DILocation(line: 128, column: 14, scope: !909)
!912 = !DILocation(line: 129, column: 19, scope: !909)
!913 = !DILocation(line: 132, column: 11, scope: !909)
!914 = !DILocation(line: 0, scope: !909)
!915 = !DILocation(line: 132, column: 20, scope: !909)
!916 = !DILocation(line: 132, column: 5, scope: !909)
!917 = !DILocation(line: 133, column: 33, scope: !909)
!918 = !DILocation(line: 133, column: 7, scope: !909)
!919 = !DILocation(line: 133, column: 21, scope: !909)
!920 = !DILocation(line: 132, column: 28, scope: !909)
!921 = distinct !{!921, !916, !922, !174}
!922 = !DILocation(line: 133, column: 39, scope: !909)
!923 = !DILocation(line: 134, column: 3, scope: !909)
!924 = !DILocation(line: 136, column: 8, scope: !909)
!925 = !DILocation(line: 137, column: 13, scope: !909)
!926 = !DILocation(line: 138, column: 29, scope: !909)
!927 = !DILocation(line: 138, column: 16, scope: !909)
!928 = !DILocation(line: 141, column: 11, scope: !909)
!929 = !DILocation(line: 141, column: 29, scope: !909)
!930 = !DILocation(line: 141, column: 5, scope: !909)
!931 = !DILocation(line: 142, column: 31, scope: !909)
!932 = !DILocation(line: 142, column: 33, scope: !909)
!933 = !DILocation(line: 142, column: 60, scope: !909)
!934 = !DILocation(line: 142, column: 42, scope: !909)
!935 = !DILocation(line: 142, column: 40, scope: !909)
!936 = !DILocation(line: 142, column: 18, scope: !909)
!937 = !DILocation(line: 143, column: 29, scope: !909)
!938 = !DILocation(line: 143, column: 31, scope: !909)
!939 = !DILocation(line: 143, column: 18, scope: !909)
!940 = !DILocation(line: 144, column: 55, scope: !909)
!941 = !DILocation(line: 144, column: 37, scope: !909)
!942 = !DILocation(line: 144, column: 35, scope: !909)
!943 = !DILocation(line: 144, column: 18, scope: !909)
!944 = !DILocation(line: 145, column: 5, scope: !909)
!945 = !DILocation(line: 141, column: 36, scope: !909)
!946 = !DILocation(line: 141, column: 41, scope: !909)
!947 = distinct !{!947, !930, !944, !174}
!948 = !DILocation(line: 148, column: 11, scope: !909)
!949 = !DILocation(line: 148, column: 20, scope: !909)
!950 = !DILocation(line: 148, column: 5, scope: !909)
!951 = !DILocation(line: 149, column: 12, scope: !909)
!952 = !DILocation(line: 150, column: 7, scope: !909)
!953 = !DILocation(line: 151, column: 7, scope: !909)
!954 = !DILocation(line: 151, column: 18, scope: !909)
!955 = !DILocation(line: 152, column: 5, scope: !909)
!956 = !DILocation(line: 148, column: 28, scope: !909)
!957 = distinct !{!957, !950, !955, !174}
!958 = !DILocation(line: 153, column: 3, scope: !909)
!959 = !DILocation(line: 155, column: 17, scope: !909)
!960 = !DILocation(line: 155, column: 19, scope: !909)
!961 = !DILocation(line: 155, column: 8, scope: !909)
!962 = !DILocation(line: 155, column: 10, scope: !909)
!963 = !DILocation(line: 158, column: 9, scope: !909)
!964 = !DILocation(line: 158, column: 27, scope: !909)
!965 = !DILocation(line: 158, column: 3, scope: !909)
!966 = !DILocation(line: 159, column: 19, scope: !909)
!967 = !DILocation(line: 159, column: 21, scope: !909)
!968 = !DILocation(line: 159, column: 10, scope: !909)
!969 = !DILocation(line: 159, column: 12, scope: !909)
!970 = !DILocation(line: 160, column: 45, scope: !909)
!971 = !DILocation(line: 160, column: 27, scope: !909)
!972 = !DILocation(line: 160, column: 25, scope: !909)
!973 = !DILocation(line: 160, column: 10, scope: !909)
!974 = !DILocation(line: 160, column: 12, scope: !909)
!975 = !DILocation(line: 161, column: 19, scope: !909)
!976 = !DILocation(line: 161, column: 21, scope: !909)
!977 = !DILocation(line: 161, column: 10, scope: !909)
!978 = !DILocation(line: 161, column: 12, scope: !909)
!979 = !DILocation(line: 162, column: 45, scope: !909)
!980 = !DILocation(line: 162, column: 27, scope: !909)
!981 = !DILocation(line: 162, column: 25, scope: !909)
!982 = !DILocation(line: 162, column: 10, scope: !909)
!983 = !DILocation(line: 162, column: 12, scope: !909)
!984 = !DILocation(line: 163, column: 3, scope: !909)
!985 = !DILocation(line: 158, column: 34, scope: !909)
!986 = !DILocation(line: 158, column: 39, scope: !909)
!987 = distinct !{!987, !965, !984, !174}
!988 = !DILocation(line: 165, column: 9, scope: !909)
!989 = !DILocation(line: 165, column: 18, scope: !909)
!990 = !DILocation(line: 165, column: 3, scope: !909)
!991 = !DILocation(line: 166, column: 16, scope: !909)
!992 = !DILocation(line: 166, column: 12, scope: !909)
!993 = !DILocation(line: 166, column: 26, scope: !909)
!994 = !DILocation(line: 167, column: 22, scope: !909)
!995 = !DILocation(line: 167, column: 5, scope: !909)
!996 = !DILocation(line: 168, column: 16, scope: !909)
!997 = !DILocation(line: 168, column: 8, scope: !909)
!998 = !DILocation(line: 169, column: 19, scope: !909)
!999 = !DILocation(line: 169, column: 10, scope: !909)
!1000 = !DILocation(line: 169, column: 12, scope: !909)
!1001 = !DILocation(line: 170, column: 10, scope: !909)
!1002 = !DILocation(line: 170, column: 12, scope: !909)
!1003 = !DILocation(line: 171, column: 3, scope: !909)
!1004 = !DILocation(line: 165, column: 26, scope: !909)
!1005 = distinct !{!1005, !990, !1003, !174}
!1006 = !DILocation(line: 173, column: 13, scope: !909)
!1007 = !DILocation(line: 173, column: 6, scope: !909)
!1008 = !DILocation(line: 174, column: 17, scope: !909)
!1009 = !DILocation(line: 174, column: 8, scope: !909)
!1010 = !DILocation(line: 174, column: 10, scope: !909)
!1011 = !DILocation(line: 175, column: 8, scope: !909)
!1012 = !DILocation(line: 175, column: 10, scope: !909)
!1013 = !DILocation(line: 176, column: 25, scope: !909)
!1014 = !DILocation(line: 176, column: 27, scope: !909)
!1015 = !DILocation(line: 176, column: 12, scope: !909)
!1016 = !DILocation(line: 176, column: 14, scope: !909)
!1017 = !DILocation(line: 179, column: 9, scope: !909)
!1018 = !DILocation(line: 179, column: 27, scope: !909)
!1019 = !DILocation(line: 179, column: 3, scope: !909)
!1020 = !DILocation(line: 180, column: 27, scope: !909)
!1021 = !DILocation(line: 180, column: 29, scope: !909)
!1022 = !DILocation(line: 180, column: 14, scope: !909)
!1023 = !DILocation(line: 180, column: 16, scope: !909)
!1024 = !DILocation(line: 181, column: 54, scope: !909)
!1025 = !DILocation(line: 181, column: 35, scope: !909)
!1026 = !DILocation(line: 181, column: 33, scope: !909)
!1027 = !DILocation(line: 181, column: 14, scope: !909)
!1028 = !DILocation(line: 181, column: 16, scope: !909)
!1029 = !DILocation(line: 182, column: 27, scope: !909)
!1030 = !DILocation(line: 182, column: 29, scope: !909)
!1031 = !DILocation(line: 182, column: 14, scope: !909)
!1032 = !DILocation(line: 182, column: 16, scope: !909)
!1033 = !DILocation(line: 183, column: 54, scope: !909)
!1034 = !DILocation(line: 183, column: 35, scope: !909)
!1035 = !DILocation(line: 183, column: 33, scope: !909)
!1036 = !DILocation(line: 183, column: 14, scope: !909)
!1037 = !DILocation(line: 183, column: 16, scope: !909)
!1038 = !DILocation(line: 184, column: 3, scope: !909)
!1039 = !DILocation(line: 179, column: 34, scope: !909)
!1040 = !DILocation(line: 179, column: 39, scope: !909)
!1041 = distinct !{!1041, !1019, !1038, !174}
!1042 = !DILocation(line: 185, column: 1, scope: !909)
!1043 = distinct !DISubprogram(name: "ndes_getbit", scope: !881, file: !881, line: 333, type: !149, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!1044 = !DILocation(line: 335, column: 14, scope: !1043)
!1045 = !DILocation(line: 335, column: 8, scope: !1043)
!1046 = !DILocation(line: 336, column: 12, scope: !1043)
!1047 = !DILocation(line: 336, column: 39, scope: !1043)
!1048 = !DILocation(line: 336, column: 30, scope: !1043)
!1049 = !DILocation(line: 336, column: 5, scope: !1043)
!1050 = !DILocation(line: 338, column: 28, scope: !1043)
!1051 = !DILocation(line: 338, column: 12, scope: !1043)
!1052 = !DILocation(line: 338, column: 47, scope: !1043)
!1053 = !DILocation(line: 338, column: 38, scope: !1043)
!1054 = !DILocation(line: 338, column: 5, scope: !1043)
!1055 = !DILocation(line: 0, scope: !1043)
!1056 = !DILocation(line: 339, column: 1, scope: !1043)
!1057 = distinct !DISubprogram(name: "ndes_ks", scope: !881, file: !881, line: 341, type: !149, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!1058 = !DILocation(line: 345, column: 10, scope: !1057)
!1059 = !DILocation(line: 345, column: 15, scope: !1057)
!1060 = !DILocation(line: 345, column: 20, scope: !1057)
!1061 = !DILocation(line: 345, column: 25, scope: !1057)
!1062 = !DILocation(line: 345, column: 30, scope: !1057)
!1063 = !DILocation(line: 345, column: 35, scope: !1057)
!1064 = !DILocation(line: 345, column: 40, scope: !1057)
!1065 = !DILocation(line: 345, column: 8, scope: !1057)
!1066 = !DILocation(line: 346, column: 29, scope: !1057)
!1067 = !DILocation(line: 346, column: 55, scope: !1057)
!1068 = !DILocation(line: 346, column: 31, scope: !1057)
!1069 = !DILocation(line: 346, column: 65, scope: !1057)
!1070 = !DILocation(line: 346, column: 16, scope: !1057)
!1071 = !DILocation(line: 347, column: 29, scope: !1057)
!1072 = !DILocation(line: 347, column: 55, scope: !1057)
!1073 = !DILocation(line: 347, column: 31, scope: !1057)
!1074 = !DILocation(line: 347, column: 65, scope: !1057)
!1075 = !DILocation(line: 347, column: 16, scope: !1057)
!1076 = !DILocation(line: 348, column: 3, scope: !1057)
!1077 = !DILocation(line: 350, column: 11, scope: !1057)
!1078 = !DILocation(line: 0, scope: !1057)
!1079 = !DILocation(line: 350, column: 20, scope: !1057)
!1080 = !DILocation(line: 350, column: 5, scope: !1057)
!1081 = !DILocation(line: 351, column: 31, scope: !1057)
!1082 = !DILocation(line: 351, column: 57, scope: !1057)
!1083 = !DILocation(line: 351, column: 33, scope: !1057)
!1084 = !DILocation(line: 351, column: 67, scope: !1057)
!1085 = !DILocation(line: 351, column: 18, scope: !1057)
!1086 = !DILocation(line: 352, column: 31, scope: !1057)
!1087 = !DILocation(line: 352, column: 57, scope: !1057)
!1088 = !DILocation(line: 352, column: 33, scope: !1057)
!1089 = !DILocation(line: 352, column: 67, scope: !1057)
!1090 = !DILocation(line: 352, column: 18, scope: !1057)
!1091 = !DILocation(line: 353, column: 5, scope: !1057)
!1092 = !DILocation(line: 350, column: 27, scope: !1057)
!1093 = distinct !{!1093, !1080, !1091, !174}
!1094 = !DILocation(line: 356, column: 35, scope: !1057)
!1095 = !DILocation(line: 356, column: 37, scope: !1057)
!1096 = !DILocation(line: 356, column: 23, scope: !1057)
!1097 = !DILocation(line: 356, column: 25, scope: !1057)
!1098 = !DILocation(line: 356, column: 11, scope: !1057)
!1099 = !DILocation(line: 356, column: 13, scope: !1057)
!1100 = !DILocation(line: 359, column: 9, scope: !1057)
!1101 = !DILocation(line: 359, column: 35, scope: !1057)
!1102 = !DILocation(line: 359, column: 3, scope: !1057)
!1103 = !DILocation(line: 360, column: 25, scope: !1057)
!1104 = !DILocation(line: 360, column: 27, scope: !1057)
!1105 = !DILocation(line: 360, column: 13, scope: !1057)
!1106 = !DILocation(line: 360, column: 15, scope: !1057)
!1107 = !DILocation(line: 362, column: 40, scope: !1057)
!1108 = !DILocation(line: 362, column: 17, scope: !1057)
!1109 = !DILocation(line: 361, column: 33, scope: !1057)
!1110 = !DILocation(line: 361, column: 31, scope: !1057)
!1111 = !DILocation(line: 361, column: 13, scope: !1057)
!1112 = !DILocation(line: 361, column: 15, scope: !1057)
!1113 = !DILocation(line: 363, column: 25, scope: !1057)
!1114 = !DILocation(line: 363, column: 27, scope: !1057)
!1115 = !DILocation(line: 363, column: 13, scope: !1057)
!1116 = !DILocation(line: 363, column: 15, scope: !1057)
!1117 = !DILocation(line: 365, column: 40, scope: !1057)
!1118 = !DILocation(line: 365, column: 17, scope: !1057)
!1119 = !DILocation(line: 364, column: 33, scope: !1057)
!1120 = !DILocation(line: 364, column: 31, scope: !1057)
!1121 = !DILocation(line: 364, column: 13, scope: !1057)
!1122 = !DILocation(line: 364, column: 15, scope: !1057)
!1123 = !DILocation(line: 366, column: 25, scope: !1057)
!1124 = !DILocation(line: 366, column: 27, scope: !1057)
!1125 = !DILocation(line: 366, column: 13, scope: !1057)
!1126 = !DILocation(line: 366, column: 15, scope: !1057)
!1127 = !DILocation(line: 368, column: 40, scope: !1057)
!1128 = !DILocation(line: 368, column: 17, scope: !1057)
!1129 = !DILocation(line: 367, column: 33, scope: !1057)
!1130 = !DILocation(line: 367, column: 31, scope: !1057)
!1131 = !DILocation(line: 367, column: 13, scope: !1057)
!1132 = !DILocation(line: 367, column: 15, scope: !1057)
!1133 = !DILocation(line: 369, column: 3, scope: !1057)
!1134 = !DILocation(line: 359, column: 42, scope: !1057)
!1135 = !DILocation(line: 359, column: 47, scope: !1057)
!1136 = !DILocation(line: 359, column: 52, scope: !1057)
!1137 = distinct !{!1137, !1102, !1133, !174}
!1138 = !DILocation(line: 370, column: 1, scope: !1057)
!1139 = distinct !DISubprogram(name: "ndes_cyfun", scope: !881, file: !881, line: 188, type: !149, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!1140 = !DILocation(line: 281, column: 17, scope: !1139)
!1141 = !DILocation(line: 290, column: 20, scope: !1139)
!1142 = !DILocation(line: 290, column: 22, scope: !1139)
!1143 = !DILocation(line: 290, column: 13, scope: !1139)
!1144 = !DILocation(line: 290, column: 15, scope: !1139)
!1145 = !DILocation(line: 290, column: 6, scope: !1139)
!1146 = !DILocation(line: 290, column: 8, scope: !1139)
!1147 = !DILocation(line: 293, column: 11, scope: !1139)
!1148 = !DILocation(line: 293, column: 9, scope: !1139)
!1149 = !DILocation(line: 0, scope: !1139)
!1150 = !DILocation(line: 293, column: 33, scope: !1139)
!1151 = !DILocation(line: 293, column: 35, scope: !1139)
!1152 = !DILocation(line: 293, column: 3, scope: !1139)
!1153 = !DILocation(line: 294, column: 17, scope: !1139)
!1154 = !DILocation(line: 294, column: 19, scope: !1139)
!1155 = !DILocation(line: 294, column: 38, scope: !1139)
!1156 = !DILocation(line: 294, column: 33, scope: !1139)
!1157 = !DILocation(line: 294, column: 30, scope: !1139)
!1158 = !DILocation(line: 294, column: 44, scope: !1139)
!1159 = !DILocation(line: 294, column: 26, scope: !1139)
!1160 = !DILocation(line: 294, column: 8, scope: !1139)
!1161 = !DILocation(line: 294, column: 10, scope: !1139)
!1162 = !DILocation(line: 295, column: 17, scope: !1139)
!1163 = !DILocation(line: 295, column: 19, scope: !1139)
!1164 = !DILocation(line: 295, column: 33, scope: !1139)
!1165 = !DILocation(line: 295, column: 30, scope: !1139)
!1166 = !DILocation(line: 295, column: 44, scope: !1139)
!1167 = !DILocation(line: 295, column: 26, scope: !1139)
!1168 = !DILocation(line: 295, column: 8, scope: !1139)
!1169 = !DILocation(line: 295, column: 10, scope: !1139)
!1170 = !DILocation(line: 296, column: 17, scope: !1139)
!1171 = !DILocation(line: 296, column: 19, scope: !1139)
!1172 = !DILocation(line: 296, column: 33, scope: !1139)
!1173 = !DILocation(line: 296, column: 30, scope: !1139)
!1174 = !DILocation(line: 296, column: 44, scope: !1139)
!1175 = !DILocation(line: 296, column: 26, scope: !1139)
!1176 = !DILocation(line: 296, column: 8, scope: !1139)
!1177 = !DILocation(line: 296, column: 10, scope: !1139)
!1178 = !DILocation(line: 297, column: 3, scope: !1139)
!1179 = !DILocation(line: 293, column: 42, scope: !1139)
!1180 = !DILocation(line: 293, column: 47, scope: !1139)
!1181 = !DILocation(line: 293, column: 52, scope: !1139)
!1182 = distinct !{!1182, !1152, !1178, !174}
!1183 = !DILocation(line: 298, column: 13, scope: !1139)
!1184 = !DILocation(line: 298, column: 6, scope: !1139)
!1185 = !DILocation(line: 298, column: 8, scope: !1139)
!1186 = !DILocation(line: 299, column: 13, scope: !1139)
!1187 = !DILocation(line: 299, column: 6, scope: !1139)
!1188 = !DILocation(line: 299, column: 8, scope: !1139)
!1189 = !DILocation(line: 300, column: 13, scope: !1139)
!1190 = !DILocation(line: 300, column: 6, scope: !1139)
!1191 = !DILocation(line: 300, column: 8, scope: !1139)
!1192 = !DILocation(line: 301, column: 35, scope: !1139)
!1193 = !DILocation(line: 301, column: 37, scope: !1139)
!1194 = !DILocation(line: 301, column: 68, scope: !1139)
!1195 = !DILocation(line: 301, column: 45, scope: !1139)
!1196 = !DILocation(line: 302, column: 35, scope: !1139)
!1197 = !DILocation(line: 302, column: 37, scope: !1139)
!1198 = !DILocation(line: 302, column: 69, scope: !1139)
!1199 = !DILocation(line: 302, column: 71, scope: !1139)
!1200 = !DILocation(line: 302, column: 44, scope: !1139)
!1201 = !DILocation(line: 305, column: 11, scope: !1139)
!1202 = !DILocation(line: 305, column: 9, scope: !1139)
!1203 = !DILocation(line: 305, column: 23, scope: !1139)
!1204 = !DILocation(line: 305, column: 25, scope: !1139)
!1205 = !DILocation(line: 305, column: 3, scope: !1139)
!1206 = !DILocation(line: 306, column: 16, scope: !1139)
!1207 = !DILocation(line: 306, column: 10, scope: !1139)
!1208 = !DILocation(line: 306, column: 5, scope: !1139)
!1209 = !DILocation(line: 306, column: 14, scope: !1139)
!1210 = !DILocation(line: 307, column: 16, scope: !1139)
!1211 = !DILocation(line: 307, column: 5, scope: !1139)
!1212 = !DILocation(line: 307, column: 14, scope: !1139)
!1213 = !DILocation(line: 310, column: 3, scope: !1139)
!1214 = !DILocation(line: 309, column: 12, scope: !1139)
!1215 = !DILocation(line: 308, column: 12, scope: !1139)
!1216 = !DILocation(line: 305, column: 32, scope: !1139)
!1217 = !DILocation(line: 305, column: 37, scope: !1139)
!1218 = distinct !{!1218, !1205, !1213, !174}
!1219 = !DILocation(line: 315, column: 12, scope: !1139)
!1220 = !DILocation(line: 315, column: 9, scope: !1139)
!1221 = !DILocation(line: 315, column: 17, scope: !1139)
!1222 = !DILocation(line: 315, column: 20, scope: !1139)
!1223 = !DILocation(line: 315, column: 3, scope: !1139)
!1224 = !DILocation(line: 316, column: 14, scope: !1139)
!1225 = !DILocation(line: 316, column: 9, scope: !1139)
!1226 = !DILocation(line: 316, column: 7, scope: !1139)
!1227 = !DILocation(line: 317, column: 16, scope: !1139)
!1228 = !DILocation(line: 317, column: 26, scope: !1139)
!1229 = !DILocation(line: 317, column: 39, scope: !1139)
!1230 = !DILocation(line: 317, column: 50, scope: !1139)
!1231 = !DILocation(line: 317, column: 33, scope: !1139)
!1232 = !DILocation(line: 318, column: 16, scope: !1139)
!1233 = !DILocation(line: 318, column: 26, scope: !1139)
!1234 = !DILocation(line: 318, column: 37, scope: !1139)
!1235 = !DILocation(line: 318, column: 39, scope: !1139)
!1236 = !DILocation(line: 318, column: 33, scope: !1139)
!1237 = !DILocation(line: 319, column: 18, scope: !1139)
!1238 = !DILocation(line: 319, column: 28, scope: !1139)
!1239 = !DILocation(line: 319, column: 12, scope: !1139)
!1240 = !DILocation(line: 319, column: 41, scope: !1139)
!1241 = !DILocation(line: 319, column: 52, scope: !1139)
!1242 = !DILocation(line: 319, column: 35, scope: !1139)
!1243 = !DILocation(line: 320, column: 31, scope: !1139)
!1244 = !DILocation(line: 320, column: 11, scope: !1139)
!1245 = !DILocation(line: 321, column: 28, scope: !1139)
!1246 = !DILocation(line: 322, column: 3, scope: !1139)
!1247 = !DILocation(line: 321, column: 19, scope: !1139)
!1248 = !DILocation(line: 321, column: 26, scope: !1139)
!1249 = !DILocation(line: 315, column: 28, scope: !1139)
!1250 = distinct !{!1250, !1223, !1246, !174}
!1251 = !DILocation(line: 324, column: 9, scope: !1139)
!1252 = !DILocation(line: 328, column: 11, scope: !1139)
!1253 = !DILocation(line: 328, column: 9, scope: !1139)
!1254 = !DILocation(line: 328, column: 17, scope: !1139)
!1255 = !DILocation(line: 328, column: 19, scope: !1139)
!1256 = !DILocation(line: 328, column: 3, scope: !1139)
!1257 = !DILocation(line: 329, column: 15, scope: !1139)
!1258 = !DILocation(line: 329, column: 21, scope: !1139)
!1259 = !DILocation(line: 329, column: 11, scope: !1139)
!1260 = !DILocation(line: 329, column: 5, scope: !1139)
!1261 = !DILocation(line: 328, column: 26, scope: !1139)
!1262 = distinct !{!1262, !1256, !1263, !174}
!1263 = !DILocation(line: 329, column: 26, scope: !1139)
!1264 = !DILocation(line: 330, column: 22, scope: !1139)
!1265 = !DILocation(line: 330, column: 17, scope: !1139)
!1266 = !DILocation(line: 330, column: 14, scope: !1139)
!1267 = !DILocation(line: 330, column: 28, scope: !1139)
!1268 = !DILocation(line: 330, column: 9, scope: !1139)
!1269 = !DILocation(line: 331, column: 1, scope: !1139)
!1270 = distinct !DISubprogram(name: "ndes_return", scope: !881, file: !881, line: 372, type: !149, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!1271 = !DILocation(line: 374, column: 21, scope: !1270)
!1272 = !DILocation(line: 374, column: 34, scope: !1270)
!1273 = !DILocation(line: 374, column: 23, scope: !1270)
!1274 = !DILocation(line: 374, column: 54, scope: !1270)
!1275 = !DILocation(line: 374, column: 3, scope: !1270)
!1276 = distinct !DISubprogram(name: "ndes_main", scope: !881, file: !881, line: 377, type: !149, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!1277 = !DILocation(line: 379, column: 47, scope: !1276)
!1278 = !DILocation(line: 379, column: 3, scope: !1276)
!1279 = !DILocation(line: 380, column: 1, scope: !1276)
!1280 = distinct !DISubprogram(name: "ndes", scope: !881, file: !881, line: 384, type: !149, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !150)
!1281 = !DILocation(line: 386, column: 3, scope: !1280)
!1282 = !DILocation(line: 387, column: 3, scope: !1280)
!1283 = !DILocation(line: 389, column: 12, scope: !1280)
!1284 = !DILocation(line: 389, column: 3, scope: !1280)
!1285 = distinct !DISubprogram(name: "prime_initSeed", scope: !1286, file: !1286, line: 49, type: !149, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1286 = !DIFile(filename: "test/prime.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "93a752eea1599691c878402ecbe8f5e7")
!1287 = !DILocation(line: 49, column: 36, scope: !1285)
!1288 = !DILocation(line: 49, column: 41, scope: !1285)
!1289 = distinct !DISubprogram(name: "prime_randomInteger", scope: !1286, file: !1286, line: 51, type: !149, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1290 = !DILocation(line: 52, column: 18, scope: !1289)
!1291 = !DILocation(line: 52, column: 29, scope: !1289)
!1292 = !DILocation(line: 52, column: 36, scope: !1289)
!1293 = !DILocation(line: 52, column: 42, scope: !1289)
!1294 = !DILocation(line: 52, column: 14, scope: !1289)
!1295 = !DILocation(line: 53, column: 11, scope: !1289)
!1296 = !DILocation(line: 53, column: 3, scope: !1289)
!1297 = distinct !DISubprogram(name: "prime_init", scope: !1286, file: !1286, line: 56, type: !149, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1298 = !DILocation(line: 57, column: 3, scope: !1297)
!1299 = !DILocation(line: 59, column: 13, scope: !1297)
!1300 = !DILocation(line: 59, column: 11, scope: !1297)
!1301 = !DILocation(line: 60, column: 13, scope: !1297)
!1302 = !DILocation(line: 60, column: 11, scope: !1297)
!1303 = !DILocation(line: 61, column: 1, scope: !1297)
!1304 = distinct !DISubprogram(name: "prime_return", scope: !1286, file: !1286, line: 63, type: !149, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1305 = !DILocation(line: 63, column: 29, scope: !1304)
!1306 = !DILocation(line: 63, column: 22, scope: !1304)
!1307 = distinct !DISubprogram(name: "prime_divides", scope: !1286, file: !1286, line: 69, type: !149, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1308 = !DILocation(line: 70, column: 13, scope: !1307)
!1309 = !DILocation(line: 70, column: 17, scope: !1307)
!1310 = !DILocation(line: 70, column: 10, scope: !1307)
!1311 = !DILocation(line: 70, column: 3, scope: !1307)
!1312 = distinct !DISubprogram(name: "prime_even", scope: !1286, file: !1286, line: 73, type: !149, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1313 = !DILocation(line: 73, column: 52, scope: !1312)
!1314 = !DILocation(line: 73, column: 44, scope: !1312)
!1315 = distinct !DISubprogram(name: "prime_prime", scope: !1286, file: !1286, line: 75, type: !149, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1316 = !DILocation(line: 77, column: 7, scope: !1315)
!1317 = !DILocation(line: 78, column: 15, scope: !1315)
!1318 = !DILocation(line: 78, column: 5, scope: !1315)
!1319 = !DILocation(line: 79, column: 42, scope: !1315)
!1320 = !DILocation(line: 0, scope: !1315)
!1321 = !DILocation(line: 79, column: 51, scope: !1315)
!1322 = !DILocation(line: 79, column: 55, scope: !1315)
!1323 = !DILocation(line: 79, column: 37, scope: !1315)
!1324 = !DILocation(line: 80, column: 9, scope: !1315)
!1325 = !DILocation(line: 81, column: 7, scope: !1315)
!1326 = !DILocation(line: 82, column: 3, scope: !1315)
!1327 = !DILocation(line: 79, column: 63, scope: !1315)
!1328 = distinct !{!1328, !1323, !1326, !174}
!1329 = !DILocation(line: 83, column: 13, scope: !1315)
!1330 = !DILocation(line: 83, column: 3, scope: !1315)
!1331 = !DILocation(line: 84, column: 1, scope: !1315)
!1332 = distinct !DISubprogram(name: "prime_swap", scope: !1286, file: !1286, line: 86, type: !149, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1333 = !DILocation(line: 87, column: 22, scope: !1332)
!1334 = !DILocation(line: 88, column: 8, scope: !1332)
!1335 = !DILocation(line: 88, column: 6, scope: !1332)
!1336 = !DILocation(line: 89, column: 6, scope: !1332)
!1337 = !DILocation(line: 90, column: 1, scope: !1332)
!1338 = distinct !DISubprogram(name: "prime_main", scope: !1286, file: !1286, line: 96, type: !149, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1339 = !DILocation(line: 97, column: 3, scope: !1338)
!1340 = !DILocation(line: 99, column: 33, scope: !1338)
!1341 = !DILocation(line: 99, column: 21, scope: !1338)
!1342 = !DILocation(line: 99, column: 42, scope: !1338)
!1343 = !DILocation(line: 99, column: 58, scope: !1338)
!1344 = !DILocation(line: 99, column: 46, scope: !1338)
!1345 = !DILocation(line: 99, column: 45, scope: !1338)
!1346 = !DILocation(line: 99, column: 16, scope: !1338)
!1347 = !DILocation(line: 100, column: 1, scope: !1338)
!1348 = distinct !DISubprogram(name: "prime", scope: !1286, file: !1286, line: 102, type: !149, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !150)
!1349 = !DILocation(line: 103, column: 3, scope: !1348)
!1350 = !DILocation(line: 104, column: 3, scope: !1348)
!1351 = !DILocation(line: 106, column: 3, scope: !1348)
!1352 = !DILocation(line: 107, column: 1, scope: !1348)
!1353 = distinct !DISubprogram(name: "rad2deg_init", scope: !1354, file: !1354, line: 47, type: !149, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !150)
!1354 = !DIFile(filename: "test/rad2deg.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!1355 = !DILocation(line: 48, column: 13, scope: !1353)
!1356 = !DILocation(line: 49, column: 13, scope: !1353)
!1357 = !DILocation(line: 50, column: 1, scope: !1353)
!1358 = distinct !DISubprogram(name: "rad2deg_return", scope: !1354, file: !1354, line: 56, type: !149, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !150)
!1359 = !DILocation(line: 57, column: 14, scope: !1358)
!1360 = !DILocation(line: 59, column: 12, scope: !1358)
!1361 = !DILocation(line: 59, column: 7, scope: !1358)
!1362 = !DILocation(line: 60, column: 5, scope: !1358)
!1363 = !DILocation(line: 62, column: 5, scope: !1358)
!1364 = !DILocation(line: 0, scope: !1358)
!1365 = !DILocation(line: 63, column: 1, scope: !1358)
!1366 = distinct !DISubprogram(name: "rad2deg_main", scope: !1354, file: !1354, line: 69, type: !149, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !150)
!1367 = !DILocation(line: 70, column: 45, scope: !1366)
!1368 = !DILocation(line: 0, scope: !1366)
!1369 = !DILocation(line: 71, column: 55, scope: !1366)
!1370 = !DILocation(line: 70, column: 40, scope: !1366)
!1371 = !DILocation(line: 73, column: 20, scope: !1366)
!1372 = !DILocation(line: 73, column: 17, scope: !1366)
!1373 = !DILocation(line: 73, column: 7, scope: !1366)
!1374 = !DILocation(line: 72, column: 55, scope: !1366)
!1375 = distinct !{!1375, !1370, !1371, !174}
!1376 = !DILocation(line: 74, column: 1, scope: !1366)
!1377 = distinct !DISubprogram(name: "rad2deg", scope: !1354, file: !1354, line: 76, type: !149, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !150)
!1378 = !DILocation(line: 77, column: 3, scope: !1377)
!1379 = !DILocation(line: 78, column: 3, scope: !1377)
!1380 = !DILocation(line: 79, column: 3, scope: !1377)
!1381 = !DILocation(line: 80, column: 1, scope: !1377)
!1382 = distinct !DISubprogram(name: "__absvdi2", scope: !25, file: !25, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !150)
!1383 = !DILocation(line: 25, column: 11, scope: !1382)
!1384 = !DILocation(line: 25, column: 9, scope: !1382)
!1385 = !DILocation(line: 26, column: 9, scope: !1382)
!1386 = !DILocation(line: 28, column: 20, scope: !1382)
!1387 = !DILocation(line: 28, column: 5, scope: !1382)
!1388 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !77, file: !77, line: 57, type: !149, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !150)
!1389 = !DILocation(line: 59, column: 1, scope: !1388)
!1390 = distinct !DISubprogram(name: "__absvsi2", scope: !27, file: !27, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !150)
!1391 = !DILocation(line: 25, column: 11, scope: !1390)
!1392 = !DILocation(line: 25, column: 9, scope: !1390)
!1393 = !DILocation(line: 26, column: 9, scope: !1390)
!1394 = !DILocation(line: 28, column: 20, scope: !1390)
!1395 = !DILocation(line: 28, column: 5, scope: !1390)
!1396 = distinct !DISubprogram(name: "__addvdi3", scope: !31, file: !31, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !150)
!1397 = !DILocation(line: 24, column: 27, scope: !1396)
!1398 = !DILocation(line: 25, column: 11, scope: !1396)
!1399 = !DILocation(line: 25, column: 9, scope: !1396)
!1400 = !DILocation(line: 27, column: 15, scope: !1396)
!1401 = !DILocation(line: 27, column: 13, scope: !1396)
!1402 = !DILocation(line: 28, column: 13, scope: !1396)
!1403 = !DILocation(line: 29, column: 5, scope: !1396)
!1404 = !DILocation(line: 32, column: 15, scope: !1396)
!1405 = !DILocation(line: 32, column: 13, scope: !1396)
!1406 = !DILocation(line: 33, column: 13, scope: !1396)
!1407 = !DILocation(line: 35, column: 5, scope: !1396)
!1408 = distinct !DISubprogram(name: "__addvsi3", scope: !33, file: !33, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !150)
!1409 = !DILocation(line: 24, column: 27, scope: !1408)
!1410 = !DILocation(line: 25, column: 11, scope: !1408)
!1411 = !DILocation(line: 25, column: 9, scope: !1408)
!1412 = !DILocation(line: 27, column: 15, scope: !1408)
!1413 = !DILocation(line: 27, column: 13, scope: !1408)
!1414 = !DILocation(line: 28, column: 13, scope: !1408)
!1415 = !DILocation(line: 29, column: 5, scope: !1408)
!1416 = !DILocation(line: 32, column: 15, scope: !1408)
!1417 = !DILocation(line: 32, column: 13, scope: !1408)
!1418 = !DILocation(line: 33, column: 13, scope: !1408)
!1419 = !DILocation(line: 35, column: 5, scope: !1408)
!1420 = distinct !DISubprogram(name: "__ashldi3", scope: !37, file: !37, line: 24, type: !149, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !150)
!1421 = !DILocation(line: 29, column: 11, scope: !1420)
!1422 = !DILocation(line: 29, column: 15, scope: !1420)
!1423 = !DILocation(line: 30, column: 11, scope: !1420)
!1424 = !DILocation(line: 30, column: 9, scope: !1420)
!1425 = !DILocation(line: 32, column: 18, scope: !1420)
!1426 = !DILocation(line: 32, column: 22, scope: !1420)
!1427 = !DILocation(line: 33, column: 33, scope: !1420)
!1428 = !DILocation(line: 33, column: 43, scope: !1420)
!1429 = !DILocation(line: 33, column: 37, scope: !1420)
!1430 = !DILocation(line: 33, column: 16, scope: !1420)
!1431 = !DILocation(line: 33, column: 18, scope: !1420)
!1432 = !DILocation(line: 33, column: 23, scope: !1420)
!1433 = !DILocation(line: 34, column: 5, scope: !1420)
!1434 = !DILocation(line: 37, column: 15, scope: !1420)
!1435 = !DILocation(line: 37, column: 13, scope: !1420)
!1436 = !DILocation(line: 38, column: 13, scope: !1420)
!1437 = !DILocation(line: 39, column: 33, scope: !1420)
!1438 = !DILocation(line: 39, column: 37, scope: !1420)
!1439 = !DILocation(line: 39, column: 18, scope: !1420)
!1440 = !DILocation(line: 39, column: 23, scope: !1420)
!1441 = !DILocation(line: 40, column: 32, scope: !1420)
!1442 = !DILocation(line: 40, column: 34, scope: !1420)
!1443 = !DILocation(line: 40, column: 39, scope: !1420)
!1444 = !DILocation(line: 40, column: 56, scope: !1420)
!1445 = !DILocation(line: 40, column: 77, scope: !1420)
!1446 = !DILocation(line: 40, column: 60, scope: !1420)
!1447 = !DILocation(line: 40, column: 45, scope: !1420)
!1448 = !DILocation(line: 40, column: 16, scope: !1420)
!1449 = !DILocation(line: 40, column: 18, scope: !1420)
!1450 = !DILocation(line: 40, column: 23, scope: !1420)
!1451 = !DILocation(line: 42, column: 19, scope: !1420)
!1452 = !DILocation(line: 42, column: 5, scope: !1420)
!1453 = !DILocation(line: 0, scope: !1420)
!1454 = !DILocation(line: 43, column: 1, scope: !1420)
!1455 = distinct !DISubprogram(name: "__ashrdi3", scope: !41, file: !41, line: 24, type: !149, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !150)
!1456 = !DILocation(line: 29, column: 11, scope: !1455)
!1457 = !DILocation(line: 29, column: 15, scope: !1455)
!1458 = !DILocation(line: 30, column: 11, scope: !1455)
!1459 = !DILocation(line: 30, column: 9, scope: !1455)
!1460 = !DILocation(line: 33, column: 31, scope: !1455)
!1461 = !DILocation(line: 33, column: 33, scope: !1455)
!1462 = !DILocation(line: 33, column: 38, scope: !1455)
!1463 = !DILocation(line: 33, column: 16, scope: !1455)
!1464 = !DILocation(line: 33, column: 18, scope: !1455)
!1465 = !DILocation(line: 33, column: 23, scope: !1455)
!1466 = !DILocation(line: 34, column: 30, scope: !1455)
!1467 = !DILocation(line: 34, column: 32, scope: !1455)
!1468 = !DILocation(line: 34, column: 43, scope: !1455)
!1469 = !DILocation(line: 34, column: 37, scope: !1455)
!1470 = !DILocation(line: 34, column: 18, scope: !1455)
!1471 = !DILocation(line: 34, column: 22, scope: !1455)
!1472 = !DILocation(line: 35, column: 5, scope: !1455)
!1473 = !DILocation(line: 38, column: 15, scope: !1455)
!1474 = !DILocation(line: 38, column: 13, scope: !1455)
!1475 = !DILocation(line: 39, column: 13, scope: !1455)
!1476 = !DILocation(line: 40, column: 32, scope: !1455)
!1477 = !DILocation(line: 40, column: 34, scope: !1455)
!1478 = !DILocation(line: 40, column: 39, scope: !1455)
!1479 = !DILocation(line: 40, column: 16, scope: !1455)
!1480 = !DILocation(line: 40, column: 18, scope: !1455)
!1481 = !DILocation(line: 40, column: 24, scope: !1455)
!1482 = !DILocation(line: 41, column: 31, scope: !1455)
!1483 = !DILocation(line: 41, column: 33, scope: !1455)
!1484 = !DILocation(line: 41, column: 55, scope: !1455)
!1485 = !DILocation(line: 41, column: 38, scope: !1455)
!1486 = !DILocation(line: 41, column: 72, scope: !1455)
!1487 = !DILocation(line: 41, column: 76, scope: !1455)
!1488 = !DILocation(line: 41, column: 61, scope: !1455)
!1489 = !DILocation(line: 41, column: 18, scope: !1455)
!1490 = !DILocation(line: 41, column: 22, scope: !1455)
!1491 = !DILocation(line: 43, column: 19, scope: !1455)
!1492 = !DILocation(line: 43, column: 5, scope: !1455)
!1493 = !DILocation(line: 0, scope: !1455)
!1494 = !DILocation(line: 44, column: 1, scope: !1455)
!1495 = distinct !DISubprogram(name: "__clzdi2", scope: !45, file: !45, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !150)
!1496 = !DILocation(line: 25, column: 7, scope: !1495)
!1497 = !DILocation(line: 25, column: 11, scope: !1495)
!1498 = !DILocation(line: 26, column: 26, scope: !1495)
!1499 = !DILocation(line: 26, column: 28, scope: !1495)
!1500 = !DILocation(line: 26, column: 33, scope: !1495)
!1501 = !DILocation(line: 27, column: 29, scope: !1495)
!1502 = !DILocation(line: 27, column: 31, scope: !1495)
!1503 = !DILocation(line: 27, column: 49, scope: !1495)
!1504 = !DILocation(line: 27, column: 42, scope: !1495)
!1505 = !DILocation(line: 27, column: 12, scope: !1495)
!1506 = !{i32 0, i32 33}
!1507 = !DILocation(line: 28, column: 15, scope: !1495)
!1508 = !DILocation(line: 27, column: 59, scope: !1495)
!1509 = !DILocation(line: 27, column: 5, scope: !1495)
!1510 = distinct !DISubprogram(name: "__clzsi2", scope: !47, file: !47, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !150)
!1511 = !DILocation(line: 25, column: 34, scope: !1510)
!1512 = !DILocation(line: 25, column: 40, scope: !1510)
!1513 = !DILocation(line: 26, column: 14, scope: !1510)
!1514 = !DILocation(line: 26, column: 7, scope: !1510)
!1515 = !DILocation(line: 29, column: 13, scope: !1510)
!1516 = !DILocation(line: 29, column: 23, scope: !1510)
!1517 = !DILocation(line: 29, column: 29, scope: !1510)
!1518 = !DILocation(line: 30, column: 13, scope: !1510)
!1519 = !DILocation(line: 30, column: 7, scope: !1510)
!1520 = !DILocation(line: 31, column: 7, scope: !1510)
!1521 = !DILocation(line: 33, column: 13, scope: !1510)
!1522 = !DILocation(line: 33, column: 21, scope: !1510)
!1523 = !DILocation(line: 33, column: 27, scope: !1510)
!1524 = !DILocation(line: 34, column: 13, scope: !1510)
!1525 = !DILocation(line: 34, column: 7, scope: !1510)
!1526 = !DILocation(line: 35, column: 7, scope: !1510)
!1527 = !DILocation(line: 37, column: 13, scope: !1510)
!1528 = !DILocation(line: 37, column: 20, scope: !1510)
!1529 = !DILocation(line: 37, column: 26, scope: !1510)
!1530 = !DILocation(line: 38, column: 13, scope: !1510)
!1531 = !DILocation(line: 38, column: 7, scope: !1510)
!1532 = !DILocation(line: 39, column: 7, scope: !1510)
!1533 = !DILocation(line: 52, column: 20, scope: !1510)
!1534 = !DILocation(line: 52, column: 37, scope: !1510)
!1535 = !DILocation(line: 52, column: 25, scope: !1510)
!1536 = !DILocation(line: 52, column: 14, scope: !1510)
!1537 = !DILocation(line: 52, column: 5, scope: !1510)
!1538 = distinct !DISubprogram(name: "__cmpdi2", scope: !51, file: !51, line: 23, type: !149, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !150)
!1539 = !DILocation(line: 26, column: 7, scope: !1538)
!1540 = !DILocation(line: 26, column: 11, scope: !1538)
!1541 = !DILocation(line: 28, column: 7, scope: !1538)
!1542 = !DILocation(line: 28, column: 11, scope: !1538)
!1543 = !DILocation(line: 29, column: 11, scope: !1538)
!1544 = !DILocation(line: 29, column: 13, scope: !1538)
!1545 = !DILocation(line: 29, column: 22, scope: !1538)
!1546 = !DILocation(line: 29, column: 24, scope: !1538)
!1547 = !DILocation(line: 29, column: 18, scope: !1538)
!1548 = !DILocation(line: 29, column: 9, scope: !1538)
!1549 = !DILocation(line: 30, column: 9, scope: !1538)
!1550 = !DILocation(line: 31, column: 11, scope: !1538)
!1551 = !DILocation(line: 31, column: 13, scope: !1538)
!1552 = !DILocation(line: 31, column: 22, scope: !1538)
!1553 = !DILocation(line: 31, column: 24, scope: !1538)
!1554 = !DILocation(line: 31, column: 18, scope: !1538)
!1555 = !DILocation(line: 31, column: 9, scope: !1538)
!1556 = !DILocation(line: 32, column: 9, scope: !1538)
!1557 = !DILocation(line: 33, column: 13, scope: !1538)
!1558 = !DILocation(line: 33, column: 23, scope: !1538)
!1559 = !DILocation(line: 33, column: 17, scope: !1538)
!1560 = !DILocation(line: 33, column: 9, scope: !1538)
!1561 = !DILocation(line: 34, column: 9, scope: !1538)
!1562 = !DILocation(line: 35, column: 13, scope: !1538)
!1563 = !DILocation(line: 35, column: 23, scope: !1538)
!1564 = !DILocation(line: 35, column: 17, scope: !1538)
!1565 = !DILocation(line: 35, column: 9, scope: !1538)
!1566 = !DILocation(line: 36, column: 9, scope: !1538)
!1567 = !DILocation(line: 37, column: 5, scope: !1538)
!1568 = !DILocation(line: 0, scope: !1538)
!1569 = !DILocation(line: 38, column: 1, scope: !1538)
!1570 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !51, file: !51, line: 46, type: !149, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !150)
!1571 = !DILocation(line: 48, column: 9, scope: !1570)
!1572 = !DILocation(line: 48, column: 24, scope: !1570)
!1573 = !DILocation(line: 48, column: 2, scope: !1570)
!1574 = distinct !DISubprogram(name: "__ctzdi2", scope: !55, file: !55, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !150)
!1575 = !DILocation(line: 25, column: 7, scope: !1574)
!1576 = !DILocation(line: 25, column: 11, scope: !1574)
!1577 = !DILocation(line: 26, column: 28, scope: !1574)
!1578 = !DILocation(line: 26, column: 32, scope: !1574)
!1579 = !DILocation(line: 27, column: 29, scope: !1574)
!1580 = !DILocation(line: 27, column: 31, scope: !1574)
!1581 = !DILocation(line: 27, column: 41, scope: !1574)
!1582 = !DILocation(line: 27, column: 12, scope: !1574)
!1583 = !DILocation(line: 28, column: 18, scope: !1574)
!1584 = !DILocation(line: 27, column: 59, scope: !1574)
!1585 = !DILocation(line: 27, column: 5, scope: !1574)
!1586 = distinct !DISubprogram(name: "__ctzsi2", scope: !57, file: !57, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !150)
!1587 = !DILocation(line: 25, column: 20, scope: !1586)
!1588 = !DILocation(line: 25, column: 34, scope: !1586)
!1589 = !DILocation(line: 25, column: 40, scope: !1586)
!1590 = !DILocation(line: 26, column: 7, scope: !1586)
!1591 = !DILocation(line: 29, column: 13, scope: !1586)
!1592 = !DILocation(line: 29, column: 23, scope: !1586)
!1593 = !DILocation(line: 29, column: 29, scope: !1586)
!1594 = !DILocation(line: 30, column: 7, scope: !1586)
!1595 = !DILocation(line: 31, column: 7, scope: !1586)
!1596 = !DILocation(line: 33, column: 13, scope: !1586)
!1597 = !DILocation(line: 33, column: 21, scope: !1586)
!1598 = !DILocation(line: 33, column: 27, scope: !1586)
!1599 = !DILocation(line: 34, column: 7, scope: !1586)
!1600 = !DILocation(line: 35, column: 7, scope: !1586)
!1601 = !DILocation(line: 37, column: 13, scope: !1586)
!1602 = !DILocation(line: 37, column: 20, scope: !1586)
!1603 = !DILocation(line: 37, column: 26, scope: !1586)
!1604 = !DILocation(line: 38, column: 7, scope: !1586)
!1605 = !DILocation(line: 40, column: 7, scope: !1586)
!1606 = !DILocation(line: 56, column: 25, scope: !1586)
!1607 = !DILocation(line: 56, column: 20, scope: !1586)
!1608 = !DILocation(line: 56, column: 44, scope: !1586)
!1609 = !DILocation(line: 56, column: 32, scope: !1586)
!1610 = !DILocation(line: 56, column: 14, scope: !1586)
!1611 = !DILocation(line: 56, column: 5, scope: !1586)
!1612 = distinct !DISubprogram(name: "__divdi3", scope: !61, file: !61, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !150)
!1613 = !DILocation(line: 23, column: 20, scope: !1612)
!1614 = !DILocation(line: 24, column: 20, scope: !1612)
!1615 = !DILocation(line: 25, column: 12, scope: !1612)
!1616 = !DILocation(line: 25, column: 19, scope: !1612)
!1617 = !DILocation(line: 26, column: 12, scope: !1612)
!1618 = !DILocation(line: 26, column: 19, scope: !1612)
!1619 = !DILocation(line: 27, column: 9, scope: !1612)
!1620 = !DILocation(line: 28, column: 13, scope: !1612)
!1621 = !DILocation(line: 28, column: 44, scope: !1612)
!1622 = !DILocation(line: 28, column: 51, scope: !1612)
!1623 = !DILocation(line: 28, column: 5, scope: !1612)
!1624 = distinct !DISubprogram(name: "__udivmoddi4", scope: !119, file: !119, line: 24, type: !149, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !150)
!1625 = !DILocation(line: 29, column: 7, scope: !1624)
!1626 = !DILocation(line: 29, column: 11, scope: !1624)
!1627 = !DILocation(line: 31, column: 7, scope: !1624)
!1628 = !DILocation(line: 31, column: 11, scope: !1624)
!1629 = !DILocation(line: 36, column: 11, scope: !1624)
!1630 = !DILocation(line: 36, column: 13, scope: !1624)
!1631 = !DILocation(line: 36, column: 18, scope: !1624)
!1632 = !DILocation(line: 36, column: 9, scope: !1624)
!1633 = !DILocation(line: 38, column: 15, scope: !1624)
!1634 = !DILocation(line: 38, column: 17, scope: !1624)
!1635 = !DILocation(line: 38, column: 22, scope: !1624)
!1636 = !DILocation(line: 38, column: 13, scope: !1624)
!1637 = !DILocation(line: 44, column: 17, scope: !1624)
!1638 = !DILocation(line: 45, column: 28, scope: !1624)
!1639 = !DILocation(line: 45, column: 38, scope: !1624)
!1640 = !DILocation(line: 45, column: 32, scope: !1624)
!1641 = !DILocation(line: 45, column: 24, scope: !1624)
!1642 = !DILocation(line: 45, column: 22, scope: !1624)
!1643 = !DILocation(line: 45, column: 17, scope: !1624)
!1644 = !DILocation(line: 46, column: 24, scope: !1624)
!1645 = !DILocation(line: 46, column: 34, scope: !1624)
!1646 = !DILocation(line: 46, column: 28, scope: !1624)
!1647 = !DILocation(line: 46, column: 20, scope: !1624)
!1648 = !DILocation(line: 46, column: 13, scope: !1624)
!1649 = !DILocation(line: 52, column: 13, scope: !1624)
!1650 = !DILocation(line: 53, column: 24, scope: !1624)
!1651 = !DILocation(line: 53, column: 20, scope: !1624)
!1652 = !DILocation(line: 53, column: 18, scope: !1624)
!1653 = !DILocation(line: 53, column: 13, scope: !1624)
!1654 = !DILocation(line: 54, column: 9, scope: !1624)
!1655 = !DILocation(line: 57, column: 13, scope: !1624)
!1656 = !DILocation(line: 57, column: 17, scope: !1624)
!1657 = !DILocation(line: 57, column: 9, scope: !1624)
!1658 = !DILocation(line: 59, column: 15, scope: !1624)
!1659 = !DILocation(line: 59, column: 17, scope: !1624)
!1660 = !DILocation(line: 59, column: 22, scope: !1624)
!1661 = !DILocation(line: 59, column: 13, scope: !1624)
!1662 = !DILocation(line: 65, column: 17, scope: !1624)
!1663 = !DILocation(line: 66, column: 26, scope: !1624)
!1664 = !DILocation(line: 66, column: 28, scope: !1624)
!1665 = !DILocation(line: 66, column: 39, scope: !1624)
!1666 = !DILocation(line: 66, column: 33, scope: !1624)
!1667 = !DILocation(line: 66, column: 24, scope: !1624)
!1668 = !DILocation(line: 66, column: 22, scope: !1624)
!1669 = !DILocation(line: 66, column: 17, scope: !1624)
!1670 = !DILocation(line: 67, column: 22, scope: !1624)
!1671 = !DILocation(line: 67, column: 24, scope: !1624)
!1672 = !DILocation(line: 67, column: 35, scope: !1624)
!1673 = !DILocation(line: 67, column: 29, scope: !1624)
!1674 = !DILocation(line: 67, column: 20, scope: !1624)
!1675 = !DILocation(line: 67, column: 13, scope: !1624)
!1676 = !DILocation(line: 70, column: 17, scope: !1624)
!1677 = !DILocation(line: 70, column: 21, scope: !1624)
!1678 = !DILocation(line: 70, column: 13, scope: !1624)
!1679 = !DILocation(line: 76, column: 17, scope: !1624)
!1680 = !DILocation(line: 78, column: 30, scope: !1624)
!1681 = !DILocation(line: 78, column: 32, scope: !1624)
!1682 = !DILocation(line: 78, column: 41, scope: !1624)
!1683 = !DILocation(line: 78, column: 43, scope: !1624)
!1684 = !DILocation(line: 78, column: 37, scope: !1624)
!1685 = !DILocation(line: 78, column: 19, scope: !1624)
!1686 = !DILocation(line: 78, column: 21, scope: !1624)
!1687 = !DILocation(line: 78, column: 26, scope: !1624)
!1688 = !DILocation(line: 79, column: 21, scope: !1624)
!1689 = !DILocation(line: 79, column: 25, scope: !1624)
!1690 = !DILocation(line: 80, column: 26, scope: !1624)
!1691 = !DILocation(line: 80, column: 22, scope: !1624)
!1692 = !DILocation(line: 81, column: 13, scope: !1624)
!1693 = !DILocation(line: 82, column: 22, scope: !1624)
!1694 = !DILocation(line: 82, column: 24, scope: !1624)
!1695 = !DILocation(line: 82, column: 33, scope: !1624)
!1696 = !DILocation(line: 82, column: 35, scope: !1624)
!1697 = !DILocation(line: 82, column: 29, scope: !1624)
!1698 = !DILocation(line: 82, column: 20, scope: !1624)
!1699 = !DILocation(line: 82, column: 13, scope: !1624)
!1700 = !DILocation(line: 88, column: 16, scope: !1624)
!1701 = !DILocation(line: 88, column: 18, scope: !1624)
!1702 = !DILocation(line: 88, column: 28, scope: !1624)
!1703 = !DILocation(line: 88, column: 30, scope: !1624)
!1704 = !DILocation(line: 88, column: 35, scope: !1624)
!1705 = !DILocation(line: 88, column: 23, scope: !1624)
!1706 = !DILocation(line: 88, column: 41, scope: !1624)
!1707 = !DILocation(line: 88, column: 13, scope: !1624)
!1708 = !DILocation(line: 90, column: 17, scope: !1624)
!1709 = !DILocation(line: 92, column: 31, scope: !1624)
!1710 = !DILocation(line: 92, column: 21, scope: !1624)
!1711 = !DILocation(line: 92, column: 25, scope: !1624)
!1712 = !DILocation(line: 93, column: 30, scope: !1624)
!1713 = !DILocation(line: 93, column: 32, scope: !1624)
!1714 = !DILocation(line: 93, column: 42, scope: !1624)
!1715 = !DILocation(line: 93, column: 44, scope: !1624)
!1716 = !DILocation(line: 93, column: 49, scope: !1624)
!1717 = !DILocation(line: 93, column: 37, scope: !1624)
!1718 = !DILocation(line: 93, column: 19, scope: !1624)
!1719 = !DILocation(line: 93, column: 21, scope: !1624)
!1720 = !DILocation(line: 93, column: 26, scope: !1624)
!1721 = !DILocation(line: 94, column: 26, scope: !1624)
!1722 = !DILocation(line: 94, column: 22, scope: !1624)
!1723 = !DILocation(line: 95, column: 13, scope: !1624)
!1724 = !DILocation(line: 96, column: 22, scope: !1624)
!1725 = !DILocation(line: 96, column: 24, scope: !1624)
!1726 = !DILocation(line: 96, column: 48, scope: !1624)
!1727 = !DILocation(line: 96, column: 50, scope: !1624)
!1728 = !DILocation(line: 96, column: 32, scope: !1624)
!1729 = !DILocation(line: 96, column: 29, scope: !1624)
!1730 = !DILocation(line: 96, column: 20, scope: !1624)
!1731 = !DILocation(line: 96, column: 13, scope: !1624)
!1732 = !DILocation(line: 102, column: 30, scope: !1624)
!1733 = !DILocation(line: 102, column: 32, scope: !1624)
!1734 = !DILocation(line: 102, column: 14, scope: !1624)
!1735 = !DILocation(line: 102, column: 56, scope: !1624)
!1736 = !DILocation(line: 102, column: 58, scope: !1624)
!1737 = !DILocation(line: 102, column: 40, scope: !1624)
!1738 = !DILocation(line: 102, column: 38, scope: !1624)
!1739 = !DILocation(line: 104, column: 16, scope: !1624)
!1740 = !DILocation(line: 104, column: 13, scope: !1624)
!1741 = !DILocation(line: 106, column: 16, scope: !1624)
!1742 = !DILocation(line: 107, column: 26, scope: !1624)
!1743 = !DILocation(line: 107, column: 22, scope: !1624)
!1744 = !DILocation(line: 107, column: 17, scope: !1624)
!1745 = !DILocation(line: 108, column: 13, scope: !1624)
!1746 = !DILocation(line: 110, column: 9, scope: !1624)
!1747 = !DILocation(line: 113, column: 13, scope: !1624)
!1748 = !DILocation(line: 113, column: 17, scope: !1624)
!1749 = !DILocation(line: 114, column: 24, scope: !1624)
!1750 = !DILocation(line: 114, column: 45, scope: !1624)
!1751 = !DILocation(line: 114, column: 28, scope: !1624)
!1752 = !DILocation(line: 114, column: 11, scope: !1624)
!1753 = !DILocation(line: 114, column: 13, scope: !1624)
!1754 = !DILocation(line: 114, column: 18, scope: !1624)
!1755 = !DILocation(line: 116, column: 22, scope: !1624)
!1756 = !DILocation(line: 116, column: 24, scope: !1624)
!1757 = !DILocation(line: 116, column: 29, scope: !1624)
!1758 = !DILocation(line: 116, column: 11, scope: !1624)
!1759 = !DILocation(line: 116, column: 13, scope: !1624)
!1760 = !DILocation(line: 116, column: 18, scope: !1624)
!1761 = !DILocation(line: 117, column: 22, scope: !1624)
!1762 = !DILocation(line: 117, column: 24, scope: !1624)
!1763 = !DILocation(line: 117, column: 46, scope: !1624)
!1764 = !DILocation(line: 117, column: 29, scope: !1624)
!1765 = !DILocation(line: 117, column: 60, scope: !1624)
!1766 = !DILocation(line: 117, column: 64, scope: !1624)
!1767 = !DILocation(line: 117, column: 53, scope: !1624)
!1768 = !DILocation(line: 117, column: 13, scope: !1624)
!1769 = !DILocation(line: 117, column: 17, scope: !1624)
!1770 = !DILocation(line: 118, column: 5, scope: !1624)
!1771 = !DILocation(line: 121, column: 15, scope: !1624)
!1772 = !DILocation(line: 121, column: 17, scope: !1624)
!1773 = !DILocation(line: 121, column: 22, scope: !1624)
!1774 = !DILocation(line: 121, column: 13, scope: !1624)
!1775 = !DILocation(line: 127, column: 22, scope: !1624)
!1776 = !DILocation(line: 127, column: 43, scope: !1624)
!1777 = !DILocation(line: 127, column: 17, scope: !1624)
!1778 = !DILocation(line: 129, column: 21, scope: !1624)
!1779 = !DILocation(line: 130, column: 32, scope: !1624)
!1780 = !DILocation(line: 130, column: 43, scope: !1624)
!1781 = !DILocation(line: 130, column: 47, scope: !1624)
!1782 = !DILocation(line: 130, column: 36, scope: !1624)
!1783 = !DILocation(line: 130, column: 28, scope: !1624)
!1784 = !DILocation(line: 130, column: 26, scope: !1624)
!1785 = !DILocation(line: 130, column: 21, scope: !1624)
!1786 = !DILocation(line: 131, column: 25, scope: !1624)
!1787 = !DILocation(line: 131, column: 29, scope: !1624)
!1788 = !DILocation(line: 131, column: 21, scope: !1624)
!1789 = !DILocation(line: 132, column: 30, scope: !1624)
!1790 = !DILocation(line: 132, column: 21, scope: !1624)
!1791 = !DILocation(line: 133, column: 40, scope: !1624)
!1792 = !DILocation(line: 133, column: 22, scope: !1624)
!1793 = !DILocation(line: 134, column: 30, scope: !1624)
!1794 = !DILocation(line: 134, column: 32, scope: !1624)
!1795 = !DILocation(line: 134, column: 37, scope: !1624)
!1796 = !DILocation(line: 134, column: 19, scope: !1624)
!1797 = !DILocation(line: 134, column: 21, scope: !1624)
!1798 = !DILocation(line: 134, column: 26, scope: !1624)
!1799 = !DILocation(line: 135, column: 30, scope: !1624)
!1800 = !DILocation(line: 135, column: 32, scope: !1624)
!1801 = !DILocation(line: 135, column: 54, scope: !1624)
!1802 = !DILocation(line: 135, column: 37, scope: !1624)
!1803 = !DILocation(line: 135, column: 68, scope: !1624)
!1804 = !DILocation(line: 135, column: 72, scope: !1624)
!1805 = !DILocation(line: 135, column: 61, scope: !1624)
!1806 = !DILocation(line: 135, column: 21, scope: !1624)
!1807 = !DILocation(line: 135, column: 25, scope: !1624)
!1808 = !DILocation(line: 136, column: 26, scope: !1624)
!1809 = !DILocation(line: 136, column: 17, scope: !1624)
!1810 = !DILocation(line: 142, column: 55, scope: !1624)
!1811 = !DILocation(line: 142, column: 37, scope: !1624)
!1812 = !DILocation(line: 142, column: 35, scope: !1624)
!1813 = !DILocation(line: 142, column: 78, scope: !1624)
!1814 = !DILocation(line: 142, column: 80, scope: !1624)
!1815 = !DILocation(line: 142, column: 62, scope: !1624)
!1816 = !DILocation(line: 142, column: 60, scope: !1624)
!1817 = !DILocation(line: 147, column: 20, scope: !1624)
!1818 = !DILocation(line: 147, column: 17, scope: !1624)
!1819 = !DILocation(line: 149, column: 21, scope: !1624)
!1820 = !DILocation(line: 149, column: 25, scope: !1624)
!1821 = !DILocation(line: 150, column: 32, scope: !1624)
!1822 = !DILocation(line: 150, column: 19, scope: !1624)
!1823 = !DILocation(line: 150, column: 21, scope: !1624)
!1824 = !DILocation(line: 150, column: 26, scope: !1624)
!1825 = !DILocation(line: 151, column: 19, scope: !1624)
!1826 = !DILocation(line: 151, column: 21, scope: !1624)
!1827 = !DILocation(line: 151, column: 26, scope: !1624)
!1828 = !DILocation(line: 152, column: 29, scope: !1624)
!1829 = !DILocation(line: 152, column: 31, scope: !1624)
!1830 = !DILocation(line: 152, column: 21, scope: !1624)
!1831 = !DILocation(line: 152, column: 25, scope: !1624)
!1832 = !DILocation(line: 153, column: 13, scope: !1624)
!1833 = !DILocation(line: 154, column: 25, scope: !1624)
!1834 = !DILocation(line: 154, column: 22, scope: !1624)
!1835 = !DILocation(line: 156, column: 21, scope: !1624)
!1836 = !DILocation(line: 156, column: 25, scope: !1624)
!1837 = !DILocation(line: 157, column: 32, scope: !1624)
!1838 = !DILocation(line: 157, column: 53, scope: !1624)
!1839 = !DILocation(line: 157, column: 36, scope: !1624)
!1840 = !DILocation(line: 157, column: 19, scope: !1624)
!1841 = !DILocation(line: 157, column: 21, scope: !1624)
!1842 = !DILocation(line: 157, column: 26, scope: !1624)
!1843 = !DILocation(line: 158, column: 30, scope: !1624)
!1844 = !DILocation(line: 158, column: 32, scope: !1624)
!1845 = !DILocation(line: 158, column: 37, scope: !1624)
!1846 = !DILocation(line: 158, column: 19, scope: !1624)
!1847 = !DILocation(line: 158, column: 21, scope: !1624)
!1848 = !DILocation(line: 158, column: 26, scope: !1624)
!1849 = !DILocation(line: 159, column: 30, scope: !1624)
!1850 = !DILocation(line: 159, column: 32, scope: !1624)
!1851 = !DILocation(line: 159, column: 54, scope: !1624)
!1852 = !DILocation(line: 159, column: 37, scope: !1624)
!1853 = !DILocation(line: 159, column: 68, scope: !1624)
!1854 = !DILocation(line: 159, column: 72, scope: !1624)
!1855 = !DILocation(line: 159, column: 61, scope: !1624)
!1856 = !DILocation(line: 159, column: 21, scope: !1624)
!1857 = !DILocation(line: 159, column: 25, scope: !1624)
!1858 = !DILocation(line: 160, column: 13, scope: !1624)
!1859 = !DILocation(line: 163, column: 31, scope: !1624)
!1860 = !DILocation(line: 163, column: 53, scope: !1624)
!1861 = !DILocation(line: 163, column: 35, scope: !1624)
!1862 = !DILocation(line: 163, column: 21, scope: !1624)
!1863 = !DILocation(line: 163, column: 25, scope: !1624)
!1864 = !DILocation(line: 164, column: 31, scope: !1624)
!1865 = !DILocation(line: 164, column: 33, scope: !1624)
!1866 = !DILocation(line: 164, column: 56, scope: !1624)
!1867 = !DILocation(line: 164, column: 38, scope: !1624)
!1868 = !DILocation(line: 165, column: 33, scope: !1624)
!1869 = !DILocation(line: 165, column: 44, scope: !1624)
!1870 = !DILocation(line: 165, column: 37, scope: !1624)
!1871 = !DILocation(line: 164, column: 63, scope: !1624)
!1872 = !DILocation(line: 164, column: 19, scope: !1624)
!1873 = !DILocation(line: 164, column: 21, scope: !1624)
!1874 = !DILocation(line: 164, column: 26, scope: !1624)
!1875 = !DILocation(line: 166, column: 19, scope: !1624)
!1876 = !DILocation(line: 166, column: 21, scope: !1624)
!1877 = !DILocation(line: 166, column: 26, scope: !1624)
!1878 = !DILocation(line: 167, column: 29, scope: !1624)
!1879 = !DILocation(line: 167, column: 31, scope: !1624)
!1880 = !DILocation(line: 167, column: 43, scope: !1624)
!1881 = !DILocation(line: 167, column: 36, scope: !1624)
!1882 = !DILocation(line: 167, column: 21, scope: !1624)
!1883 = !DILocation(line: 167, column: 25, scope: !1624)
!1884 = !DILocation(line: 169, column: 9, scope: !1624)
!1885 = !DILocation(line: 176, column: 34, scope: !1624)
!1886 = !DILocation(line: 176, column: 36, scope: !1624)
!1887 = !DILocation(line: 176, column: 18, scope: !1624)
!1888 = !DILocation(line: 176, column: 60, scope: !1624)
!1889 = !DILocation(line: 176, column: 62, scope: !1624)
!1890 = !DILocation(line: 176, column: 44, scope: !1624)
!1891 = !DILocation(line: 176, column: 42, scope: !1624)
!1892 = !DILocation(line: 178, column: 20, scope: !1624)
!1893 = !DILocation(line: 178, column: 17, scope: !1624)
!1894 = !DILocation(line: 180, column: 21, scope: !1624)
!1895 = !DILocation(line: 181, column: 30, scope: !1624)
!1896 = !DILocation(line: 181, column: 26, scope: !1624)
!1897 = !DILocation(line: 181, column: 21, scope: !1624)
!1898 = !DILocation(line: 182, column: 17, scope: !1624)
!1899 = !DILocation(line: 184, column: 13, scope: !1624)
!1900 = !DILocation(line: 187, column: 17, scope: !1624)
!1901 = !DILocation(line: 187, column: 21, scope: !1624)
!1902 = !DILocation(line: 188, column: 20, scope: !1624)
!1903 = !DILocation(line: 188, column: 17, scope: !1624)
!1904 = !DILocation(line: 190, column: 32, scope: !1624)
!1905 = !DILocation(line: 190, column: 19, scope: !1624)
!1906 = !DILocation(line: 190, column: 21, scope: !1624)
!1907 = !DILocation(line: 190, column: 26, scope: !1624)
!1908 = !DILocation(line: 191, column: 19, scope: !1624)
!1909 = !DILocation(line: 191, column: 21, scope: !1624)
!1910 = !DILocation(line: 191, column: 26, scope: !1624)
!1911 = !DILocation(line: 192, column: 29, scope: !1624)
!1912 = !DILocation(line: 192, column: 31, scope: !1624)
!1913 = !DILocation(line: 192, column: 21, scope: !1624)
!1914 = !DILocation(line: 192, column: 25, scope: !1624)
!1915 = !DILocation(line: 193, column: 13, scope: !1624)
!1916 = !DILocation(line: 196, column: 32, scope: !1624)
!1917 = !DILocation(line: 196, column: 53, scope: !1624)
!1918 = !DILocation(line: 196, column: 36, scope: !1624)
!1919 = !DILocation(line: 196, column: 19, scope: !1624)
!1920 = !DILocation(line: 196, column: 21, scope: !1624)
!1921 = !DILocation(line: 196, column: 26, scope: !1624)
!1922 = !DILocation(line: 197, column: 30, scope: !1624)
!1923 = !DILocation(line: 197, column: 32, scope: !1624)
!1924 = !DILocation(line: 197, column: 37, scope: !1624)
!1925 = !DILocation(line: 197, column: 19, scope: !1624)
!1926 = !DILocation(line: 197, column: 21, scope: !1624)
!1927 = !DILocation(line: 197, column: 26, scope: !1624)
!1928 = !DILocation(line: 198, column: 30, scope: !1624)
!1929 = !DILocation(line: 198, column: 32, scope: !1624)
!1930 = !DILocation(line: 198, column: 54, scope: !1624)
!1931 = !DILocation(line: 198, column: 37, scope: !1624)
!1932 = !DILocation(line: 198, column: 68, scope: !1624)
!1933 = !DILocation(line: 198, column: 72, scope: !1624)
!1934 = !DILocation(line: 198, column: 61, scope: !1624)
!1935 = !DILocation(line: 198, column: 21, scope: !1624)
!1936 = !DILocation(line: 198, column: 25, scope: !1624)
!1937 = !DILocation(line: 0, scope: !1624)
!1938 = !DILocation(line: 209, column: 5, scope: !1624)
!1939 = !DILocation(line: 209, column: 15, scope: !1624)
!1940 = !DILocation(line: 212, column: 23, scope: !1624)
!1941 = !DILocation(line: 212, column: 25, scope: !1624)
!1942 = !DILocation(line: 212, column: 43, scope: !1624)
!1943 = !DILocation(line: 212, column: 36, scope: !1624)
!1944 = !DILocation(line: 212, column: 11, scope: !1624)
!1945 = !DILocation(line: 212, column: 13, scope: !1624)
!1946 = !DILocation(line: 212, column: 18, scope: !1624)
!1947 = !DILocation(line: 213, column: 41, scope: !1624)
!1948 = !DILocation(line: 213, column: 43, scope: !1624)
!1949 = !DILocation(line: 213, column: 36, scope: !1624)
!1950 = !DILocation(line: 213, column: 13, scope: !1624)
!1951 = !DILocation(line: 213, column: 18, scope: !1624)
!1952 = !DILocation(line: 214, column: 23, scope: !1624)
!1953 = !DILocation(line: 214, column: 25, scope: !1624)
!1954 = !DILocation(line: 214, column: 43, scope: !1624)
!1955 = !DILocation(line: 214, column: 36, scope: !1624)
!1956 = !DILocation(line: 214, column: 11, scope: !1624)
!1957 = !DILocation(line: 214, column: 13, scope: !1624)
!1958 = !DILocation(line: 214, column: 18, scope: !1624)
!1959 = !DILocation(line: 215, column: 30, scope: !1624)
!1960 = !DILocation(line: 215, column: 36, scope: !1624)
!1961 = !DILocation(line: 215, column: 13, scope: !1624)
!1962 = !DILocation(line: 215, column: 18, scope: !1624)
!1963 = !DILocation(line: 223, column: 37, scope: !1624)
!1964 = !DILocation(line: 223, column: 45, scope: !1624)
!1965 = !DILocation(line: 223, column: 49, scope: !1624)
!1966 = !DILocation(line: 225, column: 24, scope: !1624)
!1967 = !DILocation(line: 225, column: 11, scope: !1624)
!1968 = !DILocation(line: 225, column: 15, scope: !1624)
!1969 = !DILocation(line: 226, column: 5, scope: !1624)
!1970 = !DILocation(line: 224, column: 19, scope: !1624)
!1971 = !DILocation(line: 224, column: 17, scope: !1624)
!1972 = !DILocation(line: 209, column: 20, scope: !1624)
!1973 = distinct !{!1973, !1938, !1969, !174}
!1974 = !DILocation(line: 227, column: 16, scope: !1624)
!1975 = !DILocation(line: 227, column: 20, scope: !1624)
!1976 = !DILocation(line: 227, column: 28, scope: !1624)
!1977 = !DILocation(line: 227, column: 26, scope: !1624)
!1978 = !DILocation(line: 227, column: 7, scope: !1624)
!1979 = !DILocation(line: 227, column: 11, scope: !1624)
!1980 = !DILocation(line: 228, column: 9, scope: !1624)
!1981 = !DILocation(line: 229, column: 18, scope: !1624)
!1982 = !DILocation(line: 229, column: 14, scope: !1624)
!1983 = !DILocation(line: 229, column: 9, scope: !1624)
!1984 = !DILocation(line: 230, column: 14, scope: !1624)
!1985 = !DILocation(line: 230, column: 5, scope: !1624)
!1986 = !DILocation(line: 231, column: 1, scope: !1624)
!1987 = distinct !DISubprogram(name: "__divmoddi4", scope: !63, file: !63, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !150)
!1988 = !DILocation(line: 22, column: 14, scope: !1987)
!1989 = !DILocation(line: 23, column: 16, scope: !1987)
!1990 = !DILocation(line: 23, column: 12, scope: !1987)
!1991 = !DILocation(line: 23, column: 8, scope: !1987)
!1992 = !DILocation(line: 24, column: 3, scope: !1987)
!1993 = distinct !DISubprogram(name: "__divmodsi4", scope: !65, file: !65, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !150)
!1994 = !DILocation(line: 22, column: 14, scope: !1993)
!1995 = !DILocation(line: 23, column: 16, scope: !1993)
!1996 = !DILocation(line: 23, column: 12, scope: !1993)
!1997 = !DILocation(line: 23, column: 8, scope: !1993)
!1998 = !DILocation(line: 24, column: 3, scope: !1993)
!1999 = distinct !DISubprogram(name: "__divsi3", scope: !67, file: !67, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !150)
!2000 = !DILocation(line: 25, column: 20, scope: !1999)
!2001 = !DILocation(line: 26, column: 20, scope: !1999)
!2002 = !DILocation(line: 27, column: 12, scope: !1999)
!2003 = !DILocation(line: 27, column: 19, scope: !1999)
!2004 = !DILocation(line: 28, column: 12, scope: !1999)
!2005 = !DILocation(line: 28, column: 19, scope: !1999)
!2006 = !DILocation(line: 29, column: 9, scope: !1999)
!2007 = !DILocation(line: 36, column: 22, scope: !1999)
!2008 = !DILocation(line: 36, column: 33, scope: !1999)
!2009 = !DILocation(line: 36, column: 40, scope: !1999)
!2010 = !DILocation(line: 36, column: 5, scope: !1999)
!2011 = distinct !DISubprogram(name: "__ffsdi2", scope: !71, file: !71, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !150)
!2012 = !DILocation(line: 25, column: 7, scope: !2011)
!2013 = !DILocation(line: 25, column: 11, scope: !2011)
!2014 = !DILocation(line: 26, column: 13, scope: !2011)
!2015 = !DILocation(line: 26, column: 17, scope: !2011)
!2016 = !DILocation(line: 26, column: 9, scope: !2011)
!2017 = !DILocation(line: 28, column: 15, scope: !2011)
!2018 = !DILocation(line: 28, column: 17, scope: !2011)
!2019 = !DILocation(line: 28, column: 22, scope: !2011)
!2020 = !DILocation(line: 28, column: 13, scope: !2011)
!2021 = !DILocation(line: 29, column: 13, scope: !2011)
!2022 = !DILocation(line: 30, column: 32, scope: !2011)
!2023 = !DILocation(line: 30, column: 34, scope: !2011)
!2024 = !DILocation(line: 30, column: 16, scope: !2011)
!2025 = !DILocation(line: 30, column: 40, scope: !2011)
!2026 = !DILocation(line: 30, column: 9, scope: !2011)
!2027 = !DILocation(line: 32, column: 30, scope: !2011)
!2028 = !DILocation(line: 32, column: 12, scope: !2011)
!2029 = !DILocation(line: 32, column: 35, scope: !2011)
!2030 = !DILocation(line: 32, column: 5, scope: !2011)
!2031 = !DILocation(line: 0, scope: !2011)
!2032 = !DILocation(line: 33, column: 1, scope: !2011)
!2033 = distinct !DISubprogram(name: "__ffssi2", scope: !73, file: !73, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !150)
!2034 = !DILocation(line: 24, column: 11, scope: !2033)
!2035 = !DILocation(line: 24, column: 9, scope: !2033)
!2036 = !DILocation(line: 26, column: 9, scope: !2033)
!2037 = !DILocation(line: 28, column: 12, scope: !2033)
!2038 = !DILocation(line: 28, column: 29, scope: !2033)
!2039 = !DILocation(line: 28, column: 5, scope: !2033)
!2040 = !DILocation(line: 0, scope: !2033)
!2041 = !DILocation(line: 29, column: 1, scope: !2033)
!2042 = distinct !DISubprogram(name: "__lshrdi3", scope: !79, file: !79, line: 24, type: !149, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !150)
!2043 = !DILocation(line: 29, column: 11, scope: !2042)
!2044 = !DILocation(line: 29, column: 15, scope: !2042)
!2045 = !DILocation(line: 30, column: 11, scope: !2042)
!2046 = !DILocation(line: 30, column: 9, scope: !2042)
!2047 = !DILocation(line: 32, column: 16, scope: !2042)
!2048 = !DILocation(line: 32, column: 18, scope: !2042)
!2049 = !DILocation(line: 32, column: 23, scope: !2042)
!2050 = !DILocation(line: 33, column: 30, scope: !2042)
!2051 = !DILocation(line: 33, column: 32, scope: !2042)
!2052 = !DILocation(line: 33, column: 43, scope: !2042)
!2053 = !DILocation(line: 33, column: 37, scope: !2042)
!2054 = !DILocation(line: 33, column: 18, scope: !2042)
!2055 = !DILocation(line: 33, column: 22, scope: !2042)
!2056 = !DILocation(line: 34, column: 5, scope: !2042)
!2057 = !DILocation(line: 37, column: 15, scope: !2042)
!2058 = !DILocation(line: 37, column: 13, scope: !2042)
!2059 = !DILocation(line: 38, column: 13, scope: !2042)
!2060 = !DILocation(line: 39, column: 32, scope: !2042)
!2061 = !DILocation(line: 39, column: 34, scope: !2042)
!2062 = !DILocation(line: 39, column: 39, scope: !2042)
!2063 = !DILocation(line: 39, column: 16, scope: !2042)
!2064 = !DILocation(line: 39, column: 18, scope: !2042)
!2065 = !DILocation(line: 39, column: 24, scope: !2042)
!2066 = !DILocation(line: 40, column: 31, scope: !2042)
!2067 = !DILocation(line: 40, column: 33, scope: !2042)
!2068 = !DILocation(line: 40, column: 55, scope: !2042)
!2069 = !DILocation(line: 40, column: 38, scope: !2042)
!2070 = !DILocation(line: 40, column: 72, scope: !2042)
!2071 = !DILocation(line: 40, column: 76, scope: !2042)
!2072 = !DILocation(line: 40, column: 61, scope: !2042)
!2073 = !DILocation(line: 40, column: 18, scope: !2042)
!2074 = !DILocation(line: 40, column: 22, scope: !2042)
!2075 = !DILocation(line: 42, column: 19, scope: !2042)
!2076 = !DILocation(line: 42, column: 5, scope: !2042)
!2077 = !DILocation(line: 0, scope: !2042)
!2078 = !DILocation(line: 43, column: 1, scope: !2042)
!2079 = distinct !DISubprogram(name: "__moddi3", scope: !83, file: !83, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !150)
!2080 = !DILocation(line: 24, column: 17, scope: !2079)
!2081 = !DILocation(line: 25, column: 11, scope: !2079)
!2082 = !DILocation(line: 26, column: 12, scope: !2079)
!2083 = !DILocation(line: 26, column: 17, scope: !2079)
!2084 = !DILocation(line: 28, column: 5, scope: !2079)
!2085 = !DILocation(line: 29, column: 21, scope: !2079)
!2086 = !DILocation(line: 29, column: 23, scope: !2079)
!2087 = !DILocation(line: 29, column: 28, scope: !2079)
!2088 = !DILocation(line: 29, column: 5, scope: !2079)
!2089 = distinct !DISubprogram(name: "__modsi3", scope: !85, file: !85, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !150)
!2090 = !DILocation(line: 22, column: 16, scope: !2089)
!2091 = !DILocation(line: 22, column: 31, scope: !2089)
!2092 = !DILocation(line: 22, column: 14, scope: !2089)
!2093 = !DILocation(line: 22, column: 5, scope: !2089)
!2094 = distinct !DISubprogram(name: "__mulvdi3", scope: !89, file: !89, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !150)
!2095 = !DILocation(line: 27, column: 11, scope: !2094)
!2096 = !DILocation(line: 27, column: 9, scope: !2094)
!2097 = !DILocation(line: 29, column: 15, scope: !2094)
!2098 = !DILocation(line: 29, column: 20, scope: !2094)
!2099 = !DILocation(line: 29, column: 25, scope: !2094)
!2100 = !DILocation(line: 29, column: 13, scope: !2094)
!2101 = !DILocation(line: 30, column: 13, scope: !2094)
!2102 = !DILocation(line: 31, column: 9, scope: !2094)
!2103 = !DILocation(line: 33, column: 11, scope: !2094)
!2104 = !DILocation(line: 33, column: 9, scope: !2094)
!2105 = !DILocation(line: 35, column: 15, scope: !2094)
!2106 = !DILocation(line: 35, column: 20, scope: !2094)
!2107 = !DILocation(line: 35, column: 25, scope: !2094)
!2108 = !DILocation(line: 35, column: 13, scope: !2094)
!2109 = !DILocation(line: 36, column: 13, scope: !2094)
!2110 = !DILocation(line: 37, column: 9, scope: !2094)
!2111 = !DILocation(line: 39, column: 19, scope: !2094)
!2112 = !DILocation(line: 40, column: 23, scope: !2094)
!2113 = !DILocation(line: 40, column: 29, scope: !2094)
!2114 = !DILocation(line: 41, column: 19, scope: !2094)
!2115 = !DILocation(line: 42, column: 23, scope: !2094)
!2116 = !DILocation(line: 42, column: 29, scope: !2094)
!2117 = !DILocation(line: 43, column: 15, scope: !2094)
!2118 = !DILocation(line: 43, column: 19, scope: !2094)
!2119 = !DILocation(line: 43, column: 28, scope: !2094)
!2120 = !DILocation(line: 43, column: 9, scope: !2094)
!2121 = !DILocation(line: 44, column: 9, scope: !2094)
!2122 = !DILocation(line: 45, column: 12, scope: !2094)
!2123 = !DILocation(line: 45, column: 9, scope: !2094)
!2124 = !DILocation(line: 47, column: 25, scope: !2094)
!2125 = !DILocation(line: 47, column: 19, scope: !2094)
!2126 = !DILocation(line: 47, column: 13, scope: !2094)
!2127 = !DILocation(line: 48, column: 13, scope: !2094)
!2128 = !DILocation(line: 49, column: 5, scope: !2094)
!2129 = !DILocation(line: 52, column: 27, scope: !2094)
!2130 = !DILocation(line: 52, column: 25, scope: !2094)
!2131 = !DILocation(line: 52, column: 19, scope: !2094)
!2132 = !DILocation(line: 52, column: 13, scope: !2094)
!2133 = !DILocation(line: 53, column: 13, scope: !2094)
!2134 = !DILocation(line: 55, column: 5, scope: !2094)
!2135 = !DILocation(line: 0, scope: !2094)
!2136 = !DILocation(line: 56, column: 1, scope: !2094)
!2137 = distinct !DISubprogram(name: "__mulvsi3", scope: !91, file: !91, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !150)
!2138 = !DILocation(line: 27, column: 11, scope: !2137)
!2139 = !DILocation(line: 27, column: 9, scope: !2137)
!2140 = !DILocation(line: 29, column: 15, scope: !2137)
!2141 = !DILocation(line: 29, column: 20, scope: !2137)
!2142 = !DILocation(line: 29, column: 25, scope: !2137)
!2143 = !DILocation(line: 29, column: 13, scope: !2137)
!2144 = !DILocation(line: 30, column: 13, scope: !2137)
!2145 = !DILocation(line: 31, column: 9, scope: !2137)
!2146 = !DILocation(line: 33, column: 11, scope: !2137)
!2147 = !DILocation(line: 33, column: 9, scope: !2137)
!2148 = !DILocation(line: 35, column: 15, scope: !2137)
!2149 = !DILocation(line: 35, column: 20, scope: !2137)
!2150 = !DILocation(line: 35, column: 25, scope: !2137)
!2151 = !DILocation(line: 35, column: 13, scope: !2137)
!2152 = !DILocation(line: 36, column: 13, scope: !2137)
!2153 = !DILocation(line: 37, column: 9, scope: !2137)
!2154 = !DILocation(line: 39, column: 19, scope: !2137)
!2155 = !DILocation(line: 40, column: 23, scope: !2137)
!2156 = !DILocation(line: 40, column: 29, scope: !2137)
!2157 = !DILocation(line: 41, column: 19, scope: !2137)
!2158 = !DILocation(line: 42, column: 23, scope: !2137)
!2159 = !DILocation(line: 42, column: 29, scope: !2137)
!2160 = !DILocation(line: 43, column: 15, scope: !2137)
!2161 = !DILocation(line: 43, column: 19, scope: !2137)
!2162 = !DILocation(line: 43, column: 28, scope: !2137)
!2163 = !DILocation(line: 43, column: 9, scope: !2137)
!2164 = !DILocation(line: 44, column: 9, scope: !2137)
!2165 = !DILocation(line: 45, column: 12, scope: !2137)
!2166 = !DILocation(line: 45, column: 9, scope: !2137)
!2167 = !DILocation(line: 47, column: 25, scope: !2137)
!2168 = !DILocation(line: 47, column: 19, scope: !2137)
!2169 = !DILocation(line: 47, column: 13, scope: !2137)
!2170 = !DILocation(line: 48, column: 13, scope: !2137)
!2171 = !DILocation(line: 49, column: 5, scope: !2137)
!2172 = !DILocation(line: 52, column: 27, scope: !2137)
!2173 = !DILocation(line: 52, column: 25, scope: !2137)
!2174 = !DILocation(line: 52, column: 19, scope: !2137)
!2175 = !DILocation(line: 52, column: 13, scope: !2137)
!2176 = !DILocation(line: 53, column: 13, scope: !2137)
!2177 = !DILocation(line: 55, column: 5, scope: !2137)
!2178 = !DILocation(line: 0, scope: !2137)
!2179 = !DILocation(line: 56, column: 1, scope: !2137)
!2180 = distinct !DISubprogram(name: "__paritydi2", scope: !95, file: !95, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !150)
!2181 = !DILocation(line: 23, column: 7, scope: !2180)
!2182 = !DILocation(line: 23, column: 11, scope: !2180)
!2183 = !DILocation(line: 24, column: 26, scope: !2180)
!2184 = !DILocation(line: 24, column: 28, scope: !2180)
!2185 = !DILocation(line: 24, column: 39, scope: !2180)
!2186 = !DILocation(line: 24, column: 33, scope: !2180)
!2187 = !DILocation(line: 24, column: 12, scope: !2180)
!2188 = !DILocation(line: 24, column: 5, scope: !2180)
!2189 = distinct !DISubprogram(name: "__paritysi2", scope: !97, file: !97, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !150)
!2190 = !DILocation(line: 23, column: 12, scope: !2189)
!2191 = !DILocation(line: 23, column: 7, scope: !2189)
!2192 = !DILocation(line: 24, column: 12, scope: !2189)
!2193 = !DILocation(line: 24, column: 7, scope: !2189)
!2194 = !DILocation(line: 25, column: 12, scope: !2189)
!2195 = !DILocation(line: 25, column: 7, scope: !2189)
!2196 = !DILocation(line: 26, column: 26, scope: !2189)
!2197 = !DILocation(line: 26, column: 20, scope: !2189)
!2198 = !DILocation(line: 26, column: 34, scope: !2189)
!2199 = !DILocation(line: 26, column: 5, scope: !2189)
!2200 = distinct !DISubprogram(name: "__popcountdi2", scope: !101, file: !101, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !150)
!2201 = !DILocation(line: 23, column: 20, scope: !2200)
!2202 = !DILocation(line: 23, column: 26, scope: !2200)
!2203 = !DILocation(line: 23, column: 13, scope: !2200)
!2204 = !DILocation(line: 25, column: 15, scope: !2200)
!2205 = !DILocation(line: 25, column: 21, scope: !2200)
!2206 = !DILocation(line: 25, column: 52, scope: !2200)
!2207 = !DILocation(line: 25, column: 46, scope: !2200)
!2208 = !DILocation(line: 27, column: 20, scope: !2200)
!2209 = !DILocation(line: 27, column: 14, scope: !2200)
!2210 = !DILocation(line: 27, column: 27, scope: !2200)
!2211 = !DILocation(line: 29, column: 34, scope: !2200)
!2212 = !DILocation(line: 29, column: 28, scope: !2200)
!2213 = !DILocation(line: 29, column: 16, scope: !2200)
!2214 = !DILocation(line: 32, column: 16, scope: !2200)
!2215 = !DILocation(line: 32, column: 11, scope: !2200)
!2216 = !DILocation(line: 35, column: 20, scope: !2200)
!2217 = !DILocation(line: 35, column: 15, scope: !2200)
!2218 = !DILocation(line: 35, column: 27, scope: !2200)
!2219 = !DILocation(line: 35, column: 5, scope: !2200)
!2220 = distinct !DISubprogram(name: "__popcountsi2", scope: !103, file: !103, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !150)
!2221 = !DILocation(line: 23, column: 17, scope: !2220)
!2222 = !DILocation(line: 23, column: 23, scope: !2220)
!2223 = !DILocation(line: 23, column: 11, scope: !2220)
!2224 = !DILocation(line: 25, column: 13, scope: !2220)
!2225 = !DILocation(line: 25, column: 19, scope: !2220)
!2226 = !DILocation(line: 25, column: 38, scope: !2220)
!2227 = !DILocation(line: 25, column: 33, scope: !2220)
!2228 = !DILocation(line: 27, column: 17, scope: !2220)
!2229 = !DILocation(line: 27, column: 12, scope: !2220)
!2230 = !DILocation(line: 27, column: 24, scope: !2220)
!2231 = !DILocation(line: 29, column: 17, scope: !2220)
!2232 = !DILocation(line: 29, column: 12, scope: !2220)
!2233 = !DILocation(line: 32, column: 20, scope: !2220)
!2234 = !DILocation(line: 32, column: 15, scope: !2220)
!2235 = !DILocation(line: 32, column: 27, scope: !2220)
!2236 = !DILocation(line: 32, column: 5, scope: !2220)
!2237 = distinct !DISubprogram(name: "__subvdi3", scope: !107, file: !107, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !150)
!2238 = !DILocation(line: 24, column: 27, scope: !2237)
!2239 = !DILocation(line: 25, column: 11, scope: !2237)
!2240 = !DILocation(line: 25, column: 9, scope: !2237)
!2241 = !DILocation(line: 27, column: 15, scope: !2237)
!2242 = !DILocation(line: 27, column: 13, scope: !2237)
!2243 = !DILocation(line: 28, column: 13, scope: !2237)
!2244 = !DILocation(line: 29, column: 5, scope: !2237)
!2245 = !DILocation(line: 32, column: 15, scope: !2237)
!2246 = !DILocation(line: 32, column: 13, scope: !2237)
!2247 = !DILocation(line: 33, column: 13, scope: !2237)
!2248 = !DILocation(line: 35, column: 5, scope: !2237)
!2249 = distinct !DISubprogram(name: "__subvsi3", scope: !109, file: !109, line: 22, type: !149, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !150)
!2250 = !DILocation(line: 24, column: 27, scope: !2249)
!2251 = !DILocation(line: 25, column: 11, scope: !2249)
!2252 = !DILocation(line: 25, column: 9, scope: !2249)
!2253 = !DILocation(line: 27, column: 15, scope: !2249)
!2254 = !DILocation(line: 27, column: 13, scope: !2249)
!2255 = !DILocation(line: 28, column: 13, scope: !2249)
!2256 = !DILocation(line: 29, column: 5, scope: !2249)
!2257 = !DILocation(line: 32, column: 15, scope: !2249)
!2258 = !DILocation(line: 32, column: 13, scope: !2249)
!2259 = !DILocation(line: 33, column: 13, scope: !2249)
!2260 = !DILocation(line: 35, column: 5, scope: !2249)
!2261 = distinct !DISubprogram(name: "__ucmpdi2", scope: !113, file: !113, line: 23, type: !149, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !150)
!2262 = !DILocation(line: 26, column: 7, scope: !2261)
!2263 = !DILocation(line: 26, column: 11, scope: !2261)
!2264 = !DILocation(line: 28, column: 7, scope: !2261)
!2265 = !DILocation(line: 28, column: 11, scope: !2261)
!2266 = !DILocation(line: 29, column: 11, scope: !2261)
!2267 = !DILocation(line: 29, column: 13, scope: !2261)
!2268 = !DILocation(line: 29, column: 22, scope: !2261)
!2269 = !DILocation(line: 29, column: 24, scope: !2261)
!2270 = !DILocation(line: 29, column: 18, scope: !2261)
!2271 = !DILocation(line: 29, column: 9, scope: !2261)
!2272 = !DILocation(line: 30, column: 9, scope: !2261)
!2273 = !DILocation(line: 31, column: 11, scope: !2261)
!2274 = !DILocation(line: 31, column: 13, scope: !2261)
!2275 = !DILocation(line: 31, column: 22, scope: !2261)
!2276 = !DILocation(line: 31, column: 24, scope: !2261)
!2277 = !DILocation(line: 31, column: 18, scope: !2261)
!2278 = !DILocation(line: 31, column: 9, scope: !2261)
!2279 = !DILocation(line: 32, column: 9, scope: !2261)
!2280 = !DILocation(line: 33, column: 13, scope: !2261)
!2281 = !DILocation(line: 33, column: 23, scope: !2261)
!2282 = !DILocation(line: 33, column: 17, scope: !2261)
!2283 = !DILocation(line: 33, column: 9, scope: !2261)
!2284 = !DILocation(line: 34, column: 9, scope: !2261)
!2285 = !DILocation(line: 35, column: 13, scope: !2261)
!2286 = !DILocation(line: 35, column: 23, scope: !2261)
!2287 = !DILocation(line: 35, column: 17, scope: !2261)
!2288 = !DILocation(line: 35, column: 9, scope: !2261)
!2289 = !DILocation(line: 36, column: 9, scope: !2261)
!2290 = !DILocation(line: 37, column: 5, scope: !2261)
!2291 = !DILocation(line: 0, scope: !2261)
!2292 = !DILocation(line: 38, column: 1, scope: !2261)
!2293 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !113, file: !113, line: 46, type: !149, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !150)
!2294 = !DILocation(line: 48, column: 9, scope: !2293)
!2295 = !DILocation(line: 48, column: 25, scope: !2293)
!2296 = !DILocation(line: 48, column: 2, scope: !2293)
!2297 = distinct !DISubprogram(name: "__udivdi3", scope: !117, file: !117, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !150)
!2298 = !DILocation(line: 22, column: 12, scope: !2297)
!2299 = !DILocation(line: 22, column: 5, scope: !2297)
!2300 = distinct !DISubprogram(name: "__udivmodsi4", scope: !121, file: !121, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !150)
!2301 = !DILocation(line: 22, column: 14, scope: !2300)
!2302 = !DILocation(line: 23, column: 16, scope: !2300)
!2303 = !DILocation(line: 23, column: 12, scope: !2300)
!2304 = !DILocation(line: 23, column: 8, scope: !2300)
!2305 = !DILocation(line: 24, column: 3, scope: !2300)
!2306 = distinct !DISubprogram(name: "__udivsi3", scope: !125, file: !125, line: 25, type: !149, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !150)
!2307 = !DILocation(line: 32, column: 11, scope: !2306)
!2308 = !DILocation(line: 32, column: 9, scope: !2306)
!2309 = !DILocation(line: 33, column: 9, scope: !2306)
!2310 = !DILocation(line: 34, column: 11, scope: !2306)
!2311 = !DILocation(line: 34, column: 9, scope: !2306)
!2312 = !DILocation(line: 35, column: 9, scope: !2306)
!2313 = !DILocation(line: 36, column: 10, scope: !2306)
!2314 = !DILocation(line: 36, column: 29, scope: !2306)
!2315 = !DILocation(line: 36, column: 27, scope: !2306)
!2316 = !DILocation(line: 38, column: 12, scope: !2306)
!2317 = !DILocation(line: 38, column: 9, scope: !2306)
!2318 = !DILocation(line: 39, column: 9, scope: !2306)
!2319 = !DILocation(line: 40, column: 12, scope: !2306)
!2320 = !DILocation(line: 40, column: 9, scope: !2306)
!2321 = !DILocation(line: 41, column: 9, scope: !2306)
!2322 = !DILocation(line: 42, column: 5, scope: !2306)
!2323 = !DILocation(line: 45, column: 28, scope: !2306)
!2324 = !DILocation(line: 45, column: 11, scope: !2306)
!2325 = !DILocation(line: 46, column: 11, scope: !2306)
!2326 = !DILocation(line: 48, column: 5, scope: !2306)
!2327 = !DILocation(line: 0, scope: !2306)
!2328 = !DILocation(line: 48, column: 15, scope: !2306)
!2329 = !DILocation(line: 51, column: 22, scope: !2306)
!2330 = !DILocation(line: 60, column: 41, scope: !2306)
!2331 = !DILocation(line: 63, column: 5, scope: !2306)
!2332 = !DILocation(line: 62, column: 16, scope: !2306)
!2333 = !DILocation(line: 62, column: 11, scope: !2306)
!2334 = !DILocation(line: 61, column: 19, scope: !2306)
!2335 = !DILocation(line: 52, column: 16, scope: !2306)
!2336 = !DILocation(line: 52, column: 22, scope: !2306)
!2337 = !DILocation(line: 48, column: 20, scope: !2306)
!2338 = distinct !{!2338, !2326, !2331, !174}
!2339 = !DILocation(line: 64, column: 12, scope: !2306)
!2340 = !DILocation(line: 64, column: 18, scope: !2306)
!2341 = !DILocation(line: 65, column: 5, scope: !2306)
!2342 = !DILocation(line: 66, column: 1, scope: !2306)
!2343 = distinct !DISubprogram(name: "__umoddi3", scope: !129, file: !129, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !128, retainedNodes: !150)
!2344 = !DILocation(line: 23, column: 5, scope: !2343)
!2345 = !DILocation(line: 24, column: 12, scope: !2343)
!2346 = !DILocation(line: 24, column: 5, scope: !2343)
!2347 = distinct !DISubprogram(name: "__umodsi3", scope: !131, file: !131, line: 20, type: !149, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !130, retainedNodes: !150)
!2348 = !DILocation(line: 22, column: 16, scope: !2347)
!2349 = !DILocation(line: 22, column: 32, scope: !2347)
!2350 = !DILocation(line: 22, column: 14, scope: !2347)
!2351 = !DILocation(line: 22, column: 5, scope: !2347)
!2352 = distinct !DISubprogram(name: "memcpy", scope: !135, file: !135, line: 3, type: !149, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !150)
!2353 = !DILocation(line: 8, column: 6, scope: !2352)
!2354 = !DILocation(line: 0, scope: !2352)
!2355 = !DILocation(line: 8, column: 19, scope: !2352)
!2356 = !DILocation(line: 8, column: 2, scope: !2352)
!2357 = !DILocation(line: 9, column: 21, scope: !2352)
!2358 = !DILocation(line: 9, column: 3, scope: !2352)
!2359 = !DILocation(line: 9, column: 19, scope: !2352)
!2360 = !DILocation(line: 10, column: 2, scope: !2352)
!2361 = !DILocation(line: 8, column: 26, scope: !2352)
!2362 = distinct !{!2362, !2356, !2360, !174}
!2363 = !DILocation(line: 11, column: 1, scope: !2352)
!2364 = distinct !DISubprogram(name: "memset", scope: !135, file: !135, line: 13, type: !149, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !134, retainedNodes: !150)
!2365 = !DILocation(line: 17, column: 6, scope: !2364)
!2366 = !DILocation(line: 0, scope: !2364)
!2367 = !DILocation(line: 17, column: 19, scope: !2364)
!2368 = !DILocation(line: 17, column: 2, scope: !2364)
!2369 = !DILocation(line: 18, column: 13, scope: !2364)
!2370 = !DILocation(line: 18, column: 3, scope: !2364)
!2371 = !DILocation(line: 18, column: 11, scope: !2364)
!2372 = !DILocation(line: 19, column: 2, scope: !2364)
!2373 = !DILocation(line: 17, column: 26, scope: !2364)
!2374 = distinct !{!2374, !2368, !2372, !174}
!2375 = !DILocation(line: 20, column: 2, scope: !2364)
