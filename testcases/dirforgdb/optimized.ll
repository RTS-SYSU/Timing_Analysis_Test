; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }
%struct.NDES_GREAT = type { i32, i32, i32 }
%union.dwords = type { i64 }

@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4
@lin = dso_local global [256 x i8] c"asdffeagewaHAFEFaeDsFEawFdsFaefaeerdjgp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@icrc.icrctb = internal global [256 x i16] zeroinitializer, align 2
@icrc.init = internal global i16 0, align 2
@icrc.rchr = internal global [256 x i8] zeroinitializer, align 1
@icrc.it = internal global [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 1
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
define dso_local arm_aapcs_vfpcc i32 @bs() #0 !dbg !143 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #5, !dbg !147
  ret i32 undef, !dbg !148
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !149 {
entry:
  br label %while.cond, !dbg !150

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !151
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !151
  %low.0 = phi i32 [ 0, %entry ], [ %low.2, %if.end10 ], !dbg !152
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !153
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !150

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !154
  %shr = ashr i32 %add, 1, !dbg !155
  %key = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !156
  %0 = load i32, i32* %key, align 4, !dbg !156
  %cmp1 = icmp eq i32 %0, %x, !dbg !157
  br i1 %cmp1, label %if.then, label %if.else, !dbg !158

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !159
  %value = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 1, !dbg !160
  %1 = load i32, i32* %value, align 4, !dbg !160
  br label %if.end10, !dbg !161

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !162
  %2 = load i32, i32* %key4, align 4, !dbg !162
  %cmp5 = icmp sgt i32 %2, %x, !dbg !163
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !164

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !165
  br label %if.end, !dbg !166

if.else8:                                         ; preds = %if.else
  %add9 = add nsw i32 %shr, 1, !dbg !167
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !151
  %low.1 = phi i32 [ %low.0, %if.then6 ], [ %add9, %if.else8 ], !dbg !151
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !151
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !151
  %low.2 = phi i32 [ %low.0, %if.then ], [ %low.1, %if.end ], !dbg !152
  br label %while.cond, !dbg !150, !llvm.loop !168

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !171
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i16 @icrc1(i16 noundef zeroext %crc, i8 noundef zeroext %onech) #0 !dbg !172 {
entry:
  %conv1 = zext i8 %onech to i16, !dbg !174
  %shl = shl nuw i16 %conv1, 8, !dbg !175
  %xor = xor i16 %shl, %crc, !dbg !176
  br label %for.cond, !dbg !177

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !178
  %ans.0 = phi i16 [ %xor, %entry ], [ %ans.1, %for.inc ], !dbg !178
  %exitcond.not = icmp eq i32 %i.0, 8, !dbg !179
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !180

for.body:                                         ; preds = %for.cond
  %tobool.not = icmp sgt i16 %ans.0, -1, !dbg !181
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !182

if.then:                                          ; preds = %for.body
  %shl6 = shl i16 %ans.0, 1, !dbg !183
  %0 = xor i16 %shl6, 4129, !dbg !184
  br label %if.end, !dbg !185

if.else:                                          ; preds = %for.body
  %shl12 = shl i16 %ans.0, 1, !dbg !186
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ans.1 = phi i16 [ %0, %if.then ], [ %shl12, %if.else ], !dbg !178
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.0, 1, !dbg !188
  br label %for.cond, !dbg !180, !llvm.loop !189

for.end:                                          ; preds = %for.cond
  ret i16 %ans.0, !dbg !190
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext %crc, i32 noundef %len, i16 noundef signext %jinit, i32 noundef %jrev) #0 !dbg !191 {
entry:
  %0 = load i16, i16* @icrc.init, align 2, !dbg !192
  %tobool.not = icmp eq i16 %0, 0, !dbg !192
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %entry
  store i16 1, i16* @icrc.init, align 2, !dbg !194
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc, %if.then
  %j.0 = phi i16 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !196
  %cmp = icmp ult i16 %j.0, 256, !dbg !197
  br i1 %cmp, label %for.body, label %for.end, !dbg !198

for.body:                                         ; preds = %for.cond
  %shl = shl i16 %j.0, 8, !dbg !199
  %call = call arm_aapcs_vfpcc zeroext i16 @icrc1(i16 noundef zeroext %shl, i8 noundef zeroext 0) #5, !dbg !200
  %idxprom = zext i16 %j.0 to i32, !dbg !201
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i32 0, i32 %idxprom, !dbg !201
  store i16 %call, i16* %arrayidx, align 2, !dbg !202
  %1 = and i16 %j.0, 15, !dbg !203
  %and = zext i16 %1 to i32, !dbg !203
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i32 0, i32 %and, !dbg !204
  %2 = load i8, i8* %arrayidx5, align 1, !dbg !204
  %shl7 = shl i8 %2, 4, !dbg !205
  %3 = lshr i16 %j.0, 4, !dbg !206
  %4 = zext i16 %3 to i32, !dbg !206
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i32 0, i32 %4, !dbg !207
  %5 = load i8, i8* %arrayidx9, align 1, !dbg !207
  %or = or i8 %shl7, %5, !dbg !208
  %idxprom12 = zext i16 %j.0 to i32, !dbg !209
  %arrayidx13 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom12, !dbg !209
  store i8 %or, i8* %arrayidx13, align 1, !dbg !210
  br label %for.inc, !dbg !211

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i16 %j.0, 1, !dbg !212
  br label %for.cond, !dbg !198, !llvm.loop !213

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !214

if.end:                                           ; preds = %for.end, %entry
  %cmp15 = icmp sgt i16 %jinit, -1, !dbg !215
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !216

if.then17:                                        ; preds = %if.end
  %6 = and i16 %jinit, 255, !dbg !217
  %7 = shl i16 %jinit, 8, !dbg !218
  %or232 = or i16 %6, %7, !dbg !219
  br label %if.end44, !dbg !220

if.else:                                          ; preds = %if.end
  %cmp25 = icmp slt i32 %jrev, 0, !dbg !221
  br i1 %cmp25, label %if.then27, label %if.end43, !dbg !222

if.then27:                                        ; preds = %if.else
  %8 = lshr i16 %crc, 8, !dbg !223
  %conv30 = zext i16 %8 to i32, !dbg !223
  %arrayidx32 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %conv30, !dbg !224
  %9 = load i8, i8* %arrayidx32, align 1, !dbg !224
  %conv33 = zext i8 %9 to i16, !dbg !224
  %10 = and i16 %crc, 255, !dbg !225
  %idxprom37 = zext i16 %10 to i32, !dbg !225
  %arrayidx38 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom37, !dbg !225
  %11 = load i8, i8* %arrayidx38, align 1, !dbg !225
  %conv39 = zext i8 %11 to i16, !dbg !225
  %shl40 = shl nuw i16 %conv39, 8, !dbg !226
  %or41 = or i16 %shl40, %conv33, !dbg !227
  br label %if.end43, !dbg !228

if.end43:                                         ; preds = %if.then27, %if.else
  %cword.0 = phi i16 [ %or41, %if.then27 ], [ %crc, %if.else ], !dbg !196
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  %cword.1 = phi i16 [ %or232, %if.then17 ], [ %cword.0, %if.end43 ], !dbg !196
  br label %for.cond45, !dbg !229

for.cond45:                                       ; preds = %for.inc84, %if.end44
  %j.1 = phi i16 [ 1, %if.end44 ], [ %inc85, %for.inc84 ], !dbg !196
  %cword.2 = phi i16 [ %cword.1, %if.end44 ], [ %xor821, %for.inc84 ], !dbg !196
  %conv46 = zext i16 %j.1 to i32, !dbg !230
  %cmp47.not = icmp ugt i32 %conv46, %len, !dbg !231
  br i1 %cmp47.not, label %for.end86, label %for.body49, !dbg !232

for.body49:                                       ; preds = %for.cond45
  %cmp50 = icmp slt i32 %jrev, 0, !dbg !233
  br i1 %cmp50, label %if.then52, label %if.else63, !dbg !234

if.then52:                                        ; preds = %for.body49
  %idxprom53 = zext i16 %j.1 to i32, !dbg !235
  %arrayidx54 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %idxprom53, !dbg !235
  %12 = load i8, i8* %arrayidx54, align 1, !dbg !235
  %idxprom55 = zext i8 %12 to i32, !dbg !236
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom55, !dbg !236
  %13 = load i8, i8* %arrayidx56, align 1, !dbg !236
  %conv57 = zext i8 %13 to i16, !dbg !236
  %14 = lshr i16 %cword.2, 8, !dbg !237
  %xor = xor i16 %14, %conv57, !dbg !238
  br label %if.end73, !dbg !239

if.else63:                                        ; preds = %for.body49
  %idxprom64 = zext i16 %j.1 to i32, !dbg !240
  %arrayidx65 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i32 0, i32 %idxprom64, !dbg !240
  %15 = load i8, i8* %arrayidx65, align 1, !dbg !240
  %conv66 = zext i8 %15 to i16, !dbg !240
  %16 = lshr i16 %cword.2, 8, !dbg !241
  %xor71 = xor i16 %16, %conv66, !dbg !242
  br label %if.end73

if.end73:                                         ; preds = %if.else63, %if.then52
  %tmp1.0 = phi i16 [ %xor, %if.then52 ], [ %xor71, %if.else63 ], !dbg !196
  br label %for.inc84, !dbg !243

for.inc84:                                        ; preds = %if.end73
  %idxprom74 = zext i16 %tmp1.0 to i32, !dbg !244
  %arrayidx75 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i32 0, i32 %idxprom74, !dbg !244
  %17 = load i16, i16* %arrayidx75, align 2, !dbg !244
  %18 = shl i16 %cword.2, 8, !dbg !245
  %xor821 = xor i16 %17, %18, !dbg !246
  %inc85 = add i16 %j.1, 1, !dbg !247
  br label %for.cond45, !dbg !232, !llvm.loop !248

for.end86:                                        ; preds = %for.cond45
  %cmp87 = icmp sgt i32 %jrev, -1, !dbg !249
  br i1 %cmp87, label %if.then89, label %if.else90, !dbg !250

if.then89:                                        ; preds = %for.end86
  br label %if.end106, !dbg !251

if.else90:                                        ; preds = %for.end86
  %19 = lshr i16 %cword.2, 8, !dbg !252
  %conv93 = zext i16 %19 to i32, !dbg !252
  %arrayidx95 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %conv93, !dbg !253
  %20 = load i8, i8* %arrayidx95, align 1, !dbg !253
  %conv96 = zext i8 %20 to i16, !dbg !253
  %21 = and i16 %cword.2, 255, !dbg !254
  %idxprom100 = zext i16 %21 to i32, !dbg !254
  %arrayidx101 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i32 0, i32 %idxprom100, !dbg !254
  %22 = load i8, i8* %arrayidx101, align 1, !dbg !254
  %conv102 = zext i8 %22 to i16, !dbg !254
  %shl103 = shl nuw i16 %conv102, 8, !dbg !255
  %or104 = or i16 %shl103, %conv96, !dbg !256
  br label %if.end106

if.end106:                                        ; preds = %if.else90, %if.then89
  %tmp2.0 = phi i16 [ %cword.2, %if.then89 ], [ %or104, %if.else90 ], !dbg !196
  ret i16 %tmp2.0, !dbg !257
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @crc() #0 !dbg !258 {
entry:
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i32 0, i32 41), align 1, !dbg !259
  %call = call arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext 0, i32 noundef 40, i16 noundef signext 0, i32 noundef 1) #5, !dbg !260
  %0 = lshr i16 %call, 8, !dbg !261
  %conv1 = trunc i16 %0 to i8, !dbg !261
  store i8 %conv1, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i32 0, i32 41), align 1, !dbg !262
  %conv5 = trunc i16 %call to i8, !dbg !263
  store i8 %conv5, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i32 0, i32 42), align 1, !dbg !264
  %call9 = call arm_aapcs_vfpcc zeroext i16 @icrc(i16 noundef zeroext %call, i32 noundef 42, i16 noundef signext 0, i32 noundef 1) #5, !dbg !265
  ret i32 0, !dbg !266
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @expint() #0 !dbg !267 {
entry:
  %call = call arm_aapcs_vfpcc i32 @expint_expint(i32 noundef 50, i32 noundef 1) #5, !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @expint_expint(i32 noundef %n, i32 noundef %x) #0 !dbg !271 {
entry:
  %sub = add nsw i32 %n, -1, !dbg !272
  %cmp = icmp sgt i32 %x, 1, !dbg !273
  br i1 %cmp, label %if.then, label %if.else, !dbg !274

if.then:                                          ; preds = %entry
  %add = add nsw i32 %x, %n, !dbg !275
  br label %for.cond, !dbg !276

for.cond:                                         ; preds = %for.inc, %if.then
  %d.0 = phi i32 [ 30000000, %if.then ], [ %mul7, %for.inc ], !dbg !277
  %c.0 = phi i32 [ 2000000, %if.then ], [ %add8, %for.inc ], !dbg !277
  %b.0 = phi i32 [ %add, %if.then ], [ %add4, %for.inc ], !dbg !277
  %h.0 = phi i32 [ 30000000, %if.then ], [ %mul10, %for.inc ], !dbg !277
  %i.0 = phi i32 [ 1, %if.then ], [ %inc, %for.inc ], !dbg !277
  %exitcond1.not = icmp eq i32 %i.0, 101, !dbg !278
  br i1 %exitcond1.not, label %for.end, label %for.body, !dbg !279

for.body:                                         ; preds = %for.cond
  %add3 = add nsw i32 %sub, %i.0, !dbg !280
  %0 = mul i32 %i.0, %add3, !dbg !281
  %mul = sub i32 0, %0, !dbg !281
  %add4 = add nsw i32 %b.0, 2, !dbg !282
  %mul5 = mul nsw i32 %d.0, %mul, !dbg !283
  %add6 = add nsw i32 %mul5, %add4, !dbg !284
  %mul7 = mul nsw i32 %add6, 10, !dbg !285
  %div = sdiv i32 %mul, %c.0, !dbg !286
  %add8 = add nsw i32 %add4, %div, !dbg !287
  %mul9 = mul nsw i32 %add8, %mul7, !dbg !288
  %mul10 = mul nsw i32 %h.0, %mul9, !dbg !289
  %cmp11 = icmp slt i32 %mul9, 10000, !dbg !290
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !291

if.then12:                                        ; preds = %for.body
  %1 = mul i32 %mul10, %x, !dbg !292
  %mul14 = sub i32 0, %1, !dbg !292
  br label %return, !dbg !293

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !294

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.0, 1, !dbg !295
  br label %for.cond, !dbg !279, !llvm.loop !296

for.end:                                          ; preds = %for.cond
  br label %if.end43, !dbg !297

if.else:                                          ; preds = %entry
  %cmp15.not = icmp eq i32 %sub, 0, !dbg !298
  %cond = select i1 %cmp15.not, i32 1000, i32 2, !dbg !299
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 1), !dbg !300
  %2 = add nsw i32 %smax, -1, !dbg !300
  %3 = mul i32 %2, %n, !dbg !300
  %4 = zext i32 %2 to i33, !dbg !300
  %5 = add nsw i32 %smax, -2, !dbg !300
  %6 = zext i32 %5 to i33, !dbg !300
  %7 = mul i33 %4, %6, !dbg !300
  %8 = lshr i33 %7, 1, !dbg !300
  %9 = trunc i33 %8 to i32, !dbg !300
  %10 = add i32 %3, %9, !dbg !300
  %11 = add i32 %10, 255, !dbg !300
  br label %for.cond16, !dbg !300

for.cond16:                                       ; preds = %for.inc40, %if.else
  %fact.0.neg = phi i32 [ -1, %if.else ], [ %12, %for.inc40 ], !dbg !277
  %fact.0 = phi i32 [ 1, %if.else ], [ %.neg, %for.inc40 ], !dbg !277
  %i.1 = phi i32 [ 1, %if.else ], [ %inc41, %for.inc40 ], !dbg !277
  %ans.0 = phi i32 [ %cond, %if.else ], [ %add39, %for.inc40 ], !dbg !277
  %exitcond.not = icmp eq i32 %i.1, 101, !dbg !301
  br i1 %exitcond.not, label %for.end42, label %for.body18, !dbg !302

for.body18:                                       ; preds = %for.cond16
  %div202 = sdiv i32 %x, %i.1, !dbg !303
  %.neg = mul i32 %fact.0.neg, %div202, !dbg !304
  %12 = mul i32 %div202, %fact.0, !dbg !304
  %cmp22.not = icmp eq i32 %i.1, %sub, !dbg !305
  br i1 %cmp22.not, label %if.else27, label %if.then23, !dbg !306

if.then23:                                        ; preds = %for.body18
  %sub25 = sub nsw i32 %i.1, %sub, !dbg !307
  %div263 = sdiv i32 %.neg, %sub25, !dbg !308
  %div26 = sub nsw i32 0, %div263, !dbg !308
  br label %if.end38, !dbg !309

if.else27:                                        ; preds = %for.body18
  br label %for.cond28, !dbg !310

for.cond28:                                       ; preds = %for.inc33, %if.else27
  br i1 false, label %for.body30, label %for.end35, !dbg !311

for.body30:                                       ; preds = %for.cond28
  br label %for.inc33, !dbg !312

for.inc33:                                        ; preds = %for.body30
  br label %for.cond28, !dbg !311, !llvm.loop !313

for.end35:                                        ; preds = %for.cond28
  %call = call arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #5, !dbg !315
  %mul36 = mul nsw i32 %.neg, %call, !dbg !316
  %add37 = add nsw i32 %11, %mul36, !dbg !317
  br label %if.end38

if.end38:                                         ; preds = %for.end35, %if.then23
  %del.0 = phi i32 [ %div26, %if.then23 ], [ %add37, %for.end35 ], !dbg !277
  br label %for.inc40, !dbg !318

for.inc40:                                        ; preds = %if.end38
  %add39 = add nsw i32 %ans.0, %del.0, !dbg !319
  %inc41 = add nuw nsw i32 %i.1, 1, !dbg !320
  br label %for.cond16, !dbg !302, !llvm.loop !321

for.end42:                                        ; preds = %for.cond16
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end
  %ans.1 = phi i32 [ undef, %for.end ], [ %ans.0, %for.end42 ]
  br label %return, !dbg !322

return:                                           ; preds = %if.end43, %if.then12
  %retval.0 = phi i32 [ %mul14, %if.then12 ], [ %ans.1, %if.end43 ], !dbg !277
  ret i32 %retval.0, !dbg !323
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #0 !dbg !324 {
entry:
  %mul11 = add i32 %x, 8, !dbg !325
  %add = mul i32 %mul11, %x, !dbg !325
  %sub = sub nsw i32 4, %x, !dbg !326
  %shl = shl i32 %add, %sub, !dbg !327
  ret i32 %shl, !dbg !328
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @fdct_fdct(i16* noundef %blk, i32 noundef %lx) #0 !dbg !329 {
entry:
  br label %for.cond, !dbg !331

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !332
  %block.0 = phi i16* [ %blk, %entry ], [ %add.ptr, %for.inc ], !dbg !332
  %exitcond.not = icmp eq i32 %i.0, 8, !dbg !333
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !334

for.body:                                         ; preds = %for.cond
  %0 = load i16, i16* %block.0, align 2, !dbg !335
  %conv = sext i16 %0 to i32, !dbg !335
  %arrayidx1 = getelementptr inbounds i16, i16* %block.0, i32 7, !dbg !336
  %1 = load i16, i16* %arrayidx1, align 2, !dbg !336
  %conv2 = sext i16 %1 to i32, !dbg !336
  %add = add nsw i32 %conv, %conv2, !dbg !337
  %conv4 = sext i16 %0 to i32, !dbg !338
  %conv6 = sext i16 %1 to i32, !dbg !339
  %sub = sub nsw i32 %conv4, %conv6, !dbg !340
  %arrayidx7 = getelementptr inbounds i16, i16* %block.0, i32 1, !dbg !341
  %2 = load i16, i16* %arrayidx7, align 2, !dbg !341
  %conv8 = sext i16 %2 to i32, !dbg !341
  %arrayidx9 = getelementptr inbounds i16, i16* %block.0, i32 6, !dbg !342
  %3 = load i16, i16* %arrayidx9, align 2, !dbg !342
  %conv10 = sext i16 %3 to i32, !dbg !342
  %add11 = add nsw i32 %conv8, %conv10, !dbg !343
  %arrayidx12 = getelementptr inbounds i16, i16* %block.0, i32 1, !dbg !344
  %4 = load i16, i16* %arrayidx12, align 2, !dbg !344
  %conv13 = sext i16 %4 to i32, !dbg !344
  %arrayidx14 = getelementptr inbounds i16, i16* %block.0, i32 6, !dbg !345
  %5 = load i16, i16* %arrayidx14, align 2, !dbg !345
  %conv15 = sext i16 %5 to i32, !dbg !345
  %sub16 = sub nsw i32 %conv13, %conv15, !dbg !346
  %arrayidx17 = getelementptr inbounds i16, i16* %block.0, i32 2, !dbg !347
  %6 = load i16, i16* %arrayidx17, align 2, !dbg !347
  %conv18 = sext i16 %6 to i32, !dbg !347
  %arrayidx19 = getelementptr inbounds i16, i16* %block.0, i32 5, !dbg !348
  %7 = load i16, i16* %arrayidx19, align 2, !dbg !348
  %conv20 = sext i16 %7 to i32, !dbg !348
  %add21 = add nsw i32 %conv18, %conv20, !dbg !349
  %arrayidx22 = getelementptr inbounds i16, i16* %block.0, i32 2, !dbg !350
  %8 = load i16, i16* %arrayidx22, align 2, !dbg !350
  %conv23 = sext i16 %8 to i32, !dbg !350
  %arrayidx24 = getelementptr inbounds i16, i16* %block.0, i32 5, !dbg !351
  %9 = load i16, i16* %arrayidx24, align 2, !dbg !351
  %conv25 = sext i16 %9 to i32, !dbg !351
  %sub26 = sub nsw i32 %conv23, %conv25, !dbg !352
  %arrayidx27 = getelementptr inbounds i16, i16* %block.0, i32 3, !dbg !353
  %10 = load i16, i16* %arrayidx27, align 2, !dbg !353
  %conv28 = sext i16 %10 to i32, !dbg !353
  %arrayidx29 = getelementptr inbounds i16, i16* %block.0, i32 4, !dbg !354
  %11 = load i16, i16* %arrayidx29, align 2, !dbg !354
  %conv30 = sext i16 %11 to i32, !dbg !354
  %add31 = add nsw i32 %conv28, %conv30, !dbg !355
  %arrayidx32 = getelementptr inbounds i16, i16* %block.0, i32 3, !dbg !356
  %12 = load i16, i16* %arrayidx32, align 2, !dbg !356
  %conv33 = sext i16 %12 to i32, !dbg !356
  %arrayidx34 = getelementptr inbounds i16, i16* %block.0, i32 4, !dbg !357
  %13 = load i16, i16* %arrayidx34, align 2, !dbg !357
  %conv35 = sext i16 %13 to i32, !dbg !357
  %sub36 = sub nsw i32 %conv33, %conv35, !dbg !358
  %add37 = add nsw i32 %add, %add31, !dbg !359
  %sub38 = sub nsw i32 %add, %add31, !dbg !360
  %add39 = add nsw i32 %add11, %add21, !dbg !361
  %sub40 = sub nsw i32 %add11, %add21, !dbg !362
  %add41 = add nsw i32 %add37, %add39, !dbg !363
  %add41.tr = trunc i32 %add41 to i16, !dbg !364
  %conv42 = shl i16 %add41.tr, 2, !dbg !364
  store i16 %conv42, i16* %block.0, align 2, !dbg !365
  %sub44 = sub nsw i32 %add37, %add39, !dbg !366
  %sub44.tr = trunc i32 %sub44 to i16, !dbg !367
  %conv46 = shl i16 %sub44.tr, 2, !dbg !367
  %arrayidx47 = getelementptr inbounds i16, i16* %block.0, i32 4, !dbg !368
  store i16 %conv46, i16* %arrayidx47, align 2, !dbg !369
  %add48 = add nsw i32 %sub40, %sub38, !dbg !370
  %mul = mul nsw i32 %add48, 4433, !dbg !371
  %mul49 = mul nsw i32 %sub38, 6270, !dbg !372
  %add50 = add nsw i32 %mul, %mul49, !dbg !373
  %14 = lshr i32 %add50, 11, !dbg !374
  %conv51 = trunc i32 %14 to i16, !dbg !375
  %arrayidx52 = getelementptr inbounds i16, i16* %block.0, i32 2, !dbg !376
  store i16 %conv51, i16* %arrayidx52, align 2, !dbg !377
  %mul53 = mul nsw i32 %sub40, -15137, !dbg !378
  %add54 = add nsw i32 %mul, %mul53, !dbg !379
  %15 = lshr i32 %add54, 11, !dbg !380
  %conv56 = trunc i32 %15 to i16, !dbg !381
  %arrayidx57 = getelementptr inbounds i16, i16* %block.0, i32 6, !dbg !382
  store i16 %conv56, i16* %arrayidx57, align 2, !dbg !383
  %add58 = add nsw i32 %sub36, %sub, !dbg !384
  %add59 = add nsw i32 %sub26, %sub16, !dbg !385
  %add60 = add nsw i32 %sub36, %sub16, !dbg !386
  %add61 = add nsw i32 %sub26, %sub, !dbg !387
  %add62 = add nsw i32 %add60, %add61, !dbg !388
  %mul63 = mul nsw i32 %add62, 9633, !dbg !389
  %mul64 = mul nsw i32 %sub36, 2446, !dbg !390
  %mul65 = mul nsw i32 %sub26, 16819, !dbg !391
  %mul66 = mul nsw i32 %sub16, 25172, !dbg !392
  %mul67 = mul nsw i32 %sub, 12299, !dbg !393
  %mul68 = mul nsw i32 %add58, -7373, !dbg !394
  %mul69 = mul nsw i32 %add59, -20995, !dbg !395
  %mul70 = mul nsw i32 %add60, -16069, !dbg !396
  %mul71 = mul nsw i32 %add61, -3196, !dbg !397
  %add72 = add nsw i32 %mul70, %mul63, !dbg !398
  %add73 = add nsw i32 %mul71, %mul63, !dbg !399
  %add74 = add nsw i32 %mul64, %mul68, !dbg !400
  %add75 = add nsw i32 %add74, %add72, !dbg !401
  %16 = lshr i32 %add75, 11, !dbg !402
  %conv77 = trunc i32 %16 to i16, !dbg !403
  %arrayidx78 = getelementptr inbounds i16, i16* %block.0, i32 7, !dbg !404
  store i16 %conv77, i16* %arrayidx78, align 2, !dbg !405
  %add79 = add nsw i32 %mul65, %mul69, !dbg !406
  %add80 = add nsw i32 %add79, %add73, !dbg !407
  %17 = lshr i32 %add80, 11, !dbg !408
  %conv82 = trunc i32 %17 to i16, !dbg !409
  %arrayidx83 = getelementptr inbounds i16, i16* %block.0, i32 5, !dbg !410
  store i16 %conv82, i16* %arrayidx83, align 2, !dbg !411
  %add84 = add nsw i32 %mul66, %mul69, !dbg !412
  %add85 = add nsw i32 %add84, %add72, !dbg !413
  %18 = lshr i32 %add85, 11, !dbg !414
  %conv87 = trunc i32 %18 to i16, !dbg !415
  %arrayidx88 = getelementptr inbounds i16, i16* %block.0, i32 3, !dbg !416
  store i16 %conv87, i16* %arrayidx88, align 2, !dbg !417
  %add89 = add nsw i32 %mul67, %mul68, !dbg !418
  %add90 = add nsw i32 %add89, %add73, !dbg !419
  %19 = lshr i32 %add90, 11, !dbg !420
  %conv92 = trunc i32 %19 to i16, !dbg !421
  %arrayidx93 = getelementptr inbounds i16, i16* %block.0, i32 1, !dbg !422
  store i16 %conv92, i16* %arrayidx93, align 2, !dbg !423
  br label %for.inc, !dbg !424

for.inc:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i16, i16* %block.0, i32 %lx, !dbg !425
  %inc = add nuw nsw i32 %i.0, 1, !dbg !426
  br label %for.cond, !dbg !334, !llvm.loop !427

for.end:                                          ; preds = %for.cond
  br label %for.cond94, !dbg !428

for.cond94:                                       ; preds = %for.inc216, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc217, %for.inc216 ], !dbg !332
  %block.1 = phi i16* [ %blk, %for.end ], [ %incdec.ptr, %for.inc216 ], !dbg !332
  %exitcond1.not = icmp eq i32 %i.1, 8, !dbg !429
  br i1 %exitcond1.not, label %for.end218, label %for.body97, !dbg !430

for.body97:                                       ; preds = %for.cond94
  %20 = load i16, i16* %block.1, align 2, !dbg !431
  %conv99 = sext i16 %20 to i32, !dbg !431
  %mul100 = mul nsw i32 %lx, 7, !dbg !432
  %arrayidx101 = getelementptr inbounds i16, i16* %block.1, i32 %mul100, !dbg !433
  %21 = load i16, i16* %arrayidx101, align 2, !dbg !433
  %conv102 = sext i16 %21 to i32, !dbg !433
  %add103 = add nsw i32 %conv99, %conv102, !dbg !434
  %22 = load i16, i16* %block.1, align 2, !dbg !435
  %conv105 = sext i16 %22 to i32, !dbg !435
  %mul106 = mul nsw i32 %lx, 7, !dbg !436
  %arrayidx107 = getelementptr inbounds i16, i16* %block.1, i32 %mul106, !dbg !437
  %23 = load i16, i16* %arrayidx107, align 2, !dbg !437
  %conv108 = sext i16 %23 to i32, !dbg !437
  %sub109 = sub nsw i32 %conv105, %conv108, !dbg !438
  %arrayidx110 = getelementptr inbounds i16, i16* %block.1, i32 %lx, !dbg !439
  %24 = load i16, i16* %arrayidx110, align 2, !dbg !439
  %conv111 = sext i16 %24 to i32, !dbg !439
  %mul112 = mul nsw i32 %lx, 6, !dbg !440
  %arrayidx113 = getelementptr inbounds i16, i16* %block.1, i32 %mul112, !dbg !441
  %25 = load i16, i16* %arrayidx113, align 2, !dbg !441
  %conv114 = sext i16 %25 to i32, !dbg !441
  %add115 = add nsw i32 %conv111, %conv114, !dbg !442
  %arrayidx116 = getelementptr inbounds i16, i16* %block.1, i32 %lx, !dbg !443
  %26 = load i16, i16* %arrayidx116, align 2, !dbg !443
  %conv117 = sext i16 %26 to i32, !dbg !443
  %mul118 = mul nsw i32 %lx, 6, !dbg !444
  %arrayidx119 = getelementptr inbounds i16, i16* %block.1, i32 %mul118, !dbg !445
  %27 = load i16, i16* %arrayidx119, align 2, !dbg !445
  %conv120 = sext i16 %27 to i32, !dbg !445
  %sub121 = sub nsw i32 %conv117, %conv120, !dbg !446
  %mul122 = shl nsw i32 %lx, 1, !dbg !447
  %arrayidx123 = getelementptr inbounds i16, i16* %block.1, i32 %mul122, !dbg !448
  %28 = load i16, i16* %arrayidx123, align 2, !dbg !448
  %conv124 = sext i16 %28 to i32, !dbg !448
  %mul125 = mul nsw i32 %lx, 5, !dbg !449
  %arrayidx126 = getelementptr inbounds i16, i16* %block.1, i32 %mul125, !dbg !450
  %29 = load i16, i16* %arrayidx126, align 2, !dbg !450
  %conv127 = sext i16 %29 to i32, !dbg !450
  %add128 = add nsw i32 %conv124, %conv127, !dbg !451
  %mul129 = shl nsw i32 %lx, 1, !dbg !452
  %arrayidx130 = getelementptr inbounds i16, i16* %block.1, i32 %mul129, !dbg !453
  %30 = load i16, i16* %arrayidx130, align 2, !dbg !453
  %conv131 = sext i16 %30 to i32, !dbg !453
  %mul132 = mul nsw i32 %lx, 5, !dbg !454
  %arrayidx133 = getelementptr inbounds i16, i16* %block.1, i32 %mul132, !dbg !455
  %31 = load i16, i16* %arrayidx133, align 2, !dbg !455
  %conv134 = sext i16 %31 to i32, !dbg !455
  %sub135 = sub nsw i32 %conv131, %conv134, !dbg !456
  %mul136 = mul nsw i32 %lx, 3, !dbg !457
  %arrayidx137 = getelementptr inbounds i16, i16* %block.1, i32 %mul136, !dbg !458
  %32 = load i16, i16* %arrayidx137, align 2, !dbg !458
  %conv138 = sext i16 %32 to i32, !dbg !458
  %mul139 = shl nsw i32 %lx, 2, !dbg !459
  %arrayidx140 = getelementptr inbounds i16, i16* %block.1, i32 %mul139, !dbg !460
  %33 = load i16, i16* %arrayidx140, align 2, !dbg !460
  %conv141 = sext i16 %33 to i32, !dbg !460
  %add142 = add nsw i32 %conv138, %conv141, !dbg !461
  %mul143 = mul nsw i32 %lx, 3, !dbg !462
  %arrayidx144 = getelementptr inbounds i16, i16* %block.1, i32 %mul143, !dbg !463
  %34 = load i16, i16* %arrayidx144, align 2, !dbg !463
  %conv145 = sext i16 %34 to i32, !dbg !463
  %mul146 = shl nsw i32 %lx, 2, !dbg !464
  %arrayidx147 = getelementptr inbounds i16, i16* %block.1, i32 %mul146, !dbg !465
  %35 = load i16, i16* %arrayidx147, align 2, !dbg !465
  %conv148 = sext i16 %35 to i32, !dbg !465
  %sub149 = sub nsw i32 %conv145, %conv148, !dbg !466
  %add150 = add nsw i32 %add103, %add142, !dbg !467
  %sub151 = sub nsw i32 %add103, %add142, !dbg !468
  %add152 = add nsw i32 %add115, %add128, !dbg !469
  %sub153 = sub nsw i32 %add115, %add128, !dbg !470
  %add154 = add nsw i32 %add150, %add152, !dbg !471
  %shr155 = ashr i32 %add154, 5, !dbg !472
  %conv156 = trunc i32 %shr155 to i16, !dbg !473
  store i16 %conv156, i16* %block.1, align 2, !dbg !474
  %sub158 = sub nsw i32 %add150, %add152, !dbg !475
  %shr159 = ashr i32 %sub158, 5, !dbg !476
  %conv160 = trunc i32 %shr159 to i16, !dbg !477
  %mul161 = shl nsw i32 %lx, 2, !dbg !478
  %arrayidx162 = getelementptr inbounds i16, i16* %block.1, i32 %mul161, !dbg !479
  store i16 %conv160, i16* %arrayidx162, align 2, !dbg !480
  %add163 = add nsw i32 %sub153, %sub151, !dbg !481
  %mul164 = mul nsw i32 %add163, 4433, !dbg !482
  %mul165 = mul nsw i32 %sub151, 6270, !dbg !483
  %add166 = add nsw i32 %mul164, %mul165, !dbg !484
  %shr167 = ashr i32 %add166, 18, !dbg !485
  %conv168 = trunc i32 %shr167 to i16, !dbg !486
  %mul169 = shl nsw i32 %lx, 1, !dbg !487
  %arrayidx170 = getelementptr inbounds i16, i16* %block.1, i32 %mul169, !dbg !488
  store i16 %conv168, i16* %arrayidx170, align 2, !dbg !489
  %mul171 = mul nsw i32 %sub153, -15137, !dbg !490
  %add172 = add nsw i32 %mul164, %mul171, !dbg !491
  %shr173 = ashr i32 %add172, 18, !dbg !492
  %conv174 = trunc i32 %shr173 to i16, !dbg !493
  %mul175 = mul nsw i32 %lx, 6, !dbg !494
  %arrayidx176 = getelementptr inbounds i16, i16* %block.1, i32 %mul175, !dbg !495
  store i16 %conv174, i16* %arrayidx176, align 2, !dbg !496
  %add177 = add nsw i32 %sub149, %sub109, !dbg !497
  %add178 = add nsw i32 %sub135, %sub121, !dbg !498
  %add179 = add nsw i32 %sub149, %sub121, !dbg !499
  %add180 = add nsw i32 %sub135, %sub109, !dbg !500
  %add181 = add nsw i32 %add179, %add180, !dbg !501
  %mul182 = mul nsw i32 %add181, 9633, !dbg !502
  %mul183 = mul nsw i32 %sub149, 2446, !dbg !503
  %mul184 = mul nsw i32 %sub135, 16819, !dbg !504
  %mul185 = mul nsw i32 %sub121, 25172, !dbg !505
  %mul186 = mul nsw i32 %sub109, 12299, !dbg !506
  %mul187 = mul nsw i32 %add177, -7373, !dbg !507
  %mul188 = mul nsw i32 %add178, -20995, !dbg !508
  %mul189 = mul nsw i32 %add179, -16069, !dbg !509
  %mul190 = mul nsw i32 %add180, -3196, !dbg !510
  %add191 = add nsw i32 %mul189, %mul182, !dbg !511
  %add192 = add nsw i32 %mul190, %mul182, !dbg !512
  %add193 = add nsw i32 %mul183, %mul187, !dbg !513
  %add194 = add nsw i32 %add193, %add191, !dbg !514
  %shr195 = ashr i32 %add194, 18, !dbg !515
  %conv196 = trunc i32 %shr195 to i16, !dbg !516
  %mul197 = mul nsw i32 %lx, 7, !dbg !517
  %arrayidx198 = getelementptr inbounds i16, i16* %block.1, i32 %mul197, !dbg !518
  store i16 %conv196, i16* %arrayidx198, align 2, !dbg !519
  %add199 = add nsw i32 %mul184, %mul188, !dbg !520
  %add200 = add nsw i32 %add199, %add192, !dbg !521
  %shr201 = ashr i32 %add200, 18, !dbg !522
  %conv202 = trunc i32 %shr201 to i16, !dbg !523
  %mul203 = mul nsw i32 %lx, 5, !dbg !524
  %arrayidx204 = getelementptr inbounds i16, i16* %block.1, i32 %mul203, !dbg !525
  store i16 %conv202, i16* %arrayidx204, align 2, !dbg !526
  %add205 = add nsw i32 %mul185, %mul188, !dbg !527
  %add206 = add nsw i32 %add205, %add191, !dbg !528
  %shr207 = ashr i32 %add206, 18, !dbg !529
  %conv208 = trunc i32 %shr207 to i16, !dbg !530
  %mul209 = mul nsw i32 %lx, 3, !dbg !531
  %arrayidx210 = getelementptr inbounds i16, i16* %block.1, i32 %mul209, !dbg !532
  store i16 %conv208, i16* %arrayidx210, align 2, !dbg !533
  %add211 = add nsw i32 %mul186, %mul187, !dbg !534
  %add212 = add nsw i32 %add211, %add192, !dbg !535
  %shr213 = ashr i32 %add212, 18, !dbg !536
  %conv214 = trunc i32 %shr213 to i16, !dbg !537
  %arrayidx215 = getelementptr inbounds i16, i16* %block.1, i32 %lx, !dbg !538
  store i16 %conv214, i16* %arrayidx215, align 2, !dbg !539
  br label %for.inc216, !dbg !540

for.inc216:                                       ; preds = %for.body97
  %incdec.ptr = getelementptr inbounds i16, i16* %block.1, i32 1, !dbg !541
  %inc217 = add nuw nsw i32 %i.1, 1, !dbg !542
  br label %for.cond94, !dbg !430, !llvm.loop !543

for.end218:                                       ; preds = %for.cond94
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @fdct() #0 !dbg !545 {
entry:
  call arm_aapcs_vfpcc void @fdct_fdct(i16* noundef getelementptr inbounds ([64 x i16], [64 x i16]* @block, i32 0, i32 0), i32 noundef 8) #5, !dbg !546
  %0 = load i16, i16* getelementptr inbounds ([64 x i16], [64 x i16]* @block, i32 0, i32 0), align 2, !dbg !547
  %conv = sext i16 %0 to i32, !dbg !547
  ret i32 %conv, !dbg !548
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc double @lms_sinus(i32 noundef %i) #0 !dbg !549 {
entry:
  %rem = srem i32 %i, 20, !dbg !551
  %cmp = icmp sgt i32 %rem, 9, !dbg !552
  br i1 %cmp, label %if.then, label %if.end, !dbg !553

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %rem, 15, !dbg !554
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !555

cond.true:                                        ; preds = %if.then
  %sub = sub nsw i32 20, %rem, !dbg !556
  br label %cond.end, !dbg !555

cond.false:                                       ; preds = %if.then
  %sub2 = add nsw i32 %rem, -10, !dbg !557
  br label %cond.end, !dbg !555

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub2, %cond.false ], !dbg !555
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond, !dbg !558
  %0 = load double, double* %arrayidx, align 8, !dbg !558
  %fneg = fneg double %0, !dbg !559
  br label %return, !dbg !560

if.end:                                           ; preds = %entry
  %cmp3 = icmp sgt i32 %rem, 5, !dbg !561
  br i1 %cmp3, label %cond.true4, label %cond.false6, !dbg !562

cond.true4:                                       ; preds = %if.end
  %sub5 = sub nsw i32 10, %rem, !dbg !563
  br label %cond.end7, !dbg !562

cond.false6:                                      ; preds = %if.end
  br label %cond.end7, !dbg !562

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %sub5, %cond.true4 ], [ %rem, %cond.false6 ], !dbg !562
  %arrayidx9 = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond8, !dbg !564
  %1 = load double, double* %arrayidx9, align 8, !dbg !564
  br label %return, !dbg !565

return:                                           ; preds = %cond.end7, %cond.end
  %retval.0 = phi double [ %fneg, %cond.end ], [ %1, %cond.end7 ], !dbg !566
  ret double %retval.0, !dbg !567
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_init() #0 !dbg !568 {
entry:
  store float 0.000000e+00, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 0), align 4, !dbg !569
  br label %do.body, !dbg !570

do.body:                                          ; preds = %do.cond, %entry
  br label %do.cond, !dbg !571

do.cond:                                          ; preds = %do.body
  br i1 false, label %do.body, label %do.end, !dbg !571, !llvm.loop !572

do.end:                                           ; preds = %do.cond
  %call = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef 1) #5, !dbg !574
  %0 = fadd double %call, 0xBFF8A068E044FADD, !dbg !575
  %conv11 = fptrunc double %0 to float, !dbg !574
  store float %conv11, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 1), align 4, !dbg !576
  br label %for.cond, !dbg !577

for.cond:                                         ; preds = %for.inc, %do.end
  %k.0 = phi i32 [ 2, %do.end ], [ %add46, %for.inc ], !dbg !578
  %seed.1 = phi i32 [ -1770082073, %do.end ], [ %add25, %for.inc ], !dbg !578
  %cmp12 = icmp ult i32 %k.0, 201, !dbg !579
  br i1 %cmp12, label %for.body, label %for.end, !dbg !580

for.body:                                         ; preds = %for.cond
  br label %do.body18, !dbg !581

do.body18:                                        ; preds = %do.cond31, %for.body
  %seed.2 = phi i32 [ %seed.1, %for.body ], [ %add25, %do.cond31 ], !dbg !578
  %mul19 = mul i32 %seed.2, 1103515245, !dbg !582
  %add20 = add i32 %mul19, 12345, !dbg !583
  %and21 = and i32 %add20, 2147483647, !dbg !584
  %conv22 = uitofp i32 %and21 to double, !dbg !585
  %1 = call double @llvm.fmuladd.f64(double %conv22, double 0x3E10000000000000, double -1.000000e+00), !dbg !586
  %mul24 = mul i32 %add20, 1103515245, !dbg !587
  %add25 = add i32 %mul24, 12345, !dbg !588
  %and26 = and i32 %add25, 2147483647, !dbg !589
  %conv27 = uitofp i32 %and26 to double, !dbg !590
  %2 = call double @llvm.fmuladd.f64(double %conv27, double 0x3E10000000000000, double -1.000000e+00), !dbg !591
  %mul30 = fmul double %2, %2, !dbg !592
  %3 = call double @llvm.fmuladd.f64(double %1, double %1, double %mul30), !dbg !593
  br label %do.cond31, !dbg !594

do.cond31:                                        ; preds = %do.body18
  %cmp32 = fcmp ogt double %3, 1.000000e+00, !dbg !595
  br i1 %cmp32, label %do.body18, label %do.end34, !dbg !594, !llvm.loop !596

do.end34:                                         ; preds = %do.cond31
  %div36 = fdiv double 1.000000e+00, %3, !dbg !598
  %call37 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %k.0) #5, !dbg !599
  %4 = call double @llvm.fmuladd.f64(double %div36, double %2, double %call37), !dbg !600
  %conv39 = fptrunc double %4 to float, !dbg !599
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %k.0, !dbg !601
  store float %conv39, float* %arrayidx, align 4, !dbg !602
  %add40 = or i32 %k.0, 1, !dbg !603
  %call41 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %add40) #5, !dbg !604
  %5 = call double @llvm.fmuladd.f64(double %div36, double %1, double %call41), !dbg !605
  %conv43 = fptrunc double %5 to float, !dbg !604
  %add44 = or i32 %k.0, 1, !dbg !606
  %arrayidx45 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add44, !dbg !607
  store float %conv43, float* %arrayidx45, align 4, !dbg !608
  br label %for.inc, !dbg !609

for.inc:                                          ; preds = %do.end34
  %add46 = add nuw nsw i32 %k.0, 2, !dbg !610
  br label %for.cond, !dbg !580, !llvm.loop !611

for.end:                                          ; preds = %for.cond
  ret void, !dbg !612
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @lms_calc(float noundef %x, float noundef %d, float* noundef %b, i32 noundef %l, float noundef %mu, float noundef %alpha, float* noundef %history, float* noundef %sigma) #0 !dbg !613 {
entry:
  br label %for.cond, !dbg !614

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %l, %entry ], [ %dec, %for.inc ], !dbg !615
  %cmp = icmp sgt i32 %i.0, 0, !dbg !616
  br i1 %cmp, label %for.body, label %for.end, !dbg !617

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %i.0, -1, !dbg !618
  %arrayidx = getelementptr inbounds float, float* %history, i32 %sub, !dbg !619
  %0 = load float, float* %arrayidx, align 4, !dbg !619
  %arrayidx1 = getelementptr inbounds float, float* %history, i32 %i.0, !dbg !620
  store float %0, float* %arrayidx1, align 4, !dbg !621
  br label %for.inc, !dbg !620

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !622
  br label %for.cond, !dbg !617, !llvm.loop !623

for.end:                                          ; preds = %for.cond
  store float %x, float* %history, align 4, !dbg !625
  %mul = fmul float %alpha, %x, !dbg !626
  %sub4 = fsub float 1.000000e+00, %alpha, !dbg !627
  %1 = load float, float* %sigma, align 4, !dbg !628
  %mul5 = fmul float %sub4, %1, !dbg !629
  %2 = call float @llvm.fmuladd.f32(float %mul, float %x, float %mul5), !dbg !630
  store float %2, float* %sigma, align 4, !dbg !631
  %3 = call i32 @llvm.smax.i32(i32 %l, i32 -1), !dbg !632
  %smax = add nsw i32 %3, 1, !dbg !632
  br label %for.cond6, !dbg !632

for.cond6:                                        ; preds = %for.inc12, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc, %for.inc12 ], !dbg !615
  %y.0 = phi float [ 0.000000e+00, %for.end ], [ %6, %for.inc12 ], !dbg !615
  %exitcond.not = icmp eq i32 %i.1, %smax, !dbg !633
  br i1 %exitcond.not, label %for.end13, label %for.body8, !dbg !634

for.body8:                                        ; preds = %for.cond6
  br label %for.inc12, !dbg !635

for.inc12:                                        ; preds = %for.body8
  %arrayidx9 = getelementptr inbounds float, float* %b, i32 %i.1, !dbg !636
  %4 = load float, float* %arrayidx9, align 4, !dbg !636
  %arrayidx10 = getelementptr inbounds float, float* %history, i32 %i.1, !dbg !637
  %5 = load float, float* %arrayidx10, align 4, !dbg !637
  %6 = call float @llvm.fmuladd.f32(float %4, float %5, float %y.0), !dbg !638
  %inc = add nuw i32 %i.1, 1, !dbg !639
  br label %for.cond6, !dbg !634, !llvm.loop !640

for.end13:                                        ; preds = %for.cond6
  %sub14 = fsub float %d, %y.0, !dbg !642
  %mul15 = fmul float %sub14, %mu, !dbg !643
  %7 = load float, float* %sigma, align 4, !dbg !644
  %div = fdiv float %mul15, %7, !dbg !645
  br label %for.cond16, !dbg !646

for.cond16:                                       ; preds = %for.inc22, %for.end13
  %i.2 = phi i32 [ 0, %for.end13 ], [ %inc23, %for.inc22 ], !dbg !615
  %exitcond1.not = icmp eq i32 %i.2, %smax, !dbg !647
  br i1 %exitcond1.not, label %for.end24, label %for.body18, !dbg !648

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %history, i32 %i.2, !dbg !649
  %8 = load float, float* %arrayidx19, align 4, !dbg !649
  %arrayidx21 = getelementptr inbounds float, float* %b, i32 %i.2, !dbg !650
  %9 = load float, float* %arrayidx21, align 4, !dbg !651
  %10 = call float @llvm.fmuladd.f32(float %div, float %8, float %9), !dbg !651
  store float %10, float* %arrayidx21, align 4, !dbg !651
  br label %for.inc22, !dbg !650

for.inc22:                                        ; preds = %for.body18
  %inc23 = add nuw i32 %i.2, 1, !dbg !652
  br label %for.cond16, !dbg !648, !llvm.loop !653

for.end24:                                        ; preds = %for.cond16
  ret float %y.0, !dbg !655
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_main() #0 !dbg !656 {
entry:
  %b = alloca [21 x float], align 4
  %history = alloca [21 x float], align 4
  %sigma = alloca float, align 4
  store float 2.000000e+00, float* %sigma, align 4, !dbg !657
  br label %for.cond, !dbg !658

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !659
  %exitcond.not = icmp eq i32 %i.0, 21, !dbg !660
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !661

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 %i.0, !dbg !662
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !663
  %arrayidx1 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 %i.0, !dbg !664
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !665
  br label %for.inc, !dbg !666

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !667
  br label %for.cond, !dbg !661, !llvm.loop !668

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !669

for.cond2:                                        ; preds = %for.inc9, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc10, %for.inc9 ], !dbg !659
  %exitcond1.not = icmp eq i32 %i.1, 201, !dbg !670
  br i1 %exitcond1.not, label %for.end11, label %for.body4, !dbg !671

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %i.1, !dbg !672
  %0 = load float, float* %arrayidx5, align 4, !dbg !672
  %add = add nuw nsw i32 %i.1, 1, !dbg !673
  %arrayidx6 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add, !dbg !674
  %1 = load float, float* %arrayidx6, align 4, !dbg !674
  %arraydecay = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 0, !dbg !675
  %arraydecay7 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 0, !dbg !676
  %call = call arm_aapcs_vfpcc float @lms_calc(float noundef %0, float noundef %1, float* noundef nonnull %arraydecay, i32 noundef 20, float noundef 0x3F4F352680000000, float noundef 0x3F847AE140000000, float* noundef nonnull %arraydecay7, float* noundef nonnull %sigma) #5, !dbg !677
  %arrayidx8 = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %i.1, !dbg !678
  store float %call, float* %arrayidx8, align 4, !dbg !679
  br label %for.inc9, !dbg !680

for.inc9:                                         ; preds = %for.body4
  %inc10 = add nuw nsw i32 %i.1, 1, !dbg !681
  br label %for.cond2, !dbg !671, !llvm.loop !682

for.end11:                                        ; preds = %for.cond2
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @lms_return() #0 !dbg !684 {
entry:
  br label %for.cond, !dbg !685

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi double [ 0.000000e+00, %entry ], [ %add, %for.inc ], !dbg !686
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !686
  %exitcond.not = icmp eq i32 %i.0, 201, !dbg !687
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !688

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !689

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %i.0, !dbg !690
  %0 = load float, float* %arrayidx, align 4, !dbg !690
  %conv = fpext float %0 to double, !dbg !690
  %add = fadd double %sum.0, %conv, !dbg !691
  %inc = add nuw nsw i32 %i.0, 1, !dbg !692
  br label %for.cond, !dbg !688, !llvm.loop !693

for.end:                                          ; preds = %for.cond
  %add1 = fadd double %sum.0, 0x4012D2A80064A9CE, !dbg !694
  %mul = fmul double %add1, 1.000000e+06, !dbg !695
  %conv2 = fptosi double %mul to i32, !dbg !696
  ret i32 %conv2, !dbg !697
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms(i8* noundef %n) #0 !dbg !698 {
entry:
  call arm_aapcs_vfpcc void @lms_init() #5, !dbg !699
  call arm_aapcs_vfpcc void @lms_main() #5, !dbg !700
  %call = call arm_aapcs_vfpcc i32 @lms_return() #5, !dbg !701
  ret void, !dbg !702
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @exec() #0 !dbg !703 {
entry:
  br label %for.cond, !dbg !705

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end, !dbg !706

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !707

for.inc:                                          ; preds = %for.body
  br label %for.cond, !dbg !706, !llvm.loop !708

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !709
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @a() #0 !dbg !710 {
entry:
  br label %for.cond, !dbg !711

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !712
  %exitcond.not = icmp eq i32 %i.0, 12, !dbg !713
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !714

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @exec() #5, !dbg !715
  br label %for.inc, !dbg !716

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !717
  br label %for.cond, !dbg !714, !llvm.loop !718

for.end:                                          ; preds = %for.cond
  ret i32 1, !dbg !719
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @b() #0 !dbg !720 {
entry:
  br label %for.cond, !dbg !721

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 2, %entry ], [ %inc, %for.inc ], !dbg !722
  %exitcond.not = icmp eq i32 %i.0, 5, !dbg !723
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !724

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @exec() #5, !dbg !725
  br label %for.inc, !dbg !726

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !727
  br label %for.cond, !dbg !724, !llvm.loop !728

for.end:                                          ; preds = %for.cond
  ret i32 2, !dbg !729
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @loop() #0 !dbg !730 {
entry:
  br label %for.cond, !dbg !731

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !732
  %exitcond.not = icmp eq i32 %i.0, 3, !dbg !733
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !734

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @a() #5, !dbg !735
  %call1 = call arm_aapcs_vfpcc i32 @b() #5, !dbg !736
  br label %for.inc, !dbg !737

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !738
  br label %for.cond, !dbg !734, !llvm.loop !739

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !740
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matmult() #0 !dbg !741 {
entry:
  call arm_aapcs_vfpcc void @InitSeed() #5, !dbg !743
  call arm_aapcs_vfpcc void @Test([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ResultArray, i32 0, i32 0)) #5, !dbg !744
  ret void, !dbg !745
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @InitSeed() #0 !dbg !746 {
entry:
  store i32 0, i32* @Seed, align 4, !dbg !747
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Test([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !749 {
entry:
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %A) #5, !dbg !750
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %B) #5, !dbg !751
  call arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #5, !dbg !752
  ret void, !dbg !753
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %Array) #0 !dbg !754 {
entry:
  br label %for.cond, !dbg !755

for.cond:                                         ; preds = %for.inc5, %entry
  %OuterIndex.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !756
  %exitcond1.not = icmp eq i32 %OuterIndex.0, 20, !dbg !757
  br i1 %exitcond1.not, label %for.end7, label %for.body, !dbg !758

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !759

for.cond1:                                        ; preds = %for.inc, %for.body
  %InnerIndex.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !756
  %exitcond.not = icmp eq i32 %InnerIndex.0, 20, !dbg !760
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !761

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @RandomInteger() #5, !dbg !762
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %OuterIndex.0, i32 %InnerIndex.0, !dbg !763
  store i32 %call, i32* %arrayidx4, align 4, !dbg !764
  br label %for.inc, !dbg !763

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %InnerIndex.0, 1, !dbg !765
  br label %for.cond1, !dbg !761, !llvm.loop !766

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !767

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %OuterIndex.0, 1, !dbg !768
  br label %for.cond, !dbg !758, !llvm.loop !769

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !771 {
entry:
  br label %for.cond, !dbg !772

for.cond:                                         ; preds = %for.inc17, %entry
  %Outer.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !773
  %exitcond2.not = icmp eq i32 %Outer.0, 20, !dbg !774
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !775

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !776

for.cond1:                                        ; preds = %for.inc14, %for.body
  %Inner.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !dbg !773
  %exitcond1.not = icmp eq i32 %Inner.0, 20, !dbg !777
  br i1 %exitcond1.not, label %for.end16, label %for.body3, !dbg !778

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Res, i32 %Outer.0, i32 %Inner.0, !dbg !779
  store i32 0, i32* %arrayidx4, align 4, !dbg !780
  br label %for.cond5, !dbg !781

for.cond5:                                        ; preds = %for.inc, %for.body3
  %Index.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !dbg !773
  %exitcond.not = icmp eq i32 %Index.0, 20, !dbg !782
  br i1 %exitcond.not, label %for.end, label %for.body7, !dbg !783

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* %A, i32 %Outer.0, i32 %Index.0, !dbg !784
  %0 = load i32, i32* %arrayidx9, align 4, !dbg !784
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %B, i32 %Index.0, i32 %Inner.0, !dbg !785
  %1 = load i32, i32* %arrayidx11, align 4, !dbg !785
  %mul = mul nsw i32 %0, %1, !dbg !786
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %Res, i32 %Outer.0, i32 %Inner.0, !dbg !787
  %2 = load i32, i32* %arrayidx13, align 4, !dbg !788
  %add = add nsw i32 %2, %mul, !dbg !788
  store i32 %add, i32* %arrayidx13, align 4, !dbg !788
  br label %for.inc, !dbg !787

for.inc:                                          ; preds = %for.body7
  %inc = add nuw nsw i32 %Index.0, 1, !dbg !789
  br label %for.cond5, !dbg !783, !llvm.loop !790

for.end:                                          ; preds = %for.cond5
  br label %for.inc14, !dbg !792

for.inc14:                                        ; preds = %for.end
  %inc15 = add nuw nsw i32 %Inner.0, 1, !dbg !793
  br label %for.cond1, !dbg !778, !llvm.loop !794

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !792

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nuw nsw i32 %Outer.0, 1, !dbg !795
  br label %for.cond, !dbg !775, !llvm.loop !796

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @RandomInteger() #0 !dbg !798 {
entry:
  %0 = load i32, i32* @Seed, align 4, !dbg !799
  %mul = mul nsw i32 %0, 133, !dbg !800
  %add = add nsw i32 %mul, 81, !dbg !801
  %rem = srem i32 %add, 8095, !dbg !802
  store i32 %rem, i32* @Seed, align 4, !dbg !803
  ret i32 %rem, !dbg !804
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_init() #0 !dbg !805 {
entry:
  br label %for.cond, !dbg !807

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !808
  %exitcond.not = icmp eq i32 %i.0, 57, !dbg !809
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !810

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_init.ndes_ipc1_tmp, i32 0, i32 %i.0, !dbg !811
  %0 = load volatile i8, i8* %arrayidx, align 1, !dbg !811
  %arrayidx1 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %i.0, !dbg !812
  store i8 %0, i8* %arrayidx1, align 1, !dbg !813
  br label %for.inc, !dbg !812

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !814
  br label %for.cond, !dbg !810, !llvm.loop !815

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !817

for.cond2:                                        ; preds = %for.inc7, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc8, %for.inc7 ], !dbg !808
  %exitcond1.not = icmp eq i32 %i.1, 49, !dbg !818
  br i1 %exitcond1.not, label %for.end9, label %for.body4, !dbg !819

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_init.ndes_ipc2_tmp, i32 0, i32 %i.1, !dbg !820
  %1 = load volatile i8, i8* %arrayidx5, align 1, !dbg !820
  %arrayidx6 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %i.1, !dbg !821
  store i8 %1, i8* %arrayidx6, align 1, !dbg !822
  br label %for.inc7, !dbg !821

for.inc7:                                         ; preds = %for.body4
  %inc8 = add nuw nsw i32 %i.1, 1, !dbg !823
  br label %for.cond2, !dbg !819, !llvm.loop !824

for.end9:                                         ; preds = %for.cond2
  store i32 35, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 0), align 4, !dbg !826
  store i32 26, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 1), align 4, !dbg !827
  store i32 2, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 0), align 4, !dbg !828
  store i32 16, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 1), align 4, !dbg !829
  %2 = load i32, i32* @ndes_value, align 4, !dbg !830
  store i32 %2, i32* @ndes_newkey, align 4, !dbg !831
  store i32 %2, i32* @ndes_isw, align 4, !dbg !832
  ret void, !dbg !833
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_des([2 x i32] %inp.coerce, [2 x i32] %key.coerce, i32* noundef %newkey, i32 noundef %isw, %struct.DATA* noundef %out) #0 !dbg !834 {
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
  %2 = load i32, i32* @ndes_des.initflag, align 4, !dbg !835
  %tobool.not = icmp eq i32 %2, 0, !dbg !835
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !835

if.then:                                          ; preds = %entry
  store i32 0, i32* @ndes_des.initflag, align 4, !dbg !836
  store i32 1, i32* getelementptr inbounds ([33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 1), align 4, !dbg !837
  br label %for.cond, !dbg !838

for.cond:                                         ; preds = %for.inc, %if.then
  %j.0 = phi i32 [ 2, %if.then ], [ %inc, %for.inc ], !dbg !839
  %shifter.0 = phi i32 [ 1, %if.then ], [ %shl, %for.inc ], !dbg !839
  %exitcond.not = icmp eq i32 %j.0, 33, !dbg !840
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !841

for.body:                                         ; preds = %for.cond
  %shl = shl i32 %shifter.0, 1, !dbg !842
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %j.0, !dbg !843
  store i32 %shl, i32* %arrayidx, align 4, !dbg !844
  br label %for.inc, !dbg !843

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %j.0, 1, !dbg !845
  br label %for.cond, !dbg !841, !llvm.loop !846

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !848

if.end:                                           ; preds = %for.end, %entry
  %3 = load i32, i32* %newkey, align 4, !dbg !849
  %tobool1.not = icmp eq i32 %3, 0, !dbg !849
  br i1 %tobool1.not, label %if.end25, label %if.then2, !dbg !849

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %newkey, align 4, !dbg !850
  store i32 0, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !851
  store i32 0, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !852
  br label %for.cond3, !dbg !853

for.cond3:                                        ; preds = %for.inc13, %if.then2
  %j.1 = phi i32 [ 28, %if.then2 ], [ %dec, %for.inc13 ], !dbg !839
  %k.0 = phi i32 [ 56, %if.then2 ], [ %dec14, %for.inc13 ], !dbg !839
  %cmp4.not = icmp eq i32 %j.1, 0, !dbg !854
  br i1 %cmp4.not, label %for.end15, label %for.body5, !dbg !855

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !856
  %shl6 = shl i32 %4, 1, !dbg !857
  %arrayidx7 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %j.1, !dbg !858
  %5 = load i8, i8* %arrayidx7, align 1, !dbg !858
  %conv = zext i8 %5 to i32, !dbg !858
  %.elt28 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 0, !dbg !859
  %.unpack29 = load i32, i32* %.elt28, align 4, !dbg !859
  %6 = insertvalue [2 x i32] undef, i32 %.unpack29, 0, !dbg !859
  %7 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 1, !dbg !859
  %.unpack31 = load i32, i32* %7, align 4, !dbg !859
  %8 = insertvalue [2 x i32] %6, i32 %.unpack31, 1, !dbg !859
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %8, i32 noundef %conv, i32 noundef 32) #5, !dbg !859
  %or = or i32 %shl6, %call, !dbg !860
  store i32 %or, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !861
  %9 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !862
  %shl8 = shl i32 %9, 1, !dbg !863
  store i32 %shl8, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !864
  %arrayidx9 = getelementptr inbounds [57 x i8], [57 x i8]* @ndes_ipc1, i32 0, i32 %k.0, !dbg !865
  %10 = load i8, i8* %arrayidx9, align 1, !dbg !865
  %conv10 = zext i8 %10 to i32, !dbg !865
  %.elt32 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 0, !dbg !866
  %.unpack33 = load i32, i32* %.elt32, align 4, !dbg !866
  %11 = insertvalue [2 x i32] undef, i32 %.unpack33, 0, !dbg !866
  %12 = getelementptr inbounds %struct.DATA, %struct.DATA* %key, i32 0, i32 1, !dbg !866
  %.unpack35 = load i32, i32* %12, align 4, !dbg !866
  %13 = insertvalue [2 x i32] %11, i32 %.unpack35, 1, !dbg !866
  %call11 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %13, i32 noundef %conv10, i32 noundef 32) #5, !dbg !866
  %or12 = or i32 %shl8, %call11, !dbg !867
  store i32 %or12, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !868
  br label %for.inc13, !dbg !869

for.inc13:                                        ; preds = %for.body5
  %dec = add nsw i32 %j.1, -1, !dbg !870
  %dec14 = add nsw i32 %k.0, -1, !dbg !871
  br label %for.cond3, !dbg !855, !llvm.loop !872

for.end15:                                        ; preds = %for.cond3
  br label %for.cond16, !dbg !873

for.cond16:                                       ; preds = %for.inc22, %for.end15
  %i.0 = phi i32 [ 1, %for.end15 ], [ %inc23, %for.inc22 ], !dbg !839
  %exitcond1.not = icmp eq i32 %i.0, 17, !dbg !874
  br i1 %exitcond1.not, label %for.end24, label %for.body19, !dbg !875

for.body19:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %i.0, !dbg !876
  %14 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !876
  %15 = bitcast %struct.NDES_GREAT* %arrayidx20 to i8*, !dbg !876
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %14, i8* noundef nonnull align 4 dereferenceable(12) %15, i32 12, i1 false), !dbg !876
  call arm_aapcs_vfpcc void @ndes_ks(i32 noundef %i.0, %struct.NDES_GREAT* noundef nonnull %pg) #5, !dbg !877
  %arrayidx21 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %i.0, !dbg !878
  %16 = bitcast %struct.NDES_GREAT* %arrayidx21 to i8*, !dbg !879
  %17 = bitcast %struct.NDES_GREAT* %pg to i8*, !dbg !879
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(12) %16, i8* noundef nonnull align 4 dereferenceable(12) %17, i32 12, i1 false), !dbg !879
  br label %for.inc22, !dbg !880

for.inc22:                                        ; preds = %for.body19
  %inc23 = add nuw nsw i32 %i.0, 1, !dbg !881
  br label %for.cond16, !dbg !875, !llvm.loop !882

for.end24:                                        ; preds = %for.cond16
  br label %if.end25, !dbg !883

if.end25:                                         ; preds = %for.end24, %if.end
  %l = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !884
  store i32 0, i32* %l, align 4, !dbg !885
  %r = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !886
  store i32 0, i32* %r, align 4, !dbg !887
  br label %for.cond26, !dbg !888

for.cond26:                                       ; preds = %for.inc48, %if.end25
  %j.2 = phi i32 [ 32, %if.end25 ], [ %dec49, %for.inc48 ], !dbg !839
  %k.1 = phi i32 [ 64, %if.end25 ], [ %dec50, %for.inc48 ], !dbg !839
  %cmp27.not = icmp eq i32 %j.2, 0, !dbg !889
  br i1 %cmp27.not, label %for.end51, label %for.body29, !dbg !890

for.body29:                                       ; preds = %for.cond26
  %r30 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !891
  %18 = load i32, i32* %r30, align 4, !dbg !891
  %shl31 = shl i32 %18, 1, !dbg !892
  %r32 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !893
  store i32 %shl31, i32* %r32, align 4, !dbg !894
  %arrayidx34 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %j.2, !dbg !895
  %19 = load volatile i8, i8* %arrayidx34, align 1, !dbg !895
  %conv35 = zext i8 %19 to i32, !dbg !895
  %.elt20 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 0, !dbg !896
  %.unpack21 = load i32, i32* %.elt20, align 4, !dbg !896
  %20 = insertvalue [2 x i32] undef, i32 %.unpack21, 0, !dbg !896
  %21 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 1, !dbg !896
  %.unpack23 = load i32, i32* %21, align 4, !dbg !896
  %22 = insertvalue [2 x i32] %20, i32 %.unpack23, 1, !dbg !896
  %call36 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %22, i32 noundef %conv35, i32 noundef 32) #5, !dbg !896
  %or37 = or i32 %shl31, %call36, !dbg !897
  %r38 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !898
  store i32 %or37, i32* %r38, align 4, !dbg !899
  %l39 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !900
  %23 = load i32, i32* %l39, align 4, !dbg !900
  %shl40 = shl i32 %23, 1, !dbg !901
  %l41 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !902
  store i32 %shl40, i32* %l41, align 4, !dbg !903
  %arrayidx43 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ip, i32 0, i32 %k.1, !dbg !904
  %24 = load volatile i8, i8* %arrayidx43, align 1, !dbg !904
  %conv44 = zext i8 %24 to i32, !dbg !904
  %.elt24 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 0, !dbg !905
  %.unpack25 = load i32, i32* %.elt24, align 4, !dbg !905
  %25 = insertvalue [2 x i32] undef, i32 %.unpack25, 0, !dbg !905
  %26 = getelementptr inbounds %struct.DATA, %struct.DATA* %inp, i32 0, i32 1, !dbg !905
  %.unpack27 = load i32, i32* %26, align 4, !dbg !905
  %27 = insertvalue [2 x i32] %25, i32 %.unpack27, 1, !dbg !905
  %call45 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %27, i32 noundef %conv44, i32 noundef 32) #5, !dbg !905
  %or46 = or i32 %shl40, %call45, !dbg !906
  %l47 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !907
  store i32 %or46, i32* %l47, align 4, !dbg !908
  br label %for.inc48, !dbg !909

for.inc48:                                        ; preds = %for.body29
  %dec49 = add nsw i32 %j.2, -1, !dbg !910
  %dec50 = add nsw i32 %k.1, -1, !dbg !911
  br label %for.cond26, !dbg !890, !llvm.loop !912

for.end51:                                        ; preds = %for.cond26
  br label %for.cond52, !dbg !913

for.cond52:                                       ; preds = %for.inc64, %for.end51
  %i.1 = phi i32 [ 1, %for.end51 ], [ %inc65, %for.inc64 ], !dbg !839
  %exitcond2.not = icmp eq i32 %i.1, 17, !dbg !914
  br i1 %exitcond2.not, label %for.end66, label %for.body55, !dbg !915

for.body55:                                       ; preds = %for.cond52
  %cmp56 = icmp eq i32 %isw, 1, !dbg !916
  br i1 %cmp56, label %cond.true, label %cond.false, !dbg !917

cond.true:                                        ; preds = %for.body55
  %sub = sub nuw nsw i32 17, %i.1, !dbg !918
  br label %cond.end, !dbg !917

cond.false:                                       ; preds = %for.body55
  br label %cond.end, !dbg !917

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %i.1, %cond.false ], !dbg !917
  %l58 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !919
  %28 = load i32, i32* %l58, align 4, !dbg !919
  %.elt14 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 0, !dbg !920
  %.unpack15 = load i32, i32* %.elt14, align 4, !dbg !920
  %29 = insertvalue [3 x i32] undef, i32 %.unpack15, 0, !dbg !920
  %30 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 1, !dbg !920
  %.unpack17 = load i32, i32* %30, align 4, !dbg !920
  %31 = insertvalue [3 x i32] %29, i32 %.unpack17, 1, !dbg !920
  %32 = getelementptr inbounds [17 x %struct.NDES_GREAT], [17 x %struct.NDES_GREAT]* @ndes_des.kns, i32 0, i32 %cond, i32 2, !dbg !920
  %.unpack19 = load i32, i32* %32, align 4, !dbg !920
  %33 = insertvalue [3 x i32] %31, i32 %.unpack19, 2, !dbg !920
  call arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %28, [3 x i32] %33, i32* noundef nonnull %ic) #5, !dbg !920
  %r60 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !921
  %34 = load i32, i32* %r60, align 4, !dbg !921
  %35 = load i32, i32* %ic, align 4, !dbg !922
  %xor = xor i32 %35, %34, !dbg !922
  store i32 %xor, i32* %ic, align 4, !dbg !922
  %l61 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !923
  %36 = load i32, i32* %l61, align 4, !dbg !923
  %r62 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !924
  store i32 %36, i32* %r62, align 4, !dbg !925
  %l63 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !926
  store i32 %xor, i32* %l63, align 4, !dbg !927
  br label %for.inc64, !dbg !928

for.inc64:                                        ; preds = %cond.end
  %inc65 = add nuw nsw i32 %i.1, 1, !dbg !929
  br label %for.cond52, !dbg !915, !llvm.loop !930

for.end66:                                        ; preds = %for.cond52
  %r67 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !931
  %37 = load i32, i32* %r67, align 4, !dbg !931
  store i32 %37, i32* %ic, align 4, !dbg !932
  %l68 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !933
  %38 = load i32, i32* %l68, align 4, !dbg !933
  %r69 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !934
  store i32 %38, i32* %r69, align 4, !dbg !935
  %l70 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !936
  store i32 %37, i32* %l70, align 4, !dbg !937
  %l71 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !938
  store i32 0, i32* %l71, align 4, !dbg !939
  %r72 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !940
  store i32 0, i32* %r72, align 4, !dbg !941
  br label %for.cond73, !dbg !942

for.cond73:                                       ; preds = %for.inc95, %for.end66
  %j.3 = phi i32 [ 32, %for.end66 ], [ %dec96, %for.inc95 ], !dbg !839
  %k.2 = phi i32 [ 64, %for.end66 ], [ %dec97, %for.inc95 ], !dbg !839
  %cmp74.not = icmp eq i32 %j.3, 0, !dbg !943
  br i1 %cmp74.not, label %for.end98, label %for.body76, !dbg !944

for.body76:                                       ; preds = %for.cond73
  %r77 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !945
  %39 = load i32, i32* %r77, align 4, !dbg !945
  %shl78 = shl i32 %39, 1, !dbg !946
  %r79 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !947
  store i32 %shl78, i32* %r79, align 4, !dbg !948
  %arrayidx81 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %j.3, !dbg !949
  %40 = load volatile i8, i8* %arrayidx81, align 1, !dbg !949
  %conv82 = zext i8 %40 to i32, !dbg !949
  %.elt = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !950
  %.unpack = load i32, i32* %.elt, align 4, !dbg !950
  %41 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !950
  %42 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !950
  %.unpack9 = load i32, i32* %42, align 4, !dbg !950
  %43 = insertvalue [2 x i32] %41, i32 %.unpack9, 1, !dbg !950
  %call83 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %43, i32 noundef %conv82, i32 noundef 32) #5, !dbg !950
  %or84 = or i32 %shl78, %call83, !dbg !951
  %r85 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 1, !dbg !952
  store i32 %or84, i32* %r85, align 4, !dbg !953
  %l86 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !954
  %44 = load i32, i32* %l86, align 4, !dbg !954
  %shl87 = shl i32 %44, 1, !dbg !955
  %l88 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !956
  store i32 %shl87, i32* %l88, align 4, !dbg !957
  %arrayidx90 = getelementptr inbounds [65 x i8], [65 x i8]* @ndes_des.ipm, i32 0, i32 %k.2, !dbg !958
  %45 = load volatile i8, i8* %arrayidx90, align 1, !dbg !958
  %conv91 = zext i8 %45 to i32, !dbg !958
  %.elt10 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 0, !dbg !959
  %.unpack11 = load i32, i32* %.elt10, align 4, !dbg !959
  %46 = insertvalue [2 x i32] undef, i32 %.unpack11, 0, !dbg !959
  %47 = getelementptr inbounds %struct.DATA, %struct.DATA* %itmp, i32 0, i32 1, !dbg !959
  %.unpack13 = load i32, i32* %47, align 4, !dbg !959
  %48 = insertvalue [2 x i32] %46, i32 %.unpack13, 1, !dbg !959
  %call92 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %48, i32 noundef %conv91, i32 noundef 32) #5, !dbg !959
  %or93 = or i32 %shl87, %call92, !dbg !960
  %l94 = getelementptr inbounds %struct.DATA, %struct.DATA* %out, i32 0, i32 0, !dbg !961
  store i32 %or93, i32* %l94, align 4, !dbg !962
  br label %for.inc95, !dbg !963

for.inc95:                                        ; preds = %for.body76
  %dec96 = add nsw i32 %j.3, -1, !dbg !964
  %dec97 = add nsw i32 %k.2, -1, !dbg !965
  br label %for.cond73, !dbg !944, !llvm.loop !966

for.end98:                                        ; preds = %for.cond73
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %source.coerce, i32 noundef %bitno, i32 noundef %nbits) #0 !dbg !968 {
entry:
  %source = alloca %struct.DATA, align 4
  %.repack = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 0
  %source.coerce.elt = extractvalue [2 x i32] %source.coerce, 0
  store i32 %source.coerce.elt, i32* %.repack, align 4
  %0 = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 1
  %source.coerce.elt2 = extractvalue [2 x i32] %source.coerce, 1
  store i32 %source.coerce.elt2, i32* %0, align 4
  %cmp.not = icmp sgt i32 %bitno, %nbits, !dbg !969
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !970

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %bitno, !dbg !971
  %1 = load i32, i32* %arrayidx, align 4, !dbg !971
  %r = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 1, !dbg !972
  %2 = load i32, i32* %r, align 4, !dbg !972
  %and = and i32 %1, %2, !dbg !973
  br label %return, !dbg !974

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bitno, %nbits, !dbg !975
  %arrayidx1 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %sub, !dbg !976
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !976
  %l = getelementptr inbounds %struct.DATA, %struct.DATA* %source, i32 0, i32 0, !dbg !977
  %4 = load i32, i32* %l, align 4, !dbg !977
  %and2 = and i32 %3, %4, !dbg !978
  br label %return, !dbg !979

return:                                           ; preds = %if.else, %if.then
  %retval.0.in.in = phi i32 [ %and, %if.then ], [ %and2, %if.else ]
  %retval.0.in = icmp ne i32 %retval.0.in.in, 0, !dbg !980
  %retval.0 = zext i1 %retval.0.in to i32, !dbg !980
  ret i32 %retval.0, !dbg !981
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_ks(i32 noundef %n, %struct.NDES_GREAT* noundef %kn) #0 !dbg !982 {
entry:
  %cmp = icmp eq i32 %n, 1, !dbg !983
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !984

lor.lhs.false:                                    ; preds = %entry
  %cmp1 = icmp eq i32 %n, 2, !dbg !985
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !986

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %cmp3 = icmp eq i32 %n, 9, !dbg !987
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !988

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %cmp5 = icmp eq i32 %n, 16, !dbg !989
  br i1 %cmp5, label %if.then, label %if.else, !dbg !990

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !991
  %and = shl i32 %0, 28, !dbg !992
  %shl = and i32 %and, 268435456, !dbg !992
  %or = or i32 %0, %shl, !dbg !993
  %shr = lshr i32 %or, 1, !dbg !994
  store i32 %shr, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !995
  %1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !996
  %and6 = shl i32 %1, 28, !dbg !997
  %shl7 = and i32 %and6, 268435456, !dbg !997
  %or8 = or i32 %1, %shl7, !dbg !998
  %shr9 = lshr i32 %or8, 1, !dbg !999
  store i32 %shr9, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1000
  br label %if.end, !dbg !1001

if.else:                                          ; preds = %lor.lhs.false4
  br label %for.cond, !dbg !1002

for.cond:                                         ; preds = %for.inc, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc, %for.inc ], !dbg !1003
  %exitcond.not = icmp eq i32 %i.0, 3, !dbg !1004
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1005

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1006
  %and11 = shl i32 %2, 28, !dbg !1007
  %shl12 = and i32 %and11, 268435456, !dbg !1007
  %or13 = or i32 %2, %shl12, !dbg !1008
  %shr14 = lshr i32 %or13, 1, !dbg !1009
  store i32 %shr14, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1010
  %3 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1011
  %and15 = shl i32 %3, 28, !dbg !1012
  %shl16 = and i32 %and15, 268435456, !dbg !1012
  %or17 = or i32 %3, %shl16, !dbg !1013
  %shr18 = lshr i32 %or17, 1, !dbg !1014
  store i32 %shr18, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1015
  br label %for.inc, !dbg !1016

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1017
  br label %for.cond, !dbg !1005, !llvm.loop !1018

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %l19 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1019
  store i32 0, i32* %l19, align 4, !dbg !1020
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1021
  store i32 0, i32* %c, align 4, !dbg !1022
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1023
  store i32 0, i32* %r, align 4, !dbg !1024
  br label %for.cond20, !dbg !1025

for.cond20:                                       ; preds = %for.inc53, %if.end
  %j.0 = phi i32 [ 16, %if.end ], [ %dec, %for.inc53 ], !dbg !1003
  %k.0 = phi i32 [ 32, %if.end ], [ %dec54, %for.inc53 ], !dbg !1003
  %l.0 = phi i32 [ 48, %if.end ], [ %dec55, %for.inc53 ], !dbg !1003
  %cmp21.not = icmp eq i32 %j.0, 0, !dbg !1026
  br i1 %cmp21.not, label %for.end56, label %for.body22, !dbg !1027

for.body22:                                       ; preds = %for.cond20
  %r23 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1028
  %4 = load i32, i32* %r23, align 4, !dbg !1028
  %shl24 = shl i32 %4, 1, !dbg !1029
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1030
  store i32 %shl24, i32* %r25, align 4, !dbg !1031
  %arrayidx = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %j.0, !dbg !1032
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1032
  %conv = zext i8 %5 to i32, !dbg !1032
  %.unpack = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1033
  %6 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !1033
  %.unpack1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1033
  %7 = insertvalue [2 x i32] %6, i32 %.unpack1, 1, !dbg !1033
  %call = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %7, i32 noundef %conv, i32 noundef 28) #5, !dbg !1033
  %conv28 = and i32 %call, 65535, !dbg !1034
  %or29 = or i32 %shl24, %conv28, !dbg !1035
  %r30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 2, !dbg !1036
  store i32 %or29, i32* %r30, align 4, !dbg !1037
  %c31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1038
  %8 = load i32, i32* %c31, align 4, !dbg !1038
  %shl32 = shl i32 %8, 1, !dbg !1039
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1040
  store i32 %shl32, i32* %c33, align 4, !dbg !1041
  %arrayidx35 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %k.0, !dbg !1042
  %9 = load i8, i8* %arrayidx35, align 1, !dbg !1042
  %conv36 = zext i8 %9 to i32, !dbg !1042
  %.unpack2 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1043
  %10 = insertvalue [2 x i32] undef, i32 %.unpack2, 0, !dbg !1043
  %.unpack3 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1043
  %11 = insertvalue [2 x i32] %10, i32 %.unpack3, 1, !dbg !1043
  %call37 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %11, i32 noundef %conv36, i32 noundef 28) #5, !dbg !1043
  %conv39 = and i32 %call37, 65535, !dbg !1044
  %or40 = or i32 %shl32, %conv39, !dbg !1045
  %c41 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 1, !dbg !1046
  store i32 %or40, i32* %c41, align 4, !dbg !1047
  %l42 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1048
  %12 = load i32, i32* %l42, align 4, !dbg !1048
  %shl43 = shl i32 %12, 1, !dbg !1049
  %l44 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1050
  store i32 %shl43, i32* %l44, align 4, !dbg !1051
  %arrayidx46 = getelementptr inbounds [49 x i8], [49 x i8]* @ndes_ipc2, i32 0, i32 %l.0, !dbg !1052
  %13 = load i8, i8* %arrayidx46, align 1, !dbg !1052
  %conv47 = zext i8 %13 to i32, !dbg !1052
  %.unpack4 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1053
  %14 = insertvalue [2 x i32] undef, i32 %.unpack4, 0, !dbg !1053
  %.unpack5 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1053
  %15 = insertvalue [2 x i32] %14, i32 %.unpack5, 1, !dbg !1053
  %call48 = call arm_aapcs_vfpcc i32 @ndes_getbit([2 x i32] %15, i32 noundef %conv47, i32 noundef 28) #5, !dbg !1053
  %conv50 = and i32 %call48, 65535, !dbg !1054
  %or51 = or i32 %shl43, %conv50, !dbg !1055
  %l52 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %kn, i32 0, i32 0, !dbg !1056
  store i32 %or51, i32* %l52, align 4, !dbg !1057
  br label %for.inc53, !dbg !1058

for.inc53:                                        ; preds = %for.body22
  %dec = add nsw i32 %j.0, -1, !dbg !1059
  %dec54 = add nsw i32 %k.0, -1, !dbg !1060
  %dec55 = add nsw i32 %l.0, -1, !dbg !1061
  br label %for.cond20, !dbg !1027, !llvm.loop !1062

for.end56:                                        ; preds = %for.cond20
  ret void, !dbg !1063
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_cyfun(i32 noundef %ir, [3 x i32] %k.coerce, i32* noundef %iout) #0 !dbg !1064 {
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
  %2 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 0, !dbg !1065
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %2, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.ndes_cyfun.ibin, i32 0, i32 0), i32 16, i1 true), !dbg !1065
  %l1 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1066
  store i32 0, i32* %l1, align 4, !dbg !1067
  %c = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1068
  store i32 0, i32* %c, align 4, !dbg !1069
  %r = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1070
  store i32 0, i32* %r, align 4, !dbg !1071
  store volatile i32 16, i32* %j, align 4, !dbg !1072
  br label %for.cond, !dbg !1073

for.cond:                                         ; preds = %for.inc, %entry
  %l.0 = phi i32 [ 32, %entry ], [ %dec23, %for.inc ], !dbg !1074
  %m.0 = phi i32 [ 48, %entry ], [ %dec24, %for.inc ], !dbg !1074
  %3 = load volatile i32, i32* %j, align 4, !dbg !1075
  %cmp = icmp sgt i32 %3, 0, !dbg !1076
  br i1 %cmp, label %for.body, label %for.end, !dbg !1077

for.body:                                         ; preds = %for.cond
  %r2 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1078
  %4 = load i32, i32* %r2, align 4, !dbg !1078
  %shl = shl i32 %4, 1, !dbg !1079
  %5 = load volatile i32, i32* %j, align 4, !dbg !1080
  %arrayidx = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %5, !dbg !1081
  %6 = load volatile i32, i32* %arrayidx, align 4, !dbg !1081
  %arrayidx3 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %6, !dbg !1082
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !1082
  %and = and i32 %7, %ir, !dbg !1083
  %tobool.not = icmp ne i32 %and, 0, !dbg !1082
  %cond = zext i1 %tobool.not to i32, !dbg !1082
  %or = or i32 %shl, %cond, !dbg !1084
  %r4 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1085
  store i32 %or, i32* %r4, align 4, !dbg !1086
  %c5 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1087
  %8 = load i32, i32* %c5, align 4, !dbg !1087
  %shl6 = shl i32 %8, 1, !dbg !1088
  %arrayidx7 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %l.0, !dbg !1089
  %9 = load volatile i32, i32* %arrayidx7, align 4, !dbg !1089
  %arrayidx8 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %9, !dbg !1090
  %10 = load i32, i32* %arrayidx8, align 4, !dbg !1090
  %and9 = and i32 %10, %ir, !dbg !1091
  %tobool10.not = icmp ne i32 %and9, 0, !dbg !1090
  %cond11 = zext i1 %tobool10.not to i32, !dbg !1090
  %or12 = or i32 %shl6, %cond11, !dbg !1092
  %c13 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1093
  store i32 %or12, i32* %c13, align 4, !dbg !1094
  %l14 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1095
  %11 = load i32, i32* %l14, align 4, !dbg !1095
  %shl15 = shl i32 %11, 1, !dbg !1096
  %arrayidx16 = getelementptr inbounds [49 x i32], [49 x i32]* @ndes_cyfun.iet, i32 0, i32 %m.0, !dbg !1097
  %12 = load volatile i32, i32* %arrayidx16, align 4, !dbg !1097
  %arrayidx17 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %12, !dbg !1098
  %13 = load i32, i32* %arrayidx17, align 4, !dbg !1098
  %and18 = and i32 %13, %ir, !dbg !1099
  %tobool19.not = icmp ne i32 %and18, 0, !dbg !1098
  %cond20 = zext i1 %tobool19.not to i32, !dbg !1098
  %or21 = or i32 %shl15, %cond20, !dbg !1100
  %l22 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1101
  store i32 %or21, i32* %l22, align 4, !dbg !1102
  br label %for.inc, !dbg !1103

for.inc:                                          ; preds = %for.body
  %14 = load volatile i32, i32* %j, align 4, !dbg !1104
  %dec = add nsw i32 %14, -1, !dbg !1104
  store volatile i32 %dec, i32* %j, align 4, !dbg !1104
  %dec23 = add nsw i32 %l.0, -1, !dbg !1105
  %dec24 = add nsw i32 %m.0, -1, !dbg !1106
  br label %for.cond, !dbg !1077, !llvm.loop !1107

for.end:                                          ; preds = %for.cond
  %r25 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 2, !dbg !1108
  %15 = load i32, i32* %r25, align 4, !dbg !1108
  %r26 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1109
  %16 = load i32, i32* %r26, align 4, !dbg !1110
  %xor = xor i32 %16, %15, !dbg !1110
  store i32 %xor, i32* %r26, align 4, !dbg !1110
  %c27 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 1, !dbg !1111
  %17 = load i32, i32* %c27, align 4, !dbg !1111
  %c28 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1112
  %18 = load i32, i32* %c28, align 4, !dbg !1113
  %xor29 = xor i32 %18, %17, !dbg !1113
  store i32 %xor29, i32* %c28, align 4, !dbg !1113
  %l30 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %k, i32 0, i32 0, !dbg !1114
  %19 = load i32, i32* %l30, align 4, !dbg !1114
  %l31 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1115
  %20 = load i32, i32* %l31, align 4, !dbg !1116
  %xor32 = xor i32 %20, %19, !dbg !1116
  store i32 %xor32, i32* %l31, align 4, !dbg !1116
  %c33 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1117
  %21 = load i32, i32* %c33, align 4, !dbg !1117
  %shl34 = shl i32 %21, 16, !dbg !1118
  %r35 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 2, !dbg !1119
  %22 = load i32, i32* %r35, align 4, !dbg !1119
  %add = add i32 %shl34, %22, !dbg !1120
  %l36 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 0, !dbg !1121
  %23 = load i32, i32* %l36, align 4, !dbg !1121
  %shl37 = shl i32 %23, 8, !dbg !1122
  %c38 = getelementptr inbounds %struct.NDES_GREAT, %struct.NDES_GREAT* %ie, i32 0, i32 1, !dbg !1123
  %24 = load i32, i32* %c38, align 4, !dbg !1123
  %shr = lshr i32 %24, 8, !dbg !1124
  %add39 = add i32 %shl37, %shr, !dbg !1125
  store volatile i32 1, i32* %j, align 4, !dbg !1126
  br label %for.cond40, !dbg !1127

for.cond40:                                       ; preds = %for.inc50, %for.end
  %ietmp2.0 = phi i32 [ %add39, %for.end ], [ %shr49, %for.inc50 ], !dbg !1074
  %ietmp1.0 = phi i32 [ %add, %for.end ], [ %shr48, %for.inc50 ], !dbg !1074
  %m.1 = phi i32 [ 5, %for.end ], [ %inc51, %for.inc50 ], !dbg !1074
  %25 = load volatile i32, i32* %j, align 4, !dbg !1128
  %cmp41 = icmp slt i32 %25, 5, !dbg !1129
  br i1 %cmp41, label %for.body42, label %for.end52, !dbg !1130

for.body42:                                       ; preds = %for.cond40
  %26 = trunc i32 %ietmp1.0 to i8, !dbg !1131
  %conv = and i8 %26, 63, !dbg !1131
  %27 = load volatile i32, i32* %j, align 4, !dbg !1132
  %arrayidx44 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %27, !dbg !1133
  store i8 %conv, i8* %arrayidx44, align 1, !dbg !1134
  %28 = trunc i32 %ietmp2.0 to i8, !dbg !1135
  %conv46 = and i8 %28, 63, !dbg !1135
  %arrayidx47 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %m.1, !dbg !1136
  store i8 %conv46, i8* %arrayidx47, align 1, !dbg !1137
  br label %for.inc50, !dbg !1138

for.inc50:                                        ; preds = %for.body42
  %shr49 = lshr i32 %ietmp2.0, 6, !dbg !1139
  %shr48 = lshr i32 %ietmp1.0, 6, !dbg !1140
  %29 = load volatile i32, i32* %j, align 4, !dbg !1141
  %inc = add nsw i32 %29, 1, !dbg !1141
  store volatile i32 %inc, i32* %j, align 4, !dbg !1141
  %inc51 = add nuw nsw i32 %m.1, 1, !dbg !1142
  br label %for.cond40, !dbg !1130, !llvm.loop !1143

for.end52:                                        ; preds = %for.cond40
  store volatile i32 8, i32* %jj, align 4, !dbg !1144
  br label %for.cond53, !dbg !1145

for.cond53:                                       ; preds = %for.inc81, %for.end52
  %itmp.0 = phi i32 [ 0, %for.end52 ], [ %or80, %for.inc81 ], !dbg !1074
  %30 = load volatile i32, i32* %jj, align 4, !dbg !1146
  %cmp54 = icmp sgt i32 %30, 0, !dbg !1147
  br i1 %cmp54, label %for.body56, label %for.end83, !dbg !1148

for.body56:                                       ; preds = %for.cond53
  %31 = load volatile i32, i32* %jj, align 4, !dbg !1149
  %arrayidx57 = getelementptr inbounds [9 x i8], [9 x i8]* %iec, i32 0, i32 %31, !dbg !1150
  %32 = load i8, i8* %arrayidx57, align 1, !dbg !1150
  %conv58 = zext i8 %32 to i32, !dbg !1150
  store volatile i32 %conv58, i32* %j, align 4, !dbg !1151
  %33 = load volatile i32, i32* %j, align 4, !dbg !1152
  %and59 = shl i32 %33, 1, !dbg !1153
  %shl60 = and i32 %and59, 2, !dbg !1153
  %34 = load volatile i32, i32* %j, align 4, !dbg !1154
  %and61 = lshr i32 %34, 5, !dbg !1155
  %35 = and i32 %and61, 1, !dbg !1155
  %add63 = or i32 %shl60, %35, !dbg !1156
  %36 = load volatile i32, i32* %j, align 4, !dbg !1157
  %and64 = shl i32 %36, 2, !dbg !1158
  %shl65 = and i32 %and64, 8, !dbg !1158
  %37 = load volatile i32, i32* %j, align 4, !dbg !1159
  %and66 = and i32 %37, 4, !dbg !1160
  %add67 = or i32 %shl65, %and66, !dbg !1161
  %38 = load volatile i32, i32* %j, align 4, !dbg !1162
  %and68 = lshr i32 %38, 2, !dbg !1163
  %39 = and i32 %and68, 2, !dbg !1163
  %add70 = or i32 %add67, %39, !dbg !1164
  %40 = load volatile i32, i32* %j, align 4, !dbg !1165
  %and71 = lshr i32 %40, 4, !dbg !1166
  %41 = and i32 %and71, 1, !dbg !1166
  %add73 = or i32 %add70, %41, !dbg !1167
  %42 = load volatile i32, i32* %jj, align 4, !dbg !1168
  %arrayidx76 = getelementptr inbounds [16 x [4 x [9 x i32]]], [16 x [4 x [9 x i32]]]* @ndes_cyfun.is, i32 0, i32 %add73, i32 %add63, i32 %42, !dbg !1169
  %43 = load volatile i32, i32* %arrayidx76, align 4, !dbg !1169
  %arrayidx78 = getelementptr inbounds [16 x i8], [16 x i8]* %ibin, i32 0, i32 %43, !dbg !1170
  %44 = load volatile i8, i8* %arrayidx78, align 1, !dbg !1170
  br label %for.inc81, !dbg !1171

for.inc81:                                        ; preds = %for.body56
  %shl77 = shl i32 %itmp.0, 4, !dbg !1172
  %conv79 = zext i8 %44 to i32, !dbg !1170
  %or80 = or i32 %shl77, %conv79, !dbg !1173
  %45 = load volatile i32, i32* %jj, align 4, !dbg !1174
  %dec82 = add nsw i32 %45, -1, !dbg !1174
  store volatile i32 %dec82, i32* %jj, align 4, !dbg !1174
  br label %for.cond53, !dbg !1148, !llvm.loop !1175

for.end83:                                        ; preds = %for.cond53
  store i32 0, i32* %iout, align 4, !dbg !1176
  store volatile i32 32, i32* %j, align 4, !dbg !1177
  br label %for.cond84, !dbg !1178

for.cond84:                                       ; preds = %for.inc89, %for.end83
  %46 = load volatile i32, i32* %j, align 4, !dbg !1179
  %cmp85 = icmp sgt i32 %46, 0, !dbg !1180
  br i1 %cmp85, label %for.body87, label %for.end91, !dbg !1181

for.body87:                                       ; preds = %for.cond84
  %47 = load i32, i32* %iout, align 4, !dbg !1182
  %shl88 = shl i32 %47, 1, !dbg !1183
  store i32 %shl88, i32* %iout, align 4, !dbg !1184
  br label %for.inc89, !dbg !1185

for.inc89:                                        ; preds = %for.body87
  %48 = load volatile i32, i32* %j, align 4, !dbg !1186
  %dec90 = add nsw i32 %48, -1, !dbg !1186
  store volatile i32 %dec90, i32* %j, align 4, !dbg !1186
  br label %for.cond84, !dbg !1181, !llvm.loop !1187

for.end91:                                        ; preds = %for.cond84
  %49 = load volatile i32, i32* %j, align 4, !dbg !1189
  %arrayidx92 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_cyfun.ipp, i32 0, i32 %49, !dbg !1190
  %50 = load volatile i32, i32* %arrayidx92, align 4, !dbg !1190
  %arrayidx93 = getelementptr inbounds [33 x i32], [33 x i32]* @ndes_bit, i32 0, i32 %50, !dbg !1191
  %51 = load i32, i32* %arrayidx93, align 4, !dbg !1191
  %and94 = and i32 %51, %itmp.0, !dbg !1192
  %tobool95.not = icmp ne i32 %and94, 0, !dbg !1191
  %cond96 = zext i1 %tobool95.not to i32, !dbg !1191
  %52 = load i32, i32* %iout, align 4, !dbg !1193
  %or97 = or i32 %52, %cond96, !dbg !1193
  store i32 %or97, i32* %iout, align 4, !dbg !1193
  ret void, !dbg !1194
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes_return() #0 !dbg !1195 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 1), align 4, !dbg !1196
  %1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_icd, i32 0, i32 0), align 4, !dbg !1197
  %add = add i32 %0, %1, !dbg !1198
  %cmp = icmp ne i32 %add, 8390656, !dbg !1199
  %conv = zext i1 %cmp to i32, !dbg !1199
  ret i32 %conv, !dbg !1200
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @ndes_main() #0 !dbg !1201 {
entry:
  %0 = load i32, i32* @ndes_isw, align 4, !dbg !1202
  %.unpack = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 0), align 4, !dbg !1203
  %1 = insertvalue [2 x i32] undef, i32 %.unpack, 0, !dbg !1203
  %.unpack1 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_inp, i32 0, i32 1), align 4, !dbg !1203
  %2 = insertvalue [2 x i32] %1, i32 %.unpack1, 1, !dbg !1203
  %.unpack2 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 0), align 4, !dbg !1203
  %3 = insertvalue [2 x i32] undef, i32 %.unpack2, 0, !dbg !1203
  %.unpack3 = load i32, i32* getelementptr inbounds (%struct.DATA, %struct.DATA* @ndes_key, i32 0, i32 1), align 4, !dbg !1203
  %4 = insertvalue [2 x i32] %3, i32 %.unpack3, 1, !dbg !1203
  call arm_aapcs_vfpcc void @ndes_des([2 x i32] %2, [2 x i32] %4, i32* noundef nonnull @ndes_newkey, i32 noundef %0, %struct.DATA* noundef nonnull @ndes_out) #5, !dbg !1203
  ret void, !dbg !1204
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @ndes() #0 !dbg !1205 {
entry:
  call arm_aapcs_vfpcc void @ndes_init() #5, !dbg !1206
  call arm_aapcs_vfpcc void @ndes_main() #5, !dbg !1207
  %call = call arm_aapcs_vfpcc i32 @ndes_return() #5, !dbg !1208
  ret i32 %call, !dbg !1209
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_initSeed() #0 !dbg !1210 {
entry:
  store volatile i32 0, i32* @prime_seed, align 4, !dbg !1212
  ret void, !dbg !1213
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @prime_randomInteger() #0 !dbg !1214 {
entry:
  %0 = load volatile i32, i32* @prime_seed, align 4, !dbg !1215
  %mul = mul nsw i32 %0, 133, !dbg !1216
  %add = add nsw i32 %mul, 81, !dbg !1217
  %rem = srem i32 %add, 8095, !dbg !1218
  store volatile i32 %rem, i32* @prime_seed, align 4, !dbg !1219
  %1 = load volatile i32, i32* @prime_seed, align 4, !dbg !1220
  ret i32 %1, !dbg !1221
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_init() #0 !dbg !1222 {
entry:
  call arm_aapcs_vfpcc void @prime_initSeed() #5, !dbg !1223
  %call = call arm_aapcs_vfpcc i32 @prime_randomInteger() #5, !dbg !1224
  store i32 %call, i32* @prime_x, align 4, !dbg !1225
  %call1 = call arm_aapcs_vfpcc i32 @prime_randomInteger() #5, !dbg !1226
  store i32 %call1, i32* @prime_y, align 4, !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @prime_return() #0 !dbg !1229 {
entry:
  %0 = load i32, i32* @prime_result, align 4, !dbg !1230
  ret i32 %0, !dbg !1231
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef %n, i32 noundef %m) #0 !dbg !1232 {
entry:
  %rem = urem i32 %m, %n, !dbg !1233
  %cmp = icmp eq i32 %rem, 0, !dbg !1234
  %conv1 = zext i1 %cmp to i8, !dbg !1235
  ret i8 %conv1, !dbg !1236
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_even(i32 noundef %n) #0 !dbg !1237 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef 2, i32 noundef %n) #5, !dbg !1238
  ret i8 %call, !dbg !1239
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %n) #0 !dbg !1240 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_even(i32 noundef %n) #5, !dbg !1241
  %tobool.not = icmp eq i8 %call, 0, !dbg !1241
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1241

if.then:                                          ; preds = %entry
  %cmp = icmp eq i32 %n, 2, !dbg !1242
  br label %return, !dbg !1243

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !1244

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 3, %if.end ], [ %add, %for.inc ], !dbg !1245
  %mul = mul i32 %i.0, %i.0, !dbg !1246
  %cmp2.not = icmp ugt i32 %mul, %n, !dbg !1247
  br i1 %cmp2.not, label %for.end, label %for.body, !dbg !1248

for.body:                                         ; preds = %for.cond
  %call4 = call arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef %i.0, i32 noundef %n) #5, !dbg !1249
  %tobool5.not = icmp eq i8 %call4, 0, !dbg !1249
  br i1 %tobool5.not, label %if.end7, label %if.then6, !dbg !1249

if.then6:                                         ; preds = %for.body
  br label %return, !dbg !1250

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !1251

for.inc:                                          ; preds = %if.end7
  %add = add i32 %i.0, 2, !dbg !1252
  br label %for.cond, !dbg !1248, !llvm.loop !1253

for.end:                                          ; preds = %for.cond
  %cmp8 = icmp ugt i32 %n, 1, !dbg !1254
  br label %return, !dbg !1255

return:                                           ; preds = %for.end, %if.then6, %if.then
  %retval.0.shrunk = phi i1 [ %cmp, %if.then ], [ false, %if.then6 ], [ %cmp8, %for.end ]
  %retval.0 = zext i1 %retval.0.shrunk to i8, !dbg !1245
  ret i8 %retval.0, !dbg !1256
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_swap(i32* noundef %a, i32* noundef %b) #0 !dbg !1257 {
entry:
  %0 = load i32, i32* %a, align 4, !dbg !1258
  %1 = load i32, i32* %b, align 4, !dbg !1259
  store i32 %1, i32* %a, align 4, !dbg !1260
  store i32 %0, i32* %b, align 4, !dbg !1261
  ret void, !dbg !1262
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_main() #0 !dbg !1263 {
entry:
  call arm_aapcs_vfpcc void @prime_swap(i32* noundef nonnull @prime_x, i32* noundef nonnull @prime_y) #5, !dbg !1264
  %0 = load i32, i32* @prime_x, align 4, !dbg !1265
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %0) #5, !dbg !1266
  %tobool.not = icmp eq i8 %call, 0, !dbg !1266
  br i1 %tobool.not, label %land.rhs, label %land.end, !dbg !1267

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* @prime_y, align 4, !dbg !1268
  %call1 = call arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %1) #5, !dbg !1269
  %tobool2.not = icmp ne i8 %call1, 0, !dbg !1270
  %phi.cast = zext i1 %tobool2.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 1, %entry ], [ %phi.cast, %land.rhs ]
  store i32 %2, i32* @prime_result, align 4, !dbg !1271
  ret void, !dbg !1272
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime(i8* noundef %0) #0 !dbg !1273 {
entry:
  call arm_aapcs_vfpcc void @prime_init() #5, !dbg !1274
  call arm_aapcs_vfpcc void @prime_main() #5, !dbg !1275
  %call = call arm_aapcs_vfpcc i32 @prime_return() #5, !dbg !1276
  ret void, !dbg !1277
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_init() #0 !dbg !1278 {
entry:
  store float 0.000000e+00, float* @rad2deg_X, align 4, !dbg !1280
  store float 0.000000e+00, float* @rad2deg_Y, align 4, !dbg !1281
  ret void, !dbg !1282
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @rad2deg_return() #0 !dbg !1283 {
entry:
  %0 = load float, float* @rad2deg_Y, align 4, !dbg !1284
  %conv = fptosi float %0 to i32, !dbg !1284
  %cmp = icmp eq i32 %conv, 64620, !dbg !1285
  br i1 %cmp, label %if.then, label %if.else, !dbg !1286

if.then:                                          ; preds = %entry
  br label %return, !dbg !1287

if.else:                                          ; preds = %entry
  br label %return, !dbg !1288

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !1289
  ret i32 %retval.0, !dbg !1290
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_main() #0 !dbg !1291 {
entry:
  br label %for.cond, !dbg !1292

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi float [ 0.000000e+00, %entry ], [ %add1, %for.inc ], !dbg !1293
  store float %storemerge, float* @rad2deg_X, align 4, !dbg !1293
  %cmp = fcmp ugt float %storemerge, 0x40191EB8A0000000, !dbg !1294
  br i1 %cmp, label %for.end, label %for.body, !dbg !1295

for.body:                                         ; preds = %for.cond
  %0 = load float, float* @rad2deg_X, align 4, !dbg !1296
  %mul = fmul float %0, 1.800000e+02, !dbg !1296
  %div = fdiv float %mul, 0x40091EB860000000, !dbg !1296
  %1 = load float, float* @rad2deg_Y, align 4, !dbg !1297
  %add = fadd float %1, %div, !dbg !1297
  store float %add, float* @rad2deg_Y, align 4, !dbg !1297
  br label %for.inc, !dbg !1298

for.inc:                                          ; preds = %for.body
  %2 = load float, float* @rad2deg_X, align 4, !dbg !1299
  %add1 = fadd float %2, 0x3F91DCF4E0000000, !dbg !1299
  br label %for.cond, !dbg !1295, !llvm.loop !1300

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1301
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg(i8* noundef %n) #0 !dbg !1302 {
entry:
  call arm_aapcs_vfpcc void @rad2deg_init() #5, !dbg !1303
  call arm_aapcs_vfpcc void @rad2deg_main() #5, !dbg !1304
  %call = call arm_aapcs_vfpcc i32 @rad2deg_return() #5, !dbg !1305
  ret void, !dbg !1306
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #3 !dbg !1307 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1308
  br i1 %cmp, label %if.then, label %if.end, !dbg !1309

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #6, !dbg !1310
  unreachable, !dbg !1310

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !1311
  ret i64 %0, !dbg !1312
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #4 !dbg !1313 {
entry:
  unreachable, !dbg !1314
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #3 !dbg !1315 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1316
  br i1 %cmp, label %if.then, label %if.end, !dbg !1317

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #6, !dbg !1318
  unreachable, !dbg !1318

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !1319
  ret i32 %0, !dbg !1320
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1321 {
entry:
  %add = add i64 %a, %b, !dbg !1322
  %cmp = icmp sgt i64 %b, -1, !dbg !1323
  br i1 %cmp, label %if.then, label %if.else, !dbg !1324

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !1325
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1326

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !1327
  unreachable, !dbg !1327

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1328

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !1329
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1330

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #6, !dbg !1331
  unreachable, !dbg !1331

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !1332
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1333 {
entry:
  %add = add i32 %a, %b, !dbg !1334
  %cmp = icmp sgt i32 %b, -1, !dbg !1335
  br i1 %cmp, label %if.then, label %if.else, !dbg !1336

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !1337
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1338

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !1339
  unreachable, !dbg !1339

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1340

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !1341
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1342

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #6, !dbg !1343
  unreachable, !dbg !1343

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !1344
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1345 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1346
  store i64 %a, i64* %all, align 8, !dbg !1347
  %and = and i32 %b, 32, !dbg !1348
  %tobool.not = icmp eq i32 %and, 0, !dbg !1348
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1349

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !1350
  store i32 0, i32* %low, align 8, !dbg !1351
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !1352
  %0 = load i32, i32* %low2, align 8, !dbg !1352
  %sub = add nsw i32 %b, -32, !dbg !1353
  %shl = shl i32 %0, %sub, !dbg !1354
  %s3 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1355
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !1356
  store i32 %shl, i32* %high, align 4, !dbg !1357
  br label %if.end18, !dbg !1358

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1359
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1360

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1361

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !1362
  %1 = load i32, i32* %low6, align 8, !dbg !1362
  %shl7 = shl i32 %1, %b, !dbg !1363
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !1364
  store i32 %shl7, i32* %low9, align 8, !dbg !1365
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1366
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !1367
  %2 = load i32, i32* %high11, align 4, !dbg !1367
  %shl12 = shl i32 %2, %b, !dbg !1368
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1369
  %3 = load i32, i32* %low14, align 8, !dbg !1369
  %sub15 = sub nsw i32 32, %b, !dbg !1370
  %shr = lshr i32 %3, %sub15, !dbg !1371
  %or = or i32 %shl12, %shr, !dbg !1372
  %s16 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1373
  %high17 = getelementptr inbounds %struct.DATA, %struct.DATA* %s16, i32 0, i32 1, !dbg !1374
  store i32 %or, i32* %high17, align 4, !dbg !1375
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1376
  %4 = load i64, i64* %all19, align 8, !dbg !1376
  br label %return, !dbg !1377

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1378
  ret i64 %retval.0, !dbg !1379
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1380 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1381
  store i64 %a, i64* %all, align 8, !dbg !1382
  %and = and i32 %b, 32, !dbg !1383
  %tobool.not = icmp eq i32 %and, 0, !dbg !1383
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1384

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1385
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1386
  %0 = load i32, i32* %high, align 4, !dbg !1386
  %shr = ashr i32 %0, 31, !dbg !1387
  %s1 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1388
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1389
  store i32 %shr, i32* %high2, align 4, !dbg !1390
  %s3 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1391
  %high4 = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !1392
  %1 = load i32, i32* %high4, align 4, !dbg !1392
  %sub = add nsw i32 %b, -32, !dbg !1393
  %shr5 = ashr i32 %1, %sub, !dbg !1394
  %low = bitcast %union.dwords* %result to i32*, !dbg !1395
  store i32 %shr5, i32* %low, align 8, !dbg !1396
  br label %if.end21, !dbg !1397

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1398
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1399

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !1400

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1401
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !1402
  %2 = load i32, i32* %high9, align 4, !dbg !1402
  %shr10 = ashr i32 %2, %b, !dbg !1403
  %s11 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1404
  %high12 = getelementptr inbounds %struct.DATA, %struct.DATA* %s11, i32 0, i32 1, !dbg !1405
  store i32 %shr10, i32* %high12, align 4, !dbg !1406
  %s13 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1407
  %high14 = getelementptr inbounds %struct.DATA, %struct.DATA* %s13, i32 0, i32 1, !dbg !1408
  %3 = load i32, i32* %high14, align 4, !dbg !1408
  %sub15 = sub nsw i32 32, %b, !dbg !1409
  %shl = shl i32 %3, %sub15, !dbg !1410
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !1411
  %4 = load i32, i32* %low17, align 8, !dbg !1411
  %shr18 = lshr i32 %4, %b, !dbg !1412
  %or = or i32 %shl, %shr18, !dbg !1413
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !1414
  store i32 %or, i32* %low20, align 8, !dbg !1415
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1416
  %5 = load i64, i64* %all22, align 8, !dbg !1416
  br label %return, !dbg !1417

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !1418
  ret i64 %retval.0, !dbg !1419
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #3 !dbg !1420 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1421
  store i64 %a, i64* %all, align 8, !dbg !1422
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1423
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1424
  %0 = load i32, i32* %high, align 4, !dbg !1424
  %cmp = icmp eq i32 %0, 0, !dbg !1425
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1426
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1427
  %1 = load i32, i32* %high2, align 4, !dbg !1427
  %low = bitcast %union.dwords* %x to i32*, !dbg !1428
  %2 = load i32, i32* %low, align 8, !dbg !1428
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !1429
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !1430, !range !1431
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1432
  %add = add nuw nsw i32 %4, %and5, !dbg !1433
  ret i32 %add, !dbg !1434
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #3 !dbg !1435 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1436
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1437
  %sub = sub nuw nsw i32 16, %shl, !dbg !1438
  %shr = lshr i32 %a, %sub, !dbg !1439
  %and1 = and i32 %shr, 65280, !dbg !1440
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1441
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1442
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1443
  %shr6 = lshr i32 %shr, %sub5, !dbg !1444
  %add = or i32 %shl, %shl4, !dbg !1445
  %and7 = and i32 %shr6, 240, !dbg !1446
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1447
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1448
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1449
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1450
  %add13 = or i32 %add, %shl10, !dbg !1451
  %and14 = and i32 %shr12, 12, !dbg !1452
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1453
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1454
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1455
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1456
  %add20 = or i32 %add13, %shl17, !dbg !1457
  %sub21 = sub i32 2, %shr19, !dbg !1458
  %and22 = lshr i32 %shr19, 1, !dbg !1459
  %0 = or i32 %and22, -2, !dbg !1459
  %.neg = add nsw i32 %0, 1, !dbg !1459
  %and26 = and i32 %sub21, %.neg, !dbg !1460
  %add27 = add i32 %add20, %and26, !dbg !1461
  ret i32 %add27, !dbg !1462
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !1463 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1464
  store i64 %a, i64* %all, align 8, !dbg !1465
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1466
  store i64 %b, i64* %all1, align 8, !dbg !1467
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1468
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1469
  %0 = load i32, i32* %high, align 4, !dbg !1469
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1470
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1471
  %1 = load i32, i32* %high3, align 4, !dbg !1471
  %cmp = icmp slt i32 %0, %1, !dbg !1472
  br i1 %cmp, label %if.then, label %if.end, !dbg !1473

if.then:                                          ; preds = %entry
  br label %return, !dbg !1474

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1475
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1476
  %2 = load i32, i32* %high5, align 4, !dbg !1476
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1477
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1478
  %3 = load i32, i32* %high7, align 4, !dbg !1478
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1479
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1480

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1481

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1482
  %4 = load i32, i32* %low, align 8, !dbg !1482
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1483
  %5 = load i32, i32* %low13, align 8, !dbg !1483
  %cmp14 = icmp ult i32 %4, %5, !dbg !1484
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1485

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1486

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1487
  %6 = load i32, i32* %low18, align 8, !dbg !1487
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1488
  %7 = load i32, i32* %low20, align 8, !dbg !1488
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1489
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1490

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1491

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1492

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1493
  ret i32 %retval.0, !dbg !1494
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !1495 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !1496
  %sub = add nsw i32 %call, -1, !dbg !1497
  ret i32 %sub, !dbg !1498
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #3 !dbg !1499 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1500
  store i64 %a, i64* %all, align 8, !dbg !1501
  %low = bitcast %union.dwords* %x to i32*, !dbg !1502
  %0 = load i32, i32* %low, align 8, !dbg !1502
  %cmp = icmp eq i32 %0, 0, !dbg !1503
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1504
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1505
  %1 = load i32, i32* %high, align 4, !dbg !1505
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1506
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1507, !range !1431
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1508
  %add = add nuw nsw i32 %3, %and5, !dbg !1509
  ret i32 %add, !dbg !1510
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #3 !dbg !1511 {
entry:
  %and = and i32 %a, 65535, !dbg !1512
  %cmp = icmp eq i32 %and, 0, !dbg !1513
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1514
  %shr = lshr i32 %a, %shl, !dbg !1515
  %and1 = and i32 %shr, 255, !dbg !1516
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1517
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1518
  %shr5 = lshr i32 %shr, %shl4, !dbg !1519
  %add = or i32 %shl, %shl4, !dbg !1520
  %and6 = and i32 %shr5, 15, !dbg !1521
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1522
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1523
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1524
  %add11 = or i32 %add, %shl9, !dbg !1525
  %and12 = and i32 %shr10, 3, !dbg !1526
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1527
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1528
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1529
  %add18 = or i32 %add11, %shl15, !dbg !1530
  %and17 = lshr i32 %shr16, 1, !dbg !1531
  %shr19 = and i32 %and17, 1, !dbg !1531
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1532
  %0 = or i32 %shr16, -2, !dbg !1533
  %.neg = add nsw i32 %0, 1, !dbg !1533
  %and24 = and i32 %sub, %.neg, !dbg !1534
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1535
  ret i32 %add25, !dbg !1536
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !1537 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1538
  %shr1 = ashr i64 %b, 63, !dbg !1539
  %xor = xor i64 %shr, %a, !dbg !1540
  %sub = sub nsw i64 %xor, %shr, !dbg !1541
  %xor2 = xor i64 %shr1, %b, !dbg !1542
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1543
  %xor4 = xor i64 %shr, %shr1, !dbg !1544
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #5, !dbg !1545
  %xor5 = xor i64 %call, %xor4, !dbg !1546
  %sub6 = sub i64 %xor5, %xor4, !dbg !1547
  ret i64 %sub6, !dbg !1548
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1549 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1550
  store i64 %a, i64* %all, align 8, !dbg !1551
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1552
  store i64 %b, i64* %all1, align 8, !dbg !1553
  %s = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1554
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1555
  %0 = load i32, i32* %high, align 4, !dbg !1555
  %cmp = icmp eq i32 %0, 0, !dbg !1556
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1557

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1558
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1559
  %1 = load i32, i32* %high3, align 4, !dbg !1559
  %cmp4 = icmp eq i32 %1, 0, !dbg !1560
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1561

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1562
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1562

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1563
  %2 = load i32, i32* %low, align 8, !dbg !1563
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1564
  %3 = load i32, i32* %low9, align 8, !dbg !1564
  %rem10 = urem i32 %2, %3, !dbg !1565
  %conv = zext i32 %rem10 to i64, !dbg !1566
  store i64 %conv, i64* %rem, align 8, !dbg !1567
  br label %if.end, !dbg !1568

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1569
  %4 = load i32, i32* %low12, align 8, !dbg !1569
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1570
  %5 = load i32, i32* %low14, align 8, !dbg !1570
  %div = udiv i32 %4, %5, !dbg !1571
  %conv15 = zext i32 %div to i64, !dbg !1572
  br label %return, !dbg !1573

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1574
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1574

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1575
  %6 = load i32, i32* %low20, align 8, !dbg !1575
  %conv21 = zext i32 %6 to i64, !dbg !1576
  store i64 %conv21, i64* %rem, align 8, !dbg !1577
  br label %if.end22, !dbg !1578

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1579

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1580
  %7 = load i32, i32* %low25, align 8, !dbg !1580
  %cmp26 = icmp eq i32 %7, 0, !dbg !1581
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1582

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1583
  %high30 = getelementptr inbounds %struct.DATA, %struct.DATA* %s29, i32 0, i32 1, !dbg !1584
  %8 = load i32, i32* %high30, align 4, !dbg !1584
  %cmp31 = icmp eq i32 %8, 0, !dbg !1585
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1586

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1587
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1587

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1588
  %high37 = getelementptr inbounds %struct.DATA, %struct.DATA* %s36, i32 0, i32 1, !dbg !1589
  %9 = load i32, i32* %high37, align 4, !dbg !1589
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1590
  %10 = load i32, i32* %low39, align 8, !dbg !1590
  %rem40 = urem i32 %9, %10, !dbg !1591
  %conv41 = zext i32 %rem40 to i64, !dbg !1592
  store i64 %conv41, i64* %rem, align 8, !dbg !1593
  br label %if.end42, !dbg !1594

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1595
  %high44 = getelementptr inbounds %struct.DATA, %struct.DATA* %s43, i32 0, i32 1, !dbg !1596
  %11 = load i32, i32* %high44, align 4, !dbg !1596
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1597
  %12 = load i32, i32* %low46, align 8, !dbg !1597
  %div47 = udiv i32 %11, %12, !dbg !1598
  %conv48 = zext i32 %div47 to i64, !dbg !1599
  br label %return, !dbg !1600

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1601
  %13 = load i32, i32* %low51, align 8, !dbg !1601
  %cmp52 = icmp eq i32 %13, 0, !dbg !1602
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1603

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1604
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1604

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1605
  %high58 = getelementptr inbounds %struct.DATA, %struct.DATA* %s57, i32 0, i32 1, !dbg !1606
  %14 = load i32, i32* %high58, align 4, !dbg !1606
  %s59 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1607
  %high60 = getelementptr inbounds %struct.DATA, %struct.DATA* %s59, i32 0, i32 1, !dbg !1608
  %15 = load i32, i32* %high60, align 4, !dbg !1608
  %rem61 = urem i32 %14, %15, !dbg !1609
  %s62 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1610
  %high63 = getelementptr inbounds %struct.DATA, %struct.DATA* %s62, i32 0, i32 1, !dbg !1611
  store i32 %rem61, i32* %high63, align 4, !dbg !1612
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1613
  store i32 0, i32* %low65, align 8, !dbg !1614
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1615
  %16 = load i64, i64* %all66, align 8, !dbg !1615
  store i64 %16, i64* %rem, align 8, !dbg !1616
  br label %if.end67, !dbg !1617

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1618
  %high69 = getelementptr inbounds %struct.DATA, %struct.DATA* %s68, i32 0, i32 1, !dbg !1619
  %17 = load i32, i32* %high69, align 4, !dbg !1619
  %s70 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1620
  %high71 = getelementptr inbounds %struct.DATA, %struct.DATA* %s70, i32 0, i32 1, !dbg !1621
  %18 = load i32, i32* %high71, align 4, !dbg !1621
  %div72 = udiv i32 %17, %18, !dbg !1622
  %conv73 = zext i32 %div72 to i64, !dbg !1623
  br label %return, !dbg !1624

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1625
  %high76 = getelementptr inbounds %struct.DATA, %struct.DATA* %s75, i32 0, i32 1, !dbg !1626
  %19 = load i32, i32* %high76, align 4, !dbg !1626
  %s77 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1627
  %high78 = getelementptr inbounds %struct.DATA, %struct.DATA* %s77, i32 0, i32 1, !dbg !1628
  %20 = load i32, i32* %high78, align 4, !dbg !1628
  %sub = add i32 %20, -1, !dbg !1629
  %and = and i32 %19, %sub, !dbg !1630
  %cmp79 = icmp eq i32 %and, 0, !dbg !1631
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1632

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1633
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1633

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1634
  %21 = load i32, i32* %low85, align 8, !dbg !1634
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1635
  store i32 %21, i32* %low87, align 8, !dbg !1636
  %s88 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1637
  %high89 = getelementptr inbounds %struct.DATA, %struct.DATA* %s88, i32 0, i32 1, !dbg !1638
  %22 = load i32, i32* %high89, align 4, !dbg !1638
  %s90 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1639
  %high91 = getelementptr inbounds %struct.DATA, %struct.DATA* %s90, i32 0, i32 1, !dbg !1640
  %23 = load i32, i32* %high91, align 4, !dbg !1640
  %sub92 = add i32 %23, -1, !dbg !1641
  %and93 = and i32 %22, %sub92, !dbg !1642
  %s94 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1643
  %high95 = getelementptr inbounds %struct.DATA, %struct.DATA* %s94, i32 0, i32 1, !dbg !1644
  store i32 %and93, i32* %high95, align 4, !dbg !1645
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1646
  %24 = load i64, i64* %all96, align 8, !dbg !1646
  store i64 %24, i64* %rem, align 8, !dbg !1647
  br label %if.end97, !dbg !1648

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1649
  %high99 = getelementptr inbounds %struct.DATA, %struct.DATA* %s98, i32 0, i32 1, !dbg !1650
  %25 = load i32, i32* %high99, align 4, !dbg !1650
  %s100 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1651
  %high101 = getelementptr inbounds %struct.DATA, %struct.DATA* %s100, i32 0, i32 1, !dbg !1652
  %26 = load i32, i32* %high101, align 4, !dbg !1652
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1653, !range !1431
  %shr = lshr i32 %25, %27, !dbg !1654
  %conv102 = zext i32 %shr to i64, !dbg !1655
  br label %return, !dbg !1656

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1657
  %high105 = getelementptr inbounds %struct.DATA, %struct.DATA* %s104, i32 0, i32 1, !dbg !1658
  %28 = load i32, i32* %high105, align 4, !dbg !1658
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1659, !range !1431
  %s106 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1660
  %high107 = getelementptr inbounds %struct.DATA, %struct.DATA* %s106, i32 0, i32 1, !dbg !1661
  %30 = load i32, i32* %high107, align 4, !dbg !1661
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1662, !range !1431
  %sub108 = sub nsw i32 %29, %31, !dbg !1663
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1664
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1665

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1666
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1666

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1667
  %32 = load i64, i64* %all114, align 8, !dbg !1667
  store i64 %32, i64* %rem, align 8, !dbg !1668
  br label %if.end115, !dbg !1669

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1670

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1671
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1672
  store i32 0, i32* %low118, align 8, !dbg !1673
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1674
  %33 = load i32, i32* %low120, align 8, !dbg !1674
  %sub121 = sub nsw i32 31, %sub108, !dbg !1675
  %shl = shl i32 %33, %sub121, !dbg !1676
  %s122 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1677
  %high123 = getelementptr inbounds %struct.DATA, %struct.DATA* %s122, i32 0, i32 1, !dbg !1678
  store i32 %shl, i32* %high123, align 4, !dbg !1679
  %s124 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1680
  %high125 = getelementptr inbounds %struct.DATA, %struct.DATA* %s124, i32 0, i32 1, !dbg !1681
  %34 = load i32, i32* %high125, align 4, !dbg !1681
  %shr126 = lshr i32 %34, %inc, !dbg !1682
  %s127 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1683
  %high128 = getelementptr inbounds %struct.DATA, %struct.DATA* %s127, i32 0, i32 1, !dbg !1684
  store i32 %shr126, i32* %high128, align 4, !dbg !1685
  %s129 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1686
  %high130 = getelementptr inbounds %struct.DATA, %struct.DATA* %s129, i32 0, i32 1, !dbg !1687
  %35 = load i32, i32* %high130, align 4, !dbg !1687
  %sub131 = sub nsw i32 31, %sub108, !dbg !1688
  %shl132 = shl i32 %35, %sub131, !dbg !1689
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1690
  %36 = load i32, i32* %low134, align 8, !dbg !1690
  %shr135 = lshr i32 %36, %inc, !dbg !1691
  %or = or i32 %shl132, %shr135, !dbg !1692
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1693
  store i32 %or, i32* %low137, align 8, !dbg !1694
  br label %if.end317, !dbg !1695

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1696
  %high139 = getelementptr inbounds %struct.DATA, %struct.DATA* %s138, i32 0, i32 1, !dbg !1697
  %37 = load i32, i32* %high139, align 4, !dbg !1697
  %cmp140 = icmp eq i32 %37, 0, !dbg !1698
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1699

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1700
  %38 = load i32, i32* %low144, align 8, !dbg !1700
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1701, !range !1431
  %cmp149 = icmp ult i32 %39, 2, !dbg !1701
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1702

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1703
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1703

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1704
  %40 = load i32, i32* %low155, align 8, !dbg !1704
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1705
  %41 = load i32, i32* %low157, align 8, !dbg !1705
  %sub158 = add i32 %41, -1, !dbg !1706
  %and159 = and i32 %40, %sub158, !dbg !1707
  %conv160 = zext i32 %and159 to i64, !dbg !1708
  store i64 %conv160, i64* %rem, align 8, !dbg !1709
  br label %if.end161, !dbg !1710

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1711
  %42 = load i32, i32* %low163, align 8, !dbg !1711
  %cmp164 = icmp eq i32 %42, 1, !dbg !1712
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1713

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1714
  %43 = load i64, i64* %all167, align 8, !dbg !1714
  br label %return, !dbg !1715

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1716
  %44 = load i32, i32* %low170, align 8, !dbg !1716
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1717, !range !1431
  %s171 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1718
  %high172 = getelementptr inbounds %struct.DATA, %struct.DATA* %s171, i32 0, i32 1, !dbg !1719
  %46 = load i32, i32* %high172, align 4, !dbg !1719
  %shr173 = lshr i32 %46, %45, !dbg !1720
  %s174 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1721
  %high175 = getelementptr inbounds %struct.DATA, %struct.DATA* %s174, i32 0, i32 1, !dbg !1722
  store i32 %shr173, i32* %high175, align 4, !dbg !1723
  %s176 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1724
  %high177 = getelementptr inbounds %struct.DATA, %struct.DATA* %s176, i32 0, i32 1, !dbg !1725
  %47 = load i32, i32* %high177, align 4, !dbg !1725
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1726
  %shl179 = shl i32 %47, %sub178, !dbg !1727
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1728
  %48 = load i32, i32* %low181, align 8, !dbg !1728
  %shr182 = lshr i32 %48, %45, !dbg !1729
  %or183 = or i32 %shl179, %shr182, !dbg !1730
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1731
  store i32 %or183, i32* %low185, align 8, !dbg !1732
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1733
  %49 = load i64, i64* %all186, align 8, !dbg !1733
  br label %return, !dbg !1734

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1735
  %50 = load i32, i32* %low189, align 8, !dbg !1735
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1736, !range !1431
  %add = add nuw nsw i32 %51, 33, !dbg !1737
  %s190 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1738
  %high191 = getelementptr inbounds %struct.DATA, %struct.DATA* %s190, i32 0, i32 1, !dbg !1739
  %52 = load i32, i32* %high191, align 4, !dbg !1739
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1740, !range !1431
  %sub192 = sub nsw i32 %add, %53, !dbg !1741
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1742
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1743

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1744
  store i32 0, i32* %low197, align 8, !dbg !1745
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1746
  %54 = load i32, i32* %low199, align 8, !dbg !1746
  %s200 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1747
  %high201 = getelementptr inbounds %struct.DATA, %struct.DATA* %s200, i32 0, i32 1, !dbg !1748
  store i32 %54, i32* %high201, align 4, !dbg !1749
  %s202 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1750
  %high203 = getelementptr inbounds %struct.DATA, %struct.DATA* %s202, i32 0, i32 1, !dbg !1751
  store i32 0, i32* %high203, align 4, !dbg !1752
  %s204 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1753
  %high205 = getelementptr inbounds %struct.DATA, %struct.DATA* %s204, i32 0, i32 1, !dbg !1754
  %55 = load i32, i32* %high205, align 4, !dbg !1754
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1755
  store i32 %55, i32* %low207, align 8, !dbg !1756
  br label %if.end262, !dbg !1757

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1758
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1759

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1760
  store i32 0, i32* %low213, align 8, !dbg !1761
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1762
  %56 = load i32, i32* %low215, align 8, !dbg !1762
  %sub216 = sub nsw i32 32, %sub192, !dbg !1763
  %shl217 = shl i32 %56, %sub216, !dbg !1764
  %s218 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1765
  %high219 = getelementptr inbounds %struct.DATA, %struct.DATA* %s218, i32 0, i32 1, !dbg !1766
  store i32 %shl217, i32* %high219, align 4, !dbg !1767
  %s220 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1768
  %high221 = getelementptr inbounds %struct.DATA, %struct.DATA* %s220, i32 0, i32 1, !dbg !1769
  %57 = load i32, i32* %high221, align 4, !dbg !1769
  %shr222 = lshr i32 %57, %sub192, !dbg !1770
  %s223 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1771
  %high224 = getelementptr inbounds %struct.DATA, %struct.DATA* %s223, i32 0, i32 1, !dbg !1772
  store i32 %shr222, i32* %high224, align 4, !dbg !1773
  %s225 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1774
  %high226 = getelementptr inbounds %struct.DATA, %struct.DATA* %s225, i32 0, i32 1, !dbg !1775
  %58 = load i32, i32* %high226, align 4, !dbg !1775
  %sub227 = sub nsw i32 32, %sub192, !dbg !1776
  %shl228 = shl i32 %58, %sub227, !dbg !1777
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1778
  %59 = load i32, i32* %low230, align 8, !dbg !1778
  %shr231 = lshr i32 %59, %sub192, !dbg !1779
  %or232 = or i32 %shl228, %shr231, !dbg !1780
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1781
  store i32 %or232, i32* %low234, align 8, !dbg !1782
  br label %if.end261, !dbg !1783

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1784
  %60 = load i32, i32* %low237, align 8, !dbg !1784
  %sub238 = sub nsw i32 64, %sub192, !dbg !1785
  %shl239 = shl i32 %60, %sub238, !dbg !1786
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1787
  store i32 %shl239, i32* %low241, align 8, !dbg !1788
  %s242 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1789
  %high243 = getelementptr inbounds %struct.DATA, %struct.DATA* %s242, i32 0, i32 1, !dbg !1790
  %61 = load i32, i32* %high243, align 4, !dbg !1790
  %sub244 = sub nsw i32 64, %sub192, !dbg !1791
  %shl245 = shl i32 %61, %sub244, !dbg !1792
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1793
  %62 = load i32, i32* %low247, align 8, !dbg !1793
  %sub248 = add nsw i32 %sub192, -32, !dbg !1794
  %shr249 = lshr i32 %62, %sub248, !dbg !1795
  %or250 = or i32 %shl245, %shr249, !dbg !1796
  %s251 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1797
  %high252 = getelementptr inbounds %struct.DATA, %struct.DATA* %s251, i32 0, i32 1, !dbg !1798
  store i32 %or250, i32* %high252, align 4, !dbg !1799
  %s253 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1800
  %high254 = getelementptr inbounds %struct.DATA, %struct.DATA* %s253, i32 0, i32 1, !dbg !1801
  store i32 0, i32* %high254, align 4, !dbg !1802
  %s255 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1803
  %high256 = getelementptr inbounds %struct.DATA, %struct.DATA* %s255, i32 0, i32 1, !dbg !1804
  %63 = load i32, i32* %high256, align 4, !dbg !1804
  %sub257 = add nsw i32 %sub192, -32, !dbg !1805
  %shr258 = lshr i32 %63, %sub257, !dbg !1806
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1807
  store i32 %shr258, i32* %low260, align 8, !dbg !1808
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1809

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1810
  %high265 = getelementptr inbounds %struct.DATA, %struct.DATA* %s264, i32 0, i32 1, !dbg !1811
  %64 = load i32, i32* %high265, align 4, !dbg !1811
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1812, !range !1431
  %s266 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1813
  %high267 = getelementptr inbounds %struct.DATA, %struct.DATA* %s266, i32 0, i32 1, !dbg !1814
  %66 = load i32, i32* %high267, align 4, !dbg !1814
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1815, !range !1431
  %sub268 = sub nsw i32 %65, %67, !dbg !1816
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1817
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1818

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1819
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1819

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1820
  %68 = load i64, i64* %all274, align 8, !dbg !1820
  store i64 %68, i64* %rem, align 8, !dbg !1821
  br label %if.end275, !dbg !1822

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1823

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1824
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1825
  store i32 0, i32* %low279, align 8, !dbg !1826
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1827
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1828

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1829
  %69 = load i32, i32* %low284, align 8, !dbg !1829
  %s285 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1830
  %high286 = getelementptr inbounds %struct.DATA, %struct.DATA* %s285, i32 0, i32 1, !dbg !1831
  store i32 %69, i32* %high286, align 4, !dbg !1832
  %s287 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1833
  %high288 = getelementptr inbounds %struct.DATA, %struct.DATA* %s287, i32 0, i32 1, !dbg !1834
  store i32 0, i32* %high288, align 4, !dbg !1835
  %s289 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1836
  %high290 = getelementptr inbounds %struct.DATA, %struct.DATA* %s289, i32 0, i32 1, !dbg !1837
  %70 = load i32, i32* %high290, align 4, !dbg !1837
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1838
  store i32 %70, i32* %low292, align 8, !dbg !1839
  br label %if.end315, !dbg !1840

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1841
  %71 = load i32, i32* %low295, align 8, !dbg !1841
  %sub296 = sub nsw i32 31, %sub268, !dbg !1842
  %shl297 = shl i32 %71, %sub296, !dbg !1843
  %s298 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1844
  %high299 = getelementptr inbounds %struct.DATA, %struct.DATA* %s298, i32 0, i32 1, !dbg !1845
  store i32 %shl297, i32* %high299, align 4, !dbg !1846
  %s300 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1847
  %high301 = getelementptr inbounds %struct.DATA, %struct.DATA* %s300, i32 0, i32 1, !dbg !1848
  %72 = load i32, i32* %high301, align 4, !dbg !1848
  %shr302 = lshr i32 %72, %inc277, !dbg !1849
  %s303 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1850
  %high304 = getelementptr inbounds %struct.DATA, %struct.DATA* %s303, i32 0, i32 1, !dbg !1851
  store i32 %shr302, i32* %high304, align 4, !dbg !1852
  %s305 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1853
  %high306 = getelementptr inbounds %struct.DATA, %struct.DATA* %s305, i32 0, i32 1, !dbg !1854
  %73 = load i32, i32* %high306, align 4, !dbg !1854
  %sub307 = sub nsw i32 31, %sub268, !dbg !1855
  %shl308 = shl i32 %73, %sub307, !dbg !1856
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1857
  %74 = load i32, i32* %low310, align 8, !dbg !1857
  %shr311 = lshr i32 %74, %inc277, !dbg !1858
  %or312 = or i32 %shl308, %shr311, !dbg !1859
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1860
  store i32 %or312, i32* %low314, align 8, !dbg !1861
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1862
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1862
  br label %for.cond, !dbg !1863

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1862
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1862
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1864
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1863

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1865
  %high321 = getelementptr inbounds %struct.DATA, %struct.DATA* %s320, i32 0, i32 1, !dbg !1866
  %75 = load i32, i32* %high321, align 4, !dbg !1866
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1867
  %76 = load i32, i32* %low324, align 8, !dbg !1867
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1868
  %s327 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1869
  %high328 = getelementptr inbounds %struct.DATA, %struct.DATA* %s327, i32 0, i32 1, !dbg !1870
  store i32 %or326, i32* %high328, align 4, !dbg !1871
  %s332 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1872
  %high333 = getelementptr inbounds %struct.DATA, %struct.DATA* %s332, i32 0, i32 1, !dbg !1873
  %77 = load i32, i32* %high333, align 4, !dbg !1873
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1874
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1875
  store i32 %or335, i32* %low337, align 8, !dbg !1876
  %s338 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1877
  %high339 = getelementptr inbounds %struct.DATA, %struct.DATA* %s338, i32 0, i32 1, !dbg !1878
  %78 = load i32, i32* %high339, align 4, !dbg !1878
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1879
  %79 = load i32, i32* %low342, align 8, !dbg !1879
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1880
  %s345 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1881
  %high346 = getelementptr inbounds %struct.DATA, %struct.DATA* %s345, i32 0, i32 1, !dbg !1882
  store i32 %or344, i32* %high346, align 4, !dbg !1883
  %shl349 = shl i32 %79, 1, !dbg !1884
  %or350 = or i32 %shl349, %carry.0, !dbg !1885
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1886
  store i32 %or350, i32* %low352, align 8, !dbg !1887
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1888
  %80 = load i64, i64* %all354, align 8, !dbg !1888
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1889
  %81 = load i64, i64* %all355, align 8, !dbg !1889
  %82 = xor i64 %81, -1, !dbg !1890
  %sub357 = add i64 %80, %82, !dbg !1890
  %isneg = icmp slt i64 %sub357, 0, !dbg !1891
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1891
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1892
  %sub364 = sub i64 %81, %and362, !dbg !1893
  store i64 %sub364, i64* %all363, align 8, !dbg !1893
  br label %for.inc, !dbg !1894

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1895
  %conv360 = trunc i64 %and359 to i32, !dbg !1896
  %dec = add i32 %sr.2, -1, !dbg !1897
  br label %for.cond, !dbg !1863, !llvm.loop !1898

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1899
  %83 = load i64, i64* %all365, align 8, !dbg !1899
  %shl366 = shl i64 %83, 1, !dbg !1900
  %conv367 = zext i32 %carry.0 to i64, !dbg !1901
  %or368 = or i64 %shl366, %conv367, !dbg !1902
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1903
  store i64 %or368, i64* %all369, align 8, !dbg !1904
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1905
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1905

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1906
  %84 = load i64, i64* %all372, align 8, !dbg !1906
  store i64 %84, i64* %rem, align 8, !dbg !1907
  br label %if.end373, !dbg !1908

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1909
  %85 = load i64, i64* %all374, align 8, !dbg !1909
  br label %return, !dbg !1910

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1862
  ret i64 %retval.0, !dbg !1911
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #3 !dbg !1912 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #5, !dbg !1913
  %mul = mul nsw i64 %call, %b, !dbg !1914
  %sub = sub nsw i64 %a, %mul, !dbg !1915
  store i64 %sub, i64* %rem, align 8, !dbg !1916
  ret i64 %call, !dbg !1917
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !1918 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !1919
  %mul = mul nsw i32 %call, %b, !dbg !1920
  %sub = sub nsw i32 %a, %mul, !dbg !1921
  store i32 %sub, i32* %rem, align 4, !dbg !1922
  ret i32 %call, !dbg !1923
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !1924 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1925
  %shr1 = ashr i32 %b, 31, !dbg !1926
  %xor = xor i32 %shr, %a, !dbg !1927
  %sub = sub nsw i32 %xor, %shr, !dbg !1928
  %xor2 = xor i32 %shr1, %b, !dbg !1929
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1930
  %xor4 = xor i32 %shr, %shr1, !dbg !1931
  %div = udiv i32 %sub, %sub3, !dbg !1932
  %xor5 = xor i32 %div, %xor4, !dbg !1933
  %sub6 = sub i32 %xor5, %xor4, !dbg !1934
  ret i32 %sub6, !dbg !1935
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #3 !dbg !1936 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1937
  store i64 %a, i64* %all, align 8, !dbg !1938
  %low = bitcast %union.dwords* %x to i32*, !dbg !1939
  %0 = load i32, i32* %low, align 8, !dbg !1939
  %cmp = icmp eq i32 %0, 0, !dbg !1940
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1941

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1942
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1943
  %1 = load i32, i32* %high, align 4, !dbg !1943
  %cmp2 = icmp eq i32 %1, 0, !dbg !1944
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1945

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1946

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1947
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1948
  %2 = load i32, i32* %high5, align 4, !dbg !1948
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1949, !range !1431
  %add = add nuw nsw i32 %3, 33, !dbg !1950
  br label %return, !dbg !1951

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1952
  %4 = load i32, i32* %low8, align 8, !dbg !1952
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1953, !range !1431
  %add9 = add nuw nsw i32 %5, 1, !dbg !1954
  br label %return, !dbg !1955

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1956
  ret i32 %retval.0, !dbg !1957
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #3 !dbg !1958 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1959
  br i1 %cmp, label %if.then, label %if.end, !dbg !1960

if.then:                                          ; preds = %entry
  br label %return, !dbg !1961

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1962, !range !1431
  %add = add nuw nsw i32 %0, 1, !dbg !1963
  br label %return, !dbg !1964

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1965
  ret i32 %retval.0, !dbg !1966
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #3 !dbg !1967 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1968
  store i64 %a, i64* %all, align 8, !dbg !1969
  %and = and i32 %b, 32, !dbg !1970
  %tobool.not = icmp eq i32 %and, 0, !dbg !1970
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1971

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1972
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1973
  store i32 0, i32* %high, align 4, !dbg !1974
  %s1 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1975
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1976
  %0 = load i32, i32* %high2, align 4, !dbg !1976
  %sub = add nsw i32 %b, -32, !dbg !1977
  %shr = lshr i32 %0, %sub, !dbg !1978
  %low = bitcast %union.dwords* %result to i32*, !dbg !1979
  store i32 %shr, i32* %low, align 8, !dbg !1980
  br label %if.end18, !dbg !1981

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1982
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1983

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1984

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1985
  %high6 = getelementptr inbounds %struct.DATA, %struct.DATA* %s5, i32 0, i32 1, !dbg !1986
  %1 = load i32, i32* %high6, align 4, !dbg !1986
  %shr7 = lshr i32 %1, %b, !dbg !1987
  %s8 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1988
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !1989
  store i32 %shr7, i32* %high9, align 4, !dbg !1990
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1991
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !1992
  %2 = load i32, i32* %high11, align 4, !dbg !1992
  %sub12 = sub nsw i32 32, %b, !dbg !1993
  %shl = shl i32 %2, %sub12, !dbg !1994
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1995
  %3 = load i32, i32* %low14, align 8, !dbg !1995
  %shr15 = lshr i32 %3, %b, !dbg !1996
  %or = or i32 %shl, %shr15, !dbg !1997
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1998
  store i32 %or, i32* %low17, align 8, !dbg !1999
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !2000
  %4 = load i64, i64* %all19, align 8, !dbg !2000
  br label %return, !dbg !2001

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !2002
  ret i64 %retval.0, !dbg !2003
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2004 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !2005
  %shr1 = ashr i64 %a, 63, !dbg !2006
  %xor2 = xor i64 %shr1, %a, !dbg !2007
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !2008
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #5, !dbg !2009
  %1 = load i64, i64* %r, align 8, !dbg !2010
  %xor4 = xor i64 %1, %shr1, !dbg !2011
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !2012
  ret i64 %sub5, !dbg !2013
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2014 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !2015
  %mul = mul nsw i32 %call, %b, !dbg !2016
  %sub = sub nsw i32 %a, %mul, !dbg !2017
  ret i32 %sub, !dbg !2018
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2019 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !2020
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2021

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !2022
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2023

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !2024
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2025

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2026

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2027
  unreachable, !dbg !2027

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !2028
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2029

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !2030
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2031

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !2032
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2033

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2034

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2035
  unreachable, !dbg !2035

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !2036
  %xor = xor i64 %shr, %a, !dbg !2037
  %sub = sub nsw i64 %xor, %shr, !dbg !2038
  %shr14 = ashr i64 %b, 63, !dbg !2039
  %xor15 = xor i64 %shr14, %b, !dbg !2040
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !2041
  %cmp17 = icmp slt i64 %sub, 2, !dbg !2042
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2043

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !2044
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2045

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2046

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !2047
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2048

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !2049
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !2050
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2051

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2052
  unreachable, !dbg !2052

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2053

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !2054
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !2055
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !2056
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2057

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #6, !dbg !2058
  unreachable, !dbg !2058

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2059

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !2060
  ret i64 %retval.0, !dbg !2061
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2062 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !2063
  br i1 %cmp, label %if.then, label %if.end4, !dbg !2064

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !2065
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !2066

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !2067
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2068

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !2069

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2070
  unreachable, !dbg !2070

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !2071
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !2072

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !2073
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !2074

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !2075
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2076

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !2077

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2078
  unreachable, !dbg !2078

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !2079
  %xor = xor i32 %shr, %a, !dbg !2080
  %sub = sub nsw i32 %xor, %shr, !dbg !2081
  %shr14 = ashr i32 %b, 31, !dbg !2082
  %xor15 = xor i32 %shr14, %b, !dbg !2083
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !2084
  %cmp17 = icmp slt i32 %sub, 2, !dbg !2085
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !2086

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !2087
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !2088

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !2089

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !2090
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !2091

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !2092
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !2093
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2094

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2095
  unreachable, !dbg !2095

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !2096

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !2097
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !2098
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !2099
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2100

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #6, !dbg !2101
  unreachable, !dbg !2101

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !2102

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !2103
  ret i32 %retval.0, !dbg !2104
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #3 !dbg !2105 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2106
  store i64 %a, i64* %all, align 8, !dbg !2107
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2108
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !2109
  %0 = load i32, i32* %high, align 4, !dbg !2109
  %low = bitcast %union.dwords* %x to i32*, !dbg !2110
  %1 = load i32, i32* %low, align 8, !dbg !2110
  %xor = xor i32 %0, %1, !dbg !2111
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #5, !dbg !2112
  ret i32 %call, !dbg !2113
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #3 !dbg !2114 {
entry:
  %shr = lshr i32 %a, 16, !dbg !2115
  %xor = xor i32 %shr, %a, !dbg !2116
  %shr1 = lshr i32 %xor, 8, !dbg !2117
  %xor2 = xor i32 %xor, %shr1, !dbg !2118
  %shr3 = lshr i32 %xor2, 4, !dbg !2119
  %xor4 = xor i32 %xor2, %shr3, !dbg !2120
  %and = and i32 %xor4, 15, !dbg !2121
  %shr5 = lshr i32 27030, %and, !dbg !2122
  %and6 = and i32 %shr5, 1, !dbg !2123
  ret i32 %and6, !dbg !2124
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #3 !dbg !2125 {
entry:
  %shr = lshr i64 %a, 1, !dbg !2126
  %and = and i64 %shr, 6148914691236517205, !dbg !2127
  %sub = sub i64 %a, %and, !dbg !2128
  %shr1 = lshr i64 %sub, 2, !dbg !2129
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !2130
  %and3 = and i64 %sub, 3689348814741910323, !dbg !2131
  %add = add nuw nsw i64 %and2, %and3, !dbg !2132
  %shr4 = lshr i64 %add, 4, !dbg !2133
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !2134
  %and6 = and i64 %add5, 1085102592571150095, !dbg !2135
  %shr7 = lshr i64 %and6, 32, !dbg !2136
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !2137
  %conv = trunc i64 %add8 to i32, !dbg !2138
  %shr9 = lshr i32 %conv, 16, !dbg !2139
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !2140
  %shr11 = lshr i32 %add10, 8, !dbg !2141
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !2142
  %and13 = and i32 %add12, 127, !dbg !2143
  ret i32 %and13, !dbg !2144
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #3 !dbg !2145 {
entry:
  %shr = lshr i32 %a, 1, !dbg !2146
  %and = and i32 %shr, 1431655765, !dbg !2147
  %sub = sub i32 %a, %and, !dbg !2148
  %shr1 = lshr i32 %sub, 2, !dbg !2149
  %and2 = and i32 %shr1, 858993459, !dbg !2150
  %and3 = and i32 %sub, 858993459, !dbg !2151
  %add = add nuw nsw i32 %and2, %and3, !dbg !2152
  %shr4 = lshr i32 %add, 4, !dbg !2153
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !2154
  %and6 = and i32 %add5, 252645135, !dbg !2155
  %shr7 = lshr i32 %and6, 16, !dbg !2156
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !2157
  %shr9 = lshr i32 %add8, 8, !dbg !2158
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !2159
  %and11 = and i32 %add10, 63, !dbg !2160
  ret i32 %and11, !dbg !2161
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2162 {
entry:
  %sub = sub i64 %a, %b, !dbg !2163
  %cmp = icmp sgt i64 %b, -1, !dbg !2164
  br i1 %cmp, label %if.then, label %if.else, !dbg !2165

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !2166
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2167

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !2168
  unreachable, !dbg !2168

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2169

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !2170
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2171

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #6, !dbg !2172
  unreachable, !dbg !2172

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !2173
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2174 {
entry:
  %sub = sub i32 %a, %b, !dbg !2175
  %cmp = icmp sgt i32 %b, -1, !dbg !2176
  br i1 %cmp, label %if.then, label %if.else, !dbg !2177

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !2178
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !2179

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !2180
  unreachable, !dbg !2180

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !2181

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !2182
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !2183

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #6, !dbg !2184
  unreachable, !dbg !2184

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !2185
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #3 !dbg !2186 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !2187
  store i64 %a, i64* %all, align 8, !dbg !2188
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !2189
  store i64 %b, i64* %all1, align 8, !dbg !2190
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2191
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !2192
  %0 = load i32, i32* %high, align 4, !dbg !2192
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !2193
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !2194
  %1 = load i32, i32* %high3, align 4, !dbg !2194
  %cmp = icmp ult i32 %0, %1, !dbg !2195
  br i1 %cmp, label %if.then, label %if.end, !dbg !2196

if.then:                                          ; preds = %entry
  br label %return, !dbg !2197

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !2198
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !2199
  %2 = load i32, i32* %high5, align 4, !dbg !2199
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !2200
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !2201
  %3 = load i32, i32* %high7, align 4, !dbg !2201
  %cmp8 = icmp ugt i32 %2, %3, !dbg !2202
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2203

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !2204

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !2205
  %4 = load i32, i32* %low, align 8, !dbg !2205
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !2206
  %5 = load i32, i32* %low13, align 8, !dbg !2206
  %cmp14 = icmp ult i32 %4, %5, !dbg !2207
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2208

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !2209

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !2210
  %6 = load i32, i32* %low18, align 8, !dbg !2210
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !2211
  %7 = load i32, i32* %low20, align 8, !dbg !2211
  %cmp21 = icmp ugt i32 %6, %7, !dbg !2212
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2213

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !2214

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !2215

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !2216
  ret i32 %retval.0, !dbg !2217
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #3 !dbg !2218 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #5, !dbg !2219
  %sub = add nsw i32 %call, -1, !dbg !2220
  ret i32 %sub, !dbg !2221
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2222 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #5, !dbg !2223
  ret i64 %call, !dbg !2224
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #3 !dbg !2225 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !2226
  %mul = mul i32 %call, %b, !dbg !2227
  %sub = sub i32 %a, %mul, !dbg !2228
  store i32 %sub, i32* %rem, align 4, !dbg !2229
  ret i32 %call, !dbg !2230
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #3 !dbg !2231 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !2232
  br i1 %cmp, label %if.then, label %if.end, !dbg !2233

if.then:                                          ; preds = %entry
  br label %return, !dbg !2234

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !2235
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !2236

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2237

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !2238, !range !1431
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !2239, !range !1431
  %sub = sub nsw i32 %0, %1, !dbg !2240
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !2241
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2242

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !2243

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !2244
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2245

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !2246

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !2247
  %sub10 = sub nsw i32 31, %sub, !dbg !2248
  %shl = shl i32 %n, %sub10, !dbg !2249
  %shr = lshr i32 %n, %inc, !dbg !2250
  br label %for.cond, !dbg !2251

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !2252
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !2252
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !2252
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !2252
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !2253
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !2251

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !2254
  %2 = xor i32 %or, -1, !dbg !2255
  %sub17 = add i32 %2, %d, !dbg !2255
  br label %for.inc, !dbg !2256

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !2257
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !2257
  %sub20 = sub i32 %or, %and19, !dbg !2258
  %and = lshr i32 %sub17, 31, !dbg !2259
  %shl14 = shl i32 %q.0, 1, !dbg !2260
  %or15 = or i32 %shl14, %carry.0, !dbg !2261
  %dec = add i32 %sr.0, -1, !dbg !2262
  br label %for.cond, !dbg !2251, !llvm.loop !2263

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !2264
  %or22 = or i32 %shl21, %carry.0, !dbg !2265
  br label %return, !dbg !2266

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !2252
  ret i32 %retval.0, !dbg !2267
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #3 !dbg !2268 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #5, !dbg !2269
  %0 = load i64, i64* %r, align 8, !dbg !2270
  ret i64 %0, !dbg !2271
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #3 !dbg !2272 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #5, !dbg !2273
  %mul = mul i32 %call, %b, !dbg !2274
  %sub = sub i32 %a, %mul, !dbg !2275
  ret i32 %sub, !dbg !2276
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #3 !dbg !2277 {
entry:
  br label %for.cond, !dbg !2278

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2279
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2280
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2281

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !2282
  %0 = load i8, i8* %arrayidx, align 1, !dbg !2282
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !2283
  store i8 %0, i8* %arrayidx1, align 1, !dbg !2284
  br label %for.inc, !dbg !2285

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2286
  br label %for.cond, !dbg !2281, !llvm.loop !2287

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !2288
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #3 !dbg !2289 {
entry:
  br label %for.cond, !dbg !2290

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2291
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !2292
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2293

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !2294
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !2295
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2296
  br label %for.inc, !dbg !2297

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !2298
  br label %for.cond, !dbg !2293, !llvm.loop !2299

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !2300
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

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.ident = !{!132, !132, !132, !132, !132, !132, !132, !132, !132, !132, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141, !142}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/bs.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "bd8125837db9308c88c5ffb782c95b7d")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/test/crc.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "81914fd9a6e58bd16dffffd8d82cb702")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/workspaces/llvmta/testcases/test/expint.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/workspaces/llvmta/testcases/test/fdct.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "14ba389f54880aec137a5706c61250ef")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/workspaces/llvmta/testcases/test/lms.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/workspaces/llvmta/testcases/test/loopsinmultiplefunction.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "8b4cdeeba7ed4514f232cacc7fc66b22")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/workspaces/llvmta/testcases/test/matmult.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/workspaces/llvmta/testcases/test/ndes.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "6a4124562fff6afefc25084a1c1c3d13")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/workspaces/llvmta/testcases/test/prime.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "93a752eea1599691c878402ecbe8f5e7")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/workspaces/llvmta/testcases/test/rad2deg.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!125 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !127, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!127 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !129, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!129 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!130 = distinct !DICompileUnit(language: DW_LANG_C99, file: !131, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!131 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!132 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b2a50c6043f843eb5a3990f252082a2c0959c53c)"}
!133 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!134 = !{i32 7, !"Dwarf Version", i32 5}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 4}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 1, !"branch-target-enforcement", i32 0}
!139 = !{i32 1, !"sign-return-address", i32 0}
!140 = !{i32 1, !"sign-return-address-all", i32 0}
!141 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = distinct !DISubprogram(name: "bs", scope: !144, file: !144, line: 71, type: !145, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !146)
!144 = !DIFile(filename: "test/bs.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "bd8125837db9308c88c5ffb782c95b7d")
!145 = !DISubroutineType(types: !146)
!146 = !{}
!147 = !DILocation(line: 73, column: 2, scope: !143)
!148 = !DILocation(line: 74, column: 1, scope: !143)
!149 = distinct !DISubprogram(name: "binary_search", scope: !144, file: !144, line: 76, type: !145, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !146)
!150 = !DILocation(line: 83, column: 3, scope: !149)
!151 = !DILocation(line: 0, scope: !149)
!152 = !DILocation(line: 80, column: 7, scope: !149)
!153 = !DILocation(line: 83, column: 14, scope: !149)
!154 = !DILocation(line: 84, column: 16, scope: !149)
!155 = !DILocation(line: 84, column: 22, scope: !149)
!156 = !DILocation(line: 85, column: 20, scope: !149)
!157 = !DILocation(line: 85, column: 24, scope: !149)
!158 = !DILocation(line: 85, column: 10, scope: !149)
!159 = !DILocation(line: 86, column: 16, scope: !149)
!160 = !DILocation(line: 87, column: 26, scope: !149)
!161 = !DILocation(line: 91, column: 5, scope: !149)
!162 = !DILocation(line: 93, column: 22, scope: !149)
!163 = !DILocation(line: 93, column: 26, scope: !149)
!164 = !DILocation(line: 93, column: 12, scope: !149)
!165 = !DILocation(line: 94, column: 11, scope: !149)
!166 = !DILocation(line: 98, column: 7, scope: !149)
!167 = !DILocation(line: 100, column: 25, scope: !149)
!168 = distinct !{!168, !150, !169, !170}
!169 = !DILocation(line: 108, column: 3, scope: !149)
!170 = !{!"llvm.loop.mustprogress"}
!171 = !DILocation(line: 112, column: 3, scope: !149)
!172 = distinct !DISubprogram(name: "icrc1", scope: !173, file: !173, line: 57, type: !145, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!173 = !DIFile(filename: "test/crc.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "81914fd9a6e58bd16dffffd8d82cb702")
!174 = !DILocation(line: 60, column: 26, scope: !172)
!175 = !DILocation(line: 60, column: 32, scope: !172)
!176 = !DILocation(line: 60, column: 25, scope: !172)
!177 = !DILocation(line: 62, column: 7, scope: !172)
!178 = !DILocation(line: 0, scope: !172)
!179 = !DILocation(line: 62, column: 12, scope: !172)
!180 = !DILocation(line: 62, column: 2, scope: !172)
!181 = !DILocation(line: 63, column: 11, scope: !172)
!182 = !DILocation(line: 63, column: 7, scope: !172)
!183 = !DILocation(line: 64, column: 15, scope: !172)
!184 = !DILocation(line: 64, column: 22, scope: !172)
!185 = !DILocation(line: 64, column: 4, scope: !172)
!186 = !DILocation(line: 66, column: 8, scope: !172)
!187 = !DILocation(line: 67, column: 2, scope: !172)
!188 = !DILocation(line: 62, column: 16, scope: !172)
!189 = distinct !{!189, !180, !187, !170}
!190 = !DILocation(line: 68, column: 2, scope: !172)
!191 = distinct !DISubprogram(name: "icrc", scope: !173, file: !173, line: 71, type: !145, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!192 = !DILocation(line: 80, column: 8, scope: !191)
!193 = !DILocation(line: 80, column: 7, scope: !191)
!194 = !DILocation(line: 81, column: 9, scope: !191)
!195 = !DILocation(line: 82, column: 10, scope: !191)
!196 = !DILocation(line: 0, scope: !191)
!197 = !DILocation(line: 82, column: 15, scope: !191)
!198 = !DILocation(line: 82, column: 5, scope: !191)
!199 = !DILocation(line: 83, column: 25, scope: !191)
!200 = !DILocation(line: 83, column: 17, scope: !191)
!201 = !DILocation(line: 83, column: 7, scope: !191)
!202 = !DILocation(line: 83, column: 16, scope: !191)
!203 = !DILocation(line: 84, column: 28, scope: !191)
!204 = !DILocation(line: 84, column: 23, scope: !191)
!205 = !DILocation(line: 84, column: 35, scope: !191)
!206 = !DILocation(line: 84, column: 47, scope: !191)
!207 = !DILocation(line: 84, column: 42, scope: !191)
!208 = !DILocation(line: 84, column: 40, scope: !191)
!209 = !DILocation(line: 84, column: 7, scope: !191)
!210 = !DILocation(line: 84, column: 14, scope: !191)
!211 = !DILocation(line: 85, column: 5, scope: !191)
!212 = !DILocation(line: 82, column: 22, scope: !191)
!213 = distinct !{!213, !198, !211, !170}
!214 = !DILocation(line: 86, column: 3, scope: !191)
!215 = !DILocation(line: 87, column: 13, scope: !191)
!216 = !DILocation(line: 87, column: 7, scope: !191)
!217 = !DILocation(line: 87, column: 25, scope: !191)
!218 = !DILocation(line: 87, column: 60, scope: !191)
!219 = !DILocation(line: 87, column: 41, scope: !191)
!220 = !DILocation(line: 87, column: 19, scope: !191)
!221 = !DILocation(line: 88, column: 17, scope: !191)
!222 = !DILocation(line: 88, column: 12, scope: !191)
!223 = !DILocation(line: 89, column: 16, scope: !191)
!224 = !DILocation(line: 89, column: 11, scope: !191)
!225 = !DILocation(line: 89, column: 33, scope: !191)
!226 = !DILocation(line: 89, column: 53, scope: !191)
!227 = !DILocation(line: 89, column: 31, scope: !191)
!228 = !DILocation(line: 89, column: 5, scope: !191)
!229 = !DILocation(line: 93, column: 8, scope: !191)
!230 = !DILocation(line: 93, column: 12, scope: !191)
!231 = !DILocation(line: 93, column: 13, scope: !191)
!232 = !DILocation(line: 93, column: 3, scope: !191)
!233 = !DILocation(line: 94, column: 14, scope: !191)
!234 = !DILocation(line: 94, column: 9, scope: !191)
!235 = !DILocation(line: 95, column: 19, scope: !191)
!236 = !DILocation(line: 95, column: 14, scope: !191)
!237 = !DILocation(line: 95, column: 28, scope: !191)
!238 = !DILocation(line: 95, column: 26, scope: !191)
!239 = !DILocation(line: 96, column: 5, scope: !191)
!240 = !DILocation(line: 98, column: 14, scope: !191)
!241 = !DILocation(line: 98, column: 22, scope: !191)
!242 = !DILocation(line: 98, column: 20, scope: !191)
!243 = !DILocation(line: 101, column: 3, scope: !191)
!244 = !DILocation(line: 100, column: 13, scope: !191)
!245 = !DILocation(line: 100, column: 42, scope: !191)
!246 = !DILocation(line: 100, column: 26, scope: !191)
!247 = !DILocation(line: 93, column: 20, scope: !191)
!248 = distinct !{!248, !232, !243, !170}
!249 = !DILocation(line: 102, column: 12, scope: !191)
!250 = !DILocation(line: 102, column: 7, scope: !191)
!251 = !DILocation(line: 104, column: 3, scope: !191)
!252 = !DILocation(line: 106, column: 17, scope: !191)
!253 = !DILocation(line: 106, column: 12, scope: !191)
!254 = !DILocation(line: 106, column: 34, scope: !191)
!255 = !DILocation(line: 106, column: 54, scope: !191)
!256 = !DILocation(line: 106, column: 32, scope: !191)
!257 = !DILocation(line: 108, column: 3, scope: !191)
!258 = distinct !DISubprogram(name: "crc", scope: !173, file: !173, line: 112, type: !145, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!259 = !DILocation(line: 119, column: 11, scope: !258)
!260 = !DILocation(line: 120, column: 6, scope: !258)
!261 = !DILocation(line: 121, column: 12, scope: !258)
!262 = !DILocation(line: 121, column: 11, scope: !258)
!263 = !DILocation(line: 122, column: 12, scope: !258)
!264 = !DILocation(line: 122, column: 11, scope: !258)
!265 = !DILocation(line: 123, column: 6, scope: !258)
!266 = !DILocation(line: 124, column: 3, scope: !258)
!267 = distinct !DISubprogram(name: "expint", scope: !268, file: !268, line: 29, type: !145, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !146)
!268 = !DIFile(filename: "test/expint.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!269 = !DILocation(line: 33, column: 3, scope: !267)
!270 = !DILocation(line: 38, column: 1, scope: !267)
!271 = distinct !DISubprogram(name: "expint_expint", scope: !268, file: !268, line: 56, type: !145, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !146)
!272 = !DILocation(line: 66, column: 8, scope: !271)
!273 = !DILocation(line: 70, column: 7, scope: !271)
!274 = !DILocation(line: 70, column: 6, scope: !271)
!275 = !DILocation(line: 74, column: 10, scope: !271)
!276 = !DILocation(line: 84, column: 12, scope: !271)
!277 = !DILocation(line: 0, scope: !271)
!278 = !DILocation(line: 84, column: 17, scope: !271)
!279 = !DILocation(line: 84, column: 7, scope: !271)
!280 = !DILocation(line: 88, column: 22, scope: !271)
!281 = !DILocation(line: 88, column: 17, scope: !271)
!282 = !DILocation(line: 90, column: 13, scope: !271)
!283 = !DILocation(line: 92, column: 18, scope: !271)
!284 = !DILocation(line: 92, column: 20, scope: !271)
!285 = !DILocation(line: 92, column: 15, scope: !271)
!286 = !DILocation(line: 94, column: 16, scope: !271)
!287 = !DILocation(line: 94, column: 14, scope: !271)
!288 = !DILocation(line: 96, column: 16, scope: !271)
!289 = !DILocation(line: 98, column: 13, scope: !271)
!290 = !DILocation(line: 100, column: 19, scope: !271)
!291 = !DILocation(line: 100, column: 15, scope: !271)
!292 = !DILocation(line: 104, column: 20, scope: !271)
!293 = !DILocation(line: 106, column: 15, scope: !271)
!294 = !DILocation(line: 110, column: 9, scope: !271)
!295 = !DILocation(line: 84, column: 24, scope: !271)
!296 = distinct !{!296, !279, !294, !170}
!297 = !DILocation(line: 112, column: 5, scope: !271)
!298 = !DILocation(line: 122, column: 17, scope: !271)
!299 = !DILocation(line: 122, column: 13, scope: !271)
!300 = !DILocation(line: 126, column: 12, scope: !271)
!301 = !DILocation(line: 126, column: 17, scope: !271)
!302 = !DILocation(line: 126, column: 7, scope: !271)
!303 = !DILocation(line: 130, column: 21, scope: !271)
!304 = !DILocation(line: 130, column: 16, scope: !271)
!305 = !DILocation(line: 132, column: 17, scope: !271)
!306 = !DILocation(line: 132, column: 15, scope: !271)
!307 = !DILocation(line: 134, column: 27, scope: !271)
!308 = !DILocation(line: 134, column: 24, scope: !271)
!309 = !DILocation(line: 134, column: 13, scope: !271)
!310 = !DILocation(line: 142, column: 20, scope: !271)
!311 = !DILocation(line: 142, column: 15, scope: !271)
!312 = !DILocation(line: 144, column: 17, scope: !271)
!313 = distinct !{!313, !311, !314, !170}
!314 = !DILocation(line: 144, column: 29, scope: !271)
!315 = !DILocation(line: 146, column: 28, scope: !271)
!316 = !DILocation(line: 146, column: 27, scope: !271)
!317 = !DILocation(line: 146, column: 22, scope: !271)
!318 = !DILocation(line: 154, column: 9, scope: !271)
!319 = !DILocation(line: 150, column: 15, scope: !271)
!320 = !DILocation(line: 126, column: 24, scope: !271)
!321 = distinct !{!321, !302, !318, !170}
!322 = !DILocation(line: 160, column: 3, scope: !271)
!323 = !DILocation(line: 162, column: 1, scope: !271)
!324 = distinct !DISubprogram(name: "foo", scope: !268, file: !268, line: 40, type: !145, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !146)
!325 = !DILocation(line: 44, column: 13, scope: !324)
!326 = !DILocation(line: 44, column: 22, scope: !324)
!327 = !DILocation(line: 44, column: 19, scope: !324)
!328 = !DILocation(line: 44, column: 3, scope: !324)
!329 = distinct !DISubprogram(name: "fdct_fdct", scope: !330, file: !330, line: 67, type: !145, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !146)
!330 = !DIFile(filename: "test/fdct.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "14ba389f54880aec137a5706c61250ef")
!331 = !DILocation(line: 83, column: 8, scope: !329)
!332 = !DILocation(line: 0, scope: !329)
!333 = !DILocation(line: 83, column: 14, scope: !329)
!334 = !DILocation(line: 83, column: 3, scope: !329)
!335 = !DILocation(line: 85, column: 12, scope: !329)
!336 = !DILocation(line: 85, column: 23, scope: !329)
!337 = !DILocation(line: 85, column: 21, scope: !329)
!338 = !DILocation(line: 86, column: 12, scope: !329)
!339 = !DILocation(line: 86, column: 23, scope: !329)
!340 = !DILocation(line: 86, column: 21, scope: !329)
!341 = !DILocation(line: 87, column: 12, scope: !329)
!342 = !DILocation(line: 87, column: 23, scope: !329)
!343 = !DILocation(line: 87, column: 21, scope: !329)
!344 = !DILocation(line: 88, column: 12, scope: !329)
!345 = !DILocation(line: 88, column: 23, scope: !329)
!346 = !DILocation(line: 88, column: 21, scope: !329)
!347 = !DILocation(line: 89, column: 12, scope: !329)
!348 = !DILocation(line: 89, column: 23, scope: !329)
!349 = !DILocation(line: 89, column: 21, scope: !329)
!350 = !DILocation(line: 90, column: 12, scope: !329)
!351 = !DILocation(line: 90, column: 23, scope: !329)
!352 = !DILocation(line: 90, column: 21, scope: !329)
!353 = !DILocation(line: 91, column: 12, scope: !329)
!354 = !DILocation(line: 91, column: 23, scope: !329)
!355 = !DILocation(line: 91, column: 21, scope: !329)
!356 = !DILocation(line: 92, column: 12, scope: !329)
!357 = !DILocation(line: 92, column: 23, scope: !329)
!358 = !DILocation(line: 92, column: 21, scope: !329)
!359 = !DILocation(line: 98, column: 18, scope: !329)
!360 = !DILocation(line: 99, column: 18, scope: !329)
!361 = !DILocation(line: 100, column: 18, scope: !329)
!362 = !DILocation(line: 101, column: 18, scope: !329)
!363 = !DILocation(line: 103, column: 23, scope: !329)
!364 = !DILocation(line: 103, column: 16, scope: !329)
!365 = !DILocation(line: 103, column: 14, scope: !329)
!366 = !DILocation(line: 104, column: 23, scope: !329)
!367 = !DILocation(line: 104, column: 16, scope: !329)
!368 = !DILocation(line: 104, column: 5, scope: !329)
!369 = !DILocation(line: 104, column: 14, scope: !329)
!370 = !DILocation(line: 107, column: 17, scope: !329)
!371 = !DILocation(line: 107, column: 26, scope: !329)
!372 = !DILocation(line: 109, column: 29, scope: !329)
!373 = !DILocation(line: 109, column: 20, scope: !329)
!374 = !DILocation(line: 109, column: 42, scope: !329)
!375 = !DILocation(line: 109, column: 16, scope: !329)
!376 = !DILocation(line: 109, column: 5, scope: !329)
!377 = !DILocation(line: 109, column: 14, scope: !329)
!378 = !DILocation(line: 111, column: 29, scope: !329)
!379 = !DILocation(line: 111, column: 20, scope: !329)
!380 = !DILocation(line: 111, column: 42, scope: !329)
!381 = !DILocation(line: 111, column: 16, scope: !329)
!382 = !DILocation(line: 111, column: 5, scope: !329)
!383 = !DILocation(line: 111, column: 14, scope: !329)
!384 = !DILocation(line: 118, column: 15, scope: !329)
!385 = !DILocation(line: 119, column: 15, scope: !329)
!386 = !DILocation(line: 120, column: 15, scope: !329)
!387 = !DILocation(line: 121, column: 15, scope: !329)
!388 = !DILocation(line: 123, column: 15, scope: !329)
!389 = !DILocation(line: 123, column: 21, scope: !329)
!390 = !DILocation(line: 126, column: 18, scope: !329)
!391 = !DILocation(line: 128, column: 18, scope: !329)
!392 = !DILocation(line: 130, column: 18, scope: !329)
!393 = !DILocation(line: 132, column: 18, scope: !329)
!394 = !DILocation(line: 134, column: 14, scope: !329)
!395 = !DILocation(line: 136, column: 14, scope: !329)
!396 = !DILocation(line: 138, column: 14, scope: !329)
!397 = !DILocation(line: 140, column: 14, scope: !329)
!398 = !DILocation(line: 142, column: 8, scope: !329)
!399 = !DILocation(line: 143, column: 8, scope: !329)
!400 = !DILocation(line: 145, column: 22, scope: !329)
!401 = !DILocation(line: 145, column: 27, scope: !329)
!402 = !DILocation(line: 145, column: 33, scope: !329)
!403 = !DILocation(line: 145, column: 16, scope: !329)
!404 = !DILocation(line: 145, column: 5, scope: !329)
!405 = !DILocation(line: 145, column: 14, scope: !329)
!406 = !DILocation(line: 146, column: 22, scope: !329)
!407 = !DILocation(line: 146, column: 27, scope: !329)
!408 = !DILocation(line: 146, column: 33, scope: !329)
!409 = !DILocation(line: 146, column: 16, scope: !329)
!410 = !DILocation(line: 146, column: 5, scope: !329)
!411 = !DILocation(line: 146, column: 14, scope: !329)
!412 = !DILocation(line: 147, column: 22, scope: !329)
!413 = !DILocation(line: 147, column: 27, scope: !329)
!414 = !DILocation(line: 147, column: 33, scope: !329)
!415 = !DILocation(line: 147, column: 16, scope: !329)
!416 = !DILocation(line: 147, column: 5, scope: !329)
!417 = !DILocation(line: 147, column: 14, scope: !329)
!418 = !DILocation(line: 148, column: 22, scope: !329)
!419 = !DILocation(line: 148, column: 27, scope: !329)
!420 = !DILocation(line: 148, column: 33, scope: !329)
!421 = !DILocation(line: 148, column: 16, scope: !329)
!422 = !DILocation(line: 148, column: 5, scope: !329)
!423 = !DILocation(line: 148, column: 14, scope: !329)
!424 = !DILocation(line: 155, column: 3, scope: !329)
!425 = !DILocation(line: 153, column: 11, scope: !329)
!426 = !DILocation(line: 83, column: 19, scope: !329)
!427 = distinct !{!427, !334, !424, !170}
!428 = !DILocation(line: 161, column: 8, scope: !329)
!429 = !DILocation(line: 161, column: 16, scope: !329)
!430 = !DILocation(line: 161, column: 3, scope: !329)
!431 = !DILocation(line: 163, column: 12, scope: !329)
!432 = !DILocation(line: 163, column: 30, scope: !329)
!433 = !DILocation(line: 163, column: 23, scope: !329)
!434 = !DILocation(line: 163, column: 21, scope: !329)
!435 = !DILocation(line: 164, column: 12, scope: !329)
!436 = !DILocation(line: 164, column: 30, scope: !329)
!437 = !DILocation(line: 164, column: 23, scope: !329)
!438 = !DILocation(line: 164, column: 21, scope: !329)
!439 = !DILocation(line: 165, column: 12, scope: !329)
!440 = !DILocation(line: 165, column: 31, scope: !329)
!441 = !DILocation(line: 165, column: 24, scope: !329)
!442 = !DILocation(line: 165, column: 22, scope: !329)
!443 = !DILocation(line: 166, column: 12, scope: !329)
!444 = !DILocation(line: 166, column: 30, scope: !329)
!445 = !DILocation(line: 166, column: 23, scope: !329)
!446 = !DILocation(line: 166, column: 21, scope: !329)
!447 = !DILocation(line: 167, column: 19, scope: !329)
!448 = !DILocation(line: 167, column: 12, scope: !329)
!449 = !DILocation(line: 167, column: 33, scope: !329)
!450 = !DILocation(line: 167, column: 26, scope: !329)
!451 = !DILocation(line: 167, column: 24, scope: !329)
!452 = !DILocation(line: 168, column: 19, scope: !329)
!453 = !DILocation(line: 168, column: 12, scope: !329)
!454 = !DILocation(line: 168, column: 33, scope: !329)
!455 = !DILocation(line: 168, column: 26, scope: !329)
!456 = !DILocation(line: 168, column: 24, scope: !329)
!457 = !DILocation(line: 169, column: 19, scope: !329)
!458 = !DILocation(line: 169, column: 12, scope: !329)
!459 = !DILocation(line: 169, column: 33, scope: !329)
!460 = !DILocation(line: 169, column: 26, scope: !329)
!461 = !DILocation(line: 169, column: 24, scope: !329)
!462 = !DILocation(line: 170, column: 19, scope: !329)
!463 = !DILocation(line: 170, column: 12, scope: !329)
!464 = !DILocation(line: 170, column: 33, scope: !329)
!465 = !DILocation(line: 170, column: 26, scope: !329)
!466 = !DILocation(line: 170, column: 24, scope: !329)
!467 = !DILocation(line: 176, column: 18, scope: !329)
!468 = !DILocation(line: 177, column: 18, scope: !329)
!469 = !DILocation(line: 178, column: 18, scope: !329)
!470 = !DILocation(line: 179, column: 18, scope: !329)
!471 = !DILocation(line: 181, column: 23, scope: !329)
!472 = !DILocation(line: 181, column: 32, scope: !329)
!473 = !DILocation(line: 181, column: 16, scope: !329)
!474 = !DILocation(line: 181, column: 14, scope: !329)
!475 = !DILocation(line: 182, column: 26, scope: !329)
!476 = !DILocation(line: 182, column: 35, scope: !329)
!477 = !DILocation(line: 182, column: 19, scope: !329)
!478 = !DILocation(line: 182, column: 12, scope: !329)
!479 = !DILocation(line: 182, column: 5, scope: !329)
!480 = !DILocation(line: 182, column: 17, scope: !329)
!481 = !DILocation(line: 185, column: 18, scope: !329)
!482 = !DILocation(line: 185, column: 27, scope: !329)
!483 = !DILocation(line: 187, column: 32, scope: !329)
!484 = !DILocation(line: 187, column: 23, scope: !329)
!485 = !DILocation(line: 187, column: 45, scope: !329)
!486 = !DILocation(line: 187, column: 19, scope: !329)
!487 = !DILocation(line: 187, column: 12, scope: !329)
!488 = !DILocation(line: 187, column: 5, scope: !329)
!489 = !DILocation(line: 187, column: 17, scope: !329)
!490 = !DILocation(line: 189, column: 32, scope: !329)
!491 = !DILocation(line: 189, column: 23, scope: !329)
!492 = !DILocation(line: 189, column: 45, scope: !329)
!493 = !DILocation(line: 189, column: 19, scope: !329)
!494 = !DILocation(line: 189, column: 12, scope: !329)
!495 = !DILocation(line: 189, column: 5, scope: !329)
!496 = !DILocation(line: 189, column: 17, scope: !329)
!497 = !DILocation(line: 196, column: 15, scope: !329)
!498 = !DILocation(line: 197, column: 15, scope: !329)
!499 = !DILocation(line: 198, column: 15, scope: !329)
!500 = !DILocation(line: 199, column: 15, scope: !329)
!501 = !DILocation(line: 201, column: 15, scope: !329)
!502 = !DILocation(line: 201, column: 21, scope: !329)
!503 = !DILocation(line: 204, column: 18, scope: !329)
!504 = !DILocation(line: 206, column: 18, scope: !329)
!505 = !DILocation(line: 208, column: 18, scope: !329)
!506 = !DILocation(line: 210, column: 18, scope: !329)
!507 = !DILocation(line: 212, column: 14, scope: !329)
!508 = !DILocation(line: 214, column: 14, scope: !329)
!509 = !DILocation(line: 216, column: 14, scope: !329)
!510 = !DILocation(line: 218, column: 14, scope: !329)
!511 = !DILocation(line: 220, column: 8, scope: !329)
!512 = !DILocation(line: 221, column: 8, scope: !329)
!513 = !DILocation(line: 223, column: 25, scope: !329)
!514 = !DILocation(line: 223, column: 30, scope: !329)
!515 = !DILocation(line: 223, column: 36, scope: !329)
!516 = !DILocation(line: 223, column: 19, scope: !329)
!517 = !DILocation(line: 223, column: 12, scope: !329)
!518 = !DILocation(line: 223, column: 5, scope: !329)
!519 = !DILocation(line: 223, column: 17, scope: !329)
!520 = !DILocation(line: 224, column: 25, scope: !329)
!521 = !DILocation(line: 224, column: 30, scope: !329)
!522 = !DILocation(line: 224, column: 36, scope: !329)
!523 = !DILocation(line: 224, column: 19, scope: !329)
!524 = !DILocation(line: 224, column: 12, scope: !329)
!525 = !DILocation(line: 224, column: 5, scope: !329)
!526 = !DILocation(line: 224, column: 17, scope: !329)
!527 = !DILocation(line: 225, column: 25, scope: !329)
!528 = !DILocation(line: 225, column: 30, scope: !329)
!529 = !DILocation(line: 225, column: 36, scope: !329)
!530 = !DILocation(line: 225, column: 19, scope: !329)
!531 = !DILocation(line: 225, column: 12, scope: !329)
!532 = !DILocation(line: 225, column: 5, scope: !329)
!533 = !DILocation(line: 225, column: 17, scope: !329)
!534 = !DILocation(line: 226, column: 24, scope: !329)
!535 = !DILocation(line: 226, column: 29, scope: !329)
!536 = !DILocation(line: 226, column: 35, scope: !329)
!537 = !DILocation(line: 226, column: 18, scope: !329)
!538 = !DILocation(line: 226, column: 5, scope: !329)
!539 = !DILocation(line: 226, column: 15, scope: !329)
!540 = !DILocation(line: 230, column: 3, scope: !329)
!541 = !DILocation(line: 229, column: 10, scope: !329)
!542 = !DILocation(line: 161, column: 21, scope: !329)
!543 = distinct !{!543, !430, !540, !170}
!544 = !DILocation(line: 231, column: 1, scope: !329)
!545 = distinct !DISubprogram(name: "fdct", scope: !330, file: !330, line: 233, type: !145, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !146)
!546 = !DILocation(line: 237, column: 3, scope: !545)
!547 = !DILocation(line: 243, column: 10, scope: !545)
!548 = !DILocation(line: 243, column: 3, scope: !545)
!549 = distinct !DISubprogram(name: "lms_sinus", scope: !550, file: !550, line: 57, type: !145, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !146)
!550 = !DIFile(filename: "test/lms.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!551 = !DILocation(line: 58, column: 13, scope: !549)
!552 = !DILocation(line: 59, column: 9, scope: !549)
!553 = !DILocation(line: 59, column: 7, scope: !549)
!554 = !DILocation(line: 60, column: 27, scope: !549)
!555 = !DILocation(line: 60, column: 24, scope: !549)
!556 = !DILocation(line: 60, column: 59, scope: !549)
!557 = !DILocation(line: 61, column: 48, scope: !549)
!558 = !DILocation(line: 60, column: 13, scope: !549)
!559 = !DILocation(line: 60, column: 12, scope: !549)
!560 = !DILocation(line: 60, column: 5, scope: !549)
!561 = !DILocation(line: 62, column: 24, scope: !549)
!562 = !DILocation(line: 62, column: 21, scope: !549)
!563 = !DILocation(line: 62, column: 52, scope: !549)
!564 = !DILocation(line: 62, column: 10, scope: !549)
!565 = !DILocation(line: 62, column: 3, scope: !549)
!566 = !DILocation(line: 0, scope: !549)
!567 = !DILocation(line: 63, column: 1, scope: !549)
!568 = distinct !DISubprogram(name: "lms_init", scope: !550, file: !550, line: 65, type: !145, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !146)
!569 = !DILocation(line: 69, column: 16, scope: !568)
!570 = !DILocation(line: 73, column: 5, scope: !568)
!571 = !DILocation(line: 80, column: 5, scope: !568)
!572 = distinct !{!572, !570, !573, !170}
!573 = !DILocation(line: 80, column: 21, scope: !568)
!574 = !DILocation(line: 85, column: 20, scope: !568)
!575 = !DILocation(line: 85, column: 33, scope: !568)
!576 = !DILocation(line: 85, column: 18, scope: !568)
!577 = !DILocation(line: 88, column: 45, scope: !568)
!578 = !DILocation(line: 0, scope: !568)
!579 = !DILocation(line: 88, column: 54, scope: !568)
!580 = !DILocation(line: 88, column: 40, scope: !568)
!581 = !DILocation(line: 91, column: 5, scope: !568)
!582 = !DILocation(line: 93, column: 19, scope: !568)
!583 = !DILocation(line: 93, column: 32, scope: !568)
!584 = !DILocation(line: 94, column: 18, scope: !568)
!585 = !DILocation(line: 94, column: 12, scope: !568)
!586 = !DILocation(line: 94, column: 50, scope: !568)
!587 = !DILocation(line: 95, column: 19, scope: !568)
!588 = !DILocation(line: 95, column: 32, scope: !568)
!589 = !DILocation(line: 96, column: 18, scope: !568)
!590 = !DILocation(line: 96, column: 12, scope: !568)
!591 = !DILocation(line: 96, column: 50, scope: !568)
!592 = !DILocation(line: 97, column: 24, scope: !568)
!593 = !DILocation(line: 97, column: 19, scope: !568)
!594 = !DILocation(line: 98, column: 5, scope: !568)
!595 = !DILocation(line: 98, column: 16, scope: !568)
!596 = distinct !{!596, !581, !597, !170}
!597 = !DILocation(line: 98, column: 21, scope: !568)
!598 = !DILocation(line: 102, column: 22, scope: !568)
!599 = !DILocation(line: 103, column: 20, scope: !568)
!600 = !DILocation(line: 103, column: 33, scope: !568)
!601 = !DILocation(line: 103, column: 5, scope: !568)
!602 = !DILocation(line: 103, column: 18, scope: !568)
!603 = !DILocation(line: 104, column: 36, scope: !568)
!604 = !DILocation(line: 104, column: 24, scope: !568)
!605 = !DILocation(line: 104, column: 41, scope: !568)
!606 = !DILocation(line: 104, column: 17, scope: !568)
!607 = !DILocation(line: 104, column: 5, scope: !568)
!608 = !DILocation(line: 104, column: 22, scope: !568)
!609 = !DILocation(line: 105, column: 3, scope: !568)
!610 = !DILocation(line: 88, column: 61, scope: !568)
!611 = distinct !{!611, !580, !609, !170}
!612 = !DILocation(line: 106, column: 1, scope: !568)
!613 = distinct !DISubprogram(name: "lms_calc", scope: !550, file: !550, line: 108, type: !145, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !146)
!614 = !DILocation(line: 113, column: 43, scope: !613)
!615 = !DILocation(line: 0, scope: !613)
!616 = !DILocation(line: 113, column: 52, scope: !613)
!617 = !DILocation(line: 113, column: 38, scope: !613)
!618 = !DILocation(line: 114, column: 17, scope: !613)
!619 = !DILocation(line: 114, column: 7, scope: !613)
!620 = !DILocation(line: 113, column: 63, scope: !613)
!621 = !DILocation(line: 113, column: 74, scope: !613)
!622 = !DILocation(line: 113, column: 59, scope: !613)
!623 = distinct !{!623, !617, !624, !170}
!624 = !DILocation(line: 114, column: 20, scope: !613)
!625 = !DILocation(line: 115, column: 14, scope: !613)
!626 = !DILocation(line: 119, column: 18, scope: !613)
!627 = !DILocation(line: 119, column: 31, scope: !613)
!628 = !DILocation(line: 119, column: 43, scope: !613)
!629 = !DILocation(line: 119, column: 40, scope: !613)
!630 = !DILocation(line: 119, column: 26, scope: !613)
!631 = !DILocation(line: 119, column: 10, scope: !613)
!632 = !DILocation(line: 121, column: 43, scope: !613)
!633 = !DILocation(line: 121, column: 52, scope: !613)
!634 = !DILocation(line: 121, column: 38, scope: !613)
!635 = !DILocation(line: 121, column: 63, scope: !613)
!636 = !DILocation(line: 122, column: 7, scope: !613)
!637 = !DILocation(line: 122, column: 14, scope: !613)
!638 = !DILocation(line: 121, column: 65, scope: !613)
!639 = !DILocation(line: 121, column: 59, scope: !613)
!640 = distinct !{!640, !634, !641, !170}
!641 = !DILocation(line: 122, column: 23, scope: !613)
!642 = !DILocation(line: 125, column: 21, scope: !613)
!643 = !DILocation(line: 125, column: 16, scope: !613)
!644 = !DILocation(line: 125, column: 29, scope: !613)
!645 = !DILocation(line: 125, column: 26, scope: !613)
!646 = !DILocation(line: 127, column: 43, scope: !613)
!647 = !DILocation(line: 127, column: 52, scope: !613)
!648 = !DILocation(line: 127, column: 38, scope: !613)
!649 = !DILocation(line: 128, column: 11, scope: !613)
!650 = !DILocation(line: 127, column: 63, scope: !613)
!651 = !DILocation(line: 127, column: 68, scope: !613)
!652 = !DILocation(line: 127, column: 59, scope: !613)
!653 = distinct !{!653, !648, !654, !170}
!654 = !DILocation(line: 128, column: 20, scope: !613)
!655 = !DILocation(line: 130, column: 3, scope: !613)
!656 = distinct !DISubprogram(name: "lms_main", scope: !550, file: !550, line: 133, type: !145, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !146)
!657 = !DILocation(line: 137, column: 9, scope: !656)
!658 = !DILocation(line: 139, column: 43, scope: !656)
!659 = !DILocation(line: 0, scope: !656)
!660 = !DILocation(line: 139, column: 52, scope: !656)
!661 = !DILocation(line: 139, column: 38, scope: !656)
!662 = !DILocation(line: 140, column: 5, scope: !656)
!663 = !DILocation(line: 140, column: 10, scope: !656)
!664 = !DILocation(line: 141, column: 5, scope: !656)
!665 = !DILocation(line: 141, column: 16, scope: !656)
!666 = !DILocation(line: 142, column: 3, scope: !656)
!667 = !DILocation(line: 139, column: 59, scope: !656)
!668 = distinct !{!668, !661, !666, !170}
!669 = !DILocation(line: 144, column: 45, scope: !656)
!670 = !DILocation(line: 144, column: 54, scope: !656)
!671 = !DILocation(line: 144, column: 40, scope: !656)
!672 = !DILocation(line: 145, column: 30, scope: !656)
!673 = !DILocation(line: 145, column: 56, scope: !656)
!674 = !DILocation(line: 145, column: 44, scope: !656)
!675 = !DILocation(line: 145, column: 62, scope: !656)
!676 = !DILocation(line: 146, column: 52, scope: !656)
!677 = !DILocation(line: 145, column: 21, scope: !656)
!678 = !DILocation(line: 145, column: 5, scope: !656)
!679 = !DILocation(line: 145, column: 19, scope: !656)
!680 = !DILocation(line: 147, column: 3, scope: !656)
!681 = !DILocation(line: 144, column: 60, scope: !656)
!682 = distinct !{!682, !671, !680, !170}
!683 = !DILocation(line: 148, column: 1, scope: !656)
!684 = distinct !DISubprogram(name: "lms_return", scope: !550, file: !550, line: 150, type: !145, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !146)
!685 = !DILocation(line: 154, column: 45, scope: !684)
!686 = !DILocation(line: 0, scope: !684)
!687 = !DILocation(line: 154, column: 54, scope: !684)
!688 = !DILocation(line: 154, column: 40, scope: !684)
!689 = !DILocation(line: 156, column: 3, scope: !684)
!690 = !DILocation(line: 155, column: 12, scope: !684)
!691 = !DILocation(line: 155, column: 9, scope: !684)
!692 = !DILocation(line: 154, column: 60, scope: !684)
!693 = distinct !{!693, !688, !689, !170}
!694 = !DILocation(line: 158, column: 33, scope: !684)
!695 = !DILocation(line: 158, column: 26, scope: !684)
!696 = !DILocation(line: 158, column: 10, scope: !684)
!697 = !DILocation(line: 158, column: 3, scope: !684)
!698 = distinct !DISubprogram(name: "lms", scope: !550, file: !550, line: 163, type: !145, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !146)
!699 = !DILocation(line: 164, column: 3, scope: !698)
!700 = !DILocation(line: 165, column: 3, scope: !698)
!701 = !DILocation(line: 166, column: 3, scope: !698)
!702 = !DILocation(line: 167, column: 1, scope: !698)
!703 = distinct !DISubprogram(name: "exec", scope: !704, file: !704, line: 1, type: !145, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !146)
!704 = !DIFile(filename: "test/loopsinmultiplefunction.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "8b4cdeeba7ed4514f232cacc7fc66b22")
!705 = !DILocation(line: 2, column: 6, scope: !703)
!706 = !DILocation(line: 2, column: 2, scope: !703)
!707 = !DILocation(line: 5, column: 2, scope: !703)
!708 = distinct !{!708, !706, !707, !170}
!709 = !DILocation(line: 6, column: 2, scope: !703)
!710 = distinct !DISubprogram(name: "a", scope: !704, file: !704, line: 9, type: !145, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !146)
!711 = !DILocation(line: 10, column: 7, scope: !710)
!712 = !DILocation(line: 0, scope: !710)
!713 = !DILocation(line: 10, column: 20, scope: !710)
!714 = !DILocation(line: 10, column: 2, scope: !710)
!715 = !DILocation(line: 11, column: 3, scope: !710)
!716 = !DILocation(line: 12, column: 2, scope: !710)
!717 = !DILocation(line: 10, column: 26, scope: !710)
!718 = distinct !{!718, !714, !716, !170}
!719 = !DILocation(line: 13, column: 2, scope: !710)
!720 = distinct !DISubprogram(name: "b", scope: !704, file: !704, line: 16, type: !145, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !146)
!721 = !DILocation(line: 17, column: 7, scope: !720)
!722 = !DILocation(line: 0, scope: !720)
!723 = !DILocation(line: 17, column: 20, scope: !720)
!724 = !DILocation(line: 17, column: 2, scope: !720)
!725 = !DILocation(line: 18, column: 3, scope: !720)
!726 = !DILocation(line: 19, column: 2, scope: !720)
!727 = !DILocation(line: 17, column: 25, scope: !720)
!728 = distinct !{!728, !724, !726, !170}
!729 = !DILocation(line: 20, column: 2, scope: !720)
!730 = distinct !DISubprogram(name: "loop", scope: !704, file: !704, line: 23, type: !145, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !146)
!731 = !DILocation(line: 24, column: 6, scope: !730)
!732 = !DILocation(line: 0, scope: !730)
!733 = !DILocation(line: 24, column: 15, scope: !730)
!734 = !DILocation(line: 24, column: 2, scope: !730)
!735 = !DILocation(line: 25, column: 3, scope: !730)
!736 = !DILocation(line: 26, column: 3, scope: !730)
!737 = !DILocation(line: 27, column: 2, scope: !730)
!738 = !DILocation(line: 24, column: 19, scope: !730)
!739 = distinct !{!739, !734, !737, !170}
!740 = !DILocation(line: 28, column: 2, scope: !730)
!741 = distinct !DISubprogram(name: "matmult", scope: !742, file: !742, line: 52, type: !145, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !146)
!742 = !DIFile(filename: "test/matmult.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!743 = !DILocation(line: 54, column: 4, scope: !741)
!744 = !DILocation(line: 61, column: 4, scope: !741)
!745 = !DILocation(line: 62, column: 1, scope: !741)
!746 = distinct !DISubprogram(name: "InitSeed", scope: !742, file: !742, line: 65, type: !145, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !146)
!747 = !DILocation(line: 73, column: 8, scope: !746)
!748 = !DILocation(line: 74, column: 1, scope: !746)
!749 = distinct !DISubprogram(name: "Test", scope: !742, file: !742, line: 77, type: !145, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !146)
!750 = !DILocation(line: 88, column: 4, scope: !749)
!751 = !DILocation(line: 89, column: 4, scope: !749)
!752 = !DILocation(line: 96, column: 4, scope: !749)
!753 = !DILocation(line: 105, column: 1, scope: !749)
!754 = distinct !DISubprogram(name: "Initialize", scope: !742, file: !742, line: 108, type: !145, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !146)
!755 = !DILocation(line: 115, column: 9, scope: !754)
!756 = !DILocation(line: 0, scope: !754)
!757 = !DILocation(line: 115, column: 36, scope: !754)
!758 = !DILocation(line: 115, column: 4, scope: !754)
!759 = !DILocation(line: 116, column: 12, scope: !754)
!760 = !DILocation(line: 116, column: 39, scope: !754)
!761 = !DILocation(line: 116, column: 7, scope: !754)
!762 = !DILocation(line: 117, column: 42, scope: !754)
!763 = !DILocation(line: 117, column: 10, scope: !754)
!764 = !DILocation(line: 117, column: 40, scope: !754)
!765 = !DILocation(line: 116, column: 63, scope: !754)
!766 = distinct !{!766, !761, !767, !170}
!767 = !DILocation(line: 117, column: 56, scope: !754)
!768 = !DILocation(line: 115, column: 60, scope: !754)
!769 = distinct !{!769, !758, !767, !170}
!770 = !DILocation(line: 118, column: 1, scope: !754)
!771 = distinct !DISubprogram(name: "Multiply", scope: !742, file: !742, line: 147, type: !145, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !146)
!772 = !DILocation(line: 154, column: 9, scope: !771)
!773 = !DILocation(line: 0, scope: !771)
!774 = !DILocation(line: 154, column: 26, scope: !771)
!775 = !DILocation(line: 154, column: 4, scope: !771)
!776 = !DILocation(line: 155, column: 12, scope: !771)
!777 = !DILocation(line: 155, column: 29, scope: !771)
!778 = !DILocation(line: 155, column: 7, scope: !771)
!779 = !DILocation(line: 157, column: 10, scope: !771)
!780 = !DILocation(line: 157, column: 29, scope: !771)
!781 = !DILocation(line: 158, column: 15, scope: !771)
!782 = !DILocation(line: 158, column: 32, scope: !771)
!783 = !DILocation(line: 158, column: 10, scope: !771)
!784 = !DILocation(line: 160, column: 16, scope: !771)
!785 = !DILocation(line: 160, column: 34, scope: !771)
!786 = !DILocation(line: 160, column: 32, scope: !771)
!787 = !DILocation(line: 159, column: 13, scope: !771)
!788 = !DILocation(line: 159, column: 32, scope: !771)
!789 = !DILocation(line: 158, column: 51, scope: !771)
!790 = distinct !{!790, !783, !791, !170}
!791 = !DILocation(line: 160, column: 48, scope: !771)
!792 = !DILocation(line: 161, column: 8, scope: !771)
!793 = !DILocation(line: 155, column: 48, scope: !771)
!794 = distinct !{!794, !778, !792, !170}
!795 = !DILocation(line: 154, column: 45, scope: !771)
!796 = distinct !{!796, !775, !792, !170}
!797 = !DILocation(line: 162, column: 1, scope: !771)
!798 = distinct !DISubprogram(name: "RandomInteger", scope: !742, file: !742, line: 121, type: !145, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !146)
!799 = !DILocation(line: 126, column: 13, scope: !798)
!800 = !DILocation(line: 126, column: 18, scope: !798)
!801 = !DILocation(line: 126, column: 25, scope: !798)
!802 = !DILocation(line: 126, column: 31, scope: !798)
!803 = !DILocation(line: 126, column: 9, scope: !798)
!804 = !DILocation(line: 127, column: 4, scope: !798)
!805 = distinct !DISubprogram(name: "ndes_init", scope: !806, file: !806, line: 63, type: !145, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!806 = !DIFile(filename: "test/ndes.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "6a4124562fff6afefc25084a1c1c3d13")
!807 = !DILocation(line: 79, column: 9, scope: !805)
!808 = !DILocation(line: 0, scope: !805)
!809 = !DILocation(line: 79, column: 18, scope: !805)
!810 = !DILocation(line: 79, column: 3, scope: !805)
!811 = !DILocation(line: 80, column: 22, scope: !805)
!812 = !DILocation(line: 80, column: 5, scope: !805)
!813 = !DILocation(line: 80, column: 20, scope: !805)
!814 = !DILocation(line: 79, column: 25, scope: !805)
!815 = distinct !{!815, !810, !816, !170}
!816 = !DILocation(line: 80, column: 39, scope: !805)
!817 = !DILocation(line: 82, column: 9, scope: !805)
!818 = !DILocation(line: 82, column: 18, scope: !805)
!819 = !DILocation(line: 82, column: 3, scope: !805)
!820 = !DILocation(line: 83, column: 22, scope: !805)
!821 = !DILocation(line: 83, column: 5, scope: !805)
!822 = !DILocation(line: 83, column: 20, scope: !805)
!823 = !DILocation(line: 82, column: 25, scope: !805)
!824 = distinct !{!824, !819, !825, !170}
!825 = !DILocation(line: 83, column: 39, scope: !805)
!826 = !DILocation(line: 85, column: 14, scope: !805)
!827 = !DILocation(line: 86, column: 14, scope: !805)
!828 = !DILocation(line: 87, column: 14, scope: !805)
!829 = !DILocation(line: 88, column: 14, scope: !805)
!830 = !DILocation(line: 90, column: 17, scope: !805)
!831 = !DILocation(line: 90, column: 15, scope: !805)
!832 = !DILocation(line: 91, column: 12, scope: !805)
!833 = !DILocation(line: 92, column: 1, scope: !805)
!834 = distinct !DISubprogram(name: "ndes_des", scope: !806, file: !806, line: 96, type: !145, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!835 = !DILocation(line: 127, column: 8, scope: !834)
!836 = !DILocation(line: 128, column: 14, scope: !834)
!837 = !DILocation(line: 129, column: 19, scope: !834)
!838 = !DILocation(line: 132, column: 11, scope: !834)
!839 = !DILocation(line: 0, scope: !834)
!840 = !DILocation(line: 132, column: 20, scope: !834)
!841 = !DILocation(line: 132, column: 5, scope: !834)
!842 = !DILocation(line: 133, column: 33, scope: !834)
!843 = !DILocation(line: 133, column: 7, scope: !834)
!844 = !DILocation(line: 133, column: 21, scope: !834)
!845 = !DILocation(line: 132, column: 28, scope: !834)
!846 = distinct !{!846, !841, !847, !170}
!847 = !DILocation(line: 133, column: 39, scope: !834)
!848 = !DILocation(line: 134, column: 3, scope: !834)
!849 = !DILocation(line: 136, column: 8, scope: !834)
!850 = !DILocation(line: 137, column: 13, scope: !834)
!851 = !DILocation(line: 138, column: 29, scope: !834)
!852 = !DILocation(line: 138, column: 16, scope: !834)
!853 = !DILocation(line: 141, column: 11, scope: !834)
!854 = !DILocation(line: 141, column: 29, scope: !834)
!855 = !DILocation(line: 141, column: 5, scope: !834)
!856 = !DILocation(line: 142, column: 31, scope: !834)
!857 = !DILocation(line: 142, column: 33, scope: !834)
!858 = !DILocation(line: 142, column: 60, scope: !834)
!859 = !DILocation(line: 142, column: 42, scope: !834)
!860 = !DILocation(line: 142, column: 40, scope: !834)
!861 = !DILocation(line: 142, column: 18, scope: !834)
!862 = !DILocation(line: 143, column: 29, scope: !834)
!863 = !DILocation(line: 143, column: 31, scope: !834)
!864 = !DILocation(line: 143, column: 18, scope: !834)
!865 = !DILocation(line: 144, column: 55, scope: !834)
!866 = !DILocation(line: 144, column: 37, scope: !834)
!867 = !DILocation(line: 144, column: 35, scope: !834)
!868 = !DILocation(line: 144, column: 18, scope: !834)
!869 = !DILocation(line: 145, column: 5, scope: !834)
!870 = !DILocation(line: 141, column: 36, scope: !834)
!871 = !DILocation(line: 141, column: 41, scope: !834)
!872 = distinct !{!872, !855, !869, !170}
!873 = !DILocation(line: 148, column: 11, scope: !834)
!874 = !DILocation(line: 148, column: 20, scope: !834)
!875 = !DILocation(line: 148, column: 5, scope: !834)
!876 = !DILocation(line: 149, column: 12, scope: !834)
!877 = !DILocation(line: 150, column: 7, scope: !834)
!878 = !DILocation(line: 151, column: 7, scope: !834)
!879 = !DILocation(line: 151, column: 18, scope: !834)
!880 = !DILocation(line: 152, column: 5, scope: !834)
!881 = !DILocation(line: 148, column: 28, scope: !834)
!882 = distinct !{!882, !875, !880, !170}
!883 = !DILocation(line: 153, column: 3, scope: !834)
!884 = !DILocation(line: 155, column: 17, scope: !834)
!885 = !DILocation(line: 155, column: 19, scope: !834)
!886 = !DILocation(line: 155, column: 8, scope: !834)
!887 = !DILocation(line: 155, column: 10, scope: !834)
!888 = !DILocation(line: 158, column: 9, scope: !834)
!889 = !DILocation(line: 158, column: 27, scope: !834)
!890 = !DILocation(line: 158, column: 3, scope: !834)
!891 = !DILocation(line: 159, column: 19, scope: !834)
!892 = !DILocation(line: 159, column: 21, scope: !834)
!893 = !DILocation(line: 159, column: 10, scope: !834)
!894 = !DILocation(line: 159, column: 12, scope: !834)
!895 = !DILocation(line: 160, column: 45, scope: !834)
!896 = !DILocation(line: 160, column: 27, scope: !834)
!897 = !DILocation(line: 160, column: 25, scope: !834)
!898 = !DILocation(line: 160, column: 10, scope: !834)
!899 = !DILocation(line: 160, column: 12, scope: !834)
!900 = !DILocation(line: 161, column: 19, scope: !834)
!901 = !DILocation(line: 161, column: 21, scope: !834)
!902 = !DILocation(line: 161, column: 10, scope: !834)
!903 = !DILocation(line: 161, column: 12, scope: !834)
!904 = !DILocation(line: 162, column: 45, scope: !834)
!905 = !DILocation(line: 162, column: 27, scope: !834)
!906 = !DILocation(line: 162, column: 25, scope: !834)
!907 = !DILocation(line: 162, column: 10, scope: !834)
!908 = !DILocation(line: 162, column: 12, scope: !834)
!909 = !DILocation(line: 163, column: 3, scope: !834)
!910 = !DILocation(line: 158, column: 34, scope: !834)
!911 = !DILocation(line: 158, column: 39, scope: !834)
!912 = distinct !{!912, !890, !909, !170}
!913 = !DILocation(line: 165, column: 9, scope: !834)
!914 = !DILocation(line: 165, column: 18, scope: !834)
!915 = !DILocation(line: 165, column: 3, scope: !834)
!916 = !DILocation(line: 166, column: 16, scope: !834)
!917 = !DILocation(line: 166, column: 12, scope: !834)
!918 = !DILocation(line: 166, column: 26, scope: !834)
!919 = !DILocation(line: 167, column: 22, scope: !834)
!920 = !DILocation(line: 167, column: 5, scope: !834)
!921 = !DILocation(line: 168, column: 16, scope: !834)
!922 = !DILocation(line: 168, column: 8, scope: !834)
!923 = !DILocation(line: 169, column: 19, scope: !834)
!924 = !DILocation(line: 169, column: 10, scope: !834)
!925 = !DILocation(line: 169, column: 12, scope: !834)
!926 = !DILocation(line: 170, column: 10, scope: !834)
!927 = !DILocation(line: 170, column: 12, scope: !834)
!928 = !DILocation(line: 171, column: 3, scope: !834)
!929 = !DILocation(line: 165, column: 26, scope: !834)
!930 = distinct !{!930, !915, !928, !170}
!931 = !DILocation(line: 173, column: 13, scope: !834)
!932 = !DILocation(line: 173, column: 6, scope: !834)
!933 = !DILocation(line: 174, column: 17, scope: !834)
!934 = !DILocation(line: 174, column: 8, scope: !834)
!935 = !DILocation(line: 174, column: 10, scope: !834)
!936 = !DILocation(line: 175, column: 8, scope: !834)
!937 = !DILocation(line: 175, column: 10, scope: !834)
!938 = !DILocation(line: 176, column: 25, scope: !834)
!939 = !DILocation(line: 176, column: 27, scope: !834)
!940 = !DILocation(line: 176, column: 12, scope: !834)
!941 = !DILocation(line: 176, column: 14, scope: !834)
!942 = !DILocation(line: 179, column: 9, scope: !834)
!943 = !DILocation(line: 179, column: 27, scope: !834)
!944 = !DILocation(line: 179, column: 3, scope: !834)
!945 = !DILocation(line: 180, column: 27, scope: !834)
!946 = !DILocation(line: 180, column: 29, scope: !834)
!947 = !DILocation(line: 180, column: 14, scope: !834)
!948 = !DILocation(line: 180, column: 16, scope: !834)
!949 = !DILocation(line: 181, column: 54, scope: !834)
!950 = !DILocation(line: 181, column: 35, scope: !834)
!951 = !DILocation(line: 181, column: 33, scope: !834)
!952 = !DILocation(line: 181, column: 14, scope: !834)
!953 = !DILocation(line: 181, column: 16, scope: !834)
!954 = !DILocation(line: 182, column: 27, scope: !834)
!955 = !DILocation(line: 182, column: 29, scope: !834)
!956 = !DILocation(line: 182, column: 14, scope: !834)
!957 = !DILocation(line: 182, column: 16, scope: !834)
!958 = !DILocation(line: 183, column: 54, scope: !834)
!959 = !DILocation(line: 183, column: 35, scope: !834)
!960 = !DILocation(line: 183, column: 33, scope: !834)
!961 = !DILocation(line: 183, column: 14, scope: !834)
!962 = !DILocation(line: 183, column: 16, scope: !834)
!963 = !DILocation(line: 184, column: 3, scope: !834)
!964 = !DILocation(line: 179, column: 34, scope: !834)
!965 = !DILocation(line: 179, column: 39, scope: !834)
!966 = distinct !{!966, !944, !963, !170}
!967 = !DILocation(line: 185, column: 1, scope: !834)
!968 = distinct !DISubprogram(name: "ndes_getbit", scope: !806, file: !806, line: 333, type: !145, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!969 = !DILocation(line: 335, column: 14, scope: !968)
!970 = !DILocation(line: 335, column: 8, scope: !968)
!971 = !DILocation(line: 336, column: 12, scope: !968)
!972 = !DILocation(line: 336, column: 39, scope: !968)
!973 = !DILocation(line: 336, column: 30, scope: !968)
!974 = !DILocation(line: 336, column: 5, scope: !968)
!975 = !DILocation(line: 338, column: 28, scope: !968)
!976 = !DILocation(line: 338, column: 12, scope: !968)
!977 = !DILocation(line: 338, column: 47, scope: !968)
!978 = !DILocation(line: 338, column: 38, scope: !968)
!979 = !DILocation(line: 338, column: 5, scope: !968)
!980 = !DILocation(line: 0, scope: !968)
!981 = !DILocation(line: 339, column: 1, scope: !968)
!982 = distinct !DISubprogram(name: "ndes_ks", scope: !806, file: !806, line: 341, type: !145, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!983 = !DILocation(line: 345, column: 10, scope: !982)
!984 = !DILocation(line: 345, column: 15, scope: !982)
!985 = !DILocation(line: 345, column: 20, scope: !982)
!986 = !DILocation(line: 345, column: 25, scope: !982)
!987 = !DILocation(line: 345, column: 30, scope: !982)
!988 = !DILocation(line: 345, column: 35, scope: !982)
!989 = !DILocation(line: 345, column: 40, scope: !982)
!990 = !DILocation(line: 345, column: 8, scope: !982)
!991 = !DILocation(line: 346, column: 29, scope: !982)
!992 = !DILocation(line: 346, column: 55, scope: !982)
!993 = !DILocation(line: 346, column: 31, scope: !982)
!994 = !DILocation(line: 346, column: 65, scope: !982)
!995 = !DILocation(line: 346, column: 16, scope: !982)
!996 = !DILocation(line: 347, column: 29, scope: !982)
!997 = !DILocation(line: 347, column: 55, scope: !982)
!998 = !DILocation(line: 347, column: 31, scope: !982)
!999 = !DILocation(line: 347, column: 65, scope: !982)
!1000 = !DILocation(line: 347, column: 16, scope: !982)
!1001 = !DILocation(line: 348, column: 3, scope: !982)
!1002 = !DILocation(line: 350, column: 11, scope: !982)
!1003 = !DILocation(line: 0, scope: !982)
!1004 = !DILocation(line: 350, column: 20, scope: !982)
!1005 = !DILocation(line: 350, column: 5, scope: !982)
!1006 = !DILocation(line: 351, column: 31, scope: !982)
!1007 = !DILocation(line: 351, column: 57, scope: !982)
!1008 = !DILocation(line: 351, column: 33, scope: !982)
!1009 = !DILocation(line: 351, column: 67, scope: !982)
!1010 = !DILocation(line: 351, column: 18, scope: !982)
!1011 = !DILocation(line: 352, column: 31, scope: !982)
!1012 = !DILocation(line: 352, column: 57, scope: !982)
!1013 = !DILocation(line: 352, column: 33, scope: !982)
!1014 = !DILocation(line: 352, column: 67, scope: !982)
!1015 = !DILocation(line: 352, column: 18, scope: !982)
!1016 = !DILocation(line: 353, column: 5, scope: !982)
!1017 = !DILocation(line: 350, column: 27, scope: !982)
!1018 = distinct !{!1018, !1005, !1016, !170}
!1019 = !DILocation(line: 356, column: 35, scope: !982)
!1020 = !DILocation(line: 356, column: 37, scope: !982)
!1021 = !DILocation(line: 356, column: 23, scope: !982)
!1022 = !DILocation(line: 356, column: 25, scope: !982)
!1023 = !DILocation(line: 356, column: 11, scope: !982)
!1024 = !DILocation(line: 356, column: 13, scope: !982)
!1025 = !DILocation(line: 359, column: 9, scope: !982)
!1026 = !DILocation(line: 359, column: 35, scope: !982)
!1027 = !DILocation(line: 359, column: 3, scope: !982)
!1028 = !DILocation(line: 360, column: 25, scope: !982)
!1029 = !DILocation(line: 360, column: 27, scope: !982)
!1030 = !DILocation(line: 360, column: 13, scope: !982)
!1031 = !DILocation(line: 360, column: 15, scope: !982)
!1032 = !DILocation(line: 362, column: 40, scope: !982)
!1033 = !DILocation(line: 362, column: 17, scope: !982)
!1034 = !DILocation(line: 361, column: 33, scope: !982)
!1035 = !DILocation(line: 361, column: 31, scope: !982)
!1036 = !DILocation(line: 361, column: 13, scope: !982)
!1037 = !DILocation(line: 361, column: 15, scope: !982)
!1038 = !DILocation(line: 363, column: 25, scope: !982)
!1039 = !DILocation(line: 363, column: 27, scope: !982)
!1040 = !DILocation(line: 363, column: 13, scope: !982)
!1041 = !DILocation(line: 363, column: 15, scope: !982)
!1042 = !DILocation(line: 365, column: 40, scope: !982)
!1043 = !DILocation(line: 365, column: 17, scope: !982)
!1044 = !DILocation(line: 364, column: 33, scope: !982)
!1045 = !DILocation(line: 364, column: 31, scope: !982)
!1046 = !DILocation(line: 364, column: 13, scope: !982)
!1047 = !DILocation(line: 364, column: 15, scope: !982)
!1048 = !DILocation(line: 366, column: 25, scope: !982)
!1049 = !DILocation(line: 366, column: 27, scope: !982)
!1050 = !DILocation(line: 366, column: 13, scope: !982)
!1051 = !DILocation(line: 366, column: 15, scope: !982)
!1052 = !DILocation(line: 368, column: 40, scope: !982)
!1053 = !DILocation(line: 368, column: 17, scope: !982)
!1054 = !DILocation(line: 367, column: 33, scope: !982)
!1055 = !DILocation(line: 367, column: 31, scope: !982)
!1056 = !DILocation(line: 367, column: 13, scope: !982)
!1057 = !DILocation(line: 367, column: 15, scope: !982)
!1058 = !DILocation(line: 369, column: 3, scope: !982)
!1059 = !DILocation(line: 359, column: 42, scope: !982)
!1060 = !DILocation(line: 359, column: 47, scope: !982)
!1061 = !DILocation(line: 359, column: 52, scope: !982)
!1062 = distinct !{!1062, !1027, !1058, !170}
!1063 = !DILocation(line: 370, column: 1, scope: !982)
!1064 = distinct !DISubprogram(name: "ndes_cyfun", scope: !806, file: !806, line: 188, type: !145, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!1065 = !DILocation(line: 281, column: 17, scope: !1064)
!1066 = !DILocation(line: 290, column: 20, scope: !1064)
!1067 = !DILocation(line: 290, column: 22, scope: !1064)
!1068 = !DILocation(line: 290, column: 13, scope: !1064)
!1069 = !DILocation(line: 290, column: 15, scope: !1064)
!1070 = !DILocation(line: 290, column: 6, scope: !1064)
!1071 = !DILocation(line: 290, column: 8, scope: !1064)
!1072 = !DILocation(line: 293, column: 11, scope: !1064)
!1073 = !DILocation(line: 293, column: 9, scope: !1064)
!1074 = !DILocation(line: 0, scope: !1064)
!1075 = !DILocation(line: 293, column: 33, scope: !1064)
!1076 = !DILocation(line: 293, column: 35, scope: !1064)
!1077 = !DILocation(line: 293, column: 3, scope: !1064)
!1078 = !DILocation(line: 294, column: 17, scope: !1064)
!1079 = !DILocation(line: 294, column: 19, scope: !1064)
!1080 = !DILocation(line: 294, column: 38, scope: !1064)
!1081 = !DILocation(line: 294, column: 33, scope: !1064)
!1082 = !DILocation(line: 294, column: 30, scope: !1064)
!1083 = !DILocation(line: 294, column: 44, scope: !1064)
!1084 = !DILocation(line: 294, column: 26, scope: !1064)
!1085 = !DILocation(line: 294, column: 8, scope: !1064)
!1086 = !DILocation(line: 294, column: 10, scope: !1064)
!1087 = !DILocation(line: 295, column: 17, scope: !1064)
!1088 = !DILocation(line: 295, column: 19, scope: !1064)
!1089 = !DILocation(line: 295, column: 33, scope: !1064)
!1090 = !DILocation(line: 295, column: 30, scope: !1064)
!1091 = !DILocation(line: 295, column: 44, scope: !1064)
!1092 = !DILocation(line: 295, column: 26, scope: !1064)
!1093 = !DILocation(line: 295, column: 8, scope: !1064)
!1094 = !DILocation(line: 295, column: 10, scope: !1064)
!1095 = !DILocation(line: 296, column: 17, scope: !1064)
!1096 = !DILocation(line: 296, column: 19, scope: !1064)
!1097 = !DILocation(line: 296, column: 33, scope: !1064)
!1098 = !DILocation(line: 296, column: 30, scope: !1064)
!1099 = !DILocation(line: 296, column: 44, scope: !1064)
!1100 = !DILocation(line: 296, column: 26, scope: !1064)
!1101 = !DILocation(line: 296, column: 8, scope: !1064)
!1102 = !DILocation(line: 296, column: 10, scope: !1064)
!1103 = !DILocation(line: 297, column: 3, scope: !1064)
!1104 = !DILocation(line: 293, column: 42, scope: !1064)
!1105 = !DILocation(line: 293, column: 47, scope: !1064)
!1106 = !DILocation(line: 293, column: 52, scope: !1064)
!1107 = distinct !{!1107, !1077, !1103, !170}
!1108 = !DILocation(line: 298, column: 13, scope: !1064)
!1109 = !DILocation(line: 298, column: 6, scope: !1064)
!1110 = !DILocation(line: 298, column: 8, scope: !1064)
!1111 = !DILocation(line: 299, column: 13, scope: !1064)
!1112 = !DILocation(line: 299, column: 6, scope: !1064)
!1113 = !DILocation(line: 299, column: 8, scope: !1064)
!1114 = !DILocation(line: 300, column: 13, scope: !1064)
!1115 = !DILocation(line: 300, column: 6, scope: !1064)
!1116 = !DILocation(line: 300, column: 8, scope: !1064)
!1117 = !DILocation(line: 301, column: 35, scope: !1064)
!1118 = !DILocation(line: 301, column: 37, scope: !1064)
!1119 = !DILocation(line: 301, column: 68, scope: !1064)
!1120 = !DILocation(line: 301, column: 45, scope: !1064)
!1121 = !DILocation(line: 302, column: 35, scope: !1064)
!1122 = !DILocation(line: 302, column: 37, scope: !1064)
!1123 = !DILocation(line: 302, column: 69, scope: !1064)
!1124 = !DILocation(line: 302, column: 71, scope: !1064)
!1125 = !DILocation(line: 302, column: 44, scope: !1064)
!1126 = !DILocation(line: 305, column: 11, scope: !1064)
!1127 = !DILocation(line: 305, column: 9, scope: !1064)
!1128 = !DILocation(line: 305, column: 23, scope: !1064)
!1129 = !DILocation(line: 305, column: 25, scope: !1064)
!1130 = !DILocation(line: 305, column: 3, scope: !1064)
!1131 = !DILocation(line: 306, column: 16, scope: !1064)
!1132 = !DILocation(line: 306, column: 10, scope: !1064)
!1133 = !DILocation(line: 306, column: 5, scope: !1064)
!1134 = !DILocation(line: 306, column: 14, scope: !1064)
!1135 = !DILocation(line: 307, column: 16, scope: !1064)
!1136 = !DILocation(line: 307, column: 5, scope: !1064)
!1137 = !DILocation(line: 307, column: 14, scope: !1064)
!1138 = !DILocation(line: 310, column: 3, scope: !1064)
!1139 = !DILocation(line: 309, column: 12, scope: !1064)
!1140 = !DILocation(line: 308, column: 12, scope: !1064)
!1141 = !DILocation(line: 305, column: 32, scope: !1064)
!1142 = !DILocation(line: 305, column: 37, scope: !1064)
!1143 = distinct !{!1143, !1130, !1138, !170}
!1144 = !DILocation(line: 315, column: 12, scope: !1064)
!1145 = !DILocation(line: 315, column: 9, scope: !1064)
!1146 = !DILocation(line: 315, column: 17, scope: !1064)
!1147 = !DILocation(line: 315, column: 20, scope: !1064)
!1148 = !DILocation(line: 315, column: 3, scope: !1064)
!1149 = !DILocation(line: 316, column: 14, scope: !1064)
!1150 = !DILocation(line: 316, column: 9, scope: !1064)
!1151 = !DILocation(line: 316, column: 7, scope: !1064)
!1152 = !DILocation(line: 317, column: 16, scope: !1064)
!1153 = !DILocation(line: 317, column: 26, scope: !1064)
!1154 = !DILocation(line: 317, column: 39, scope: !1064)
!1155 = !DILocation(line: 317, column: 50, scope: !1064)
!1156 = !DILocation(line: 317, column: 33, scope: !1064)
!1157 = !DILocation(line: 318, column: 16, scope: !1064)
!1158 = !DILocation(line: 318, column: 26, scope: !1064)
!1159 = !DILocation(line: 318, column: 37, scope: !1064)
!1160 = !DILocation(line: 318, column: 39, scope: !1064)
!1161 = !DILocation(line: 318, column: 33, scope: !1064)
!1162 = !DILocation(line: 319, column: 18, scope: !1064)
!1163 = !DILocation(line: 319, column: 28, scope: !1064)
!1164 = !DILocation(line: 319, column: 12, scope: !1064)
!1165 = !DILocation(line: 319, column: 41, scope: !1064)
!1166 = !DILocation(line: 319, column: 52, scope: !1064)
!1167 = !DILocation(line: 319, column: 35, scope: !1064)
!1168 = !DILocation(line: 320, column: 31, scope: !1064)
!1169 = !DILocation(line: 320, column: 11, scope: !1064)
!1170 = !DILocation(line: 321, column: 28, scope: !1064)
!1171 = !DILocation(line: 322, column: 3, scope: !1064)
!1172 = !DILocation(line: 321, column: 19, scope: !1064)
!1173 = !DILocation(line: 321, column: 26, scope: !1064)
!1174 = !DILocation(line: 315, column: 28, scope: !1064)
!1175 = distinct !{!1175, !1148, !1171, !170}
!1176 = !DILocation(line: 324, column: 9, scope: !1064)
!1177 = !DILocation(line: 328, column: 11, scope: !1064)
!1178 = !DILocation(line: 328, column: 9, scope: !1064)
!1179 = !DILocation(line: 328, column: 17, scope: !1064)
!1180 = !DILocation(line: 328, column: 19, scope: !1064)
!1181 = !DILocation(line: 328, column: 3, scope: !1064)
!1182 = !DILocation(line: 329, column: 15, scope: !1064)
!1183 = !DILocation(line: 329, column: 21, scope: !1064)
!1184 = !DILocation(line: 329, column: 11, scope: !1064)
!1185 = !DILocation(line: 329, column: 5, scope: !1064)
!1186 = !DILocation(line: 328, column: 26, scope: !1064)
!1187 = distinct !{!1187, !1181, !1188, !170}
!1188 = !DILocation(line: 329, column: 26, scope: !1064)
!1189 = !DILocation(line: 330, column: 22, scope: !1064)
!1190 = !DILocation(line: 330, column: 17, scope: !1064)
!1191 = !DILocation(line: 330, column: 14, scope: !1064)
!1192 = !DILocation(line: 330, column: 28, scope: !1064)
!1193 = !DILocation(line: 330, column: 9, scope: !1064)
!1194 = !DILocation(line: 331, column: 1, scope: !1064)
!1195 = distinct !DISubprogram(name: "ndes_return", scope: !806, file: !806, line: 372, type: !145, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!1196 = !DILocation(line: 374, column: 21, scope: !1195)
!1197 = !DILocation(line: 374, column: 34, scope: !1195)
!1198 = !DILocation(line: 374, column: 23, scope: !1195)
!1199 = !DILocation(line: 374, column: 54, scope: !1195)
!1200 = !DILocation(line: 374, column: 3, scope: !1195)
!1201 = distinct !DISubprogram(name: "ndes_main", scope: !806, file: !806, line: 377, type: !145, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!1202 = !DILocation(line: 379, column: 47, scope: !1201)
!1203 = !DILocation(line: 379, column: 3, scope: !1201)
!1204 = !DILocation(line: 380, column: 1, scope: !1201)
!1205 = distinct !DISubprogram(name: "ndes", scope: !806, file: !806, line: 384, type: !145, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !146)
!1206 = !DILocation(line: 386, column: 3, scope: !1205)
!1207 = !DILocation(line: 387, column: 3, scope: !1205)
!1208 = !DILocation(line: 389, column: 12, scope: !1205)
!1209 = !DILocation(line: 389, column: 3, scope: !1205)
!1210 = distinct !DISubprogram(name: "prime_initSeed", scope: !1211, file: !1211, line: 49, type: !145, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1211 = !DIFile(filename: "test/prime.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "93a752eea1599691c878402ecbe8f5e7")
!1212 = !DILocation(line: 49, column: 36, scope: !1210)
!1213 = !DILocation(line: 49, column: 41, scope: !1210)
!1214 = distinct !DISubprogram(name: "prime_randomInteger", scope: !1211, file: !1211, line: 51, type: !145, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1215 = !DILocation(line: 52, column: 18, scope: !1214)
!1216 = !DILocation(line: 52, column: 29, scope: !1214)
!1217 = !DILocation(line: 52, column: 36, scope: !1214)
!1218 = !DILocation(line: 52, column: 42, scope: !1214)
!1219 = !DILocation(line: 52, column: 14, scope: !1214)
!1220 = !DILocation(line: 53, column: 11, scope: !1214)
!1221 = !DILocation(line: 53, column: 3, scope: !1214)
!1222 = distinct !DISubprogram(name: "prime_init", scope: !1211, file: !1211, line: 56, type: !145, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1223 = !DILocation(line: 57, column: 3, scope: !1222)
!1224 = !DILocation(line: 59, column: 13, scope: !1222)
!1225 = !DILocation(line: 59, column: 11, scope: !1222)
!1226 = !DILocation(line: 60, column: 13, scope: !1222)
!1227 = !DILocation(line: 60, column: 11, scope: !1222)
!1228 = !DILocation(line: 61, column: 1, scope: !1222)
!1229 = distinct !DISubprogram(name: "prime_return", scope: !1211, file: !1211, line: 63, type: !145, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1230 = !DILocation(line: 63, column: 29, scope: !1229)
!1231 = !DILocation(line: 63, column: 22, scope: !1229)
!1232 = distinct !DISubprogram(name: "prime_divides", scope: !1211, file: !1211, line: 69, type: !145, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1233 = !DILocation(line: 70, column: 13, scope: !1232)
!1234 = !DILocation(line: 70, column: 17, scope: !1232)
!1235 = !DILocation(line: 70, column: 10, scope: !1232)
!1236 = !DILocation(line: 70, column: 3, scope: !1232)
!1237 = distinct !DISubprogram(name: "prime_even", scope: !1211, file: !1211, line: 73, type: !145, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1238 = !DILocation(line: 73, column: 52, scope: !1237)
!1239 = !DILocation(line: 73, column: 44, scope: !1237)
!1240 = distinct !DISubprogram(name: "prime_prime", scope: !1211, file: !1211, line: 75, type: !145, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1241 = !DILocation(line: 77, column: 7, scope: !1240)
!1242 = !DILocation(line: 78, column: 15, scope: !1240)
!1243 = !DILocation(line: 78, column: 5, scope: !1240)
!1244 = !DILocation(line: 79, column: 42, scope: !1240)
!1245 = !DILocation(line: 0, scope: !1240)
!1246 = !DILocation(line: 79, column: 51, scope: !1240)
!1247 = !DILocation(line: 79, column: 55, scope: !1240)
!1248 = !DILocation(line: 79, column: 37, scope: !1240)
!1249 = !DILocation(line: 80, column: 9, scope: !1240)
!1250 = !DILocation(line: 81, column: 7, scope: !1240)
!1251 = !DILocation(line: 82, column: 3, scope: !1240)
!1252 = !DILocation(line: 79, column: 63, scope: !1240)
!1253 = distinct !{!1253, !1248, !1251, !170}
!1254 = !DILocation(line: 83, column: 13, scope: !1240)
!1255 = !DILocation(line: 83, column: 3, scope: !1240)
!1256 = !DILocation(line: 84, column: 1, scope: !1240)
!1257 = distinct !DISubprogram(name: "prime_swap", scope: !1211, file: !1211, line: 86, type: !145, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1258 = !DILocation(line: 87, column: 22, scope: !1257)
!1259 = !DILocation(line: 88, column: 8, scope: !1257)
!1260 = !DILocation(line: 88, column: 6, scope: !1257)
!1261 = !DILocation(line: 89, column: 6, scope: !1257)
!1262 = !DILocation(line: 90, column: 1, scope: !1257)
!1263 = distinct !DISubprogram(name: "prime_main", scope: !1211, file: !1211, line: 96, type: !145, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1264 = !DILocation(line: 97, column: 3, scope: !1263)
!1265 = !DILocation(line: 99, column: 33, scope: !1263)
!1266 = !DILocation(line: 99, column: 21, scope: !1263)
!1267 = !DILocation(line: 99, column: 42, scope: !1263)
!1268 = !DILocation(line: 99, column: 58, scope: !1263)
!1269 = !DILocation(line: 99, column: 46, scope: !1263)
!1270 = !DILocation(line: 99, column: 45, scope: !1263)
!1271 = !DILocation(line: 99, column: 16, scope: !1263)
!1272 = !DILocation(line: 100, column: 1, scope: !1263)
!1273 = distinct !DISubprogram(name: "prime", scope: !1211, file: !1211, line: 102, type: !145, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !146)
!1274 = !DILocation(line: 103, column: 3, scope: !1273)
!1275 = !DILocation(line: 104, column: 3, scope: !1273)
!1276 = !DILocation(line: 106, column: 3, scope: !1273)
!1277 = !DILocation(line: 107, column: 1, scope: !1273)
!1278 = distinct !DISubprogram(name: "rad2deg_init", scope: !1279, file: !1279, line: 47, type: !145, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !146)
!1279 = !DIFile(filename: "test/rad2deg.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!1280 = !DILocation(line: 48, column: 13, scope: !1278)
!1281 = !DILocation(line: 49, column: 13, scope: !1278)
!1282 = !DILocation(line: 50, column: 1, scope: !1278)
!1283 = distinct !DISubprogram(name: "rad2deg_return", scope: !1279, file: !1279, line: 56, type: !145, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !146)
!1284 = !DILocation(line: 57, column: 14, scope: !1283)
!1285 = !DILocation(line: 59, column: 12, scope: !1283)
!1286 = !DILocation(line: 59, column: 7, scope: !1283)
!1287 = !DILocation(line: 60, column: 5, scope: !1283)
!1288 = !DILocation(line: 62, column: 5, scope: !1283)
!1289 = !DILocation(line: 0, scope: !1283)
!1290 = !DILocation(line: 63, column: 1, scope: !1283)
!1291 = distinct !DISubprogram(name: "rad2deg_main", scope: !1279, file: !1279, line: 69, type: !145, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !146)
!1292 = !DILocation(line: 70, column: 45, scope: !1291)
!1293 = !DILocation(line: 0, scope: !1291)
!1294 = !DILocation(line: 71, column: 55, scope: !1291)
!1295 = !DILocation(line: 70, column: 40, scope: !1291)
!1296 = !DILocation(line: 73, column: 20, scope: !1291)
!1297 = !DILocation(line: 73, column: 17, scope: !1291)
!1298 = !DILocation(line: 73, column: 7, scope: !1291)
!1299 = !DILocation(line: 72, column: 55, scope: !1291)
!1300 = distinct !{!1300, !1295, !1296, !170}
!1301 = !DILocation(line: 74, column: 1, scope: !1291)
!1302 = distinct !DISubprogram(name: "rad2deg", scope: !1279, file: !1279, line: 76, type: !145, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !146)
!1303 = !DILocation(line: 77, column: 3, scope: !1302)
!1304 = !DILocation(line: 78, column: 3, scope: !1302)
!1305 = !DILocation(line: 79, column: 3, scope: !1302)
!1306 = !DILocation(line: 80, column: 1, scope: !1302)
!1307 = distinct !DISubprogram(name: "__absvdi2", scope: !21, file: !21, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !146)
!1308 = !DILocation(line: 25, column: 11, scope: !1307)
!1309 = !DILocation(line: 25, column: 9, scope: !1307)
!1310 = !DILocation(line: 26, column: 9, scope: !1307)
!1311 = !DILocation(line: 28, column: 20, scope: !1307)
!1312 = !DILocation(line: 28, column: 5, scope: !1307)
!1313 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !73, file: !73, line: 57, type: !145, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !146)
!1314 = !DILocation(line: 59, column: 1, scope: !1313)
!1315 = distinct !DISubprogram(name: "__absvsi2", scope: !23, file: !23, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !146)
!1316 = !DILocation(line: 25, column: 11, scope: !1315)
!1317 = !DILocation(line: 25, column: 9, scope: !1315)
!1318 = !DILocation(line: 26, column: 9, scope: !1315)
!1319 = !DILocation(line: 28, column: 20, scope: !1315)
!1320 = !DILocation(line: 28, column: 5, scope: !1315)
!1321 = distinct !DISubprogram(name: "__addvdi3", scope: !27, file: !27, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !146)
!1322 = !DILocation(line: 24, column: 27, scope: !1321)
!1323 = !DILocation(line: 25, column: 11, scope: !1321)
!1324 = !DILocation(line: 25, column: 9, scope: !1321)
!1325 = !DILocation(line: 27, column: 15, scope: !1321)
!1326 = !DILocation(line: 27, column: 13, scope: !1321)
!1327 = !DILocation(line: 28, column: 13, scope: !1321)
!1328 = !DILocation(line: 29, column: 5, scope: !1321)
!1329 = !DILocation(line: 32, column: 15, scope: !1321)
!1330 = !DILocation(line: 32, column: 13, scope: !1321)
!1331 = !DILocation(line: 33, column: 13, scope: !1321)
!1332 = !DILocation(line: 35, column: 5, scope: !1321)
!1333 = distinct !DISubprogram(name: "__addvsi3", scope: !29, file: !29, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !146)
!1334 = !DILocation(line: 24, column: 27, scope: !1333)
!1335 = !DILocation(line: 25, column: 11, scope: !1333)
!1336 = !DILocation(line: 25, column: 9, scope: !1333)
!1337 = !DILocation(line: 27, column: 15, scope: !1333)
!1338 = !DILocation(line: 27, column: 13, scope: !1333)
!1339 = !DILocation(line: 28, column: 13, scope: !1333)
!1340 = !DILocation(line: 29, column: 5, scope: !1333)
!1341 = !DILocation(line: 32, column: 15, scope: !1333)
!1342 = !DILocation(line: 32, column: 13, scope: !1333)
!1343 = !DILocation(line: 33, column: 13, scope: !1333)
!1344 = !DILocation(line: 35, column: 5, scope: !1333)
!1345 = distinct !DISubprogram(name: "__ashldi3", scope: !33, file: !33, line: 24, type: !145, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !146)
!1346 = !DILocation(line: 29, column: 11, scope: !1345)
!1347 = !DILocation(line: 29, column: 15, scope: !1345)
!1348 = !DILocation(line: 30, column: 11, scope: !1345)
!1349 = !DILocation(line: 30, column: 9, scope: !1345)
!1350 = !DILocation(line: 32, column: 18, scope: !1345)
!1351 = !DILocation(line: 32, column: 22, scope: !1345)
!1352 = !DILocation(line: 33, column: 33, scope: !1345)
!1353 = !DILocation(line: 33, column: 43, scope: !1345)
!1354 = !DILocation(line: 33, column: 37, scope: !1345)
!1355 = !DILocation(line: 33, column: 16, scope: !1345)
!1356 = !DILocation(line: 33, column: 18, scope: !1345)
!1357 = !DILocation(line: 33, column: 23, scope: !1345)
!1358 = !DILocation(line: 34, column: 5, scope: !1345)
!1359 = !DILocation(line: 37, column: 15, scope: !1345)
!1360 = !DILocation(line: 37, column: 13, scope: !1345)
!1361 = !DILocation(line: 38, column: 13, scope: !1345)
!1362 = !DILocation(line: 39, column: 33, scope: !1345)
!1363 = !DILocation(line: 39, column: 37, scope: !1345)
!1364 = !DILocation(line: 39, column: 18, scope: !1345)
!1365 = !DILocation(line: 39, column: 23, scope: !1345)
!1366 = !DILocation(line: 40, column: 32, scope: !1345)
!1367 = !DILocation(line: 40, column: 34, scope: !1345)
!1368 = !DILocation(line: 40, column: 39, scope: !1345)
!1369 = !DILocation(line: 40, column: 56, scope: !1345)
!1370 = !DILocation(line: 40, column: 77, scope: !1345)
!1371 = !DILocation(line: 40, column: 60, scope: !1345)
!1372 = !DILocation(line: 40, column: 45, scope: !1345)
!1373 = !DILocation(line: 40, column: 16, scope: !1345)
!1374 = !DILocation(line: 40, column: 18, scope: !1345)
!1375 = !DILocation(line: 40, column: 23, scope: !1345)
!1376 = !DILocation(line: 42, column: 19, scope: !1345)
!1377 = !DILocation(line: 42, column: 5, scope: !1345)
!1378 = !DILocation(line: 0, scope: !1345)
!1379 = !DILocation(line: 43, column: 1, scope: !1345)
!1380 = distinct !DISubprogram(name: "__ashrdi3", scope: !37, file: !37, line: 24, type: !145, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !36, retainedNodes: !146)
!1381 = !DILocation(line: 29, column: 11, scope: !1380)
!1382 = !DILocation(line: 29, column: 15, scope: !1380)
!1383 = !DILocation(line: 30, column: 11, scope: !1380)
!1384 = !DILocation(line: 30, column: 9, scope: !1380)
!1385 = !DILocation(line: 33, column: 31, scope: !1380)
!1386 = !DILocation(line: 33, column: 33, scope: !1380)
!1387 = !DILocation(line: 33, column: 38, scope: !1380)
!1388 = !DILocation(line: 33, column: 16, scope: !1380)
!1389 = !DILocation(line: 33, column: 18, scope: !1380)
!1390 = !DILocation(line: 33, column: 23, scope: !1380)
!1391 = !DILocation(line: 34, column: 30, scope: !1380)
!1392 = !DILocation(line: 34, column: 32, scope: !1380)
!1393 = !DILocation(line: 34, column: 43, scope: !1380)
!1394 = !DILocation(line: 34, column: 37, scope: !1380)
!1395 = !DILocation(line: 34, column: 18, scope: !1380)
!1396 = !DILocation(line: 34, column: 22, scope: !1380)
!1397 = !DILocation(line: 35, column: 5, scope: !1380)
!1398 = !DILocation(line: 38, column: 15, scope: !1380)
!1399 = !DILocation(line: 38, column: 13, scope: !1380)
!1400 = !DILocation(line: 39, column: 13, scope: !1380)
!1401 = !DILocation(line: 40, column: 32, scope: !1380)
!1402 = !DILocation(line: 40, column: 34, scope: !1380)
!1403 = !DILocation(line: 40, column: 39, scope: !1380)
!1404 = !DILocation(line: 40, column: 16, scope: !1380)
!1405 = !DILocation(line: 40, column: 18, scope: !1380)
!1406 = !DILocation(line: 40, column: 24, scope: !1380)
!1407 = !DILocation(line: 41, column: 31, scope: !1380)
!1408 = !DILocation(line: 41, column: 33, scope: !1380)
!1409 = !DILocation(line: 41, column: 55, scope: !1380)
!1410 = !DILocation(line: 41, column: 38, scope: !1380)
!1411 = !DILocation(line: 41, column: 72, scope: !1380)
!1412 = !DILocation(line: 41, column: 76, scope: !1380)
!1413 = !DILocation(line: 41, column: 61, scope: !1380)
!1414 = !DILocation(line: 41, column: 18, scope: !1380)
!1415 = !DILocation(line: 41, column: 22, scope: !1380)
!1416 = !DILocation(line: 43, column: 19, scope: !1380)
!1417 = !DILocation(line: 43, column: 5, scope: !1380)
!1418 = !DILocation(line: 0, scope: !1380)
!1419 = !DILocation(line: 44, column: 1, scope: !1380)
!1420 = distinct !DISubprogram(name: "__clzdi2", scope: !41, file: !41, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !146)
!1421 = !DILocation(line: 25, column: 7, scope: !1420)
!1422 = !DILocation(line: 25, column: 11, scope: !1420)
!1423 = !DILocation(line: 26, column: 26, scope: !1420)
!1424 = !DILocation(line: 26, column: 28, scope: !1420)
!1425 = !DILocation(line: 26, column: 33, scope: !1420)
!1426 = !DILocation(line: 27, column: 29, scope: !1420)
!1427 = !DILocation(line: 27, column: 31, scope: !1420)
!1428 = !DILocation(line: 27, column: 49, scope: !1420)
!1429 = !DILocation(line: 27, column: 42, scope: !1420)
!1430 = !DILocation(line: 27, column: 12, scope: !1420)
!1431 = !{i32 0, i32 33}
!1432 = !DILocation(line: 28, column: 15, scope: !1420)
!1433 = !DILocation(line: 27, column: 59, scope: !1420)
!1434 = !DILocation(line: 27, column: 5, scope: !1420)
!1435 = distinct !DISubprogram(name: "__clzsi2", scope: !43, file: !43, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !146)
!1436 = !DILocation(line: 25, column: 34, scope: !1435)
!1437 = !DILocation(line: 25, column: 40, scope: !1435)
!1438 = !DILocation(line: 26, column: 14, scope: !1435)
!1439 = !DILocation(line: 26, column: 7, scope: !1435)
!1440 = !DILocation(line: 29, column: 13, scope: !1435)
!1441 = !DILocation(line: 29, column: 23, scope: !1435)
!1442 = !DILocation(line: 29, column: 29, scope: !1435)
!1443 = !DILocation(line: 30, column: 13, scope: !1435)
!1444 = !DILocation(line: 30, column: 7, scope: !1435)
!1445 = !DILocation(line: 31, column: 7, scope: !1435)
!1446 = !DILocation(line: 33, column: 13, scope: !1435)
!1447 = !DILocation(line: 33, column: 21, scope: !1435)
!1448 = !DILocation(line: 33, column: 27, scope: !1435)
!1449 = !DILocation(line: 34, column: 13, scope: !1435)
!1450 = !DILocation(line: 34, column: 7, scope: !1435)
!1451 = !DILocation(line: 35, column: 7, scope: !1435)
!1452 = !DILocation(line: 37, column: 13, scope: !1435)
!1453 = !DILocation(line: 37, column: 20, scope: !1435)
!1454 = !DILocation(line: 37, column: 26, scope: !1435)
!1455 = !DILocation(line: 38, column: 13, scope: !1435)
!1456 = !DILocation(line: 38, column: 7, scope: !1435)
!1457 = !DILocation(line: 39, column: 7, scope: !1435)
!1458 = !DILocation(line: 52, column: 20, scope: !1435)
!1459 = !DILocation(line: 52, column: 37, scope: !1435)
!1460 = !DILocation(line: 52, column: 25, scope: !1435)
!1461 = !DILocation(line: 52, column: 14, scope: !1435)
!1462 = !DILocation(line: 52, column: 5, scope: !1435)
!1463 = distinct !DISubprogram(name: "__cmpdi2", scope: !47, file: !47, line: 23, type: !145, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !146)
!1464 = !DILocation(line: 26, column: 7, scope: !1463)
!1465 = !DILocation(line: 26, column: 11, scope: !1463)
!1466 = !DILocation(line: 28, column: 7, scope: !1463)
!1467 = !DILocation(line: 28, column: 11, scope: !1463)
!1468 = !DILocation(line: 29, column: 11, scope: !1463)
!1469 = !DILocation(line: 29, column: 13, scope: !1463)
!1470 = !DILocation(line: 29, column: 22, scope: !1463)
!1471 = !DILocation(line: 29, column: 24, scope: !1463)
!1472 = !DILocation(line: 29, column: 18, scope: !1463)
!1473 = !DILocation(line: 29, column: 9, scope: !1463)
!1474 = !DILocation(line: 30, column: 9, scope: !1463)
!1475 = !DILocation(line: 31, column: 11, scope: !1463)
!1476 = !DILocation(line: 31, column: 13, scope: !1463)
!1477 = !DILocation(line: 31, column: 22, scope: !1463)
!1478 = !DILocation(line: 31, column: 24, scope: !1463)
!1479 = !DILocation(line: 31, column: 18, scope: !1463)
!1480 = !DILocation(line: 31, column: 9, scope: !1463)
!1481 = !DILocation(line: 32, column: 9, scope: !1463)
!1482 = !DILocation(line: 33, column: 13, scope: !1463)
!1483 = !DILocation(line: 33, column: 23, scope: !1463)
!1484 = !DILocation(line: 33, column: 17, scope: !1463)
!1485 = !DILocation(line: 33, column: 9, scope: !1463)
!1486 = !DILocation(line: 34, column: 9, scope: !1463)
!1487 = !DILocation(line: 35, column: 13, scope: !1463)
!1488 = !DILocation(line: 35, column: 23, scope: !1463)
!1489 = !DILocation(line: 35, column: 17, scope: !1463)
!1490 = !DILocation(line: 35, column: 9, scope: !1463)
!1491 = !DILocation(line: 36, column: 9, scope: !1463)
!1492 = !DILocation(line: 37, column: 5, scope: !1463)
!1493 = !DILocation(line: 0, scope: !1463)
!1494 = !DILocation(line: 38, column: 1, scope: !1463)
!1495 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !47, file: !47, line: 46, type: !145, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !46, retainedNodes: !146)
!1496 = !DILocation(line: 48, column: 9, scope: !1495)
!1497 = !DILocation(line: 48, column: 24, scope: !1495)
!1498 = !DILocation(line: 48, column: 2, scope: !1495)
!1499 = distinct !DISubprogram(name: "__ctzdi2", scope: !51, file: !51, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !146)
!1500 = !DILocation(line: 25, column: 7, scope: !1499)
!1501 = !DILocation(line: 25, column: 11, scope: !1499)
!1502 = !DILocation(line: 26, column: 28, scope: !1499)
!1503 = !DILocation(line: 26, column: 32, scope: !1499)
!1504 = !DILocation(line: 27, column: 29, scope: !1499)
!1505 = !DILocation(line: 27, column: 31, scope: !1499)
!1506 = !DILocation(line: 27, column: 41, scope: !1499)
!1507 = !DILocation(line: 27, column: 12, scope: !1499)
!1508 = !DILocation(line: 28, column: 18, scope: !1499)
!1509 = !DILocation(line: 27, column: 59, scope: !1499)
!1510 = !DILocation(line: 27, column: 5, scope: !1499)
!1511 = distinct !DISubprogram(name: "__ctzsi2", scope: !53, file: !53, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !146)
!1512 = !DILocation(line: 25, column: 20, scope: !1511)
!1513 = !DILocation(line: 25, column: 34, scope: !1511)
!1514 = !DILocation(line: 25, column: 40, scope: !1511)
!1515 = !DILocation(line: 26, column: 7, scope: !1511)
!1516 = !DILocation(line: 29, column: 13, scope: !1511)
!1517 = !DILocation(line: 29, column: 23, scope: !1511)
!1518 = !DILocation(line: 29, column: 29, scope: !1511)
!1519 = !DILocation(line: 30, column: 7, scope: !1511)
!1520 = !DILocation(line: 31, column: 7, scope: !1511)
!1521 = !DILocation(line: 33, column: 13, scope: !1511)
!1522 = !DILocation(line: 33, column: 21, scope: !1511)
!1523 = !DILocation(line: 33, column: 27, scope: !1511)
!1524 = !DILocation(line: 34, column: 7, scope: !1511)
!1525 = !DILocation(line: 35, column: 7, scope: !1511)
!1526 = !DILocation(line: 37, column: 13, scope: !1511)
!1527 = !DILocation(line: 37, column: 20, scope: !1511)
!1528 = !DILocation(line: 37, column: 26, scope: !1511)
!1529 = !DILocation(line: 38, column: 7, scope: !1511)
!1530 = !DILocation(line: 40, column: 7, scope: !1511)
!1531 = !DILocation(line: 56, column: 25, scope: !1511)
!1532 = !DILocation(line: 56, column: 20, scope: !1511)
!1533 = !DILocation(line: 56, column: 44, scope: !1511)
!1534 = !DILocation(line: 56, column: 32, scope: !1511)
!1535 = !DILocation(line: 56, column: 14, scope: !1511)
!1536 = !DILocation(line: 56, column: 5, scope: !1511)
!1537 = distinct !DISubprogram(name: "__divdi3", scope: !57, file: !57, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !56, retainedNodes: !146)
!1538 = !DILocation(line: 23, column: 20, scope: !1537)
!1539 = !DILocation(line: 24, column: 20, scope: !1537)
!1540 = !DILocation(line: 25, column: 12, scope: !1537)
!1541 = !DILocation(line: 25, column: 19, scope: !1537)
!1542 = !DILocation(line: 26, column: 12, scope: !1537)
!1543 = !DILocation(line: 26, column: 19, scope: !1537)
!1544 = !DILocation(line: 27, column: 9, scope: !1537)
!1545 = !DILocation(line: 28, column: 13, scope: !1537)
!1546 = !DILocation(line: 28, column: 44, scope: !1537)
!1547 = !DILocation(line: 28, column: 51, scope: !1537)
!1548 = !DILocation(line: 28, column: 5, scope: !1537)
!1549 = distinct !DISubprogram(name: "__udivmoddi4", scope: !115, file: !115, line: 24, type: !145, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !114, retainedNodes: !146)
!1550 = !DILocation(line: 29, column: 7, scope: !1549)
!1551 = !DILocation(line: 29, column: 11, scope: !1549)
!1552 = !DILocation(line: 31, column: 7, scope: !1549)
!1553 = !DILocation(line: 31, column: 11, scope: !1549)
!1554 = !DILocation(line: 36, column: 11, scope: !1549)
!1555 = !DILocation(line: 36, column: 13, scope: !1549)
!1556 = !DILocation(line: 36, column: 18, scope: !1549)
!1557 = !DILocation(line: 36, column: 9, scope: !1549)
!1558 = !DILocation(line: 38, column: 15, scope: !1549)
!1559 = !DILocation(line: 38, column: 17, scope: !1549)
!1560 = !DILocation(line: 38, column: 22, scope: !1549)
!1561 = !DILocation(line: 38, column: 13, scope: !1549)
!1562 = !DILocation(line: 44, column: 17, scope: !1549)
!1563 = !DILocation(line: 45, column: 28, scope: !1549)
!1564 = !DILocation(line: 45, column: 38, scope: !1549)
!1565 = !DILocation(line: 45, column: 32, scope: !1549)
!1566 = !DILocation(line: 45, column: 24, scope: !1549)
!1567 = !DILocation(line: 45, column: 22, scope: !1549)
!1568 = !DILocation(line: 45, column: 17, scope: !1549)
!1569 = !DILocation(line: 46, column: 24, scope: !1549)
!1570 = !DILocation(line: 46, column: 34, scope: !1549)
!1571 = !DILocation(line: 46, column: 28, scope: !1549)
!1572 = !DILocation(line: 46, column: 20, scope: !1549)
!1573 = !DILocation(line: 46, column: 13, scope: !1549)
!1574 = !DILocation(line: 52, column: 13, scope: !1549)
!1575 = !DILocation(line: 53, column: 24, scope: !1549)
!1576 = !DILocation(line: 53, column: 20, scope: !1549)
!1577 = !DILocation(line: 53, column: 18, scope: !1549)
!1578 = !DILocation(line: 53, column: 13, scope: !1549)
!1579 = !DILocation(line: 54, column: 9, scope: !1549)
!1580 = !DILocation(line: 57, column: 13, scope: !1549)
!1581 = !DILocation(line: 57, column: 17, scope: !1549)
!1582 = !DILocation(line: 57, column: 9, scope: !1549)
!1583 = !DILocation(line: 59, column: 15, scope: !1549)
!1584 = !DILocation(line: 59, column: 17, scope: !1549)
!1585 = !DILocation(line: 59, column: 22, scope: !1549)
!1586 = !DILocation(line: 59, column: 13, scope: !1549)
!1587 = !DILocation(line: 65, column: 17, scope: !1549)
!1588 = !DILocation(line: 66, column: 26, scope: !1549)
!1589 = !DILocation(line: 66, column: 28, scope: !1549)
!1590 = !DILocation(line: 66, column: 39, scope: !1549)
!1591 = !DILocation(line: 66, column: 33, scope: !1549)
!1592 = !DILocation(line: 66, column: 24, scope: !1549)
!1593 = !DILocation(line: 66, column: 22, scope: !1549)
!1594 = !DILocation(line: 66, column: 17, scope: !1549)
!1595 = !DILocation(line: 67, column: 22, scope: !1549)
!1596 = !DILocation(line: 67, column: 24, scope: !1549)
!1597 = !DILocation(line: 67, column: 35, scope: !1549)
!1598 = !DILocation(line: 67, column: 29, scope: !1549)
!1599 = !DILocation(line: 67, column: 20, scope: !1549)
!1600 = !DILocation(line: 67, column: 13, scope: !1549)
!1601 = !DILocation(line: 70, column: 17, scope: !1549)
!1602 = !DILocation(line: 70, column: 21, scope: !1549)
!1603 = !DILocation(line: 70, column: 13, scope: !1549)
!1604 = !DILocation(line: 76, column: 17, scope: !1549)
!1605 = !DILocation(line: 78, column: 30, scope: !1549)
!1606 = !DILocation(line: 78, column: 32, scope: !1549)
!1607 = !DILocation(line: 78, column: 41, scope: !1549)
!1608 = !DILocation(line: 78, column: 43, scope: !1549)
!1609 = !DILocation(line: 78, column: 37, scope: !1549)
!1610 = !DILocation(line: 78, column: 19, scope: !1549)
!1611 = !DILocation(line: 78, column: 21, scope: !1549)
!1612 = !DILocation(line: 78, column: 26, scope: !1549)
!1613 = !DILocation(line: 79, column: 21, scope: !1549)
!1614 = !DILocation(line: 79, column: 25, scope: !1549)
!1615 = !DILocation(line: 80, column: 26, scope: !1549)
!1616 = !DILocation(line: 80, column: 22, scope: !1549)
!1617 = !DILocation(line: 81, column: 13, scope: !1549)
!1618 = !DILocation(line: 82, column: 22, scope: !1549)
!1619 = !DILocation(line: 82, column: 24, scope: !1549)
!1620 = !DILocation(line: 82, column: 33, scope: !1549)
!1621 = !DILocation(line: 82, column: 35, scope: !1549)
!1622 = !DILocation(line: 82, column: 29, scope: !1549)
!1623 = !DILocation(line: 82, column: 20, scope: !1549)
!1624 = !DILocation(line: 82, column: 13, scope: !1549)
!1625 = !DILocation(line: 88, column: 16, scope: !1549)
!1626 = !DILocation(line: 88, column: 18, scope: !1549)
!1627 = !DILocation(line: 88, column: 28, scope: !1549)
!1628 = !DILocation(line: 88, column: 30, scope: !1549)
!1629 = !DILocation(line: 88, column: 35, scope: !1549)
!1630 = !DILocation(line: 88, column: 23, scope: !1549)
!1631 = !DILocation(line: 88, column: 41, scope: !1549)
!1632 = !DILocation(line: 88, column: 13, scope: !1549)
!1633 = !DILocation(line: 90, column: 17, scope: !1549)
!1634 = !DILocation(line: 92, column: 31, scope: !1549)
!1635 = !DILocation(line: 92, column: 21, scope: !1549)
!1636 = !DILocation(line: 92, column: 25, scope: !1549)
!1637 = !DILocation(line: 93, column: 30, scope: !1549)
!1638 = !DILocation(line: 93, column: 32, scope: !1549)
!1639 = !DILocation(line: 93, column: 42, scope: !1549)
!1640 = !DILocation(line: 93, column: 44, scope: !1549)
!1641 = !DILocation(line: 93, column: 49, scope: !1549)
!1642 = !DILocation(line: 93, column: 37, scope: !1549)
!1643 = !DILocation(line: 93, column: 19, scope: !1549)
!1644 = !DILocation(line: 93, column: 21, scope: !1549)
!1645 = !DILocation(line: 93, column: 26, scope: !1549)
!1646 = !DILocation(line: 94, column: 26, scope: !1549)
!1647 = !DILocation(line: 94, column: 22, scope: !1549)
!1648 = !DILocation(line: 95, column: 13, scope: !1549)
!1649 = !DILocation(line: 96, column: 22, scope: !1549)
!1650 = !DILocation(line: 96, column: 24, scope: !1549)
!1651 = !DILocation(line: 96, column: 48, scope: !1549)
!1652 = !DILocation(line: 96, column: 50, scope: !1549)
!1653 = !DILocation(line: 96, column: 32, scope: !1549)
!1654 = !DILocation(line: 96, column: 29, scope: !1549)
!1655 = !DILocation(line: 96, column: 20, scope: !1549)
!1656 = !DILocation(line: 96, column: 13, scope: !1549)
!1657 = !DILocation(line: 102, column: 30, scope: !1549)
!1658 = !DILocation(line: 102, column: 32, scope: !1549)
!1659 = !DILocation(line: 102, column: 14, scope: !1549)
!1660 = !DILocation(line: 102, column: 56, scope: !1549)
!1661 = !DILocation(line: 102, column: 58, scope: !1549)
!1662 = !DILocation(line: 102, column: 40, scope: !1549)
!1663 = !DILocation(line: 102, column: 38, scope: !1549)
!1664 = !DILocation(line: 104, column: 16, scope: !1549)
!1665 = !DILocation(line: 104, column: 13, scope: !1549)
!1666 = !DILocation(line: 106, column: 16, scope: !1549)
!1667 = !DILocation(line: 107, column: 26, scope: !1549)
!1668 = !DILocation(line: 107, column: 22, scope: !1549)
!1669 = !DILocation(line: 107, column: 17, scope: !1549)
!1670 = !DILocation(line: 108, column: 13, scope: !1549)
!1671 = !DILocation(line: 110, column: 9, scope: !1549)
!1672 = !DILocation(line: 113, column: 13, scope: !1549)
!1673 = !DILocation(line: 113, column: 17, scope: !1549)
!1674 = !DILocation(line: 114, column: 24, scope: !1549)
!1675 = !DILocation(line: 114, column: 45, scope: !1549)
!1676 = !DILocation(line: 114, column: 28, scope: !1549)
!1677 = !DILocation(line: 114, column: 11, scope: !1549)
!1678 = !DILocation(line: 114, column: 13, scope: !1549)
!1679 = !DILocation(line: 114, column: 18, scope: !1549)
!1680 = !DILocation(line: 116, column: 22, scope: !1549)
!1681 = !DILocation(line: 116, column: 24, scope: !1549)
!1682 = !DILocation(line: 116, column: 29, scope: !1549)
!1683 = !DILocation(line: 116, column: 11, scope: !1549)
!1684 = !DILocation(line: 116, column: 13, scope: !1549)
!1685 = !DILocation(line: 116, column: 18, scope: !1549)
!1686 = !DILocation(line: 117, column: 22, scope: !1549)
!1687 = !DILocation(line: 117, column: 24, scope: !1549)
!1688 = !DILocation(line: 117, column: 46, scope: !1549)
!1689 = !DILocation(line: 117, column: 29, scope: !1549)
!1690 = !DILocation(line: 117, column: 60, scope: !1549)
!1691 = !DILocation(line: 117, column: 64, scope: !1549)
!1692 = !DILocation(line: 117, column: 53, scope: !1549)
!1693 = !DILocation(line: 117, column: 13, scope: !1549)
!1694 = !DILocation(line: 117, column: 17, scope: !1549)
!1695 = !DILocation(line: 118, column: 5, scope: !1549)
!1696 = !DILocation(line: 121, column: 15, scope: !1549)
!1697 = !DILocation(line: 121, column: 17, scope: !1549)
!1698 = !DILocation(line: 121, column: 22, scope: !1549)
!1699 = !DILocation(line: 121, column: 13, scope: !1549)
!1700 = !DILocation(line: 127, column: 22, scope: !1549)
!1701 = !DILocation(line: 127, column: 43, scope: !1549)
!1702 = !DILocation(line: 127, column: 17, scope: !1549)
!1703 = !DILocation(line: 129, column: 21, scope: !1549)
!1704 = !DILocation(line: 130, column: 32, scope: !1549)
!1705 = !DILocation(line: 130, column: 43, scope: !1549)
!1706 = !DILocation(line: 130, column: 47, scope: !1549)
!1707 = !DILocation(line: 130, column: 36, scope: !1549)
!1708 = !DILocation(line: 130, column: 28, scope: !1549)
!1709 = !DILocation(line: 130, column: 26, scope: !1549)
!1710 = !DILocation(line: 130, column: 21, scope: !1549)
!1711 = !DILocation(line: 131, column: 25, scope: !1549)
!1712 = !DILocation(line: 131, column: 29, scope: !1549)
!1713 = !DILocation(line: 131, column: 21, scope: !1549)
!1714 = !DILocation(line: 132, column: 30, scope: !1549)
!1715 = !DILocation(line: 132, column: 21, scope: !1549)
!1716 = !DILocation(line: 133, column: 40, scope: !1549)
!1717 = !DILocation(line: 133, column: 22, scope: !1549)
!1718 = !DILocation(line: 134, column: 30, scope: !1549)
!1719 = !DILocation(line: 134, column: 32, scope: !1549)
!1720 = !DILocation(line: 134, column: 37, scope: !1549)
!1721 = !DILocation(line: 134, column: 19, scope: !1549)
!1722 = !DILocation(line: 134, column: 21, scope: !1549)
!1723 = !DILocation(line: 134, column: 26, scope: !1549)
!1724 = !DILocation(line: 135, column: 30, scope: !1549)
!1725 = !DILocation(line: 135, column: 32, scope: !1549)
!1726 = !DILocation(line: 135, column: 54, scope: !1549)
!1727 = !DILocation(line: 135, column: 37, scope: !1549)
!1728 = !DILocation(line: 135, column: 68, scope: !1549)
!1729 = !DILocation(line: 135, column: 72, scope: !1549)
!1730 = !DILocation(line: 135, column: 61, scope: !1549)
!1731 = !DILocation(line: 135, column: 21, scope: !1549)
!1732 = !DILocation(line: 135, column: 25, scope: !1549)
!1733 = !DILocation(line: 136, column: 26, scope: !1549)
!1734 = !DILocation(line: 136, column: 17, scope: !1549)
!1735 = !DILocation(line: 142, column: 55, scope: !1549)
!1736 = !DILocation(line: 142, column: 37, scope: !1549)
!1737 = !DILocation(line: 142, column: 35, scope: !1549)
!1738 = !DILocation(line: 142, column: 78, scope: !1549)
!1739 = !DILocation(line: 142, column: 80, scope: !1549)
!1740 = !DILocation(line: 142, column: 62, scope: !1549)
!1741 = !DILocation(line: 142, column: 60, scope: !1549)
!1742 = !DILocation(line: 147, column: 20, scope: !1549)
!1743 = !DILocation(line: 147, column: 17, scope: !1549)
!1744 = !DILocation(line: 149, column: 21, scope: !1549)
!1745 = !DILocation(line: 149, column: 25, scope: !1549)
!1746 = !DILocation(line: 150, column: 32, scope: !1549)
!1747 = !DILocation(line: 150, column: 19, scope: !1549)
!1748 = !DILocation(line: 150, column: 21, scope: !1549)
!1749 = !DILocation(line: 150, column: 26, scope: !1549)
!1750 = !DILocation(line: 151, column: 19, scope: !1549)
!1751 = !DILocation(line: 151, column: 21, scope: !1549)
!1752 = !DILocation(line: 151, column: 26, scope: !1549)
!1753 = !DILocation(line: 152, column: 29, scope: !1549)
!1754 = !DILocation(line: 152, column: 31, scope: !1549)
!1755 = !DILocation(line: 152, column: 21, scope: !1549)
!1756 = !DILocation(line: 152, column: 25, scope: !1549)
!1757 = !DILocation(line: 153, column: 13, scope: !1549)
!1758 = !DILocation(line: 154, column: 25, scope: !1549)
!1759 = !DILocation(line: 154, column: 22, scope: !1549)
!1760 = !DILocation(line: 156, column: 21, scope: !1549)
!1761 = !DILocation(line: 156, column: 25, scope: !1549)
!1762 = !DILocation(line: 157, column: 32, scope: !1549)
!1763 = !DILocation(line: 157, column: 53, scope: !1549)
!1764 = !DILocation(line: 157, column: 36, scope: !1549)
!1765 = !DILocation(line: 157, column: 19, scope: !1549)
!1766 = !DILocation(line: 157, column: 21, scope: !1549)
!1767 = !DILocation(line: 157, column: 26, scope: !1549)
!1768 = !DILocation(line: 158, column: 30, scope: !1549)
!1769 = !DILocation(line: 158, column: 32, scope: !1549)
!1770 = !DILocation(line: 158, column: 37, scope: !1549)
!1771 = !DILocation(line: 158, column: 19, scope: !1549)
!1772 = !DILocation(line: 158, column: 21, scope: !1549)
!1773 = !DILocation(line: 158, column: 26, scope: !1549)
!1774 = !DILocation(line: 159, column: 30, scope: !1549)
!1775 = !DILocation(line: 159, column: 32, scope: !1549)
!1776 = !DILocation(line: 159, column: 54, scope: !1549)
!1777 = !DILocation(line: 159, column: 37, scope: !1549)
!1778 = !DILocation(line: 159, column: 68, scope: !1549)
!1779 = !DILocation(line: 159, column: 72, scope: !1549)
!1780 = !DILocation(line: 159, column: 61, scope: !1549)
!1781 = !DILocation(line: 159, column: 21, scope: !1549)
!1782 = !DILocation(line: 159, column: 25, scope: !1549)
!1783 = !DILocation(line: 160, column: 13, scope: !1549)
!1784 = !DILocation(line: 163, column: 31, scope: !1549)
!1785 = !DILocation(line: 163, column: 53, scope: !1549)
!1786 = !DILocation(line: 163, column: 35, scope: !1549)
!1787 = !DILocation(line: 163, column: 21, scope: !1549)
!1788 = !DILocation(line: 163, column: 25, scope: !1549)
!1789 = !DILocation(line: 164, column: 31, scope: !1549)
!1790 = !DILocation(line: 164, column: 33, scope: !1549)
!1791 = !DILocation(line: 164, column: 56, scope: !1549)
!1792 = !DILocation(line: 164, column: 38, scope: !1549)
!1793 = !DILocation(line: 165, column: 33, scope: !1549)
!1794 = !DILocation(line: 165, column: 44, scope: !1549)
!1795 = !DILocation(line: 165, column: 37, scope: !1549)
!1796 = !DILocation(line: 164, column: 63, scope: !1549)
!1797 = !DILocation(line: 164, column: 19, scope: !1549)
!1798 = !DILocation(line: 164, column: 21, scope: !1549)
!1799 = !DILocation(line: 164, column: 26, scope: !1549)
!1800 = !DILocation(line: 166, column: 19, scope: !1549)
!1801 = !DILocation(line: 166, column: 21, scope: !1549)
!1802 = !DILocation(line: 166, column: 26, scope: !1549)
!1803 = !DILocation(line: 167, column: 29, scope: !1549)
!1804 = !DILocation(line: 167, column: 31, scope: !1549)
!1805 = !DILocation(line: 167, column: 43, scope: !1549)
!1806 = !DILocation(line: 167, column: 36, scope: !1549)
!1807 = !DILocation(line: 167, column: 21, scope: !1549)
!1808 = !DILocation(line: 167, column: 25, scope: !1549)
!1809 = !DILocation(line: 169, column: 9, scope: !1549)
!1810 = !DILocation(line: 176, column: 34, scope: !1549)
!1811 = !DILocation(line: 176, column: 36, scope: !1549)
!1812 = !DILocation(line: 176, column: 18, scope: !1549)
!1813 = !DILocation(line: 176, column: 60, scope: !1549)
!1814 = !DILocation(line: 176, column: 62, scope: !1549)
!1815 = !DILocation(line: 176, column: 44, scope: !1549)
!1816 = !DILocation(line: 176, column: 42, scope: !1549)
!1817 = !DILocation(line: 178, column: 20, scope: !1549)
!1818 = !DILocation(line: 178, column: 17, scope: !1549)
!1819 = !DILocation(line: 180, column: 21, scope: !1549)
!1820 = !DILocation(line: 181, column: 30, scope: !1549)
!1821 = !DILocation(line: 181, column: 26, scope: !1549)
!1822 = !DILocation(line: 181, column: 21, scope: !1549)
!1823 = !DILocation(line: 182, column: 17, scope: !1549)
!1824 = !DILocation(line: 184, column: 13, scope: !1549)
!1825 = !DILocation(line: 187, column: 17, scope: !1549)
!1826 = !DILocation(line: 187, column: 21, scope: !1549)
!1827 = !DILocation(line: 188, column: 20, scope: !1549)
!1828 = !DILocation(line: 188, column: 17, scope: !1549)
!1829 = !DILocation(line: 190, column: 32, scope: !1549)
!1830 = !DILocation(line: 190, column: 19, scope: !1549)
!1831 = !DILocation(line: 190, column: 21, scope: !1549)
!1832 = !DILocation(line: 190, column: 26, scope: !1549)
!1833 = !DILocation(line: 191, column: 19, scope: !1549)
!1834 = !DILocation(line: 191, column: 21, scope: !1549)
!1835 = !DILocation(line: 191, column: 26, scope: !1549)
!1836 = !DILocation(line: 192, column: 29, scope: !1549)
!1837 = !DILocation(line: 192, column: 31, scope: !1549)
!1838 = !DILocation(line: 192, column: 21, scope: !1549)
!1839 = !DILocation(line: 192, column: 25, scope: !1549)
!1840 = !DILocation(line: 193, column: 13, scope: !1549)
!1841 = !DILocation(line: 196, column: 32, scope: !1549)
!1842 = !DILocation(line: 196, column: 53, scope: !1549)
!1843 = !DILocation(line: 196, column: 36, scope: !1549)
!1844 = !DILocation(line: 196, column: 19, scope: !1549)
!1845 = !DILocation(line: 196, column: 21, scope: !1549)
!1846 = !DILocation(line: 196, column: 26, scope: !1549)
!1847 = !DILocation(line: 197, column: 30, scope: !1549)
!1848 = !DILocation(line: 197, column: 32, scope: !1549)
!1849 = !DILocation(line: 197, column: 37, scope: !1549)
!1850 = !DILocation(line: 197, column: 19, scope: !1549)
!1851 = !DILocation(line: 197, column: 21, scope: !1549)
!1852 = !DILocation(line: 197, column: 26, scope: !1549)
!1853 = !DILocation(line: 198, column: 30, scope: !1549)
!1854 = !DILocation(line: 198, column: 32, scope: !1549)
!1855 = !DILocation(line: 198, column: 54, scope: !1549)
!1856 = !DILocation(line: 198, column: 37, scope: !1549)
!1857 = !DILocation(line: 198, column: 68, scope: !1549)
!1858 = !DILocation(line: 198, column: 72, scope: !1549)
!1859 = !DILocation(line: 198, column: 61, scope: !1549)
!1860 = !DILocation(line: 198, column: 21, scope: !1549)
!1861 = !DILocation(line: 198, column: 25, scope: !1549)
!1862 = !DILocation(line: 0, scope: !1549)
!1863 = !DILocation(line: 209, column: 5, scope: !1549)
!1864 = !DILocation(line: 209, column: 15, scope: !1549)
!1865 = !DILocation(line: 212, column: 23, scope: !1549)
!1866 = !DILocation(line: 212, column: 25, scope: !1549)
!1867 = !DILocation(line: 212, column: 43, scope: !1549)
!1868 = !DILocation(line: 212, column: 36, scope: !1549)
!1869 = !DILocation(line: 212, column: 11, scope: !1549)
!1870 = !DILocation(line: 212, column: 13, scope: !1549)
!1871 = !DILocation(line: 212, column: 18, scope: !1549)
!1872 = !DILocation(line: 213, column: 41, scope: !1549)
!1873 = !DILocation(line: 213, column: 43, scope: !1549)
!1874 = !DILocation(line: 213, column: 36, scope: !1549)
!1875 = !DILocation(line: 213, column: 13, scope: !1549)
!1876 = !DILocation(line: 213, column: 18, scope: !1549)
!1877 = !DILocation(line: 214, column: 23, scope: !1549)
!1878 = !DILocation(line: 214, column: 25, scope: !1549)
!1879 = !DILocation(line: 214, column: 43, scope: !1549)
!1880 = !DILocation(line: 214, column: 36, scope: !1549)
!1881 = !DILocation(line: 214, column: 11, scope: !1549)
!1882 = !DILocation(line: 214, column: 13, scope: !1549)
!1883 = !DILocation(line: 214, column: 18, scope: !1549)
!1884 = !DILocation(line: 215, column: 30, scope: !1549)
!1885 = !DILocation(line: 215, column: 36, scope: !1549)
!1886 = !DILocation(line: 215, column: 13, scope: !1549)
!1887 = !DILocation(line: 215, column: 18, scope: !1549)
!1888 = !DILocation(line: 223, column: 37, scope: !1549)
!1889 = !DILocation(line: 223, column: 45, scope: !1549)
!1890 = !DILocation(line: 223, column: 49, scope: !1549)
!1891 = !DILocation(line: 225, column: 24, scope: !1549)
!1892 = !DILocation(line: 225, column: 11, scope: !1549)
!1893 = !DILocation(line: 225, column: 15, scope: !1549)
!1894 = !DILocation(line: 226, column: 5, scope: !1549)
!1895 = !DILocation(line: 224, column: 19, scope: !1549)
!1896 = !DILocation(line: 224, column: 17, scope: !1549)
!1897 = !DILocation(line: 209, column: 20, scope: !1549)
!1898 = distinct !{!1898, !1863, !1894, !170}
!1899 = !DILocation(line: 227, column: 16, scope: !1549)
!1900 = !DILocation(line: 227, column: 20, scope: !1549)
!1901 = !DILocation(line: 227, column: 28, scope: !1549)
!1902 = !DILocation(line: 227, column: 26, scope: !1549)
!1903 = !DILocation(line: 227, column: 7, scope: !1549)
!1904 = !DILocation(line: 227, column: 11, scope: !1549)
!1905 = !DILocation(line: 228, column: 9, scope: !1549)
!1906 = !DILocation(line: 229, column: 18, scope: !1549)
!1907 = !DILocation(line: 229, column: 14, scope: !1549)
!1908 = !DILocation(line: 229, column: 9, scope: !1549)
!1909 = !DILocation(line: 230, column: 14, scope: !1549)
!1910 = !DILocation(line: 230, column: 5, scope: !1549)
!1911 = !DILocation(line: 231, column: 1, scope: !1549)
!1912 = distinct !DISubprogram(name: "__divmoddi4", scope: !59, file: !59, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !146)
!1913 = !DILocation(line: 22, column: 14, scope: !1912)
!1914 = !DILocation(line: 23, column: 16, scope: !1912)
!1915 = !DILocation(line: 23, column: 12, scope: !1912)
!1916 = !DILocation(line: 23, column: 8, scope: !1912)
!1917 = !DILocation(line: 24, column: 3, scope: !1912)
!1918 = distinct !DISubprogram(name: "__divmodsi4", scope: !61, file: !61, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !146)
!1919 = !DILocation(line: 22, column: 14, scope: !1918)
!1920 = !DILocation(line: 23, column: 16, scope: !1918)
!1921 = !DILocation(line: 23, column: 12, scope: !1918)
!1922 = !DILocation(line: 23, column: 8, scope: !1918)
!1923 = !DILocation(line: 24, column: 3, scope: !1918)
!1924 = distinct !DISubprogram(name: "__divsi3", scope: !63, file: !63, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !62, retainedNodes: !146)
!1925 = !DILocation(line: 25, column: 20, scope: !1924)
!1926 = !DILocation(line: 26, column: 20, scope: !1924)
!1927 = !DILocation(line: 27, column: 12, scope: !1924)
!1928 = !DILocation(line: 27, column: 19, scope: !1924)
!1929 = !DILocation(line: 28, column: 12, scope: !1924)
!1930 = !DILocation(line: 28, column: 19, scope: !1924)
!1931 = !DILocation(line: 29, column: 9, scope: !1924)
!1932 = !DILocation(line: 36, column: 22, scope: !1924)
!1933 = !DILocation(line: 36, column: 33, scope: !1924)
!1934 = !DILocation(line: 36, column: 40, scope: !1924)
!1935 = !DILocation(line: 36, column: 5, scope: !1924)
!1936 = distinct !DISubprogram(name: "__ffsdi2", scope: !67, file: !67, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !146)
!1937 = !DILocation(line: 25, column: 7, scope: !1936)
!1938 = !DILocation(line: 25, column: 11, scope: !1936)
!1939 = !DILocation(line: 26, column: 13, scope: !1936)
!1940 = !DILocation(line: 26, column: 17, scope: !1936)
!1941 = !DILocation(line: 26, column: 9, scope: !1936)
!1942 = !DILocation(line: 28, column: 15, scope: !1936)
!1943 = !DILocation(line: 28, column: 17, scope: !1936)
!1944 = !DILocation(line: 28, column: 22, scope: !1936)
!1945 = !DILocation(line: 28, column: 13, scope: !1936)
!1946 = !DILocation(line: 29, column: 13, scope: !1936)
!1947 = !DILocation(line: 30, column: 32, scope: !1936)
!1948 = !DILocation(line: 30, column: 34, scope: !1936)
!1949 = !DILocation(line: 30, column: 16, scope: !1936)
!1950 = !DILocation(line: 30, column: 40, scope: !1936)
!1951 = !DILocation(line: 30, column: 9, scope: !1936)
!1952 = !DILocation(line: 32, column: 30, scope: !1936)
!1953 = !DILocation(line: 32, column: 12, scope: !1936)
!1954 = !DILocation(line: 32, column: 35, scope: !1936)
!1955 = !DILocation(line: 32, column: 5, scope: !1936)
!1956 = !DILocation(line: 0, scope: !1936)
!1957 = !DILocation(line: 33, column: 1, scope: !1936)
!1958 = distinct !DISubprogram(name: "__ffssi2", scope: !69, file: !69, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !68, retainedNodes: !146)
!1959 = !DILocation(line: 24, column: 11, scope: !1958)
!1960 = !DILocation(line: 24, column: 9, scope: !1958)
!1961 = !DILocation(line: 26, column: 9, scope: !1958)
!1962 = !DILocation(line: 28, column: 12, scope: !1958)
!1963 = !DILocation(line: 28, column: 29, scope: !1958)
!1964 = !DILocation(line: 28, column: 5, scope: !1958)
!1965 = !DILocation(line: 0, scope: !1958)
!1966 = !DILocation(line: 29, column: 1, scope: !1958)
!1967 = distinct !DISubprogram(name: "__lshrdi3", scope: !75, file: !75, line: 24, type: !145, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !74, retainedNodes: !146)
!1968 = !DILocation(line: 29, column: 11, scope: !1967)
!1969 = !DILocation(line: 29, column: 15, scope: !1967)
!1970 = !DILocation(line: 30, column: 11, scope: !1967)
!1971 = !DILocation(line: 30, column: 9, scope: !1967)
!1972 = !DILocation(line: 32, column: 16, scope: !1967)
!1973 = !DILocation(line: 32, column: 18, scope: !1967)
!1974 = !DILocation(line: 32, column: 23, scope: !1967)
!1975 = !DILocation(line: 33, column: 30, scope: !1967)
!1976 = !DILocation(line: 33, column: 32, scope: !1967)
!1977 = !DILocation(line: 33, column: 43, scope: !1967)
!1978 = !DILocation(line: 33, column: 37, scope: !1967)
!1979 = !DILocation(line: 33, column: 18, scope: !1967)
!1980 = !DILocation(line: 33, column: 22, scope: !1967)
!1981 = !DILocation(line: 34, column: 5, scope: !1967)
!1982 = !DILocation(line: 37, column: 15, scope: !1967)
!1983 = !DILocation(line: 37, column: 13, scope: !1967)
!1984 = !DILocation(line: 38, column: 13, scope: !1967)
!1985 = !DILocation(line: 39, column: 32, scope: !1967)
!1986 = !DILocation(line: 39, column: 34, scope: !1967)
!1987 = !DILocation(line: 39, column: 39, scope: !1967)
!1988 = !DILocation(line: 39, column: 16, scope: !1967)
!1989 = !DILocation(line: 39, column: 18, scope: !1967)
!1990 = !DILocation(line: 39, column: 24, scope: !1967)
!1991 = !DILocation(line: 40, column: 31, scope: !1967)
!1992 = !DILocation(line: 40, column: 33, scope: !1967)
!1993 = !DILocation(line: 40, column: 55, scope: !1967)
!1994 = !DILocation(line: 40, column: 38, scope: !1967)
!1995 = !DILocation(line: 40, column: 72, scope: !1967)
!1996 = !DILocation(line: 40, column: 76, scope: !1967)
!1997 = !DILocation(line: 40, column: 61, scope: !1967)
!1998 = !DILocation(line: 40, column: 18, scope: !1967)
!1999 = !DILocation(line: 40, column: 22, scope: !1967)
!2000 = !DILocation(line: 42, column: 19, scope: !1967)
!2001 = !DILocation(line: 42, column: 5, scope: !1967)
!2002 = !DILocation(line: 0, scope: !1967)
!2003 = !DILocation(line: 43, column: 1, scope: !1967)
!2004 = distinct !DISubprogram(name: "__moddi3", scope: !79, file: !79, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !146)
!2005 = !DILocation(line: 24, column: 17, scope: !2004)
!2006 = !DILocation(line: 25, column: 11, scope: !2004)
!2007 = !DILocation(line: 26, column: 12, scope: !2004)
!2008 = !DILocation(line: 26, column: 17, scope: !2004)
!2009 = !DILocation(line: 28, column: 5, scope: !2004)
!2010 = !DILocation(line: 29, column: 21, scope: !2004)
!2011 = !DILocation(line: 29, column: 23, scope: !2004)
!2012 = !DILocation(line: 29, column: 28, scope: !2004)
!2013 = !DILocation(line: 29, column: 5, scope: !2004)
!2014 = distinct !DISubprogram(name: "__modsi3", scope: !81, file: !81, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !146)
!2015 = !DILocation(line: 22, column: 16, scope: !2014)
!2016 = !DILocation(line: 22, column: 31, scope: !2014)
!2017 = !DILocation(line: 22, column: 14, scope: !2014)
!2018 = !DILocation(line: 22, column: 5, scope: !2014)
!2019 = distinct !DISubprogram(name: "__mulvdi3", scope: !85, file: !85, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !146)
!2020 = !DILocation(line: 27, column: 11, scope: !2019)
!2021 = !DILocation(line: 27, column: 9, scope: !2019)
!2022 = !DILocation(line: 29, column: 15, scope: !2019)
!2023 = !DILocation(line: 29, column: 20, scope: !2019)
!2024 = !DILocation(line: 29, column: 25, scope: !2019)
!2025 = !DILocation(line: 29, column: 13, scope: !2019)
!2026 = !DILocation(line: 30, column: 13, scope: !2019)
!2027 = !DILocation(line: 31, column: 9, scope: !2019)
!2028 = !DILocation(line: 33, column: 11, scope: !2019)
!2029 = !DILocation(line: 33, column: 9, scope: !2019)
!2030 = !DILocation(line: 35, column: 15, scope: !2019)
!2031 = !DILocation(line: 35, column: 20, scope: !2019)
!2032 = !DILocation(line: 35, column: 25, scope: !2019)
!2033 = !DILocation(line: 35, column: 13, scope: !2019)
!2034 = !DILocation(line: 36, column: 13, scope: !2019)
!2035 = !DILocation(line: 37, column: 9, scope: !2019)
!2036 = !DILocation(line: 39, column: 19, scope: !2019)
!2037 = !DILocation(line: 40, column: 23, scope: !2019)
!2038 = !DILocation(line: 40, column: 29, scope: !2019)
!2039 = !DILocation(line: 41, column: 19, scope: !2019)
!2040 = !DILocation(line: 42, column: 23, scope: !2019)
!2041 = !DILocation(line: 42, column: 29, scope: !2019)
!2042 = !DILocation(line: 43, column: 15, scope: !2019)
!2043 = !DILocation(line: 43, column: 19, scope: !2019)
!2044 = !DILocation(line: 43, column: 28, scope: !2019)
!2045 = !DILocation(line: 43, column: 9, scope: !2019)
!2046 = !DILocation(line: 44, column: 9, scope: !2019)
!2047 = !DILocation(line: 45, column: 12, scope: !2019)
!2048 = !DILocation(line: 45, column: 9, scope: !2019)
!2049 = !DILocation(line: 47, column: 25, scope: !2019)
!2050 = !DILocation(line: 47, column: 19, scope: !2019)
!2051 = !DILocation(line: 47, column: 13, scope: !2019)
!2052 = !DILocation(line: 48, column: 13, scope: !2019)
!2053 = !DILocation(line: 49, column: 5, scope: !2019)
!2054 = !DILocation(line: 52, column: 27, scope: !2019)
!2055 = !DILocation(line: 52, column: 25, scope: !2019)
!2056 = !DILocation(line: 52, column: 19, scope: !2019)
!2057 = !DILocation(line: 52, column: 13, scope: !2019)
!2058 = !DILocation(line: 53, column: 13, scope: !2019)
!2059 = !DILocation(line: 55, column: 5, scope: !2019)
!2060 = !DILocation(line: 0, scope: !2019)
!2061 = !DILocation(line: 56, column: 1, scope: !2019)
!2062 = distinct !DISubprogram(name: "__mulvsi3", scope: !87, file: !87, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !86, retainedNodes: !146)
!2063 = !DILocation(line: 27, column: 11, scope: !2062)
!2064 = !DILocation(line: 27, column: 9, scope: !2062)
!2065 = !DILocation(line: 29, column: 15, scope: !2062)
!2066 = !DILocation(line: 29, column: 20, scope: !2062)
!2067 = !DILocation(line: 29, column: 25, scope: !2062)
!2068 = !DILocation(line: 29, column: 13, scope: !2062)
!2069 = !DILocation(line: 30, column: 13, scope: !2062)
!2070 = !DILocation(line: 31, column: 9, scope: !2062)
!2071 = !DILocation(line: 33, column: 11, scope: !2062)
!2072 = !DILocation(line: 33, column: 9, scope: !2062)
!2073 = !DILocation(line: 35, column: 15, scope: !2062)
!2074 = !DILocation(line: 35, column: 20, scope: !2062)
!2075 = !DILocation(line: 35, column: 25, scope: !2062)
!2076 = !DILocation(line: 35, column: 13, scope: !2062)
!2077 = !DILocation(line: 36, column: 13, scope: !2062)
!2078 = !DILocation(line: 37, column: 9, scope: !2062)
!2079 = !DILocation(line: 39, column: 19, scope: !2062)
!2080 = !DILocation(line: 40, column: 23, scope: !2062)
!2081 = !DILocation(line: 40, column: 29, scope: !2062)
!2082 = !DILocation(line: 41, column: 19, scope: !2062)
!2083 = !DILocation(line: 42, column: 23, scope: !2062)
!2084 = !DILocation(line: 42, column: 29, scope: !2062)
!2085 = !DILocation(line: 43, column: 15, scope: !2062)
!2086 = !DILocation(line: 43, column: 19, scope: !2062)
!2087 = !DILocation(line: 43, column: 28, scope: !2062)
!2088 = !DILocation(line: 43, column: 9, scope: !2062)
!2089 = !DILocation(line: 44, column: 9, scope: !2062)
!2090 = !DILocation(line: 45, column: 12, scope: !2062)
!2091 = !DILocation(line: 45, column: 9, scope: !2062)
!2092 = !DILocation(line: 47, column: 25, scope: !2062)
!2093 = !DILocation(line: 47, column: 19, scope: !2062)
!2094 = !DILocation(line: 47, column: 13, scope: !2062)
!2095 = !DILocation(line: 48, column: 13, scope: !2062)
!2096 = !DILocation(line: 49, column: 5, scope: !2062)
!2097 = !DILocation(line: 52, column: 27, scope: !2062)
!2098 = !DILocation(line: 52, column: 25, scope: !2062)
!2099 = !DILocation(line: 52, column: 19, scope: !2062)
!2100 = !DILocation(line: 52, column: 13, scope: !2062)
!2101 = !DILocation(line: 53, column: 13, scope: !2062)
!2102 = !DILocation(line: 55, column: 5, scope: !2062)
!2103 = !DILocation(line: 0, scope: !2062)
!2104 = !DILocation(line: 56, column: 1, scope: !2062)
!2105 = distinct !DISubprogram(name: "__paritydi2", scope: !91, file: !91, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !146)
!2106 = !DILocation(line: 23, column: 7, scope: !2105)
!2107 = !DILocation(line: 23, column: 11, scope: !2105)
!2108 = !DILocation(line: 24, column: 26, scope: !2105)
!2109 = !DILocation(line: 24, column: 28, scope: !2105)
!2110 = !DILocation(line: 24, column: 39, scope: !2105)
!2111 = !DILocation(line: 24, column: 33, scope: !2105)
!2112 = !DILocation(line: 24, column: 12, scope: !2105)
!2113 = !DILocation(line: 24, column: 5, scope: !2105)
!2114 = distinct !DISubprogram(name: "__paritysi2", scope: !93, file: !93, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !92, retainedNodes: !146)
!2115 = !DILocation(line: 23, column: 12, scope: !2114)
!2116 = !DILocation(line: 23, column: 7, scope: !2114)
!2117 = !DILocation(line: 24, column: 12, scope: !2114)
!2118 = !DILocation(line: 24, column: 7, scope: !2114)
!2119 = !DILocation(line: 25, column: 12, scope: !2114)
!2120 = !DILocation(line: 25, column: 7, scope: !2114)
!2121 = !DILocation(line: 26, column: 26, scope: !2114)
!2122 = !DILocation(line: 26, column: 20, scope: !2114)
!2123 = !DILocation(line: 26, column: 34, scope: !2114)
!2124 = !DILocation(line: 26, column: 5, scope: !2114)
!2125 = distinct !DISubprogram(name: "__popcountdi2", scope: !97, file: !97, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !146)
!2126 = !DILocation(line: 23, column: 20, scope: !2125)
!2127 = !DILocation(line: 23, column: 26, scope: !2125)
!2128 = !DILocation(line: 23, column: 13, scope: !2125)
!2129 = !DILocation(line: 25, column: 15, scope: !2125)
!2130 = !DILocation(line: 25, column: 21, scope: !2125)
!2131 = !DILocation(line: 25, column: 52, scope: !2125)
!2132 = !DILocation(line: 25, column: 46, scope: !2125)
!2133 = !DILocation(line: 27, column: 20, scope: !2125)
!2134 = !DILocation(line: 27, column: 14, scope: !2125)
!2135 = !DILocation(line: 27, column: 27, scope: !2125)
!2136 = !DILocation(line: 29, column: 34, scope: !2125)
!2137 = !DILocation(line: 29, column: 28, scope: !2125)
!2138 = !DILocation(line: 29, column: 16, scope: !2125)
!2139 = !DILocation(line: 32, column: 16, scope: !2125)
!2140 = !DILocation(line: 32, column: 11, scope: !2125)
!2141 = !DILocation(line: 35, column: 20, scope: !2125)
!2142 = !DILocation(line: 35, column: 15, scope: !2125)
!2143 = !DILocation(line: 35, column: 27, scope: !2125)
!2144 = !DILocation(line: 35, column: 5, scope: !2125)
!2145 = distinct !DISubprogram(name: "__popcountsi2", scope: !99, file: !99, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !98, retainedNodes: !146)
!2146 = !DILocation(line: 23, column: 17, scope: !2145)
!2147 = !DILocation(line: 23, column: 23, scope: !2145)
!2148 = !DILocation(line: 23, column: 11, scope: !2145)
!2149 = !DILocation(line: 25, column: 13, scope: !2145)
!2150 = !DILocation(line: 25, column: 19, scope: !2145)
!2151 = !DILocation(line: 25, column: 38, scope: !2145)
!2152 = !DILocation(line: 25, column: 33, scope: !2145)
!2153 = !DILocation(line: 27, column: 17, scope: !2145)
!2154 = !DILocation(line: 27, column: 12, scope: !2145)
!2155 = !DILocation(line: 27, column: 24, scope: !2145)
!2156 = !DILocation(line: 29, column: 17, scope: !2145)
!2157 = !DILocation(line: 29, column: 12, scope: !2145)
!2158 = !DILocation(line: 32, column: 20, scope: !2145)
!2159 = !DILocation(line: 32, column: 15, scope: !2145)
!2160 = !DILocation(line: 32, column: 27, scope: !2145)
!2161 = !DILocation(line: 32, column: 5, scope: !2145)
!2162 = distinct !DISubprogram(name: "__subvdi3", scope: !103, file: !103, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !102, retainedNodes: !146)
!2163 = !DILocation(line: 24, column: 27, scope: !2162)
!2164 = !DILocation(line: 25, column: 11, scope: !2162)
!2165 = !DILocation(line: 25, column: 9, scope: !2162)
!2166 = !DILocation(line: 27, column: 15, scope: !2162)
!2167 = !DILocation(line: 27, column: 13, scope: !2162)
!2168 = !DILocation(line: 28, column: 13, scope: !2162)
!2169 = !DILocation(line: 29, column: 5, scope: !2162)
!2170 = !DILocation(line: 32, column: 15, scope: !2162)
!2171 = !DILocation(line: 32, column: 13, scope: !2162)
!2172 = !DILocation(line: 33, column: 13, scope: !2162)
!2173 = !DILocation(line: 35, column: 5, scope: !2162)
!2174 = distinct !DISubprogram(name: "__subvsi3", scope: !105, file: !105, line: 22, type: !145, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !146)
!2175 = !DILocation(line: 24, column: 27, scope: !2174)
!2176 = !DILocation(line: 25, column: 11, scope: !2174)
!2177 = !DILocation(line: 25, column: 9, scope: !2174)
!2178 = !DILocation(line: 27, column: 15, scope: !2174)
!2179 = !DILocation(line: 27, column: 13, scope: !2174)
!2180 = !DILocation(line: 28, column: 13, scope: !2174)
!2181 = !DILocation(line: 29, column: 5, scope: !2174)
!2182 = !DILocation(line: 32, column: 15, scope: !2174)
!2183 = !DILocation(line: 32, column: 13, scope: !2174)
!2184 = !DILocation(line: 33, column: 13, scope: !2174)
!2185 = !DILocation(line: 35, column: 5, scope: !2174)
!2186 = distinct !DISubprogram(name: "__ucmpdi2", scope: !109, file: !109, line: 23, type: !145, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !146)
!2187 = !DILocation(line: 26, column: 7, scope: !2186)
!2188 = !DILocation(line: 26, column: 11, scope: !2186)
!2189 = !DILocation(line: 28, column: 7, scope: !2186)
!2190 = !DILocation(line: 28, column: 11, scope: !2186)
!2191 = !DILocation(line: 29, column: 11, scope: !2186)
!2192 = !DILocation(line: 29, column: 13, scope: !2186)
!2193 = !DILocation(line: 29, column: 22, scope: !2186)
!2194 = !DILocation(line: 29, column: 24, scope: !2186)
!2195 = !DILocation(line: 29, column: 18, scope: !2186)
!2196 = !DILocation(line: 29, column: 9, scope: !2186)
!2197 = !DILocation(line: 30, column: 9, scope: !2186)
!2198 = !DILocation(line: 31, column: 11, scope: !2186)
!2199 = !DILocation(line: 31, column: 13, scope: !2186)
!2200 = !DILocation(line: 31, column: 22, scope: !2186)
!2201 = !DILocation(line: 31, column: 24, scope: !2186)
!2202 = !DILocation(line: 31, column: 18, scope: !2186)
!2203 = !DILocation(line: 31, column: 9, scope: !2186)
!2204 = !DILocation(line: 32, column: 9, scope: !2186)
!2205 = !DILocation(line: 33, column: 13, scope: !2186)
!2206 = !DILocation(line: 33, column: 23, scope: !2186)
!2207 = !DILocation(line: 33, column: 17, scope: !2186)
!2208 = !DILocation(line: 33, column: 9, scope: !2186)
!2209 = !DILocation(line: 34, column: 9, scope: !2186)
!2210 = !DILocation(line: 35, column: 13, scope: !2186)
!2211 = !DILocation(line: 35, column: 23, scope: !2186)
!2212 = !DILocation(line: 35, column: 17, scope: !2186)
!2213 = !DILocation(line: 35, column: 9, scope: !2186)
!2214 = !DILocation(line: 36, column: 9, scope: !2186)
!2215 = !DILocation(line: 37, column: 5, scope: !2186)
!2216 = !DILocation(line: 0, scope: !2186)
!2217 = !DILocation(line: 38, column: 1, scope: !2186)
!2218 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !109, file: !109, line: 46, type: !145, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !146)
!2219 = !DILocation(line: 48, column: 9, scope: !2218)
!2220 = !DILocation(line: 48, column: 25, scope: !2218)
!2221 = !DILocation(line: 48, column: 2, scope: !2218)
!2222 = distinct !DISubprogram(name: "__udivdi3", scope: !113, file: !113, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !146)
!2223 = !DILocation(line: 22, column: 12, scope: !2222)
!2224 = !DILocation(line: 22, column: 5, scope: !2222)
!2225 = distinct !DISubprogram(name: "__udivmodsi4", scope: !117, file: !117, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !146)
!2226 = !DILocation(line: 22, column: 14, scope: !2225)
!2227 = !DILocation(line: 23, column: 16, scope: !2225)
!2228 = !DILocation(line: 23, column: 12, scope: !2225)
!2229 = !DILocation(line: 23, column: 8, scope: !2225)
!2230 = !DILocation(line: 24, column: 3, scope: !2225)
!2231 = distinct !DISubprogram(name: "__udivsi3", scope: !121, file: !121, line: 25, type: !145, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !120, retainedNodes: !146)
!2232 = !DILocation(line: 32, column: 11, scope: !2231)
!2233 = !DILocation(line: 32, column: 9, scope: !2231)
!2234 = !DILocation(line: 33, column: 9, scope: !2231)
!2235 = !DILocation(line: 34, column: 11, scope: !2231)
!2236 = !DILocation(line: 34, column: 9, scope: !2231)
!2237 = !DILocation(line: 35, column: 9, scope: !2231)
!2238 = !DILocation(line: 36, column: 10, scope: !2231)
!2239 = !DILocation(line: 36, column: 29, scope: !2231)
!2240 = !DILocation(line: 36, column: 27, scope: !2231)
!2241 = !DILocation(line: 38, column: 12, scope: !2231)
!2242 = !DILocation(line: 38, column: 9, scope: !2231)
!2243 = !DILocation(line: 39, column: 9, scope: !2231)
!2244 = !DILocation(line: 40, column: 12, scope: !2231)
!2245 = !DILocation(line: 40, column: 9, scope: !2231)
!2246 = !DILocation(line: 41, column: 9, scope: !2231)
!2247 = !DILocation(line: 42, column: 5, scope: !2231)
!2248 = !DILocation(line: 45, column: 28, scope: !2231)
!2249 = !DILocation(line: 45, column: 11, scope: !2231)
!2250 = !DILocation(line: 46, column: 11, scope: !2231)
!2251 = !DILocation(line: 48, column: 5, scope: !2231)
!2252 = !DILocation(line: 0, scope: !2231)
!2253 = !DILocation(line: 48, column: 15, scope: !2231)
!2254 = !DILocation(line: 51, column: 22, scope: !2231)
!2255 = !DILocation(line: 60, column: 41, scope: !2231)
!2256 = !DILocation(line: 63, column: 5, scope: !2231)
!2257 = !DILocation(line: 62, column: 16, scope: !2231)
!2258 = !DILocation(line: 62, column: 11, scope: !2231)
!2259 = !DILocation(line: 61, column: 19, scope: !2231)
!2260 = !DILocation(line: 52, column: 16, scope: !2231)
!2261 = !DILocation(line: 52, column: 22, scope: !2231)
!2262 = !DILocation(line: 48, column: 20, scope: !2231)
!2263 = distinct !{!2263, !2251, !2256, !170}
!2264 = !DILocation(line: 64, column: 12, scope: !2231)
!2265 = !DILocation(line: 64, column: 18, scope: !2231)
!2266 = !DILocation(line: 65, column: 5, scope: !2231)
!2267 = !DILocation(line: 66, column: 1, scope: !2231)
!2268 = distinct !DISubprogram(name: "__umoddi3", scope: !125, file: !125, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !124, retainedNodes: !146)
!2269 = !DILocation(line: 23, column: 5, scope: !2268)
!2270 = !DILocation(line: 24, column: 12, scope: !2268)
!2271 = !DILocation(line: 24, column: 5, scope: !2268)
!2272 = distinct !DISubprogram(name: "__umodsi3", scope: !127, file: !127, line: 20, type: !145, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !126, retainedNodes: !146)
!2273 = !DILocation(line: 22, column: 16, scope: !2272)
!2274 = !DILocation(line: 22, column: 32, scope: !2272)
!2275 = !DILocation(line: 22, column: 14, scope: !2272)
!2276 = !DILocation(line: 22, column: 5, scope: !2272)
!2277 = distinct !DISubprogram(name: "memcpy", scope: !131, file: !131, line: 3, type: !145, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !130, retainedNodes: !146)
!2278 = !DILocation(line: 8, column: 6, scope: !2277)
!2279 = !DILocation(line: 0, scope: !2277)
!2280 = !DILocation(line: 8, column: 19, scope: !2277)
!2281 = !DILocation(line: 8, column: 2, scope: !2277)
!2282 = !DILocation(line: 9, column: 21, scope: !2277)
!2283 = !DILocation(line: 9, column: 3, scope: !2277)
!2284 = !DILocation(line: 9, column: 19, scope: !2277)
!2285 = !DILocation(line: 10, column: 2, scope: !2277)
!2286 = !DILocation(line: 8, column: 26, scope: !2277)
!2287 = distinct !{!2287, !2281, !2285, !170}
!2288 = !DILocation(line: 11, column: 1, scope: !2277)
!2289 = distinct !DISubprogram(name: "memset", scope: !131, file: !131, line: 13, type: !145, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !130, retainedNodes: !146)
!2290 = !DILocation(line: 17, column: 6, scope: !2289)
!2291 = !DILocation(line: 0, scope: !2289)
!2292 = !DILocation(line: 17, column: 19, scope: !2289)
!2293 = !DILocation(line: 17, column: 2, scope: !2289)
!2294 = !DILocation(line: 18, column: 13, scope: !2289)
!2295 = !DILocation(line: 18, column: 3, scope: !2289)
!2296 = !DILocation(line: 18, column: 11, scope: !2289)
!2297 = !DILocation(line: 19, column: 2, scope: !2289)
!2298 = !DILocation(line: 17, column: 26, scope: !2289)
!2299 = distinct !{!2299, !2293, !2297, !170}
!2300 = !DILocation(line: 20, column: 2, scope: !2289)
