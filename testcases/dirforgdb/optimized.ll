; ModuleID = 'unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

%struct.DATA = type { i32, i32 }
%union.dwords = type { i64 }

@adpcm_dec_compressed = dso_local global [3 x i32] [i32 0, i32 253, i32 32], align 4
@adpcm_dec_h = dso_local global [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 4
@adpcm_dec_qq4_code4_table = dso_local global [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 4
@adpcm_dec_qq6_code6_table = dso_local global [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 4
@adpcm_dec_wl_code_table = dso_local global [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 4
@adpcm_dec_ilb_table = dso_local global [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 4
@adpcm_dec_qq2_code2_table = dso_local global [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 4
@adpcm_dec_wh_code_table = dso_local global [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 4
@adpcm_dec_ilr = dso_local global i32 0, align 4
@adpcm_dec_ih = dso_local global i32 0, align 4
@adpcm_dec_dec_del_bpl = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_dec_del_dltx = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_dec_szl = dso_local global i32 0, align 4
@adpcm_dec_dec_rlt1 = dso_local global i32 0, align 4
@adpcm_dec_dec_al1 = dso_local global i32 0, align 4
@adpcm_dec_dec_rlt2 = dso_local global i32 0, align 4
@adpcm_dec_dec_al2 = dso_local global i32 0, align 4
@adpcm_dec_dec_spl = dso_local global i32 0, align 4
@adpcm_dec_dec_sl = dso_local global i32 0, align 4
@adpcm_dec_dec_detl = dso_local global i32 0, align 4
@adpcm_dec_dec_dlt = dso_local global i32 0, align 4
@adpcm_dec_il = dso_local global i32 0, align 4
@adpcm_dec_dl = dso_local global i32 0, align 4
@adpcm_dec_rl = dso_local global i32 0, align 4
@adpcm_dec_dec_nbl = dso_local global i32 0, align 4
@adpcm_dec_dec_plt = dso_local global i32 0, align 4
@adpcm_dec_dec_plt1 = dso_local global i32 0, align 4
@adpcm_dec_dec_plt2 = dso_local global i32 0, align 4
@adpcm_dec_dec_rlt = dso_local global i32 0, align 4
@adpcm_dec_dec_del_bph = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_dec_del_dhx = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_dec_szh = dso_local global i32 0, align 4
@adpcm_dec_dec_rh1 = dso_local global i32 0, align 4
@adpcm_dec_dec_ah1 = dso_local global i32 0, align 4
@adpcm_dec_dec_rh2 = dso_local global i32 0, align 4
@adpcm_dec_dec_ah2 = dso_local global i32 0, align 4
@adpcm_dec_dec_sph = dso_local global i32 0, align 4
@adpcm_dec_dec_sh = dso_local global i32 0, align 4
@adpcm_dec_dec_deth = dso_local global i32 0, align 4
@adpcm_dec_dec_dh = dso_local global i32 0, align 4
@adpcm_dec_dec_nbh = dso_local global i32 0, align 4
@adpcm_dec_dec_ph = dso_local global i32 0, align 4
@adpcm_dec_dec_ph1 = dso_local global i32 0, align 4
@adpcm_dec_dec_ph2 = dso_local global i32 0, align 4
@adpcm_dec_rh = dso_local global i32 0, align 4
@adpcm_dec_xd = dso_local global i32 0, align 4
@adpcm_dec_xs = dso_local global i32 0, align 4
@adpcm_dec_accumc = dso_local global [11 x i32] zeroinitializer, align 4
@adpcm_dec_accumd = dso_local global [11 x i32] zeroinitializer, align 4
@adpcm_dec_xout1 = dso_local global i32 0, align 4
@adpcm_dec_xout2 = dso_local global i32 0, align 4
@adpcm_dec_detl = dso_local global i32 0, align 4
@adpcm_dec_deth = dso_local global i32 0, align 4
@adpcm_dec_rlt2 = dso_local global i32 0, align 4
@adpcm_dec_rlt1 = dso_local global i32 0, align 4
@adpcm_dec_plt2 = dso_local global i32 0, align 4
@adpcm_dec_plt1 = dso_local global i32 0, align 4
@adpcm_dec_al2 = dso_local global i32 0, align 4
@adpcm_dec_al1 = dso_local global i32 0, align 4
@adpcm_dec_nbl = dso_local global i32 0, align 4
@adpcm_dec_rh2 = dso_local global i32 0, align 4
@adpcm_dec_rh1 = dso_local global i32 0, align 4
@adpcm_dec_ph2 = dso_local global i32 0, align 4
@adpcm_dec_ph1 = dso_local global i32 0, align 4
@adpcm_dec_ah2 = dso_local global i32 0, align 4
@adpcm_dec_ah1 = dso_local global i32 0, align 4
@adpcm_dec_nbh = dso_local global i32 0, align 4
@adpcm_dec_delay_dhx = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_delay_bph = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_test_data = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_result = dso_local global [6 x i32] zeroinitializer, align 4
@adpcm_dec_szl = dso_local global i32 0, align 4
@adpcm_dec_spl = dso_local global i32 0, align 4
@adpcm_dec_sl = dso_local global i32 0, align 4
@adpcm_dec_el = dso_local global i32 0, align 4
@adpcm_dec_plt = dso_local global i32 0, align 4
@adpcm_dec_rs = dso_local global i32 0, align 4
@adpcm_dec_dlt = dso_local global i32 0, align 4
@adpcm_dec_rlt = dso_local global i32 0, align 4
@adpcm_dec_sh = dso_local global i32 0, align 4
@adpcm_dec_eh = dso_local global i32 0, align 4
@adpcm_dec_dh = dso_local global i32 0, align 4
@adpcm_dec_szh = dso_local global i32 0, align 4
@adpcm_dec_sph = dso_local global i32 0, align 4
@adpcm_dec_ph = dso_local global i32 0, align 4
@adpcm_dec_yh = dso_local global i32 0, align 4
@adpcm_dec_yl = dso_local global i32 0, align 4
@adpcm_dec_dec_yh = dso_local global i32 0, align 4
@adpcm_dec_dec_rh = dso_local global i32 0, align 4
@data = dso_local global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 4
@lms_sintab = dso_local global [6 x double] [double 0.000000e+00, double 0x3FDBF8121BD59652, double 0x3FEA99A1C5033488, double 0x3FF24E53BCE7269F, double 0x3FF5851B9D89FA96, double 0x3FF6A09E667F3BC7], align 8
@lms_input = dso_local global [202 x float] zeroinitializer, align 4
@lms_output = dso_local global [202 x float] zeroinitializer, align 4
@ArrayA = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@ArrayB = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@ResultArray = dso_local global [20 x [20 x i32]] zeroinitializer, align 4
@Seed = dso_local global i32 0, align 4
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
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_fabs(i32 noundef %n) #0 !dbg !135 {
entry:
  %cmp = icmp sgt i32 %n, -1, !dbg !139
  br i1 %cmp, label %if.then, label %if.else, !dbg !140

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !141

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 0, %n, !dbg !142
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %f.0 = phi i32 [ %n, %if.then ], [ %sub, %if.else ], !dbg !143
  ret i32 %f.0, !dbg !144
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_sin(i32 noundef %rad) #0 !dbg !145 {
entry:
  %0 = add i32 %rad, 6281, !dbg !146
  %smin = call i32 @llvm.smin.i32(i32 %rad, i32 6282), !dbg !146
  %1 = sub i32 %0, %smin, !dbg !146
  %2 = urem i32 %1, 6282, !dbg !146
  %3 = sub i32 %1, %2, !dbg !146
  br label %while.cond, !dbg !146

while.cond:                                       ; preds = %while.body, %entry
  br i1 false, label %while.body, label %while.end, !dbg !146

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !146, !llvm.loop !147

while.end:                                        ; preds = %while.cond
  %4 = sub i32 %rad, %3, !dbg !146
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 -6282), !dbg !150
  %5 = add i32 %smax, %3, !dbg !150
  %6 = sub i32 %5, %rad, !dbg !150
  %7 = icmp ne i32 %6, 0, !dbg !150
  %umin = zext i1 %7 to i32, !dbg !150
  %8 = sub i32 %6, %umin, !dbg !150
  %9 = udiv i32 %8, 6282, !dbg !150
  %10 = add nuw nsw i32 %9, %umin, !dbg !150
  %11 = mul i32 %10, 6282, !dbg !150
  %12 = add i32 %11, %rad, !dbg !150
  br label %while.cond1, !dbg !150

while.cond1:                                      ; preds = %while.body3, %while.end
  br i1 false, label %while.body3, label %while.end4, !dbg !150

while.body3:                                      ; preds = %while.cond1
  br label %while.cond1, !dbg !150, !llvm.loop !151

while.end4:                                       ; preds = %while.cond1
  %13 = sub i32 %12, %3, !dbg !150
  %mul = mul nsw i32 %13, %13, !dbg !153
  %14 = mul i32 %mul, %13, !dbg !154
  %mul6 = sub i32 0, %14, !dbg !154
  %div = sdiv i32 %mul6, 6, !dbg !155
  %add11 = add nsw i32 %13, %div, !dbg !156
  br label %while.cond13, !dbg !157

while.cond13:                                     ; preds = %while.body15, %while.end4
  %inc.0 = phi i32 [ 2, %while.end4 ], [ %inc25, %while.body15 ], !dbg !158
  %app.0 = phi i32 [ %add11, %while.end4 ], [ %add24, %while.body15 ], !dbg !158
  %diff.0 = phi i32 [ %div, %while.end4 ], [ %div23, %while.body15 ], !dbg !158
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_fabs(i32 noundef %diff.0) #4, !dbg !159
  %cmp14 = icmp sgt i32 %call, 0, !dbg !160
  br i1 %cmp14, label %while.body15, label %while.end26, !dbg !157

while.body15:                                     ; preds = %while.cond13
  %mul16 = mul nsw i32 %13, %13, !dbg !161
  %15 = mul i32 %mul16, %diff.0, !dbg !162
  %mul18 = sub i32 0, %15, !dbg !162
  %mul19 = shl nuw nsw i32 %inc.0, 1, !dbg !163
  %mul20 = shl nuw nsw i32 %inc.0, 1, !dbg !164
  %add21 = or i32 %mul20, 1, !dbg !165
  %mul22 = mul nsw i32 %mul19, %add21, !dbg !166
  %div23 = sdiv i32 %mul18, %mul22, !dbg !167
  %add24 = add nsw i32 %app.0, %div23, !dbg !168
  %inc25 = add nuw nsw i32 %inc.0, 1, !dbg !169
  br label %while.cond13, !dbg !157, !llvm.loop !170

while.end26:                                      ; preds = %while.cond13
  ret i32 %app.0, !dbg !172
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_cos(i32 noundef %rad) #0 !dbg !173 {
entry:
  %sub = sub nsw i32 1570, %rad, !dbg !174
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_sin(i32 noundef %sub) #4, !dbg !175
  ret i32 %call, !dbg !176
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_decode(i32 noundef %input) #0 !dbg !177 {
entry:
  %and = and i32 %input, 63, !dbg !178
  store i32 %and, i32* @adpcm_dec_ilr, align 4, !dbg !179
  %shr = ashr i32 %input, 6, !dbg !180
  store i32 %shr, i32* @adpcm_dec_ih, align 4, !dbg !181
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bpl, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dltx, i32 0, i32 0)) #4, !dbg !182
  store i32 %call, i32* @adpcm_dec_dec_szl, align 4, !dbg !183
  %0 = load i32, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !184
  %1 = load i32, i32* @adpcm_dec_dec_al1, align 4, !dbg !185
  %2 = load i32, i32* @adpcm_dec_dec_rlt2, align 4, !dbg !186
  %3 = load i32, i32* @adpcm_dec_dec_al2, align 4, !dbg !187
  %call1 = call arm_aapcs_vfpcc i32 @adpcm_dec_filtep(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4, !dbg !188
  store i32 %call1, i32* @adpcm_dec_dec_spl, align 4, !dbg !189
  %4 = load i32, i32* @adpcm_dec_dec_szl, align 4, !dbg !190
  %add = add nsw i32 %call1, %4, !dbg !191
  store i32 %add, i32* @adpcm_dec_dec_sl, align 4, !dbg !192
  %5 = load i32, i32* @adpcm_dec_dec_detl, align 4, !dbg !193
  %6 = load i32, i32* @adpcm_dec_ilr, align 4, !dbg !194
  %shr2 = ashr i32 %6, 2, !dbg !195
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @adpcm_dec_qq4_code4_table, i32 0, i32 %shr2, !dbg !196
  %7 = load i32, i32* %arrayidx, align 4, !dbg !196
  %mul = mul nsw i32 %5, %7, !dbg !197
  %shr3 = ashr i32 %mul, 15, !dbg !198
  store i32 %shr3, i32* @adpcm_dec_dec_dlt, align 4, !dbg !199
  %8 = load i32, i32* @adpcm_dec_dec_detl, align 4, !dbg !200
  %9 = load i32, i32* @adpcm_dec_il, align 4, !dbg !201
  %arrayidx4 = getelementptr inbounds [64 x i32], [64 x i32]* @adpcm_dec_qq6_code6_table, i32 0, i32 %9, !dbg !202
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !202
  %mul5 = mul nsw i32 %8, %10, !dbg !203
  %shr6 = ashr i32 %mul5, 15, !dbg !204
  store i32 %shr6, i32* @adpcm_dec_dl, align 4, !dbg !205
  %11 = load i32, i32* @adpcm_dec_dec_sl, align 4, !dbg !206
  %add7 = add nsw i32 %shr6, %11, !dbg !207
  store i32 %add7, i32* @adpcm_dec_rl, align 4, !dbg !208
  %12 = load i32, i32* @adpcm_dec_ilr, align 4, !dbg !209
  %13 = load i32, i32* @adpcm_dec_dec_nbl, align 4, !dbg !210
  %call8 = call arm_aapcs_vfpcc i32 @adpcm_dec_logscl(i32 noundef %12, i32 noundef %13) #4, !dbg !211
  store i32 %call8, i32* @adpcm_dec_dec_nbl, align 4, !dbg !212
  %call9 = call arm_aapcs_vfpcc i32 @adpcm_dec_scalel(i32 noundef %call8, i32 noundef 8) #4, !dbg !213
  store i32 %call9, i32* @adpcm_dec_dec_detl, align 4, !dbg !214
  %14 = load i32, i32* @adpcm_dec_dec_dlt, align 4, !dbg !215
  %15 = load i32, i32* @adpcm_dec_dec_szl, align 4, !dbg !216
  %add10 = add nsw i32 %14, %15, !dbg !217
  store i32 %add10, i32* @adpcm_dec_dec_plt, align 4, !dbg !218
  call arm_aapcs_vfpcc void @adpcm_dec_upzero(i32 noundef %14, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dltx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bpl, i32 0, i32 0)) #4, !dbg !219
  %16 = load i32, i32* @adpcm_dec_dec_al1, align 4, !dbg !220
  %17 = load i32, i32* @adpcm_dec_dec_al2, align 4, !dbg !221
  %18 = load i32, i32* @adpcm_dec_dec_plt, align 4, !dbg !222
  %19 = load i32, i32* @adpcm_dec_dec_plt1, align 4, !dbg !223
  %20 = load i32, i32* @adpcm_dec_dec_plt2, align 4, !dbg !224
  %call11 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol2(i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20) #4, !dbg !225
  store i32 %call11, i32* @adpcm_dec_dec_al2, align 4, !dbg !226
  %21 = load i32, i32* @adpcm_dec_dec_al1, align 4, !dbg !227
  %22 = load i32, i32* @adpcm_dec_dec_plt, align 4, !dbg !228
  %23 = load i32, i32* @adpcm_dec_dec_plt1, align 4, !dbg !229
  %call12 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol1(i32 noundef %21, i32 noundef %call11, i32 noundef %22, i32 noundef %23) #4, !dbg !230
  store i32 %call12, i32* @adpcm_dec_dec_al1, align 4, !dbg !231
  %24 = load i32, i32* @adpcm_dec_dec_sl, align 4, !dbg !232
  %25 = load i32, i32* @adpcm_dec_dec_dlt, align 4, !dbg !233
  %add13 = add nsw i32 %24, %25, !dbg !234
  store i32 %add13, i32* @adpcm_dec_dec_rlt, align 4, !dbg !235
  %26 = load i32, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !236
  store i32 %26, i32* @adpcm_dec_dec_rlt2, align 4, !dbg !237
  store i32 %add13, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !238
  %27 = load i32, i32* @adpcm_dec_dec_plt1, align 4, !dbg !239
  store i32 %27, i32* @adpcm_dec_dec_plt2, align 4, !dbg !240
  %28 = load i32, i32* @adpcm_dec_dec_plt, align 4, !dbg !241
  store i32 %28, i32* @adpcm_dec_dec_plt1, align 4, !dbg !242
  %call14 = call arm_aapcs_vfpcc i32 @adpcm_dec_filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bph, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dhx, i32 0, i32 0)) #4, !dbg !243
  store i32 %call14, i32* @adpcm_dec_dec_szh, align 4, !dbg !244
  %29 = load i32, i32* @adpcm_dec_dec_rh1, align 4, !dbg !245
  %30 = load i32, i32* @adpcm_dec_dec_ah1, align 4, !dbg !246
  %31 = load i32, i32* @adpcm_dec_dec_rh2, align 4, !dbg !247
  %32 = load i32, i32* @adpcm_dec_dec_ah2, align 4, !dbg !248
  %call15 = call arm_aapcs_vfpcc i32 @adpcm_dec_filtep(i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32) #4, !dbg !249
  store i32 %call15, i32* @adpcm_dec_dec_sph, align 4, !dbg !250
  %33 = load i32, i32* @adpcm_dec_dec_szh, align 4, !dbg !251
  %add16 = add nsw i32 %call15, %33, !dbg !252
  store i32 %add16, i32* @adpcm_dec_dec_sh, align 4, !dbg !253
  %34 = load i32, i32* @adpcm_dec_dec_deth, align 4, !dbg !254
  %35 = load i32, i32* @adpcm_dec_ih, align 4, !dbg !255
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* @adpcm_dec_qq2_code2_table, i32 0, i32 %35, !dbg !256
  %36 = load i32, i32* %arrayidx17, align 4, !dbg !256
  %mul18 = mul nsw i32 %34, %36, !dbg !257
  %shr19 = ashr i32 %mul18, 15, !dbg !258
  store i32 %shr19, i32* @adpcm_dec_dec_dh, align 4, !dbg !259
  %37 = load i32, i32* @adpcm_dec_dec_nbh, align 4, !dbg !260
  %call20 = call arm_aapcs_vfpcc i32 @adpcm_dec_logsch(i32 noundef %35, i32 noundef %37) #4, !dbg !261
  store i32 %call20, i32* @adpcm_dec_dec_nbh, align 4, !dbg !262
  %call21 = call arm_aapcs_vfpcc i32 @adpcm_dec_scalel(i32 noundef %call20, i32 noundef 10) #4, !dbg !263
  store i32 %call21, i32* @adpcm_dec_dec_deth, align 4, !dbg !264
  %38 = load i32, i32* @adpcm_dec_dec_dh, align 4, !dbg !265
  %39 = load i32, i32* @adpcm_dec_dec_szh, align 4, !dbg !266
  %add22 = add nsw i32 %38, %39, !dbg !267
  store i32 %add22, i32* @adpcm_dec_dec_ph, align 4, !dbg !268
  call arm_aapcs_vfpcc void @adpcm_dec_upzero(i32 noundef %38, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dhx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bph, i32 0, i32 0)) #4, !dbg !269
  %40 = load i32, i32* @adpcm_dec_dec_ah1, align 4, !dbg !270
  %41 = load i32, i32* @adpcm_dec_dec_ah2, align 4, !dbg !271
  %42 = load i32, i32* @adpcm_dec_dec_ph, align 4, !dbg !272
  %43 = load i32, i32* @adpcm_dec_dec_ph1, align 4, !dbg !273
  %44 = load i32, i32* @adpcm_dec_dec_ph2, align 4, !dbg !274
  %call23 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol2(i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44) #4, !dbg !275
  store i32 %call23, i32* @adpcm_dec_dec_ah2, align 4, !dbg !276
  %45 = load i32, i32* @adpcm_dec_dec_ah1, align 4, !dbg !277
  %46 = load i32, i32* @adpcm_dec_dec_ph, align 4, !dbg !278
  %47 = load i32, i32* @adpcm_dec_dec_ph1, align 4, !dbg !279
  %call24 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol1(i32 noundef %45, i32 noundef %call23, i32 noundef %46, i32 noundef %47) #4, !dbg !280
  store i32 %call24, i32* @adpcm_dec_dec_ah1, align 4, !dbg !281
  %48 = load i32, i32* @adpcm_dec_dec_sh, align 4, !dbg !282
  %49 = load i32, i32* @adpcm_dec_dec_dh, align 4, !dbg !283
  %add25 = add nsw i32 %48, %49, !dbg !284
  store i32 %add25, i32* @adpcm_dec_rh, align 4, !dbg !285
  %50 = load i32, i32* @adpcm_dec_dec_rh1, align 4, !dbg !286
  store i32 %50, i32* @adpcm_dec_dec_rh2, align 4, !dbg !287
  store i32 %add25, i32* @adpcm_dec_dec_rh1, align 4, !dbg !288
  %51 = load i32, i32* @adpcm_dec_dec_ph1, align 4, !dbg !289
  store i32 %51, i32* @adpcm_dec_dec_ph2, align 4, !dbg !290
  %52 = load i32, i32* @adpcm_dec_dec_ph, align 4, !dbg !291
  store i32 %52, i32* @adpcm_dec_dec_ph1, align 4, !dbg !292
  %53 = load i32, i32* @adpcm_dec_rl, align 4, !dbg !293
  %54 = load i32, i32* @adpcm_dec_rh, align 4, !dbg !294
  %sub = sub nsw i32 %53, %54, !dbg !295
  store i32 %sub, i32* @adpcm_dec_xd, align 4, !dbg !296
  %add26 = add nsw i32 %53, %54, !dbg !297
  store i32 %add26, i32* @adpcm_dec_xs, align 4, !dbg !298
  %55 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @adpcm_dec_h, i32 0, i32 0), align 4, !dbg !299
  %mul27 = mul nsw i32 %sub, %55, !dbg !300
  %56 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @adpcm_dec_h, i32 0, i32 1), align 4, !dbg !301
  %mul29 = mul nsw i32 %add26, %56, !dbg !302
  br label %for.cond, !dbg !303

for.cond:                                         ; preds = %for.inc, %entry
  %ad_ptr.0 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 0), %entry ], [ %incdec.ptr34, %for.inc ], !dbg !304
  %ac_ptr.0 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 0), %entry ], [ %incdec.ptr30, %for.inc ], !dbg !304
  %h_ptr.0 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @adpcm_dec_h, i32 0, i32 2), %entry ], [ %incdec.ptr35, %for.inc ], !dbg !304
  %xa2.0 = phi i32 [ %mul29, %entry ], [ %add37, %for.inc ], !dbg !304
  %xa1.0 = phi i32 [ %mul27, %entry ], [ %add33, %for.inc ], !dbg !304
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !304
  %exitcond.not = icmp eq i32 %i.0, 10, !dbg !305
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !306

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !307

for.inc:                                          ; preds = %for.body
  %57 = load i32, i32* %ad_ptr.0, align 4, !dbg !308
  %incdec.ptr31 = getelementptr inbounds i32, i32* %h_ptr.0, i32 1, !dbg !309
  %58 = load i32, i32* %incdec.ptr31, align 4, !dbg !310
  %mul36 = mul nsw i32 %57, %58, !dbg !311
  %add37 = add nsw i32 %xa2.0, %mul36, !dbg !312
  %incdec.ptr35 = getelementptr inbounds i32, i32* %h_ptr.0, i32 2, !dbg !313
  %incdec.ptr34 = getelementptr inbounds i32, i32* %ad_ptr.0, i32 1, !dbg !314
  %59 = load i32, i32* %ac_ptr.0, align 4, !dbg !315
  %60 = load i32, i32* %h_ptr.0, align 4, !dbg !316
  %mul32 = mul nsw i32 %59, %60, !dbg !317
  %add33 = add nsw i32 %xa1.0, %mul32, !dbg !318
  %incdec.ptr30 = getelementptr inbounds i32, i32* %ac_ptr.0, i32 1, !dbg !319
  %inc = add nuw nsw i32 %i.0, 1, !dbg !320
  br label %for.cond, !dbg !306, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  %61 = load i32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 10), align 4, !dbg !322
  %62 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @adpcm_dec_h, i32 0, i32 22), align 4, !dbg !323
  %mul39 = mul nsw i32 %61, %62, !dbg !324
  %add40 = add nsw i32 %xa1.0, %mul39, !dbg !325
  %63 = load i32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 10), align 4, !dbg !326
  %64 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @adpcm_dec_h, i32 0, i32 23), align 4, !dbg !327
  %mul42 = mul nsw i32 %63, %64, !dbg !328
  %add43 = add nsw i32 %xa2.0, %mul42, !dbg !329
  %shr44 = ashr i32 %add40, 14, !dbg !330
  store i32 %shr44, i32* @adpcm_dec_xout1, align 4, !dbg !331
  %shr45 = ashr i32 %add43, 14, !dbg !332
  store i32 %shr45, i32* @adpcm_dec_xout2, align 4, !dbg !333
  br label %for.cond47, !dbg !334

for.cond47:                                       ; preds = %for.inc54, %for.end
  %ad_ptr.1 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 10), %for.end ], [ %incdec.ptr53, %for.inc54 ], !dbg !304
  %ac_ptr1.0 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 9), %for.end ], [ %incdec.ptr50, %for.inc54 ], !dbg !304
  %ac_ptr.1 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 10), %for.end ], [ %incdec.ptr51, %for.inc54 ], !dbg !304
  %i.1 = phi i32 [ 0, %for.end ], [ %inc55, %for.inc54 ], !dbg !304
  %ad_ptr1.0 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 9), %for.end ], [ %incdec.ptr52, %for.inc54 ], !dbg !304
  %exitcond1.not = icmp eq i32 %i.1, 10, !dbg !335
  br i1 %exitcond1.not, label %for.end56, label %for.body49, !dbg !336

for.body49:                                       ; preds = %for.cond47
  %65 = load i32, i32* %ac_ptr1.0, align 4, !dbg !337
  store i32 %65, i32* %ac_ptr.1, align 4, !dbg !338
  %66 = load i32, i32* %ad_ptr1.0, align 4, !dbg !339
  store i32 %66, i32* %ad_ptr.1, align 4, !dbg !340
  br label %for.inc54, !dbg !341

for.inc54:                                        ; preds = %for.body49
  %incdec.ptr53 = getelementptr inbounds i32, i32* %ad_ptr.1, i32 -1, !dbg !342
  %incdec.ptr52 = getelementptr inbounds i32, i32* %ad_ptr1.0, i32 -1, !dbg !343
  %incdec.ptr51 = getelementptr inbounds i32, i32* %ac_ptr.1, i32 -1, !dbg !344
  %incdec.ptr50 = getelementptr inbounds i32, i32* %ac_ptr1.0, i32 -1, !dbg !345
  %inc55 = add nuw nsw i32 %i.1, 1, !dbg !346
  br label %for.cond47, !dbg !336, !llvm.loop !347

for.end56:                                        ; preds = %for.cond47
  %67 = load i32, i32* @adpcm_dec_xd, align 4, !dbg !348
  store i32 %67, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 0), align 4, !dbg !349
  %68 = load i32, i32* @adpcm_dec_xs, align 4, !dbg !350
  store i32 %68, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 0), align 4, !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_filtez(i32* noundef %bpl, i32* noundef %dlt) #0 !dbg !353 {
entry:
  %0 = load i32, i32* %bpl, align 4, !dbg !354
  %1 = load i32, i32* %dlt, align 4, !dbg !355
  %mul = mul nsw i32 %0, %1, !dbg !356
  br label %for.cond, !dbg !357

for.cond:                                         ; preds = %for.inc, %entry
  %zl.0 = phi i32 [ %mul, %entry ], [ %add, %for.inc ], !dbg !358
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ], !dbg !358
  %dlt.pn = phi i32* [ %dlt, %entry ], [ %dlt.addr.0, %for.inc ]
  %bpl.pn = phi i32* [ %bpl, %entry ], [ %bpl.addr.0, %for.inc ]
  %bpl.addr.0 = getelementptr inbounds i32, i32* %bpl.pn, i32 1, !dbg !358
  %dlt.addr.0 = getelementptr inbounds i32, i32* %dlt.pn, i32 1, !dbg !358
  %exitcond.not = icmp eq i32 %i.0, 6, !dbg !359
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !360

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %bpl.addr.0, align 4, !dbg !362
  %3 = load i32, i32* %dlt.addr.0, align 4, !dbg !363
  %mul4 = mul nsw i32 %2, %3, !dbg !364
  %add = add nsw i32 %zl.0, %mul4, !dbg !365
  %inc = add nuw nsw i32 %i.0, 1, !dbg !366
  br label %for.cond, !dbg !360, !llvm.loop !367

for.end:                                          ; preds = %for.cond
  %shr = ashr i32 %zl.0, 14, !dbg !369
  ret i32 %shr, !dbg !370
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_filtep(i32 noundef %rlt1, i32 noundef %al1, i32 noundef %rlt2, i32 noundef %al2) #0 !dbg !371 {
entry:
  %mul = shl nsw i32 %rlt1, 1, !dbg !372
  %mul1 = mul nsw i32 %mul, %al1, !dbg !373
  %mul2 = shl nsw i32 %rlt2, 1, !dbg !374
  %mul3 = mul nsw i32 %mul2, %al2, !dbg !375
  %add = add nsw i32 %mul1, %mul3, !dbg !376
  %shr = ashr i32 %add, 15, !dbg !377
  ret i32 %shr, !dbg !378
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_logscl(i32 noundef %il, i32 noundef %nbl) #0 !dbg !379 {
entry:
  %mul = mul nsw i32 %nbl, 127, !dbg !380
  %shr = ashr i32 %mul, 7, !dbg !381
  %shr1 = ashr i32 %il, 2, !dbg !382
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @adpcm_dec_wl_code_table, i32 0, i32 %shr1, !dbg !383
  %0 = load i32, i32* %arrayidx, align 4, !dbg !383
  %add = add nsw i32 %shr, %0, !dbg !384
  %cmp = icmp slt i32 %add, 0, !dbg !385
  br i1 %cmp, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !387

if.end:                                           ; preds = %if.then, %entry
  %nbl.addr.0 = phi i32 [ 0, %if.then ], [ %add, %entry ], !dbg !388
  %cmp2 = icmp sgt i32 %nbl.addr.0, 18432, !dbg !389
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !390

if.then3:                                         ; preds = %if.end
  br label %if.end4, !dbg !391

if.end4:                                          ; preds = %if.then3, %if.end
  %nbl.addr.1 = phi i32 [ 18432, %if.then3 ], [ %nbl.addr.0, %if.end ], !dbg !388
  ret i32 %nbl.addr.1, !dbg !392
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_scalel(i32 noundef %nbl, i32 noundef %shift_constant) #0 !dbg !393 {
entry:
  %0 = lshr i32 %nbl, 6, !dbg !394
  %and = and i32 %0, 31, !dbg !395
  %shr1 = ashr i32 %nbl, 11, !dbg !396
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @adpcm_dec_ilb_table, i32 0, i32 %and, !dbg !397
  %1 = load i32, i32* %arrayidx, align 4, !dbg !397
  %add = add nsw i32 %shift_constant, 1, !dbg !398
  %sub = sub nsw i32 %add, %shr1, !dbg !399
  %shr2 = ashr i32 %1, %sub, !dbg !400
  %shl = shl i32 %shr2, 3, !dbg !401
  ret i32 %shl, !dbg !402
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_upzero(i32 noundef %dlt, i32* noundef %dlti, i32* noundef %bli) #0 !dbg !403 {
entry:
  %cmp = icmp eq i32 %dlt, 0, !dbg !404
  br i1 %cmp, label %if.then, label %if.else, !dbg !405

if.then:                                          ; preds = %entry
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !407
  %exitcond1.not = icmp eq i32 %i.0, 6, !dbg !408
  br i1 %exitcond1.not, label %for.end, label %for.body, !dbg !409

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, i32* %bli, i32 %i.0, !dbg !410
  %0 = load i32, i32* %arrayidx, align 4, !dbg !410
  %mul = mul nsw i32 %0, 255, !dbg !411
  %shr = ashr i32 %mul, 8, !dbg !412
  %arrayidx2 = getelementptr inbounds i32, i32* %bli, i32 %i.0, !dbg !413
  store i32 %shr, i32* %arrayidx2, align 4, !dbg !414
  br label %for.inc, !dbg !415

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !416
  br label %for.cond, !dbg !409, !llvm.loop !417

for.end:                                          ; preds = %for.cond
  br label %if.end18, !dbg !418

if.else:                                          ; preds = %entry
  br label %for.cond3, !dbg !419

for.cond3:                                        ; preds = %for.inc15, %if.else
  %i.1 = phi i32 [ 0, %if.else ], [ %inc16, %for.inc15 ], !dbg !407
  %exitcond.not = icmp eq i32 %i.1, 6, !dbg !420
  br i1 %exitcond.not, label %for.end17, label %for.body5, !dbg !421

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds i32, i32* %dlti, i32 %i.1, !dbg !422
  %1 = load i32, i32* %arrayidx6, align 4, !dbg !422
  %mul7 = mul nsw i32 %1, %dlt, !dbg !423
  %cmp8 = icmp sgt i32 %mul7, -1, !dbg !424
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !425

if.then9:                                         ; preds = %for.body5
  br label %if.end, !dbg !426

if.else10:                                        ; preds = %for.body5
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  %wd2.0 = phi i32 [ 128, %if.then9 ], [ -128, %if.else10 ], !dbg !407
  %arrayidx11 = getelementptr inbounds i32, i32* %bli, i32 %i.1, !dbg !427
  %2 = load i32, i32* %arrayidx11, align 4, !dbg !427
  %mul12 = mul nsw i32 %2, 255, !dbg !428
  %shr13 = ashr i32 %mul12, 8, !dbg !429
  %add = add nsw i32 %wd2.0, %shr13, !dbg !430
  %arrayidx14 = getelementptr inbounds i32, i32* %bli, i32 %i.1, !dbg !431
  store i32 %add, i32* %arrayidx14, align 4, !dbg !432
  br label %for.inc15, !dbg !433

for.inc15:                                        ; preds = %if.end
  %inc16 = add nuw nsw i32 %i.1, 1, !dbg !434
  br label %for.cond3, !dbg !421, !llvm.loop !435

for.end17:                                        ; preds = %for.cond3
  br label %if.end18

if.end18:                                         ; preds = %for.end17, %for.end
  %arrayidx19 = getelementptr inbounds i32, i32* %dlti, i32 4, !dbg !436
  %3 = load i32, i32* %arrayidx19, align 4, !dbg !436
  %arrayidx20 = getelementptr inbounds i32, i32* %dlti, i32 5, !dbg !437
  store i32 %3, i32* %arrayidx20, align 4, !dbg !438
  %arrayidx21 = getelementptr inbounds i32, i32* %dlti, i32 3, !dbg !439
  %4 = load i32, i32* %arrayidx21, align 4, !dbg !439
  %arrayidx22 = getelementptr inbounds i32, i32* %dlti, i32 4, !dbg !440
  store i32 %4, i32* %arrayidx22, align 4, !dbg !441
  %arrayidx23 = getelementptr inbounds i32, i32* %dlti, i32 2, !dbg !442
  %5 = load i32, i32* %arrayidx23, align 4, !dbg !442
  %arrayidx24 = getelementptr inbounds i32, i32* %dlti, i32 3, !dbg !443
  store i32 %5, i32* %arrayidx24, align 4, !dbg !444
  %6 = load i32, i32* %dlti, align 4, !dbg !445
  %arrayidx26 = getelementptr inbounds i32, i32* %dlti, i32 1, !dbg !446
  store i32 %6, i32* %arrayidx26, align 4, !dbg !447
  store i32 %dlt, i32* %dlti, align 4, !dbg !448
  ret void, !dbg !449
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_uppol2(i32 noundef %al1, i32 noundef %al2, i32 noundef %plt, i32 noundef %plt1, i32 noundef %plt2) #0 !dbg !450 {
entry:
  %mul = shl nsw i32 %al1, 2, !dbg !451
  %mul1 = mul nsw i32 %plt, %plt1, !dbg !452
  %cmp = icmp sgt i32 %mul1, -1, !dbg !453
  br i1 %cmp, label %if.then, label %if.end, !dbg !454

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %mul, !dbg !455
  br label %if.end, !dbg !456

if.end:                                           ; preds = %if.then, %entry
  %wd2.0 = phi i32 [ %sub, %if.then ], [ %mul, %entry ], !dbg !457
  %shr = ashr i32 %wd2.0, 7, !dbg !458
  %mul2 = mul nsw i32 %plt, %plt2, !dbg !459
  %cmp3 = icmp sgt i32 %mul2, -1, !dbg !460
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !461

if.then4:                                         ; preds = %if.end
  %add = add nsw i32 %shr, 128, !dbg !462
  br label %if.end6, !dbg !463

if.else:                                          ; preds = %if.end
  %sub5 = add nsw i32 %shr, -128, !dbg !464
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %wd4.0 = phi i32 [ %add, %if.then4 ], [ %sub5, %if.else ], !dbg !457
  %mul7 = mul nsw i32 %al2, 127, !dbg !465
  %shr8 = ashr i32 %mul7, 7, !dbg !466
  %add9 = add nsw i32 %wd4.0, %shr8, !dbg !467
  %cmp10 = icmp sgt i32 %add9, 12288, !dbg !468
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !469

if.then11:                                        ; preds = %if.end6
  br label %if.end12, !dbg !470

if.end12:                                         ; preds = %if.then11, %if.end6
  %apl2.0 = phi i32 [ 12288, %if.then11 ], [ %add9, %if.end6 ], !dbg !457
  %cmp13 = icmp slt i32 %apl2.0, -12288, !dbg !471
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !472

if.then14:                                        ; preds = %if.end12
  br label %if.end15, !dbg !473

if.end15:                                         ; preds = %if.then14, %if.end12
  %apl2.1 = phi i32 [ -12288, %if.then14 ], [ %apl2.0, %if.end12 ], !dbg !457
  ret i32 %apl2.1, !dbg !474
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_uppol1(i32 noundef %al1, i32 noundef %apl2, i32 noundef %plt, i32 noundef %plt1) #0 !dbg !475 {
entry:
  %mul = mul nsw i32 %al1, 255, !dbg !476
  %shr = ashr i32 %mul, 8, !dbg !477
  %mul1 = mul nsw i32 %plt, %plt1, !dbg !478
  %cmp = icmp sgt i32 %mul1, -1, !dbg !479
  br i1 %cmp, label %if.then, label %if.else, !dbg !480

if.then:                                          ; preds = %entry
  %add = add nsw i32 %shr, 192, !dbg !481
  br label %if.end, !dbg !482

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %shr, -192, !dbg !483
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %apl1.0 = phi i32 [ %add, %if.then ], [ %sub, %if.else ], !dbg !484
  %sub2.neg = add i32 %apl2, -15360, !dbg !485
  %sub2.neg1 = add i32 %apl2, -15360, !dbg !485
  %sub2 = sub nsw i32 15360, %apl2, !dbg !485
  %cmp3 = icmp sgt i32 %apl1.0, %sub2, !dbg !486
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !487

if.then4:                                         ; preds = %if.end
  br label %if.end5, !dbg !488

if.end5:                                          ; preds = %if.then4, %if.end
  %apl1.1 = phi i32 [ %sub2, %if.then4 ], [ %apl1.0, %if.end ], !dbg !484
  %cmp7 = icmp slt i32 %apl1.1, %sub2.neg, !dbg !489
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !490

if.then8:                                         ; preds = %if.end5
  br label %if.end10, !dbg !491

if.end10:                                         ; preds = %if.then8, %if.end5
  %apl1.2 = phi i32 [ %sub2.neg1, %if.then8 ], [ %apl1.1, %if.end5 ], !dbg !484
  ret i32 %apl1.2, !dbg !492
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_logsch(i32 noundef %ih, i32 noundef %nbh) #0 !dbg !493 {
entry:
  %mul = mul nsw i32 %nbh, 127, !dbg !494
  %shr = ashr i32 %mul, 7, !dbg !495
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @adpcm_dec_wh_code_table, i32 0, i32 %ih, !dbg !496
  %0 = load i32, i32* %arrayidx, align 4, !dbg !496
  %add = add nsw i32 %shr, %0, !dbg !497
  %cmp = icmp slt i32 %add, 0, !dbg !498
  br i1 %cmp, label %if.then, label %if.end, !dbg !499

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !500

if.end:                                           ; preds = %if.then, %entry
  %nbh.addr.0 = phi i32 [ 0, %if.then ], [ %add, %entry ], !dbg !501
  %cmp1 = icmp sgt i32 %nbh.addr.0, 22528, !dbg !502
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !503

if.then2:                                         ; preds = %if.end
  br label %if.end3, !dbg !504

if.end3:                                          ; preds = %if.then2, %if.end
  %nbh.addr.1 = phi i32 [ 22528, %if.then2 ], [ %nbh.addr.0, %if.end ], !dbg !501
  ret i32 %nbh.addr.1, !dbg !505
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_reset() #0 !dbg !506 {
entry:
  store i32 32, i32* @adpcm_dec_dec_detl, align 4, !dbg !507
  store i32 32, i32* @adpcm_dec_detl, align 4, !dbg !508
  store i32 8, i32* @adpcm_dec_dec_deth, align 4, !dbg !509
  store i32 8, i32* @adpcm_dec_deth, align 4, !dbg !510
  store i32 0, i32* @adpcm_dec_rlt2, align 4, !dbg !511
  store i32 0, i32* @adpcm_dec_rlt1, align 4, !dbg !512
  store i32 0, i32* @adpcm_dec_plt2, align 4, !dbg !513
  store i32 0, i32* @adpcm_dec_plt1, align 4, !dbg !514
  store i32 0, i32* @adpcm_dec_al2, align 4, !dbg !515
  store i32 0, i32* @adpcm_dec_al1, align 4, !dbg !516
  store i32 0, i32* @adpcm_dec_nbl, align 4, !dbg !517
  store i32 0, i32* @adpcm_dec_rh2, align 4, !dbg !518
  store i32 0, i32* @adpcm_dec_rh1, align 4, !dbg !519
  store i32 0, i32* @adpcm_dec_ph2, align 4, !dbg !520
  store i32 0, i32* @adpcm_dec_ph1, align 4, !dbg !521
  store i32 0, i32* @adpcm_dec_ah2, align 4, !dbg !522
  store i32 0, i32* @adpcm_dec_ah1, align 4, !dbg !523
  store i32 0, i32* @adpcm_dec_nbh, align 4, !dbg !524
  store i32 0, i32* @adpcm_dec_dec_rlt2, align 4, !dbg !525
  store i32 0, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !526
  store i32 0, i32* @adpcm_dec_dec_plt2, align 4, !dbg !527
  store i32 0, i32* @adpcm_dec_dec_plt1, align 4, !dbg !528
  store i32 0, i32* @adpcm_dec_dec_al2, align 4, !dbg !529
  store i32 0, i32* @adpcm_dec_dec_al1, align 4, !dbg !530
  store i32 0, i32* @adpcm_dec_dec_nbl, align 4, !dbg !531
  store i32 0, i32* @adpcm_dec_dec_rh2, align 4, !dbg !532
  store i32 0, i32* @adpcm_dec_dec_rh1, align 4, !dbg !533
  store i32 0, i32* @adpcm_dec_dec_ph2, align 4, !dbg !534
  store i32 0, i32* @adpcm_dec_dec_ph1, align 4, !dbg !535
  store i32 0, i32* @adpcm_dec_dec_ah2, align 4, !dbg !536
  store i32 0, i32* @adpcm_dec_dec_ah1, align 4, !dbg !537
  store i32 0, i32* @adpcm_dec_dec_nbh, align 4, !dbg !538
  br label %for.cond, !dbg !539

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !540
  %exitcond.not = icmp eq i32 %i.0, 6, !dbg !541
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !542

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_delay_dhx, i32 0, i32 %i.0, !dbg !543
  store i32 0, i32* %arrayidx, align 4, !dbg !544
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_dltx, i32 0, i32 %i.0, !dbg !545
  store i32 0, i32* %arrayidx1, align 4, !dbg !546
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_dhx, i32 0, i32 %i.0, !dbg !547
  store i32 0, i32* %arrayidx2, align 4, !dbg !548
  br label %for.inc, !dbg !549

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !550
  br label %for.cond, !dbg !542, !llvm.loop !551

for.end:                                          ; preds = %for.cond
  br label %for.cond3, !dbg !552

for.cond3:                                        ; preds = %for.inc9, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc10, %for.inc9 ], !dbg !540
  %exitcond1.not = icmp eq i32 %i.1, 6, !dbg !553
  br i1 %exitcond1.not, label %for.end11, label %for.body5, !dbg !554

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_delay_bph, i32 0, i32 %i.1, !dbg !555
  store i32 0, i32* %arrayidx6, align 4, !dbg !556
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_bpl, i32 0, i32 %i.1, !dbg !557
  store i32 0, i32* %arrayidx7, align 4, !dbg !558
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_bph, i32 0, i32 %i.1, !dbg !559
  store i32 0, i32* %arrayidx8, align 4, !dbg !560
  br label %for.inc9, !dbg !561

for.inc9:                                         ; preds = %for.body5
  %inc10 = add nuw nsw i32 %i.1, 1, !dbg !562
  br label %for.cond3, !dbg !554, !llvm.loop !563

for.end11:                                        ; preds = %for.cond3
  br label %for.cond12, !dbg !564

for.cond12:                                       ; preds = %for.inc17, %for.end11
  %i.2 = phi i32 [ 0, %for.end11 ], [ %inc18, %for.inc17 ], !dbg !540
  %exitcond2.not = icmp eq i32 %i.2, 11, !dbg !565
  br i1 %exitcond2.not, label %for.end19, label %for.body14, !dbg !566

for.body14:                                       ; preds = %for.cond12
  %arrayidx15 = getelementptr inbounds [11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 %i.2, !dbg !567
  store i32 0, i32* %arrayidx15, align 4, !dbg !568
  %arrayidx16 = getelementptr inbounds [11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 %i.2, !dbg !569
  store i32 0, i32* %arrayidx16, align 4, !dbg !570
  br label %for.inc17, !dbg !571

for.inc17:                                        ; preds = %for.body14
  %inc18 = add nuw nsw i32 %i.2, 1, !dbg !572
  br label %for.cond12, !dbg !566, !llvm.loop !573

for.end19:                                        ; preds = %for.cond12
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_init() #0 !dbg !575 {
entry:
  %x = alloca i32, align 4
  store volatile i32 0, i32* %x, align 4, !dbg !576
  call arm_aapcs_vfpcc void @adpcm_dec_reset() #4, !dbg !577
  br label %for.cond, !dbg !578

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !579
  %exitcond.not = icmp eq i32 %i.0, 3, !dbg !580
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !581

for.body:                                         ; preds = %for.cond
  %mul1 = mul nuw nsw i32 %i.0, 6282000, !dbg !582
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_cos(i32 noundef %mul1) #4, !dbg !583
  %mul2 = mul nsw i32 %call, 10, !dbg !584
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_test_data, i32 0, i32 %i.0, !dbg !585
  store i32 %mul2, i32* %arrayidx, align 4, !dbg !586
  %0 = load volatile i32, i32* %x, align 4, !dbg !587
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_test_data, i32 0, i32 %i.0, !dbg !588
  %add = add nsw i32 %mul2, %0, !dbg !589
  store i32 %add, i32* %arrayidx3, align 4, !dbg !589
  br label %for.inc, !dbg !590

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !591
  br label %for.cond, !dbg !581, !llvm.loop !592

for.end:                                          ; preds = %for.cond
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_return() #0 !dbg !594 {
entry:
  br label %for.cond, !dbg !595

for.cond:                                         ; preds = %for.inc, %entry
  %check_sum.0 = phi i32 [ 0, %entry ], [ %add3, %for.inc ], !dbg !596
  %i.0 = phi i32 [ 0, %entry ], [ %add4, %for.inc ], !dbg !596
  %cmp = icmp ult i32 %i.0, 4, !dbg !597
  br i1 %cmp, label %for.body, label %for.end, !dbg !598

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !599

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %i.0, !dbg !600
  %0 = load i32, i32* %arrayidx, align 4, !dbg !600
  %add = or i32 %i.0, 1, !dbg !601
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %add, !dbg !602
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !602
  %add2 = add nsw i32 %0, %1, !dbg !603
  %add3 = add nsw i32 %check_sum.0, %add2, !dbg !604
  %add4 = add nuw nsw i32 %i.0, 2, !dbg !605
  br label %for.cond, !dbg !598, !llvm.loop !606

for.end:                                          ; preds = %for.cond
  %cmp5 = icmp ne i32 %check_sum.0, -2, !dbg !608
  %conv = zext i1 %cmp5 to i32, !dbg !608
  ret i32 %conv, !dbg !609
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_adpcm_dec() #0 !dbg !610 {
entry:
  br label %for.cond, !dbg !611

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add3, %for.inc ], !dbg !612
  %cmp = icmp ult i32 %i.0, 4, !dbg !613
  br i1 %cmp, label %for.body, label %for.end, !dbg !614

for.body:                                         ; preds = %for.cond
  %div.udiv = lshr exact i32 %i.0, 1
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @adpcm_dec_compressed, i32 0, i32 %div.udiv, !dbg !615
  %0 = load i32, i32* %arrayidx, align 4, !dbg !615
  call arm_aapcs_vfpcc void @adpcm_dec_decode(i32 noundef %0) #4, !dbg !616
  %1 = load i32, i32* @adpcm_dec_xout1, align 4, !dbg !617
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %i.0, !dbg !618
  store i32 %1, i32* %arrayidx1, align 4, !dbg !619
  %2 = load i32, i32* @adpcm_dec_xout2, align 4, !dbg !620
  %add = or i32 %i.0, 1, !dbg !621
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %add, !dbg !622
  store i32 %2, i32* %arrayidx2, align 4, !dbg !623
  br label %for.inc, !dbg !624

for.inc:                                          ; preds = %for.body
  %add3 = add nuw nsw i32 %i.0, 2, !dbg !625
  br label %for.cond, !dbg !614, !llvm.loop !626

for.end:                                          ; preds = %for.cond
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec(i8* noundef %n) #0 !dbg !628 {
entry:
  call arm_aapcs_vfpcc void @adpcm_dec_init() #4, !dbg !629
  call arm_aapcs_vfpcc void @adpcm_dec_adpcm_dec() #4, !dbg !630
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_return() #4, !dbg !631
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @bs() #0 !dbg !633 {
entry:
  %call = call arm_aapcs_vfpcc i32 @binary_search(i32 noundef 8) #4, !dbg !635
  ret i32 undef, !dbg !636
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @binary_search(i32 noundef %x) #0 !dbg !637 {
entry:
  br label %while.cond, !dbg !638

while.cond:                                       ; preds = %if.end10, %entry
  %up.0 = phi i32 [ 14, %entry ], [ %up.2, %if.end10 ], !dbg !639
  %fvalue.0 = phi i32 [ -1, %entry ], [ %fvalue.1, %if.end10 ], !dbg !639
  %low.0 = phi i32 [ 0, %entry ], [ %low.2, %if.end10 ], !dbg !640
  %cmp.not = icmp sgt i32 %low.0, %up.0, !dbg !641
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !638

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %low.0, %up.0, !dbg !642
  %shr = ashr i32 %add, 1, !dbg !643
  %key = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !644
  %0 = load i32, i32* %key, align 4, !dbg !644
  %cmp1 = icmp eq i32 %0, %x, !dbg !645
  br i1 %cmp1, label %if.then, label %if.else, !dbg !646

if.then:                                          ; preds = %while.body
  %sub = add nsw i32 %low.0, -1, !dbg !647
  %value = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 1, !dbg !648
  %1 = load i32, i32* %value, align 4, !dbg !648
  br label %if.end10, !dbg !649

if.else:                                          ; preds = %while.body
  %key4 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i32 0, i32 %shr, i32 0, !dbg !650
  %2 = load i32, i32* %key4, align 4, !dbg !650
  %cmp5 = icmp sgt i32 %2, %x, !dbg !651
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !652

if.then6:                                         ; preds = %if.else
  %sub7 = add nsw i32 %shr, -1, !dbg !653
  br label %if.end, !dbg !654

if.else8:                                         ; preds = %if.else
  %add9 = add nsw i32 %shr, 1, !dbg !655
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  %up.1 = phi i32 [ %sub7, %if.then6 ], [ %up.0, %if.else8 ], !dbg !639
  %low.1 = phi i32 [ %low.0, %if.then6 ], [ %add9, %if.else8 ], !dbg !639
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %up.2 = phi i32 [ %sub, %if.then ], [ %up.1, %if.end ], !dbg !639
  %fvalue.1 = phi i32 [ %1, %if.then ], [ %fvalue.0, %if.end ], !dbg !639
  %low.2 = phi i32 [ %low.0, %if.then ], [ %low.1, %if.end ], !dbg !640
  br label %while.cond, !dbg !638, !llvm.loop !656

while.end:                                        ; preds = %while.cond
  ret i32 %fvalue.0, !dbg !658
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @expint() #0 !dbg !659 {
entry:
  %call = call arm_aapcs_vfpcc i32 @expint_expint(i32 noundef 50, i32 noundef 1) #4, !dbg !661
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @expint_expint(i32 noundef %n, i32 noundef %x) #0 !dbg !663 {
entry:
  %sub = add nsw i32 %n, -1, !dbg !664
  %cmp = icmp sgt i32 %x, 1, !dbg !665
  br i1 %cmp, label %if.then, label %if.else, !dbg !666

if.then:                                          ; preds = %entry
  %add = add nsw i32 %x, %n, !dbg !667
  br label %for.cond, !dbg !668

for.cond:                                         ; preds = %for.inc, %if.then
  %d.0 = phi i32 [ 30000000, %if.then ], [ %mul7, %for.inc ], !dbg !669
  %c.0 = phi i32 [ 2000000, %if.then ], [ %add8, %for.inc ], !dbg !669
  %b.0 = phi i32 [ %add, %if.then ], [ %add4, %for.inc ], !dbg !669
  %h.0 = phi i32 [ 30000000, %if.then ], [ %mul10, %for.inc ], !dbg !669
  %i.0 = phi i32 [ 1, %if.then ], [ %inc, %for.inc ], !dbg !669
  %exitcond1.not = icmp eq i32 %i.0, 101, !dbg !670
  br i1 %exitcond1.not, label %for.end, label %for.body, !dbg !671

for.body:                                         ; preds = %for.cond
  %add3 = add nsw i32 %sub, %i.0, !dbg !672
  %0 = mul i32 %i.0, %add3, !dbg !673
  %mul = sub i32 0, %0, !dbg !673
  %add4 = add nsw i32 %b.0, 2, !dbg !674
  %mul5 = mul nsw i32 %d.0, %mul, !dbg !675
  %add6 = add nsw i32 %mul5, %add4, !dbg !676
  %mul7 = mul nsw i32 %add6, 10, !dbg !677
  %div = sdiv i32 %mul, %c.0, !dbg !678
  %add8 = add nsw i32 %add4, %div, !dbg !679
  %mul9 = mul nsw i32 %add8, %mul7, !dbg !680
  %mul10 = mul nsw i32 %h.0, %mul9, !dbg !681
  %cmp11 = icmp slt i32 %mul9, 10000, !dbg !682
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !683

if.then12:                                        ; preds = %for.body
  %1 = mul i32 %mul10, %x, !dbg !684
  %mul14 = sub i32 0, %1, !dbg !684
  br label %return, !dbg !685

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !686

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.0, 1, !dbg !687
  br label %for.cond, !dbg !671, !llvm.loop !688

for.end:                                          ; preds = %for.cond
  br label %if.end43, !dbg !689

if.else:                                          ; preds = %entry
  %cmp15.not = icmp eq i32 %sub, 0, !dbg !690
  %cond = select i1 %cmp15.not, i32 1000, i32 2, !dbg !691
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 1), !dbg !692
  %2 = add nsw i32 %smax, -1, !dbg !692
  %3 = mul i32 %2, %n, !dbg !692
  %4 = zext i32 %2 to i33, !dbg !692
  %5 = add nsw i32 %smax, -2, !dbg !692
  %6 = zext i32 %5 to i33, !dbg !692
  %7 = mul i33 %4, %6, !dbg !692
  %8 = lshr i33 %7, 1, !dbg !692
  %9 = trunc i33 %8 to i32, !dbg !692
  %10 = add i32 %3, %9, !dbg !692
  %11 = add i32 %10, 255, !dbg !692
  br label %for.cond16, !dbg !692

for.cond16:                                       ; preds = %for.inc40, %if.else
  %fact.0.neg = phi i32 [ -1, %if.else ], [ %12, %for.inc40 ], !dbg !669
  %fact.0 = phi i32 [ 1, %if.else ], [ %.neg, %for.inc40 ], !dbg !669
  %i.1 = phi i32 [ 1, %if.else ], [ %inc41, %for.inc40 ], !dbg !669
  %ans.0 = phi i32 [ %cond, %if.else ], [ %add39, %for.inc40 ], !dbg !669
  %exitcond.not = icmp eq i32 %i.1, 101, !dbg !693
  br i1 %exitcond.not, label %for.end42, label %for.body18, !dbg !694

for.body18:                                       ; preds = %for.cond16
  %div202 = sdiv i32 %x, %i.1, !dbg !695
  %.neg = mul i32 %fact.0.neg, %div202, !dbg !696
  %12 = mul i32 %div202, %fact.0, !dbg !696
  %cmp22.not = icmp eq i32 %i.1, %sub, !dbg !697
  br i1 %cmp22.not, label %if.else27, label %if.then23, !dbg !698

if.then23:                                        ; preds = %for.body18
  %sub25 = sub nsw i32 %i.1, %sub, !dbg !699
  %div263 = sdiv i32 %.neg, %sub25, !dbg !700
  %div26 = sub nsw i32 0, %div263, !dbg !700
  br label %if.end38, !dbg !701

if.else27:                                        ; preds = %for.body18
  br label %for.cond28, !dbg !702

for.cond28:                                       ; preds = %for.inc33, %if.else27
  br i1 false, label %for.body30, label %for.end35, !dbg !703

for.body30:                                       ; preds = %for.cond28
  br label %for.inc33, !dbg !704

for.inc33:                                        ; preds = %for.body30
  br label %for.cond28, !dbg !703, !llvm.loop !705

for.end35:                                        ; preds = %for.cond28
  %call = call arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #4, !dbg !707
  %mul36 = mul nsw i32 %.neg, %call, !dbg !708
  %add37 = add nsw i32 %11, %mul36, !dbg !709
  br label %if.end38

if.end38:                                         ; preds = %for.end35, %if.then23
  %del.0 = phi i32 [ %div26, %if.then23 ], [ %add37, %for.end35 ], !dbg !669
  br label %for.inc40, !dbg !710

for.inc40:                                        ; preds = %if.end38
  %add39 = add nsw i32 %ans.0, %del.0, !dbg !711
  %inc41 = add nuw nsw i32 %i.1, 1, !dbg !712
  br label %for.cond16, !dbg !694, !llvm.loop !713

for.end42:                                        ; preds = %for.cond16
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end
  %ans.1 = phi i32 [ undef, %for.end ], [ %ans.0, %for.end42 ]
  br label %return, !dbg !714

return:                                           ; preds = %if.end43, %if.then12
  %retval.0 = phi i32 [ %mul14, %if.then12 ], [ %ans.1, %if.end43 ], !dbg !669
  ret i32 %retval.0, !dbg !715
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @foo(i32 noundef %x) #0 !dbg !716 {
entry:
  %mul11 = add i32 %x, 8, !dbg !717
  %add = mul i32 %mul11, %x, !dbg !717
  %sub = sub nsw i32 4, %x, !dbg !718
  %shl = shl i32 %add, %sub, !dbg !719
  ret i32 %shl, !dbg !720
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc double @lms_sinus(i32 noundef %i) #0 !dbg !721 {
entry:
  %rem = srem i32 %i, 20, !dbg !723
  %cmp = icmp sgt i32 %rem, 9, !dbg !724
  br i1 %cmp, label %if.then, label %if.end, !dbg !725

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %rem, 15, !dbg !726
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !727

cond.true:                                        ; preds = %if.then
  %sub = sub nsw i32 20, %rem, !dbg !728
  br label %cond.end, !dbg !727

cond.false:                                       ; preds = %if.then
  %sub2 = add nsw i32 %rem, -10, !dbg !729
  br label %cond.end, !dbg !727

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub2, %cond.false ], !dbg !727
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond, !dbg !730
  %0 = load double, double* %arrayidx, align 8, !dbg !730
  %fneg = fneg double %0, !dbg !731
  br label %return, !dbg !732

if.end:                                           ; preds = %entry
  %cmp3 = icmp sgt i32 %rem, 5, !dbg !733
  br i1 %cmp3, label %cond.true4, label %cond.false6, !dbg !734

cond.true4:                                       ; preds = %if.end
  %sub5 = sub nsw i32 10, %rem, !dbg !735
  br label %cond.end7, !dbg !734

cond.false6:                                      ; preds = %if.end
  br label %cond.end7, !dbg !734

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %sub5, %cond.true4 ], [ %rem, %cond.false6 ], !dbg !734
  %arrayidx9 = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond8, !dbg !736
  %1 = load double, double* %arrayidx9, align 8, !dbg !736
  br label %return, !dbg !737

return:                                           ; preds = %cond.end7, %cond.end
  %retval.0 = phi double [ %fneg, %cond.end ], [ %1, %cond.end7 ], !dbg !738
  ret double %retval.0, !dbg !739
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_init() #0 !dbg !740 {
entry:
  store float 0.000000e+00, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 0), align 4, !dbg !741
  br label %do.body, !dbg !742

do.body:                                          ; preds = %do.cond, %entry
  br label %do.cond, !dbg !743

do.cond:                                          ; preds = %do.body
  br i1 false, label %do.body, label %do.end, !dbg !743, !llvm.loop !744

do.end:                                           ; preds = %do.cond
  %call = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef 1) #4, !dbg !746
  %0 = fadd double %call, 0xBFF8A068E044FADD, !dbg !747
  %conv11 = fptrunc double %0 to float, !dbg !746
  store float %conv11, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 1), align 4, !dbg !748
  br label %for.cond, !dbg !749

for.cond:                                         ; preds = %for.inc, %do.end
  %k.0 = phi i32 [ 2, %do.end ], [ %add46, %for.inc ], !dbg !750
  %seed.1 = phi i32 [ -1770082073, %do.end ], [ %add25, %for.inc ], !dbg !750
  %cmp12 = icmp ult i32 %k.0, 201, !dbg !751
  br i1 %cmp12, label %for.body, label %for.end, !dbg !752

for.body:                                         ; preds = %for.cond
  br label %do.body18, !dbg !753

do.body18:                                        ; preds = %do.cond31, %for.body
  %seed.2 = phi i32 [ %seed.1, %for.body ], [ %add25, %do.cond31 ], !dbg !750
  %mul19 = mul i32 %seed.2, 1103515245, !dbg !754
  %add20 = add i32 %mul19, 12345, !dbg !755
  %and21 = and i32 %add20, 2147483647, !dbg !756
  %conv22 = uitofp i32 %and21 to double, !dbg !757
  %1 = call double @llvm.fmuladd.f64(double %conv22, double 0x3E10000000000000, double -1.000000e+00), !dbg !758
  %mul24 = mul i32 %add20, 1103515245, !dbg !759
  %add25 = add i32 %mul24, 12345, !dbg !760
  %and26 = and i32 %add25, 2147483647, !dbg !761
  %conv27 = uitofp i32 %and26 to double, !dbg !762
  %2 = call double @llvm.fmuladd.f64(double %conv27, double 0x3E10000000000000, double -1.000000e+00), !dbg !763
  %mul30 = fmul double %2, %2, !dbg !764
  %3 = call double @llvm.fmuladd.f64(double %1, double %1, double %mul30), !dbg !765
  br label %do.cond31, !dbg !766

do.cond31:                                        ; preds = %do.body18
  %cmp32 = fcmp ogt double %3, 1.000000e+00, !dbg !767
  br i1 %cmp32, label %do.body18, label %do.end34, !dbg !766, !llvm.loop !768

do.end34:                                         ; preds = %do.cond31
  %div36 = fdiv double 1.000000e+00, %3, !dbg !770
  %call37 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %k.0) #4, !dbg !771
  %4 = call double @llvm.fmuladd.f64(double %div36, double %2, double %call37), !dbg !772
  %conv39 = fptrunc double %4 to float, !dbg !771
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %k.0, !dbg !773
  store float %conv39, float* %arrayidx, align 4, !dbg !774
  %add40 = or i32 %k.0, 1, !dbg !775
  %call41 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %add40) #4, !dbg !776
  %5 = call double @llvm.fmuladd.f64(double %div36, double %1, double %call41), !dbg !777
  %conv43 = fptrunc double %5 to float, !dbg !776
  %add44 = or i32 %k.0, 1, !dbg !778
  %arrayidx45 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add44, !dbg !779
  store float %conv43, float* %arrayidx45, align 4, !dbg !780
  br label %for.inc, !dbg !781

for.inc:                                          ; preds = %do.end34
  %add46 = add nuw nsw i32 %k.0, 2, !dbg !782
  br label %for.cond, !dbg !752, !llvm.loop !783

for.end:                                          ; preds = %for.cond
  ret void, !dbg !784
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @lms_calc(float noundef %x, float noundef %d, float* noundef %b, i32 noundef %l, float noundef %mu, float noundef %alpha, float* noundef %history, float* noundef %sigma) #0 !dbg !785 {
entry:
  br label %for.cond, !dbg !786

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %l, %entry ], [ %dec, %for.inc ], !dbg !787
  %cmp = icmp sgt i32 %i.0, 0, !dbg !788
  br i1 %cmp, label %for.body, label %for.end, !dbg !789

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %i.0, -1, !dbg !790
  %arrayidx = getelementptr inbounds float, float* %history, i32 %sub, !dbg !791
  %0 = load float, float* %arrayidx, align 4, !dbg !791
  %arrayidx1 = getelementptr inbounds float, float* %history, i32 %i.0, !dbg !792
  store float %0, float* %arrayidx1, align 4, !dbg !793
  br label %for.inc, !dbg !792

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0, -1, !dbg !794
  br label %for.cond, !dbg !789, !llvm.loop !795

for.end:                                          ; preds = %for.cond
  store float %x, float* %history, align 4, !dbg !797
  %mul = fmul float %alpha, %x, !dbg !798
  %sub4 = fsub float 1.000000e+00, %alpha, !dbg !799
  %1 = load float, float* %sigma, align 4, !dbg !800
  %mul5 = fmul float %sub4, %1, !dbg !801
  %2 = call float @llvm.fmuladd.f32(float %mul, float %x, float %mul5), !dbg !802
  store float %2, float* %sigma, align 4, !dbg !803
  %3 = call i32 @llvm.smax.i32(i32 %l, i32 -1), !dbg !804
  %smax = add nsw i32 %3, 1, !dbg !804
  br label %for.cond6, !dbg !804

for.cond6:                                        ; preds = %for.inc12, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc, %for.inc12 ], !dbg !787
  %y.0 = phi float [ 0.000000e+00, %for.end ], [ %6, %for.inc12 ], !dbg !787
  %exitcond.not = icmp eq i32 %i.1, %smax, !dbg !805
  br i1 %exitcond.not, label %for.end13, label %for.body8, !dbg !806

for.body8:                                        ; preds = %for.cond6
  br label %for.inc12, !dbg !807

for.inc12:                                        ; preds = %for.body8
  %arrayidx9 = getelementptr inbounds float, float* %b, i32 %i.1, !dbg !808
  %4 = load float, float* %arrayidx9, align 4, !dbg !808
  %arrayidx10 = getelementptr inbounds float, float* %history, i32 %i.1, !dbg !809
  %5 = load float, float* %arrayidx10, align 4, !dbg !809
  %6 = call float @llvm.fmuladd.f32(float %4, float %5, float %y.0), !dbg !810
  %inc = add nuw i32 %i.1, 1, !dbg !811
  br label %for.cond6, !dbg !806, !llvm.loop !812

for.end13:                                        ; preds = %for.cond6
  %sub14 = fsub float %d, %y.0, !dbg !814
  %mul15 = fmul float %sub14, %mu, !dbg !815
  %7 = load float, float* %sigma, align 4, !dbg !816
  %div = fdiv float %mul15, %7, !dbg !817
  br label %for.cond16, !dbg !818

for.cond16:                                       ; preds = %for.inc22, %for.end13
  %i.2 = phi i32 [ 0, %for.end13 ], [ %inc23, %for.inc22 ], !dbg !787
  %exitcond1.not = icmp eq i32 %i.2, %smax, !dbg !819
  br i1 %exitcond1.not, label %for.end24, label %for.body18, !dbg !820

for.body18:                                       ; preds = %for.cond16
  %arrayidx19 = getelementptr inbounds float, float* %history, i32 %i.2, !dbg !821
  %8 = load float, float* %arrayidx19, align 4, !dbg !821
  %arrayidx21 = getelementptr inbounds float, float* %b, i32 %i.2, !dbg !822
  %9 = load float, float* %arrayidx21, align 4, !dbg !823
  %10 = call float @llvm.fmuladd.f32(float %div, float %8, float %9), !dbg !823
  store float %10, float* %arrayidx21, align 4, !dbg !823
  br label %for.inc22, !dbg !822

for.inc22:                                        ; preds = %for.body18
  %inc23 = add nuw i32 %i.2, 1, !dbg !824
  br label %for.cond16, !dbg !820, !llvm.loop !825

for.end24:                                        ; preds = %for.cond16
  ret float %y.0, !dbg !827
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_main() #0 !dbg !828 {
entry:
  %b = alloca [21 x float], align 4
  %history = alloca [21 x float], align 4
  %sigma = alloca float, align 4
  store float 2.000000e+00, float* %sigma, align 4, !dbg !829
  br label %for.cond, !dbg !830

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !831
  %exitcond.not = icmp eq i32 %i.0, 21, !dbg !832
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !833

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 %i.0, !dbg !834
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !835
  %arrayidx1 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 %i.0, !dbg !836
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !837
  br label %for.inc, !dbg !838

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !839
  br label %for.cond, !dbg !833, !llvm.loop !840

for.end:                                          ; preds = %for.cond
  br label %for.cond2, !dbg !841

for.cond2:                                        ; preds = %for.inc9, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc10, %for.inc9 ], !dbg !831
  %exitcond1.not = icmp eq i32 %i.1, 201, !dbg !842
  br i1 %exitcond1.not, label %for.end11, label %for.body4, !dbg !843

for.body4:                                        ; preds = %for.cond2
  %arrayidx5 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %i.1, !dbg !844
  %0 = load float, float* %arrayidx5, align 4, !dbg !844
  %add = add nuw nsw i32 %i.1, 1, !dbg !845
  %arrayidx6 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add, !dbg !846
  %1 = load float, float* %arrayidx6, align 4, !dbg !846
  %arraydecay = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 0, !dbg !847
  %arraydecay7 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 0, !dbg !848
  %call = call arm_aapcs_vfpcc float @lms_calc(float noundef %0, float noundef %1, float* noundef nonnull %arraydecay, i32 noundef 20, float noundef 0x3F4F352680000000, float noundef 0x3F847AE140000000, float* noundef nonnull %arraydecay7, float* noundef nonnull %sigma) #4, !dbg !849
  %arrayidx8 = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %i.1, !dbg !850
  store float %call, float* %arrayidx8, align 4, !dbg !851
  br label %for.inc9, !dbg !852

for.inc9:                                         ; preds = %for.body4
  %inc10 = add nuw nsw i32 %i.1, 1, !dbg !853
  br label %for.cond2, !dbg !843, !llvm.loop !854

for.end11:                                        ; preds = %for.cond2
  ret void, !dbg !855
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @lms_return() #0 !dbg !856 {
entry:
  br label %for.cond, !dbg !857

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi double [ 0.000000e+00, %entry ], [ %add, %for.inc ], !dbg !858
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !858
  %exitcond.not = icmp eq i32 %i.0, 201, !dbg !859
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !860

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !861

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %i.0, !dbg !862
  %0 = load float, float* %arrayidx, align 4, !dbg !862
  %conv = fpext float %0 to double, !dbg !862
  %add = fadd double %sum.0, %conv, !dbg !863
  %inc = add nuw nsw i32 %i.0, 1, !dbg !864
  br label %for.cond, !dbg !860, !llvm.loop !865

for.end:                                          ; preds = %for.cond
  %add1 = fadd double %sum.0, 0x4012D2A80064A9CE, !dbg !866
  %mul = fmul double %add1, 1.000000e+06, !dbg !867
  %conv2 = fptosi double %mul to i32, !dbg !868
  ret i32 %conv2, !dbg !869
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms(i8* noundef %n) #0 !dbg !870 {
entry:
  call arm_aapcs_vfpcc void @lms_init() #4, !dbg !871
  call arm_aapcs_vfpcc void @lms_main() #4, !dbg !872
  %call = call arm_aapcs_vfpcc i32 @lms_return() #4, !dbg !873
  ret void, !dbg !874
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @matmult() #0 !dbg !875 {
entry:
  call arm_aapcs_vfpcc void @InitSeed() #4, !dbg !877
  call arm_aapcs_vfpcc void @Test([20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i32 0, i32 0), [20 x i32]* noundef getelementptr inbounds ([20 x [20 x i32]], [20 x [20 x i32]]* @ResultArray, i32 0, i32 0)) #4, !dbg !878
  ret void, !dbg !879
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @InitSeed() #0 !dbg !880 {
entry:
  store i32 0, i32* @Seed, align 4, !dbg !881
  ret void, !dbg !882
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Test([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !883 {
entry:
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %A) #4, !dbg !884
  call arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %B) #4, !dbg !885
  call arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #4, !dbg !886
  ret void, !dbg !887
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Initialize([20 x i32]* noundef %Array) #0 !dbg !888 {
entry:
  br label %for.cond, !dbg !889

for.cond:                                         ; preds = %for.inc5, %entry
  %OuterIndex.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ], !dbg !890
  %exitcond1.not = icmp eq i32 %OuterIndex.0, 20, !dbg !891
  br i1 %exitcond1.not, label %for.end7, label %for.body, !dbg !892

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !893

for.cond1:                                        ; preds = %for.inc, %for.body
  %InnerIndex.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !890
  %exitcond.not = icmp eq i32 %InnerIndex.0, 20, !dbg !894
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !895

for.body3:                                        ; preds = %for.cond1
  %call = call arm_aapcs_vfpcc i32 @RandomInteger() #4, !dbg !896
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Array, i32 %OuterIndex.0, i32 %InnerIndex.0, !dbg !897
  store i32 %call, i32* %arrayidx4, align 4, !dbg !898
  br label %for.inc, !dbg !897

for.inc:                                          ; preds = %for.body3
  %inc = add nuw nsw i32 %InnerIndex.0, 1, !dbg !899
  br label %for.cond1, !dbg !895, !llvm.loop !900

for.end:                                          ; preds = %for.cond1
  br label %for.inc5, !dbg !901

for.inc5:                                         ; preds = %for.end
  %inc6 = add nuw nsw i32 %OuterIndex.0, 1, !dbg !902
  br label %for.cond, !dbg !892, !llvm.loop !903

for.end7:                                         ; preds = %for.cond
  ret void, !dbg !904
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @Multiply([20 x i32]* noundef %A, [20 x i32]* noundef %B, [20 x i32]* noundef %Res) #0 !dbg !905 {
entry:
  br label %for.cond, !dbg !906

for.cond:                                         ; preds = %for.inc17, %entry
  %Outer.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ], !dbg !907
  %exitcond2.not = icmp eq i32 %Outer.0, 20, !dbg !908
  br i1 %exitcond2.not, label %for.end19, label %for.body, !dbg !909

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !910

for.cond1:                                        ; preds = %for.inc14, %for.body
  %Inner.0 = phi i32 [ 0, %for.body ], [ %inc15, %for.inc14 ], !dbg !907
  %exitcond1.not = icmp eq i32 %Inner.0, 20, !dbg !911
  br i1 %exitcond1.not, label %for.end16, label %for.body3, !dbg !912

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* %Res, i32 %Outer.0, i32 %Inner.0, !dbg !913
  store i32 0, i32* %arrayidx4, align 4, !dbg !914
  br label %for.cond5, !dbg !915

for.cond5:                                        ; preds = %for.inc, %for.body3
  %Index.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ], !dbg !907
  %exitcond.not = icmp eq i32 %Index.0, 20, !dbg !916
  br i1 %exitcond.not, label %for.end, label %for.body7, !dbg !917

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* %A, i32 %Outer.0, i32 %Index.0, !dbg !918
  %0 = load i32, i32* %arrayidx9, align 4, !dbg !918
  %arrayidx11 = getelementptr inbounds [20 x i32], [20 x i32]* %B, i32 %Index.0, i32 %Inner.0, !dbg !919
  %1 = load i32, i32* %arrayidx11, align 4, !dbg !919
  %mul = mul nsw i32 %0, %1, !dbg !920
  %arrayidx13 = getelementptr inbounds [20 x i32], [20 x i32]* %Res, i32 %Outer.0, i32 %Inner.0, !dbg !921
  %2 = load i32, i32* %arrayidx13, align 4, !dbg !922
  %add = add nsw i32 %2, %mul, !dbg !922
  store i32 %add, i32* %arrayidx13, align 4, !dbg !922
  br label %for.inc, !dbg !921

for.inc:                                          ; preds = %for.body7
  %inc = add nuw nsw i32 %Index.0, 1, !dbg !923
  br label %for.cond5, !dbg !917, !llvm.loop !924

for.end:                                          ; preds = %for.cond5
  br label %for.inc14, !dbg !926

for.inc14:                                        ; preds = %for.end
  %inc15 = add nuw nsw i32 %Inner.0, 1, !dbg !927
  br label %for.cond1, !dbg !912, !llvm.loop !928

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17, !dbg !926

for.inc17:                                        ; preds = %for.end16
  %inc18 = add nuw nsw i32 %Outer.0, 1, !dbg !929
  br label %for.cond, !dbg !909, !llvm.loop !930

for.end19:                                        ; preds = %for.cond
  ret void, !dbg !931
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @RandomInteger() #0 !dbg !932 {
entry:
  %0 = load i32, i32* @Seed, align 4, !dbg !933
  %mul = mul nsw i32 %0, 133, !dbg !934
  %add = add nsw i32 %mul, 81, !dbg !935
  %rem = srem i32 %add, 8095, !dbg !936
  store i32 %rem, i32* @Seed, align 4, !dbg !937
  ret i32 %rem, !dbg !938
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_init() #0 !dbg !939 {
entry:
  store float 0.000000e+00, float* @rad2deg_X, align 4, !dbg !941
  store float 0.000000e+00, float* @rad2deg_Y, align 4, !dbg !942
  ret void, !dbg !943
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @rad2deg_return() #0 !dbg !944 {
entry:
  %0 = load float, float* @rad2deg_Y, align 4, !dbg !945
  %conv = fptosi float %0 to i32, !dbg !945
  %cmp = icmp eq i32 %conv, 64620, !dbg !946
  br i1 %cmp, label %if.then, label %if.else, !dbg !947

if.then:                                          ; preds = %entry
  br label %return, !dbg !948

if.else:                                          ; preds = %entry
  br label %return, !dbg !949

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.else ], !dbg !950
  ret i32 %retval.0, !dbg !951
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_main() #0 !dbg !952 {
entry:
  br label %for.cond, !dbg !953

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi float [ 0.000000e+00, %entry ], [ %add1, %for.inc ], !dbg !954
  store float %storemerge, float* @rad2deg_X, align 4, !dbg !954
  %cmp = fcmp ugt float %storemerge, 0x40191EB8A0000000, !dbg !955
  br i1 %cmp, label %for.end, label %for.body, !dbg !956

for.body:                                         ; preds = %for.cond
  %0 = load float, float* @rad2deg_X, align 4, !dbg !957
  %mul = fmul float %0, 1.800000e+02, !dbg !957
  %div = fdiv float %mul, 0x40091EB860000000, !dbg !957
  %1 = load float, float* @rad2deg_Y, align 4, !dbg !958
  %add = fadd float %1, %div, !dbg !958
  store float %add, float* @rad2deg_Y, align 4, !dbg !958
  br label %for.inc, !dbg !959

for.inc:                                          ; preds = %for.body
  %2 = load float, float* @rad2deg_X, align 4, !dbg !960
  %add1 = fadd float %2, 0x3F91DCF4E0000000, !dbg !960
  br label %for.cond, !dbg !956, !llvm.loop !961

for.end:                                          ; preds = %for.cond
  ret void, !dbg !962
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg(i8* noundef %n) #0 !dbg !963 {
entry:
  call arm_aapcs_vfpcc void @rad2deg_init() #4, !dbg !964
  call arm_aapcs_vfpcc void @rad2deg_main() #4, !dbg !965
  %call = call arm_aapcs_vfpcc i32 @rad2deg_return() #4, !dbg !966
  ret void, !dbg !967
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__absvdi2(i64 noundef %a) #2 !dbg !968 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !969
  br i1 %cmp, label %if.then, label %if.end, !dbg !970

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvdi2, i32 0, i32 0)) #5, !dbg !971
  unreachable, !dbg !971

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.abs.i64(i64 %a, i1 true), !dbg !972
  ret i64 %0, !dbg !973
}

; Function Attrs: noinline noreturn nounwind
define weak hidden arm_aapcscc void @compilerrt_abort_impl(i8* noundef %file, i32 noundef %line, i8* noundef %function) #3 !dbg !974 {
entry:
  unreachable, !dbg !975
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__absvsi2(i32 noundef %a) #2 !dbg !976 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !977
  br i1 %cmp, label %if.then, label %if.end, !dbg !978

if.then:                                          ; preds = %entry
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 noundef 26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__absvsi2, i32 0, i32 0)) #5, !dbg !979
  unreachable, !dbg !979

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.abs.i32(i32 %a, i1 true), !dbg !980
  ret i32 %0, !dbg !981
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__addvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !982 {
entry:
  %add = add i64 %a, %b, !dbg !983
  %cmp = icmp sgt i64 %b, -1, !dbg !984
  br i1 %cmp, label %if.then, label %if.else, !dbg !985

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %add, %a, !dbg !986
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !987

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !988
  unreachable, !dbg !988

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !989

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i64 %add, %a, !dbg !990
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !991

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvdi3, i32 0, i32 0)) #5, !dbg !992
  unreachable, !dbg !992

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %add, !dbg !993
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__addvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !994 {
entry:
  %add = add i32 %a, %b, !dbg !995
  %cmp = icmp sgt i32 %b, -1, !dbg !996
  br i1 %cmp, label %if.then, label %if.else, !dbg !997

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %add, %a, !dbg !998
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !999

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1000
  unreachable, !dbg !1000

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1001

if.else:                                          ; preds = %entry
  %cmp3.not = icmp slt i32 %add, %a, !dbg !1002
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1003

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__addvsi3, i32 0, i32 0)) #5, !dbg !1004
  unreachable, !dbg !1004

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %add, !dbg !1005
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashldi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1006 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1007
  store i64 %a, i64* %all, align 8, !dbg !1008
  %and = and i32 %b, 32, !dbg !1009
  %tobool.not = icmp eq i32 %and, 0, !dbg !1009
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1010

if.then:                                          ; preds = %entry
  %low = bitcast %union.dwords* %result to i32*, !dbg !1011
  store i32 0, i32* %low, align 8, !dbg !1012
  %low2 = bitcast %union.dwords* %input to i32*, !dbg !1013
  %0 = load i32, i32* %low2, align 8, !dbg !1013
  %sub = add nsw i32 %b, -32, !dbg !1014
  %shl = shl i32 %0, %sub, !dbg !1015
  %s3 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1016
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !1017
  store i32 %shl, i32* %high, align 4, !dbg !1018
  br label %if.end18, !dbg !1019

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1020
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1021

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1022

if.end:                                           ; preds = %if.else
  %low6 = bitcast %union.dwords* %input to i32*, !dbg !1023
  %1 = load i32, i32* %low6, align 8, !dbg !1023
  %shl7 = shl i32 %1, %b, !dbg !1024
  %low9 = bitcast %union.dwords* %result to i32*, !dbg !1025
  store i32 %shl7, i32* %low9, align 8, !dbg !1026
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1027
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !1028
  %2 = load i32, i32* %high11, align 4, !dbg !1028
  %shl12 = shl i32 %2, %b, !dbg !1029
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1030
  %3 = load i32, i32* %low14, align 8, !dbg !1030
  %sub15 = sub nsw i32 32, %b, !dbg !1031
  %shr = lshr i32 %3, %sub15, !dbg !1032
  %or = or i32 %shl12, %shr, !dbg !1033
  %s16 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1034
  %high17 = getelementptr inbounds %struct.DATA, %struct.DATA* %s16, i32 0, i32 1, !dbg !1035
  store i32 %or, i32* %high17, align 4, !dbg !1036
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1037
  %4 = load i64, i64* %all19, align 8, !dbg !1037
  br label %return, !dbg !1038

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1039
  ret i64 %retval.0, !dbg !1040
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__ashrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1041 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1042
  store i64 %a, i64* %all, align 8, !dbg !1043
  %and = and i32 %b, 32, !dbg !1044
  %tobool.not = icmp eq i32 %and, 0, !dbg !1044
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1045

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1046
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1047
  %0 = load i32, i32* %high, align 4, !dbg !1047
  %shr = ashr i32 %0, 31, !dbg !1048
  %s1 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1049
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1050
  store i32 %shr, i32* %high2, align 4, !dbg !1051
  %s3 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1052
  %high4 = getelementptr inbounds %struct.DATA, %struct.DATA* %s3, i32 0, i32 1, !dbg !1053
  %1 = load i32, i32* %high4, align 4, !dbg !1053
  %sub = add nsw i32 %b, -32, !dbg !1054
  %shr5 = ashr i32 %1, %sub, !dbg !1055
  %low = bitcast %union.dwords* %result to i32*, !dbg !1056
  store i32 %shr5, i32* %low, align 8, !dbg !1057
  br label %if.end21, !dbg !1058

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1059
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1060

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !1061

if.end:                                           ; preds = %if.else
  %s8 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1062
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !1063
  %2 = load i32, i32* %high9, align 4, !dbg !1063
  %shr10 = ashr i32 %2, %b, !dbg !1064
  %s11 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1065
  %high12 = getelementptr inbounds %struct.DATA, %struct.DATA* %s11, i32 0, i32 1, !dbg !1066
  store i32 %shr10, i32* %high12, align 4, !dbg !1067
  %s13 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1068
  %high14 = getelementptr inbounds %struct.DATA, %struct.DATA* %s13, i32 0, i32 1, !dbg !1069
  %3 = load i32, i32* %high14, align 4, !dbg !1069
  %sub15 = sub nsw i32 32, %b, !dbg !1070
  %shl = shl i32 %3, %sub15, !dbg !1071
  %low17 = bitcast %union.dwords* %input to i32*, !dbg !1072
  %4 = load i32, i32* %low17, align 8, !dbg !1072
  %shr18 = lshr i32 %4, %b, !dbg !1073
  %or = or i32 %shl, %shr18, !dbg !1074
  %low20 = bitcast %union.dwords* %result to i32*, !dbg !1075
  store i32 %or, i32* %low20, align 8, !dbg !1076
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %all22 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1077
  %5 = load i64, i64* %all22, align 8, !dbg !1077
  br label %return, !dbg !1078

return:                                           ; preds = %if.end21, %if.then7
  %retval.0 = phi i64 [ %5, %if.end21 ], [ %a, %if.then7 ], !dbg !1079
  ret i64 %retval.0, !dbg !1080
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzdi2(i64 noundef %a) #2 !dbg !1081 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1082
  store i64 %a, i64* %all, align 8, !dbg !1083
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1084
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1085
  %0 = load i32, i32* %high, align 4, !dbg !1085
  %cmp = icmp eq i32 %0, 0, !dbg !1086
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1087
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1088
  %1 = load i32, i32* %high2, align 4, !dbg !1088
  %low = bitcast %union.dwords* %x to i32*, !dbg !1089
  %2 = load i32, i32* %low, align 8, !dbg !1089
  %3 = select i1 %cmp, i32 %2, i32 %1, !dbg !1090
  %4 = call i32 @llvm.ctlz.i32(i32 %3, i1 false), !dbg !1091, !range !1092
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1093
  %add = add nuw nsw i32 %4, %and5, !dbg !1094
  ret i32 %add, !dbg !1095
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__clzsi2(i32 noundef %a) #2 !dbg !1096 {
entry:
  %cmp = icmp ult i32 %a, 65536, !dbg !1097
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1098
  %sub = sub nuw nsw i32 16, %shl, !dbg !1099
  %shr = lshr i32 %a, %sub, !dbg !1100
  %and1 = and i32 %shr, 65280, !dbg !1101
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1102
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1103
  %sub5 = sub nuw nsw i32 8, %shl4, !dbg !1104
  %shr6 = lshr i32 %shr, %sub5, !dbg !1105
  %add = or i32 %shl, %shl4, !dbg !1106
  %and7 = and i32 %shr6, 240, !dbg !1107
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1108
  %shl10 = select i1 %cmp8, i32 4, i32 0, !dbg !1109
  %sub11 = sub nuw nsw i32 4, %shl10, !dbg !1110
  %shr12 = lshr i32 %shr6, %sub11, !dbg !1111
  %add13 = or i32 %add, %shl10, !dbg !1112
  %and14 = and i32 %shr12, 12, !dbg !1113
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1114
  %shl17 = select i1 %cmp15, i32 2, i32 0, !dbg !1115
  %sub18 = sub nuw nsw i32 2, %shl17, !dbg !1116
  %shr19 = lshr i32 %shr12, %sub18, !dbg !1117
  %add20 = or i32 %add13, %shl17, !dbg !1118
  %sub21 = sub i32 2, %shr19, !dbg !1119
  %and22 = lshr i32 %shr19, 1, !dbg !1120
  %0 = or i32 %and22, -2, !dbg !1120
  %.neg = add nsw i32 %0, 1, !dbg !1120
  %and26 = and i32 %sub21, %.neg, !dbg !1121
  %add27 = add i32 %add20, %and26, !dbg !1122
  ret i32 %add27, !dbg !1123
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1124 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1125
  store i64 %a, i64* %all, align 8, !dbg !1126
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1127
  store i64 %b, i64* %all1, align 8, !dbg !1128
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1129
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1130
  %0 = load i32, i32* %high, align 4, !dbg !1130
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1131
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1132
  %1 = load i32, i32* %high3, align 4, !dbg !1132
  %cmp = icmp slt i32 %0, %1, !dbg !1133
  br i1 %cmp, label %if.then, label %if.end, !dbg !1134

if.then:                                          ; preds = %entry
  br label %return, !dbg !1135

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1136
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1137
  %2 = load i32, i32* %high5, align 4, !dbg !1137
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1138
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1139
  %3 = load i32, i32* %high7, align 4, !dbg !1139
  %cmp8 = icmp sgt i32 %2, %3, !dbg !1140
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1141

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1142

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1143
  %4 = load i32, i32* %low, align 8, !dbg !1143
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1144
  %5 = load i32, i32* %low13, align 8, !dbg !1144
  %cmp14 = icmp ult i32 %4, %5, !dbg !1145
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1146

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1147

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1148
  %6 = load i32, i32* %low18, align 8, !dbg !1148
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1149
  %7 = load i32, i32* %low20, align 8, !dbg !1149
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1150
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1151

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1152

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1153

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1154
  ret i32 %retval.0, !dbg !1155
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_lcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1156 {
entry:
  %call = call arm_aapcscc i32 @__cmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1157
  %sub = add nsw i32 %call, -1, !dbg !1158
  ret i32 %sub, !dbg !1159
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzdi2(i64 noundef %a) #2 !dbg !1160 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1161
  store i64 %a, i64* %all, align 8, !dbg !1162
  %low = bitcast %union.dwords* %x to i32*, !dbg !1163
  %0 = load i32, i32* %low, align 8, !dbg !1163
  %cmp = icmp eq i32 %0, 0, !dbg !1164
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1165
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1166
  %1 = load i32, i32* %high, align 4, !dbg !1166
  %2 = select i1 %cmp, i32 %1, i32 %0, !dbg !1167
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1168, !range !1092
  %and5 = select i1 %cmp, i32 32, i32 0, !dbg !1169
  %add = add nuw nsw i32 %3, %and5, !dbg !1170
  ret i32 %add, !dbg !1171
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ctzsi2(i32 noundef %a) #2 !dbg !1172 {
entry:
  %and = and i32 %a, 65535, !dbg !1173
  %cmp = icmp eq i32 %and, 0, !dbg !1174
  %shl = select i1 %cmp, i32 16, i32 0, !dbg !1175
  %shr = lshr i32 %a, %shl, !dbg !1176
  %and1 = and i32 %shr, 255, !dbg !1177
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1178
  %shl4 = select i1 %cmp2, i32 8, i32 0, !dbg !1179
  %shr5 = lshr i32 %shr, %shl4, !dbg !1180
  %add = or i32 %shl, %shl4, !dbg !1181
  %and6 = and i32 %shr5, 15, !dbg !1182
  %cmp7 = icmp eq i32 %and6, 0, !dbg !1183
  %shl9 = select i1 %cmp7, i32 4, i32 0, !dbg !1184
  %shr10 = lshr i32 %shr5, %shl9, !dbg !1185
  %add11 = or i32 %add, %shl9, !dbg !1186
  %and12 = and i32 %shr10, 3, !dbg !1187
  %cmp13 = icmp eq i32 %and12, 0, !dbg !1188
  %shl15 = select i1 %cmp13, i32 2, i32 0, !dbg !1189
  %shr16 = lshr i32 %shr10, %shl15, !dbg !1190
  %add18 = or i32 %add11, %shl15, !dbg !1191
  %and17 = lshr i32 %shr16, 1, !dbg !1192
  %shr19 = and i32 %and17, 1, !dbg !1192
  %sub = sub nuw nsw i32 2, %shr19, !dbg !1193
  %0 = or i32 %shr16, -2, !dbg !1194
  %.neg = add nsw i32 %0, 1, !dbg !1194
  %and24 = and i32 %sub, %.neg, !dbg !1195
  %add25 = add nuw nsw i32 %add18, %and24, !dbg !1196
  ret i32 %add25, !dbg !1197
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1198 {
entry:
  %shr = ashr i64 %a, 63, !dbg !1199
  %shr1 = ashr i64 %b, 63, !dbg !1200
  %xor = xor i64 %shr, %a, !dbg !1201
  %sub = sub nsw i64 %xor, %shr, !dbg !1202
  %xor2 = xor i64 %shr1, %b, !dbg !1203
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1204
  %xor4 = xor i64 %shr, %shr1, !dbg !1205
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub, i64 noundef %sub3, i64* noundef null) #4, !dbg !1206
  %xor5 = xor i64 %call, %xor4, !dbg !1207
  %sub6 = sub i64 %xor5, %xor4, !dbg !1208
  ret i64 %sub6, !dbg !1209
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1210 {
entry:
  %n = alloca %union.dwords, align 8
  %d = alloca %union.dwords, align 8
  %q = alloca %union.dwords, align 8
  %r = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1211
  store i64 %a, i64* %all, align 8, !dbg !1212
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1213
  store i64 %b, i64* %all1, align 8, !dbg !1214
  %s = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1215
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1216
  %0 = load i32, i32* %high, align 4, !dbg !1216
  %cmp = icmp eq i32 %0, 0, !dbg !1217
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1218

if.then:                                          ; preds = %entry
  %s2 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1219
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1220
  %1 = load i32, i32* %high3, align 4, !dbg !1220
  %cmp4 = icmp eq i32 %1, 0, !dbg !1221
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !1222

if.then5:                                         ; preds = %if.then
  %tobool.not = icmp eq i64* %rem, null, !dbg !1223
  br i1 %tobool.not, label %if.end, label %if.then6, !dbg !1223

if.then6:                                         ; preds = %if.then5
  %low = bitcast %union.dwords* %n to i32*, !dbg !1224
  %2 = load i32, i32* %low, align 8, !dbg !1224
  %low9 = bitcast %union.dwords* %d to i32*, !dbg !1225
  %3 = load i32, i32* %low9, align 8, !dbg !1225
  %rem10 = urem i32 %2, %3, !dbg !1226
  %conv = zext i32 %rem10 to i64, !dbg !1227
  store i64 %conv, i64* %rem, align 8, !dbg !1228
  br label %if.end, !dbg !1229

if.end:                                           ; preds = %if.then6, %if.then5
  %low12 = bitcast %union.dwords* %n to i32*, !dbg !1230
  %4 = load i32, i32* %low12, align 8, !dbg !1230
  %low14 = bitcast %union.dwords* %d to i32*, !dbg !1231
  %5 = load i32, i32* %low14, align 8, !dbg !1231
  %div = udiv i32 %4, %5, !dbg !1232
  %conv15 = zext i32 %div to i64, !dbg !1233
  br label %return, !dbg !1234

if.end16:                                         ; preds = %if.then
  %tobool17.not = icmp eq i64* %rem, null, !dbg !1235
  br i1 %tobool17.not, label %if.end22, label %if.then18, !dbg !1235

if.then18:                                        ; preds = %if.end16
  %low20 = bitcast %union.dwords* %n to i32*, !dbg !1236
  %6 = load i32, i32* %low20, align 8, !dbg !1236
  %conv21 = zext i32 %6 to i64, !dbg !1237
  store i64 %conv21, i64* %rem, align 8, !dbg !1238
  br label %if.end22, !dbg !1239

if.end22:                                         ; preds = %if.then18, %if.end16
  br label %return, !dbg !1240

if.end23:                                         ; preds = %entry
  %low25 = bitcast %union.dwords* %d to i32*, !dbg !1241
  %7 = load i32, i32* %low25, align 8, !dbg !1241
  %cmp26 = icmp eq i32 %7, 0, !dbg !1242
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !1243

if.then28:                                        ; preds = %if.end23
  %s29 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1244
  %high30 = getelementptr inbounds %struct.DATA, %struct.DATA* %s29, i32 0, i32 1, !dbg !1245
  %8 = load i32, i32* %high30, align 4, !dbg !1245
  %cmp31 = icmp eq i32 %8, 0, !dbg !1246
  br i1 %cmp31, label %if.then33, label %if.end49, !dbg !1247

if.then33:                                        ; preds = %if.then28
  %tobool34.not = icmp eq i64* %rem, null, !dbg !1248
  br i1 %tobool34.not, label %if.end42, label %if.then35, !dbg !1248

if.then35:                                        ; preds = %if.then33
  %s36 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1249
  %high37 = getelementptr inbounds %struct.DATA, %struct.DATA* %s36, i32 0, i32 1, !dbg !1250
  %9 = load i32, i32* %high37, align 4, !dbg !1250
  %low39 = bitcast %union.dwords* %d to i32*, !dbg !1251
  %10 = load i32, i32* %low39, align 8, !dbg !1251
  %rem40 = urem i32 %9, %10, !dbg !1252
  %conv41 = zext i32 %rem40 to i64, !dbg !1253
  store i64 %conv41, i64* %rem, align 8, !dbg !1254
  br label %if.end42, !dbg !1255

if.end42:                                         ; preds = %if.then35, %if.then33
  %s43 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1256
  %high44 = getelementptr inbounds %struct.DATA, %struct.DATA* %s43, i32 0, i32 1, !dbg !1257
  %11 = load i32, i32* %high44, align 4, !dbg !1257
  %low46 = bitcast %union.dwords* %d to i32*, !dbg !1258
  %12 = load i32, i32* %low46, align 8, !dbg !1258
  %div47 = udiv i32 %11, %12, !dbg !1259
  %conv48 = zext i32 %div47 to i64, !dbg !1260
  br label %return, !dbg !1261

if.end49:                                         ; preds = %if.then28
  %low51 = bitcast %union.dwords* %n to i32*, !dbg !1262
  %13 = load i32, i32* %low51, align 8, !dbg !1262
  %cmp52 = icmp eq i32 %13, 0, !dbg !1263
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !1264

if.then54:                                        ; preds = %if.end49
  %tobool55.not = icmp eq i64* %rem, null, !dbg !1265
  br i1 %tobool55.not, label %if.end67, label %if.then56, !dbg !1265

if.then56:                                        ; preds = %if.then54
  %s57 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1266
  %high58 = getelementptr inbounds %struct.DATA, %struct.DATA* %s57, i32 0, i32 1, !dbg !1267
  %14 = load i32, i32* %high58, align 4, !dbg !1267
  %s59 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1268
  %high60 = getelementptr inbounds %struct.DATA, %struct.DATA* %s59, i32 0, i32 1, !dbg !1269
  %15 = load i32, i32* %high60, align 4, !dbg !1269
  %rem61 = urem i32 %14, %15, !dbg !1270
  %s62 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1271
  %high63 = getelementptr inbounds %struct.DATA, %struct.DATA* %s62, i32 0, i32 1, !dbg !1272
  store i32 %rem61, i32* %high63, align 4, !dbg !1273
  %low65 = bitcast %union.dwords* %r to i32*, !dbg !1274
  store i32 0, i32* %low65, align 8, !dbg !1275
  %all66 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1276
  %16 = load i64, i64* %all66, align 8, !dbg !1276
  store i64 %16, i64* %rem, align 8, !dbg !1277
  br label %if.end67, !dbg !1278

if.end67:                                         ; preds = %if.then56, %if.then54
  %s68 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1279
  %high69 = getelementptr inbounds %struct.DATA, %struct.DATA* %s68, i32 0, i32 1, !dbg !1280
  %17 = load i32, i32* %high69, align 4, !dbg !1280
  %s70 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1281
  %high71 = getelementptr inbounds %struct.DATA, %struct.DATA* %s70, i32 0, i32 1, !dbg !1282
  %18 = load i32, i32* %high71, align 4, !dbg !1282
  %div72 = udiv i32 %17, %18, !dbg !1283
  %conv73 = zext i32 %div72 to i64, !dbg !1284
  br label %return, !dbg !1285

if.end74:                                         ; preds = %if.end49
  %s75 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1286
  %high76 = getelementptr inbounds %struct.DATA, %struct.DATA* %s75, i32 0, i32 1, !dbg !1287
  %19 = load i32, i32* %high76, align 4, !dbg !1287
  %s77 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1288
  %high78 = getelementptr inbounds %struct.DATA, %struct.DATA* %s77, i32 0, i32 1, !dbg !1289
  %20 = load i32, i32* %high78, align 4, !dbg !1289
  %sub = add i32 %20, -1, !dbg !1290
  %and = and i32 %19, %sub, !dbg !1291
  %cmp79 = icmp eq i32 %and, 0, !dbg !1292
  br i1 %cmp79, label %if.then81, label %if.end103, !dbg !1293

if.then81:                                        ; preds = %if.end74
  %tobool82.not = icmp eq i64* %rem, null, !dbg !1294
  br i1 %tobool82.not, label %if.end97, label %if.then83, !dbg !1294

if.then83:                                        ; preds = %if.then81
  %low85 = bitcast %union.dwords* %n to i32*, !dbg !1295
  %21 = load i32, i32* %low85, align 8, !dbg !1295
  %low87 = bitcast %union.dwords* %r to i32*, !dbg !1296
  store i32 %21, i32* %low87, align 8, !dbg !1297
  %s88 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1298
  %high89 = getelementptr inbounds %struct.DATA, %struct.DATA* %s88, i32 0, i32 1, !dbg !1299
  %22 = load i32, i32* %high89, align 4, !dbg !1299
  %s90 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1300
  %high91 = getelementptr inbounds %struct.DATA, %struct.DATA* %s90, i32 0, i32 1, !dbg !1301
  %23 = load i32, i32* %high91, align 4, !dbg !1301
  %sub92 = add i32 %23, -1, !dbg !1302
  %and93 = and i32 %22, %sub92, !dbg !1303
  %s94 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1304
  %high95 = getelementptr inbounds %struct.DATA, %struct.DATA* %s94, i32 0, i32 1, !dbg !1305
  store i32 %and93, i32* %high95, align 4, !dbg !1306
  %all96 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1307
  %24 = load i64, i64* %all96, align 8, !dbg !1307
  store i64 %24, i64* %rem, align 8, !dbg !1308
  br label %if.end97, !dbg !1309

if.end97:                                         ; preds = %if.then83, %if.then81
  %s98 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1310
  %high99 = getelementptr inbounds %struct.DATA, %struct.DATA* %s98, i32 0, i32 1, !dbg !1311
  %25 = load i32, i32* %high99, align 4, !dbg !1311
  %s100 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1312
  %high101 = getelementptr inbounds %struct.DATA, %struct.DATA* %s100, i32 0, i32 1, !dbg !1313
  %26 = load i32, i32* %high101, align 4, !dbg !1313
  %27 = call i32 @llvm.cttz.i32(i32 %26, i1 false), !dbg !1314, !range !1092
  %shr = lshr i32 %25, %27, !dbg !1315
  %conv102 = zext i32 %shr to i64, !dbg !1316
  br label %return, !dbg !1317

if.end103:                                        ; preds = %if.end74
  %s104 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1318
  %high105 = getelementptr inbounds %struct.DATA, %struct.DATA* %s104, i32 0, i32 1, !dbg !1319
  %28 = load i32, i32* %high105, align 4, !dbg !1319
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 false), !dbg !1320, !range !1092
  %s106 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1321
  %high107 = getelementptr inbounds %struct.DATA, %struct.DATA* %s106, i32 0, i32 1, !dbg !1322
  %30 = load i32, i32* %high107, align 4, !dbg !1322
  %31 = call i32 @llvm.ctlz.i32(i32 %30, i1 false), !dbg !1323, !range !1092
  %sub108 = sub nsw i32 %29, %31, !dbg !1324
  %cmp109 = icmp ugt i32 %sub108, 30, !dbg !1325
  br i1 %cmp109, label %if.then111, label %if.end116, !dbg !1326

if.then111:                                       ; preds = %if.end103
  %tobool112.not = icmp eq i64* %rem, null, !dbg !1327
  br i1 %tobool112.not, label %if.end115, label %if.then113, !dbg !1327

if.then113:                                       ; preds = %if.then111
  %all114 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1328
  %32 = load i64, i64* %all114, align 8, !dbg !1328
  store i64 %32, i64* %rem, align 8, !dbg !1329
  br label %if.end115, !dbg !1330

if.end115:                                        ; preds = %if.then113, %if.then111
  br label %return, !dbg !1331

if.end116:                                        ; preds = %if.end103
  %inc = add nsw i32 %sub108, 1, !dbg !1332
  %low118 = bitcast %union.dwords* %q to i32*, !dbg !1333
  store i32 0, i32* %low118, align 8, !dbg !1334
  %low120 = bitcast %union.dwords* %n to i32*, !dbg !1335
  %33 = load i32, i32* %low120, align 8, !dbg !1335
  %sub121 = sub nsw i32 31, %sub108, !dbg !1336
  %shl = shl i32 %33, %sub121, !dbg !1337
  %s122 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1338
  %high123 = getelementptr inbounds %struct.DATA, %struct.DATA* %s122, i32 0, i32 1, !dbg !1339
  store i32 %shl, i32* %high123, align 4, !dbg !1340
  %s124 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1341
  %high125 = getelementptr inbounds %struct.DATA, %struct.DATA* %s124, i32 0, i32 1, !dbg !1342
  %34 = load i32, i32* %high125, align 4, !dbg !1342
  %shr126 = lshr i32 %34, %inc, !dbg !1343
  %s127 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1344
  %high128 = getelementptr inbounds %struct.DATA, %struct.DATA* %s127, i32 0, i32 1, !dbg !1345
  store i32 %shr126, i32* %high128, align 4, !dbg !1346
  %s129 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1347
  %high130 = getelementptr inbounds %struct.DATA, %struct.DATA* %s129, i32 0, i32 1, !dbg !1348
  %35 = load i32, i32* %high130, align 4, !dbg !1348
  %sub131 = sub nsw i32 31, %sub108, !dbg !1349
  %shl132 = shl i32 %35, %sub131, !dbg !1350
  %low134 = bitcast %union.dwords* %n to i32*, !dbg !1351
  %36 = load i32, i32* %low134, align 8, !dbg !1351
  %shr135 = lshr i32 %36, %inc, !dbg !1352
  %or = or i32 %shl132, %shr135, !dbg !1353
  %low137 = bitcast %union.dwords* %r to i32*, !dbg !1354
  store i32 %or, i32* %low137, align 8, !dbg !1355
  br label %if.end317, !dbg !1356

if.else:                                          ; preds = %if.end23
  %s138 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1357
  %high139 = getelementptr inbounds %struct.DATA, %struct.DATA* %s138, i32 0, i32 1, !dbg !1358
  %37 = load i32, i32* %high139, align 4, !dbg !1358
  %cmp140 = icmp eq i32 %37, 0, !dbg !1359
  br i1 %cmp140, label %if.then142, label %if.else263, !dbg !1360

if.then142:                                       ; preds = %if.else
  %low144 = bitcast %union.dwords* %d to i32*, !dbg !1361
  %38 = load i32, i32* %low144, align 8, !dbg !1361
  %39 = call i32 @llvm.ctpop.i32(i32 %38), !dbg !1362, !range !1092
  %cmp149 = icmp ult i32 %39, 2, !dbg !1362
  br i1 %cmp149, label %if.then151, label %if.end187, !dbg !1363

if.then151:                                       ; preds = %if.then142
  %tobool152.not = icmp eq i64* %rem, null, !dbg !1364
  br i1 %tobool152.not, label %if.end161, label %if.then153, !dbg !1364

if.then153:                                       ; preds = %if.then151
  %low155 = bitcast %union.dwords* %n to i32*, !dbg !1365
  %40 = load i32, i32* %low155, align 8, !dbg !1365
  %low157 = bitcast %union.dwords* %d to i32*, !dbg !1366
  %41 = load i32, i32* %low157, align 8, !dbg !1366
  %sub158 = add i32 %41, -1, !dbg !1367
  %and159 = and i32 %40, %sub158, !dbg !1368
  %conv160 = zext i32 %and159 to i64, !dbg !1369
  store i64 %conv160, i64* %rem, align 8, !dbg !1370
  br label %if.end161, !dbg !1371

if.end161:                                        ; preds = %if.then153, %if.then151
  %low163 = bitcast %union.dwords* %d to i32*, !dbg !1372
  %42 = load i32, i32* %low163, align 8, !dbg !1372
  %cmp164 = icmp eq i32 %42, 1, !dbg !1373
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1374

if.then166:                                       ; preds = %if.end161
  %all167 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1375
  %43 = load i64, i64* %all167, align 8, !dbg !1375
  br label %return, !dbg !1376

if.end168:                                        ; preds = %if.end161
  %low170 = bitcast %union.dwords* %d to i32*, !dbg !1377
  %44 = load i32, i32* %low170, align 8, !dbg !1377
  %45 = call i32 @llvm.cttz.i32(i32 %44, i1 false), !dbg !1378, !range !1092
  %s171 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1379
  %high172 = getelementptr inbounds %struct.DATA, %struct.DATA* %s171, i32 0, i32 1, !dbg !1380
  %46 = load i32, i32* %high172, align 4, !dbg !1380
  %shr173 = lshr i32 %46, %45, !dbg !1381
  %s174 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1382
  %high175 = getelementptr inbounds %struct.DATA, %struct.DATA* %s174, i32 0, i32 1, !dbg !1383
  store i32 %shr173, i32* %high175, align 4, !dbg !1384
  %s176 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1385
  %high177 = getelementptr inbounds %struct.DATA, %struct.DATA* %s176, i32 0, i32 1, !dbg !1386
  %47 = load i32, i32* %high177, align 4, !dbg !1386
  %sub178 = sub nuw nsw i32 32, %45, !dbg !1387
  %shl179 = shl i32 %47, %sub178, !dbg !1388
  %low181 = bitcast %union.dwords* %n to i32*, !dbg !1389
  %48 = load i32, i32* %low181, align 8, !dbg !1389
  %shr182 = lshr i32 %48, %45, !dbg !1390
  %or183 = or i32 %shl179, %shr182, !dbg !1391
  %low185 = bitcast %union.dwords* %q to i32*, !dbg !1392
  store i32 %or183, i32* %low185, align 8, !dbg !1393
  %all186 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1394
  %49 = load i64, i64* %all186, align 8, !dbg !1394
  br label %return, !dbg !1395

if.end187:                                        ; preds = %if.then142
  %low189 = bitcast %union.dwords* %d to i32*, !dbg !1396
  %50 = load i32, i32* %low189, align 8, !dbg !1396
  %51 = call i32 @llvm.ctlz.i32(i32 %50, i1 false), !dbg !1397, !range !1092
  %add = add nuw nsw i32 %51, 33, !dbg !1398
  %s190 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1399
  %high191 = getelementptr inbounds %struct.DATA, %struct.DATA* %s190, i32 0, i32 1, !dbg !1400
  %52 = load i32, i32* %high191, align 4, !dbg !1400
  %53 = call i32 @llvm.ctlz.i32(i32 %52, i1 false), !dbg !1401, !range !1092
  %sub192 = sub nsw i32 %add, %53, !dbg !1402
  %cmp193 = icmp eq i32 %sub192, 32, !dbg !1403
  br i1 %cmp193, label %if.then195, label %if.else208, !dbg !1404

if.then195:                                       ; preds = %if.end187
  %low197 = bitcast %union.dwords* %q to i32*, !dbg !1405
  store i32 0, i32* %low197, align 8, !dbg !1406
  %low199 = bitcast %union.dwords* %n to i32*, !dbg !1407
  %54 = load i32, i32* %low199, align 8, !dbg !1407
  %s200 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1408
  %high201 = getelementptr inbounds %struct.DATA, %struct.DATA* %s200, i32 0, i32 1, !dbg !1409
  store i32 %54, i32* %high201, align 4, !dbg !1410
  %s202 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1411
  %high203 = getelementptr inbounds %struct.DATA, %struct.DATA* %s202, i32 0, i32 1, !dbg !1412
  store i32 0, i32* %high203, align 4, !dbg !1413
  %s204 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1414
  %high205 = getelementptr inbounds %struct.DATA, %struct.DATA* %s204, i32 0, i32 1, !dbg !1415
  %55 = load i32, i32* %high205, align 4, !dbg !1415
  %low207 = bitcast %union.dwords* %r to i32*, !dbg !1416
  store i32 %55, i32* %low207, align 8, !dbg !1417
  br label %if.end262, !dbg !1418

if.else208:                                       ; preds = %if.end187
  %cmp209 = icmp ult i32 %sub192, 32, !dbg !1419
  br i1 %cmp209, label %if.then211, label %if.else235, !dbg !1420

if.then211:                                       ; preds = %if.else208
  %low213 = bitcast %union.dwords* %q to i32*, !dbg !1421
  store i32 0, i32* %low213, align 8, !dbg !1422
  %low215 = bitcast %union.dwords* %n to i32*, !dbg !1423
  %56 = load i32, i32* %low215, align 8, !dbg !1423
  %sub216 = sub nsw i32 32, %sub192, !dbg !1424
  %shl217 = shl i32 %56, %sub216, !dbg !1425
  %s218 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1426
  %high219 = getelementptr inbounds %struct.DATA, %struct.DATA* %s218, i32 0, i32 1, !dbg !1427
  store i32 %shl217, i32* %high219, align 4, !dbg !1428
  %s220 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1429
  %high221 = getelementptr inbounds %struct.DATA, %struct.DATA* %s220, i32 0, i32 1, !dbg !1430
  %57 = load i32, i32* %high221, align 4, !dbg !1430
  %shr222 = lshr i32 %57, %sub192, !dbg !1431
  %s223 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1432
  %high224 = getelementptr inbounds %struct.DATA, %struct.DATA* %s223, i32 0, i32 1, !dbg !1433
  store i32 %shr222, i32* %high224, align 4, !dbg !1434
  %s225 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1435
  %high226 = getelementptr inbounds %struct.DATA, %struct.DATA* %s225, i32 0, i32 1, !dbg !1436
  %58 = load i32, i32* %high226, align 4, !dbg !1436
  %sub227 = sub nsw i32 32, %sub192, !dbg !1437
  %shl228 = shl i32 %58, %sub227, !dbg !1438
  %low230 = bitcast %union.dwords* %n to i32*, !dbg !1439
  %59 = load i32, i32* %low230, align 8, !dbg !1439
  %shr231 = lshr i32 %59, %sub192, !dbg !1440
  %or232 = or i32 %shl228, %shr231, !dbg !1441
  %low234 = bitcast %union.dwords* %r to i32*, !dbg !1442
  store i32 %or232, i32* %low234, align 8, !dbg !1443
  br label %if.end261, !dbg !1444

if.else235:                                       ; preds = %if.else208
  %low237 = bitcast %union.dwords* %n to i32*, !dbg !1445
  %60 = load i32, i32* %low237, align 8, !dbg !1445
  %sub238 = sub nsw i32 64, %sub192, !dbg !1446
  %shl239 = shl i32 %60, %sub238, !dbg !1447
  %low241 = bitcast %union.dwords* %q to i32*, !dbg !1448
  store i32 %shl239, i32* %low241, align 8, !dbg !1449
  %s242 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1450
  %high243 = getelementptr inbounds %struct.DATA, %struct.DATA* %s242, i32 0, i32 1, !dbg !1451
  %61 = load i32, i32* %high243, align 4, !dbg !1451
  %sub244 = sub nsw i32 64, %sub192, !dbg !1452
  %shl245 = shl i32 %61, %sub244, !dbg !1453
  %low247 = bitcast %union.dwords* %n to i32*, !dbg !1454
  %62 = load i32, i32* %low247, align 8, !dbg !1454
  %sub248 = add nsw i32 %sub192, -32, !dbg !1455
  %shr249 = lshr i32 %62, %sub248, !dbg !1456
  %or250 = or i32 %shl245, %shr249, !dbg !1457
  %s251 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1458
  %high252 = getelementptr inbounds %struct.DATA, %struct.DATA* %s251, i32 0, i32 1, !dbg !1459
  store i32 %or250, i32* %high252, align 4, !dbg !1460
  %s253 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1461
  %high254 = getelementptr inbounds %struct.DATA, %struct.DATA* %s253, i32 0, i32 1, !dbg !1462
  store i32 0, i32* %high254, align 4, !dbg !1463
  %s255 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1464
  %high256 = getelementptr inbounds %struct.DATA, %struct.DATA* %s255, i32 0, i32 1, !dbg !1465
  %63 = load i32, i32* %high256, align 4, !dbg !1465
  %sub257 = add nsw i32 %sub192, -32, !dbg !1466
  %shr258 = lshr i32 %63, %sub257, !dbg !1467
  %low260 = bitcast %union.dwords* %r to i32*, !dbg !1468
  store i32 %shr258, i32* %low260, align 8, !dbg !1469
  br label %if.end261

if.end261:                                        ; preds = %if.else235, %if.then211
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then195
  br label %if.end316, !dbg !1470

if.else263:                                       ; preds = %if.else
  %s264 = bitcast %union.dwords* %d to %struct.DATA*, !dbg !1471
  %high265 = getelementptr inbounds %struct.DATA, %struct.DATA* %s264, i32 0, i32 1, !dbg !1472
  %64 = load i32, i32* %high265, align 4, !dbg !1472
  %65 = call i32 @llvm.ctlz.i32(i32 %64, i1 false), !dbg !1473, !range !1092
  %s266 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1474
  %high267 = getelementptr inbounds %struct.DATA, %struct.DATA* %s266, i32 0, i32 1, !dbg !1475
  %66 = load i32, i32* %high267, align 4, !dbg !1475
  %67 = call i32 @llvm.ctlz.i32(i32 %66, i1 false), !dbg !1476, !range !1092
  %sub268 = sub nsw i32 %65, %67, !dbg !1477
  %cmp269 = icmp ugt i32 %sub268, 31, !dbg !1478
  br i1 %cmp269, label %if.then271, label %if.end276, !dbg !1479

if.then271:                                       ; preds = %if.else263
  %tobool272.not = icmp eq i64* %rem, null, !dbg !1480
  br i1 %tobool272.not, label %if.end275, label %if.then273, !dbg !1480

if.then273:                                       ; preds = %if.then271
  %all274 = getelementptr inbounds %union.dwords, %union.dwords* %n, i32 0, i32 0, !dbg !1481
  %68 = load i64, i64* %all274, align 8, !dbg !1481
  store i64 %68, i64* %rem, align 8, !dbg !1482
  br label %if.end275, !dbg !1483

if.end275:                                        ; preds = %if.then273, %if.then271
  br label %return, !dbg !1484

if.end276:                                        ; preds = %if.else263
  %inc277 = add nsw i32 %sub268, 1, !dbg !1485
  %low279 = bitcast %union.dwords* %q to i32*, !dbg !1486
  store i32 0, i32* %low279, align 8, !dbg !1487
  %cmp280 = icmp eq i32 %inc277, 32, !dbg !1488
  br i1 %cmp280, label %if.then282, label %if.else293, !dbg !1489

if.then282:                                       ; preds = %if.end276
  %low284 = bitcast %union.dwords* %n to i32*, !dbg !1490
  %69 = load i32, i32* %low284, align 8, !dbg !1490
  %s285 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1491
  %high286 = getelementptr inbounds %struct.DATA, %struct.DATA* %s285, i32 0, i32 1, !dbg !1492
  store i32 %69, i32* %high286, align 4, !dbg !1493
  %s287 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1494
  %high288 = getelementptr inbounds %struct.DATA, %struct.DATA* %s287, i32 0, i32 1, !dbg !1495
  store i32 0, i32* %high288, align 4, !dbg !1496
  %s289 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1497
  %high290 = getelementptr inbounds %struct.DATA, %struct.DATA* %s289, i32 0, i32 1, !dbg !1498
  %70 = load i32, i32* %high290, align 4, !dbg !1498
  %low292 = bitcast %union.dwords* %r to i32*, !dbg !1499
  store i32 %70, i32* %low292, align 8, !dbg !1500
  br label %if.end315, !dbg !1501

if.else293:                                       ; preds = %if.end276
  %low295 = bitcast %union.dwords* %n to i32*, !dbg !1502
  %71 = load i32, i32* %low295, align 8, !dbg !1502
  %sub296 = sub nsw i32 31, %sub268, !dbg !1503
  %shl297 = shl i32 %71, %sub296, !dbg !1504
  %s298 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1505
  %high299 = getelementptr inbounds %struct.DATA, %struct.DATA* %s298, i32 0, i32 1, !dbg !1506
  store i32 %shl297, i32* %high299, align 4, !dbg !1507
  %s300 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1508
  %high301 = getelementptr inbounds %struct.DATA, %struct.DATA* %s300, i32 0, i32 1, !dbg !1509
  %72 = load i32, i32* %high301, align 4, !dbg !1509
  %shr302 = lshr i32 %72, %inc277, !dbg !1510
  %s303 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1511
  %high304 = getelementptr inbounds %struct.DATA, %struct.DATA* %s303, i32 0, i32 1, !dbg !1512
  store i32 %shr302, i32* %high304, align 4, !dbg !1513
  %s305 = bitcast %union.dwords* %n to %struct.DATA*, !dbg !1514
  %high306 = getelementptr inbounds %struct.DATA, %struct.DATA* %s305, i32 0, i32 1, !dbg !1515
  %73 = load i32, i32* %high306, align 4, !dbg !1515
  %sub307 = sub nsw i32 31, %sub268, !dbg !1516
  %shl308 = shl i32 %73, %sub307, !dbg !1517
  %low310 = bitcast %union.dwords* %n to i32*, !dbg !1518
  %74 = load i32, i32* %low310, align 8, !dbg !1518
  %shr311 = lshr i32 %74, %inc277, !dbg !1519
  %or312 = or i32 %shl308, %shr311, !dbg !1520
  %low314 = bitcast %union.dwords* %r to i32*, !dbg !1521
  store i32 %or312, i32* %low314, align 8, !dbg !1522
  br label %if.end315

if.end315:                                        ; preds = %if.else293, %if.then282
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end262
  %sr.0 = phi i32 [ %sub192, %if.end262 ], [ %inc277, %if.end315 ], !dbg !1523
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end116
  %sr.1 = phi i32 [ %inc, %if.end116 ], [ %sr.0, %if.end316 ], !dbg !1523
  br label %for.cond, !dbg !1524

for.cond:                                         ; preds = %for.inc, %if.end317
  %sr.2 = phi i32 [ %sr.1, %if.end317 ], [ %dec, %for.inc ], !dbg !1523
  %carry.0 = phi i32 [ 0, %if.end317 ], [ %conv360, %for.inc ], !dbg !1523
  %cmp318.not = icmp eq i32 %sr.2, 0, !dbg !1525
  br i1 %cmp318.not, label %for.end, label %for.body, !dbg !1524

for.body:                                         ; preds = %for.cond
  %s320 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1526
  %high321 = getelementptr inbounds %struct.DATA, %struct.DATA* %s320, i32 0, i32 1, !dbg !1527
  %75 = load i32, i32* %high321, align 4, !dbg !1527
  %low324 = bitcast %union.dwords* %r to i32*, !dbg !1528
  %76 = load i32, i32* %low324, align 8, !dbg !1528
  %or326 = call i32 @llvm.fshl.i32(i32 %75, i32 %76, i32 1), !dbg !1529
  %s327 = bitcast %union.dwords* %r to %struct.DATA*, !dbg !1530
  %high328 = getelementptr inbounds %struct.DATA, %struct.DATA* %s327, i32 0, i32 1, !dbg !1531
  store i32 %or326, i32* %high328, align 4, !dbg !1532
  %s332 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1533
  %high333 = getelementptr inbounds %struct.DATA, %struct.DATA* %s332, i32 0, i32 1, !dbg !1534
  %77 = load i32, i32* %high333, align 4, !dbg !1534
  %or335 = call i32 @llvm.fshl.i32(i32 %76, i32 %77, i32 1), !dbg !1535
  %low337 = bitcast %union.dwords* %r to i32*, !dbg !1536
  store i32 %or335, i32* %low337, align 8, !dbg !1537
  %s338 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1538
  %high339 = getelementptr inbounds %struct.DATA, %struct.DATA* %s338, i32 0, i32 1, !dbg !1539
  %78 = load i32, i32* %high339, align 4, !dbg !1539
  %low342 = bitcast %union.dwords* %q to i32*, !dbg !1540
  %79 = load i32, i32* %low342, align 8, !dbg !1540
  %or344 = call i32 @llvm.fshl.i32(i32 %78, i32 %79, i32 1), !dbg !1541
  %s345 = bitcast %union.dwords* %q to %struct.DATA*, !dbg !1542
  %high346 = getelementptr inbounds %struct.DATA, %struct.DATA* %s345, i32 0, i32 1, !dbg !1543
  store i32 %or344, i32* %high346, align 4, !dbg !1544
  %shl349 = shl i32 %79, 1, !dbg !1545
  %or350 = or i32 %shl349, %carry.0, !dbg !1546
  %low352 = bitcast %union.dwords* %q to i32*, !dbg !1547
  store i32 %or350, i32* %low352, align 8, !dbg !1548
  %all354 = getelementptr inbounds %union.dwords, %union.dwords* %d, i32 0, i32 0, !dbg !1549
  %80 = load i64, i64* %all354, align 8, !dbg !1549
  %all355 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1550
  %81 = load i64, i64* %all355, align 8, !dbg !1550
  %82 = xor i64 %81, -1, !dbg !1551
  %sub357 = add i64 %80, %82, !dbg !1551
  %isneg = icmp slt i64 %sub357, 0, !dbg !1552
  %and362 = select i1 %isneg, i64 %80, i64 0, !dbg !1552
  %all363 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1553
  %sub364 = sub i64 %81, %and362, !dbg !1554
  store i64 %sub364, i64* %all363, align 8, !dbg !1554
  br label %for.inc, !dbg !1555

for.inc:                                          ; preds = %for.body
  %and359 = lshr i64 %sub357, 63, !dbg !1556
  %conv360 = trunc i64 %and359 to i32, !dbg !1557
  %dec = add i32 %sr.2, -1, !dbg !1558
  br label %for.cond, !dbg !1524, !llvm.loop !1559

for.end:                                          ; preds = %for.cond
  %all365 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1560
  %83 = load i64, i64* %all365, align 8, !dbg !1560
  %shl366 = shl i64 %83, 1, !dbg !1561
  %conv367 = zext i32 %carry.0 to i64, !dbg !1562
  %or368 = or i64 %shl366, %conv367, !dbg !1563
  %all369 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1564
  store i64 %or368, i64* %all369, align 8, !dbg !1565
  %tobool370.not = icmp eq i64* %rem, null, !dbg !1566
  br i1 %tobool370.not, label %if.end373, label %if.then371, !dbg !1566

if.then371:                                       ; preds = %for.end
  %all372 = getelementptr inbounds %union.dwords, %union.dwords* %r, i32 0, i32 0, !dbg !1567
  %84 = load i64, i64* %all372, align 8, !dbg !1567
  store i64 %84, i64* %rem, align 8, !dbg !1568
  br label %if.end373, !dbg !1569

if.end373:                                        ; preds = %if.then371, %for.end
  %all374 = getelementptr inbounds %union.dwords, %union.dwords* %q, i32 0, i32 0, !dbg !1570
  %85 = load i64, i64* %all374, align 8, !dbg !1570
  br label %return, !dbg !1571

return:                                           ; preds = %if.end373, %if.end275, %if.end168, %if.then166, %if.end115, %if.end97, %if.end67, %if.end42, %if.end22, %if.end
  %retval.0 = phi i64 [ %conv15, %if.end ], [ 0, %if.end22 ], [ %conv48, %if.end42 ], [ %conv73, %if.end67 ], [ %conv102, %if.end97 ], [ 0, %if.end115 ], [ %85, %if.end373 ], [ %43, %if.then166 ], [ %49, %if.end168 ], [ 0, %if.end275 ], !dbg !1523
  ret i64 %retval.0, !dbg !1572
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__divmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef %rem) #2 !dbg !1573 {
entry:
  %call = call arm_aapcscc i64 @__divdi3(i64 noundef %a, i64 noundef %b) #4, !dbg !1574
  %mul = mul nsw i64 %call, %b, !dbg !1575
  %sub = sub nsw i64 %a, %mul, !dbg !1576
  store i64 %sub, i64* %rem, align 8, !dbg !1577
  ret i64 %call, !dbg !1578
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1579 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1580
  %mul = mul nsw i32 %call, %b, !dbg !1581
  %sub = sub nsw i32 %a, %mul, !dbg !1582
  store i32 %sub, i32* %rem, align 4, !dbg !1583
  ret i32 %call, !dbg !1584
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1585 {
entry:
  %shr = ashr i32 %a, 31, !dbg !1586
  %shr1 = ashr i32 %b, 31, !dbg !1587
  %xor = xor i32 %shr, %a, !dbg !1588
  %sub = sub nsw i32 %xor, %shr, !dbg !1589
  %xor2 = xor i32 %shr1, %b, !dbg !1590
  %sub3 = sub nsw i32 %xor2, %shr1, !dbg !1591
  %xor4 = xor i32 %shr, %shr1, !dbg !1592
  %div = udiv i32 %sub, %sub3, !dbg !1593
  %xor5 = xor i32 %div, %xor4, !dbg !1594
  %sub6 = sub i32 %xor5, %xor4, !dbg !1595
  ret i32 %sub6, !dbg !1596
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffsdi2(i64 noundef %a) #2 !dbg !1597 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1598
  store i64 %a, i64* %all, align 8, !dbg !1599
  %low = bitcast %union.dwords* %x to i32*, !dbg !1600
  %0 = load i32, i32* %low, align 8, !dbg !1600
  %cmp = icmp eq i32 %0, 0, !dbg !1601
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1602

if.then:                                          ; preds = %entry
  %s1 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1603
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1604
  %1 = load i32, i32* %high, align 4, !dbg !1604
  %cmp2 = icmp eq i32 %1, 0, !dbg !1605
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1606

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !1607

if.end:                                           ; preds = %if.then
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1608
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1609
  %2 = load i32, i32* %high5, align 4, !dbg !1609
  %3 = call i32 @llvm.cttz.i32(i32 %2, i1 false), !dbg !1610, !range !1092
  %add = add nuw nsw i32 %3, 33, !dbg !1611
  br label %return, !dbg !1612

if.end6:                                          ; preds = %entry
  %low8 = bitcast %union.dwords* %x to i32*, !dbg !1613
  %4 = load i32, i32* %low8, align 8, !dbg !1613
  %5 = call i32 @llvm.cttz.i32(i32 %4, i1 false), !dbg !1614, !range !1092
  %add9 = add nuw nsw i32 %5, 1, !dbg !1615
  br label %return, !dbg !1616

return:                                           ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %add, %if.end ], [ %add9, %if.end6 ], !dbg !1617
  ret i32 %retval.0, !dbg !1618
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ffssi2(i32 noundef %a) #2 !dbg !1619 {
entry:
  %cmp = icmp eq i32 %a, 0, !dbg !1620
  br i1 %cmp, label %if.then, label %if.end, !dbg !1621

if.then:                                          ; preds = %entry
  br label %return, !dbg !1622

if.end:                                           ; preds = %entry
  %0 = call i32 @llvm.cttz.i32(i32 %a, i1 true), !dbg !1623, !range !1092
  %add = add nuw nsw i32 %0, 1, !dbg !1624
  br label %return, !dbg !1625

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %add, %if.end ], !dbg !1626
  ret i32 %retval.0, !dbg !1627
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__lshrdi3(i64 noundef %a, i32 noundef %b) #2 !dbg !1628 {
entry:
  %input = alloca %union.dwords, align 8
  %result = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %input, i32 0, i32 0, !dbg !1629
  store i64 %a, i64* %all, align 8, !dbg !1630
  %and = and i32 %b, 32, !dbg !1631
  %tobool.not = icmp eq i32 %and, 0, !dbg !1631
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1632

if.then:                                          ; preds = %entry
  %s = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1633
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1634
  store i32 0, i32* %high, align 4, !dbg !1635
  %s1 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1636
  %high2 = getelementptr inbounds %struct.DATA, %struct.DATA* %s1, i32 0, i32 1, !dbg !1637
  %0 = load i32, i32* %high2, align 4, !dbg !1637
  %sub = add nsw i32 %b, -32, !dbg !1638
  %shr = lshr i32 %0, %sub, !dbg !1639
  %low = bitcast %union.dwords* %result to i32*, !dbg !1640
  store i32 %shr, i32* %low, align 8, !dbg !1641
  br label %if.end18, !dbg !1642

if.else:                                          ; preds = %entry
  %cmp = icmp eq i32 %b, 0, !dbg !1643
  br i1 %cmp, label %if.then4, label %if.end, !dbg !1644

if.then4:                                         ; preds = %if.else
  br label %return, !dbg !1645

if.end:                                           ; preds = %if.else
  %s5 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1646
  %high6 = getelementptr inbounds %struct.DATA, %struct.DATA* %s5, i32 0, i32 1, !dbg !1647
  %1 = load i32, i32* %high6, align 4, !dbg !1647
  %shr7 = lshr i32 %1, %b, !dbg !1648
  %s8 = bitcast %union.dwords* %result to %struct.DATA*, !dbg !1649
  %high9 = getelementptr inbounds %struct.DATA, %struct.DATA* %s8, i32 0, i32 1, !dbg !1650
  store i32 %shr7, i32* %high9, align 4, !dbg !1651
  %s10 = bitcast %union.dwords* %input to %struct.DATA*, !dbg !1652
  %high11 = getelementptr inbounds %struct.DATA, %struct.DATA* %s10, i32 0, i32 1, !dbg !1653
  %2 = load i32, i32* %high11, align 4, !dbg !1653
  %sub12 = sub nsw i32 32, %b, !dbg !1654
  %shl = shl i32 %2, %sub12, !dbg !1655
  %low14 = bitcast %union.dwords* %input to i32*, !dbg !1656
  %3 = load i32, i32* %low14, align 8, !dbg !1656
  %shr15 = lshr i32 %3, %b, !dbg !1657
  %or = or i32 %shl, %shr15, !dbg !1658
  %low17 = bitcast %union.dwords* %result to i32*, !dbg !1659
  store i32 %or, i32* %low17, align 8, !dbg !1660
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %all19 = getelementptr inbounds %union.dwords, %union.dwords* %result, i32 0, i32 0, !dbg !1661
  %4 = load i64, i64* %all19, align 8, !dbg !1661
  br label %return, !dbg !1662

return:                                           ; preds = %if.end18, %if.then4
  %retval.0 = phi i64 [ %4, %if.end18 ], [ %a, %if.then4 ], !dbg !1663
  ret i64 %retval.0, !dbg !1664
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__moddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1665 {
entry:
  %r = alloca i64, align 8
  %0 = call i64 @llvm.abs.i64(i64 %b, i1 true), !dbg !1666
  %shr1 = ashr i64 %a, 63, !dbg !1667
  %xor2 = xor i64 %shr1, %a, !dbg !1668
  %sub3 = sub nsw i64 %xor2, %shr1, !dbg !1669
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %sub3, i64 noundef %0, i64* noundef nonnull %r) #4, !dbg !1670
  %1 = load i64, i64* %r, align 8, !dbg !1671
  %xor4 = xor i64 %1, %shr1, !dbg !1672
  %sub5 = sub nsw i64 %xor4, %shr1, !dbg !1673
  ret i64 %sub5, !dbg !1674
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__modsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1675 {
entry:
  %call = call arm_aapcscc i32 @__divsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1676
  %mul = mul nsw i32 %call, %b, !dbg !1677
  %sub = sub nsw i32 %a, %mul, !dbg !1678
  ret i32 %sub, !dbg !1679
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__mulvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1680 {
entry:
  %cmp = icmp eq i64 %a, -9223372036854775808, !dbg !1681
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1682

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %b, 0, !dbg !1683
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1684

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i64 %b, 1, !dbg !1685
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1686

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1687

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1688
  unreachable, !dbg !1688

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i64 %b, -9223372036854775808, !dbg !1689
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1690

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i64 %a, 0, !dbg !1691
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1692

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i64 %a, 1, !dbg !1693
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1694

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1695

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1696
  unreachable, !dbg !1696

if.end13:                                         ; preds = %if.end4
  %shr = ashr i64 %a, 63, !dbg !1697
  %xor = xor i64 %shr, %a, !dbg !1698
  %sub = sub nsw i64 %xor, %shr, !dbg !1699
  %shr14 = ashr i64 %b, 63, !dbg !1700
  %xor15 = xor i64 %shr14, %b, !dbg !1701
  %sub16 = sub nsw i64 %xor15, %shr14, !dbg !1702
  %cmp17 = icmp slt i64 %sub, 2, !dbg !1703
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1704

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i64 %sub16, 2, !dbg !1705
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1706

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1707

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i64 %shr, %shr14, !dbg !1708
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1709

if.then24:                                        ; preds = %if.end22
  %div = sdiv i64 9223372036854775807, %sub16, !dbg !1710
  %cmp25 = icmp sgt i64 %sub, %div, !dbg !1711
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1712

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1713
  unreachable, !dbg !1713

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1714

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i64 0, %sub16, !dbg !1715
  %div29 = sdiv i64 -9223372036854775808, %sub28, !dbg !1716
  %cmp30 = icmp sgt i64 %sub, %div29, !dbg !1717
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1718

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvdi3, i32 0, i32 0)) #5, !dbg !1719
  unreachable, !dbg !1719

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1720

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i64 %a, %b, !dbg !1721
  ret i64 %retval.0, !dbg !1722
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__mulvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1723 {
entry:
  %cmp = icmp eq i32 %a, -2147483648, !dbg !1724
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1725

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %b, 0, !dbg !1726
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1727

lor.lhs.false:                                    ; preds = %if.then
  %cmp2 = icmp eq i32 %b, 1, !dbg !1728
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1729

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  br label %return, !dbg !1730

if.end:                                           ; preds = %lor.lhs.false
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 31, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1731
  unreachable, !dbg !1731

if.end4:                                          ; preds = %entry
  %cmp5 = icmp eq i32 %b, -2147483648, !dbg !1732
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !1733

if.then6:                                         ; preds = %if.end4
  %cmp7 = icmp eq i32 %a, 0, !dbg !1734
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8, !dbg !1735

lor.lhs.false8:                                   ; preds = %if.then6
  %cmp9 = icmp eq i32 %a, 1, !dbg !1736
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1737

if.then10:                                        ; preds = %lor.lhs.false8, %if.then6
  br label %return, !dbg !1738

if.end12:                                         ; preds = %lor.lhs.false8
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 37, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1739
  unreachable, !dbg !1739

if.end13:                                         ; preds = %if.end4
  %shr = ashr i32 %a, 31, !dbg !1740
  %xor = xor i32 %shr, %a, !dbg !1741
  %sub = sub nsw i32 %xor, %shr, !dbg !1742
  %shr14 = ashr i32 %b, 31, !dbg !1743
  %xor15 = xor i32 %shr14, %b, !dbg !1744
  %sub16 = sub nsw i32 %xor15, %shr14, !dbg !1745
  %cmp17 = icmp slt i32 %sub, 2, !dbg !1746
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18, !dbg !1747

lor.lhs.false18:                                  ; preds = %if.end13
  %cmp19 = icmp slt i32 %sub16, 2, !dbg !1748
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !1749

if.then20:                                        ; preds = %lor.lhs.false18, %if.end13
  br label %return, !dbg !1750

if.end22:                                         ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %shr, %shr14, !dbg !1751
  br i1 %cmp23, label %if.then24, label %if.else, !dbg !1752

if.then24:                                        ; preds = %if.end22
  %div = sdiv i32 2147483647, %sub16, !dbg !1753
  %cmp25 = icmp sgt i32 %sub, %div, !dbg !1754
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1755

if.then26:                                        ; preds = %if.then24
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1756
  unreachable, !dbg !1756

if.end27:                                         ; preds = %if.then24
  br label %if.end33, !dbg !1757

if.else:                                          ; preds = %if.end22
  %sub28 = sub nsw i32 0, %sub16, !dbg !1758
  %div29 = sdiv i32 -2147483648, %sub28, !dbg !1759
  %cmp30 = icmp sgt i32 %sub, %div29, !dbg !1760
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1761

if.then31:                                        ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 noundef 53, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__mulvsi3, i32 0, i32 0)) #5, !dbg !1762
  unreachable, !dbg !1762

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end27
  br label %return, !dbg !1763

return:                                           ; preds = %if.end33, %if.then20, %if.then10, %if.then3
  %retval.0 = mul nsw i32 %a, %b, !dbg !1764
  ret i32 %retval.0, !dbg !1765
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritydi2(i64 noundef %a) #2 !dbg !1766 {
entry:
  %x = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1767
  store i64 %a, i64* %all, align 8, !dbg !1768
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1769
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1770
  %0 = load i32, i32* %high, align 4, !dbg !1770
  %low = bitcast %union.dwords* %x to i32*, !dbg !1771
  %1 = load i32, i32* %low, align 8, !dbg !1771
  %xor = xor i32 %0, %1, !dbg !1772
  %call = call arm_aapcscc i32 @__paritysi2(i32 noundef %xor) #4, !dbg !1773
  ret i32 %call, !dbg !1774
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__paritysi2(i32 noundef %a) #2 !dbg !1775 {
entry:
  %shr = lshr i32 %a, 16, !dbg !1776
  %xor = xor i32 %shr, %a, !dbg !1777
  %shr1 = lshr i32 %xor, 8, !dbg !1778
  %xor2 = xor i32 %xor, %shr1, !dbg !1779
  %shr3 = lshr i32 %xor2, 4, !dbg !1780
  %xor4 = xor i32 %xor2, %shr3, !dbg !1781
  %and = and i32 %xor4, 15, !dbg !1782
  %shr5 = lshr i32 27030, %and, !dbg !1783
  %and6 = and i32 %shr5, 1, !dbg !1784
  ret i32 %and6, !dbg !1785
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountdi2(i64 noundef %a) #2 !dbg !1786 {
entry:
  %shr = lshr i64 %a, 1, !dbg !1787
  %and = and i64 %shr, 6148914691236517205, !dbg !1788
  %sub = sub i64 %a, %and, !dbg !1789
  %shr1 = lshr i64 %sub, 2, !dbg !1790
  %and2 = and i64 %shr1, 3689348814741910323, !dbg !1791
  %and3 = and i64 %sub, 3689348814741910323, !dbg !1792
  %add = add nuw nsw i64 %and2, %and3, !dbg !1793
  %shr4 = lshr i64 %add, 4, !dbg !1794
  %add5 = add nuw nsw i64 %add, %shr4, !dbg !1795
  %and6 = and i64 %add5, 1085102592571150095, !dbg !1796
  %shr7 = lshr i64 %and6, 32, !dbg !1797
  %add8 = add nuw nsw i64 %and6, %shr7, !dbg !1798
  %conv = trunc i64 %add8 to i32, !dbg !1799
  %shr9 = lshr i32 %conv, 16, !dbg !1800
  %add10 = add nuw nsw i32 %shr9, %conv, !dbg !1801
  %shr11 = lshr i32 %add10, 8, !dbg !1802
  %add12 = add nuw nsw i32 %add10, %shr11, !dbg !1803
  %and13 = and i32 %add12, 127, !dbg !1804
  ret i32 %and13, !dbg !1805
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__popcountsi2(i32 noundef %a) #2 !dbg !1806 {
entry:
  %shr = lshr i32 %a, 1, !dbg !1807
  %and = and i32 %shr, 1431655765, !dbg !1808
  %sub = sub i32 %a, %and, !dbg !1809
  %shr1 = lshr i32 %sub, 2, !dbg !1810
  %and2 = and i32 %shr1, 858993459, !dbg !1811
  %and3 = and i32 %sub, 858993459, !dbg !1812
  %add = add nuw nsw i32 %and2, %and3, !dbg !1813
  %shr4 = lshr i32 %add, 4, !dbg !1814
  %add5 = add nuw nsw i32 %add, %shr4, !dbg !1815
  %and6 = and i32 %add5, 252645135, !dbg !1816
  %shr7 = lshr i32 %and6, 16, !dbg !1817
  %add8 = add nuw nsw i32 %and6, %shr7, !dbg !1818
  %shr9 = lshr i32 %add8, 8, !dbg !1819
  %add10 = add nuw nsw i32 %add8, %shr9, !dbg !1820
  %and11 = and i32 %add10, 63, !dbg !1821
  ret i32 %and11, !dbg !1822
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__subvdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1823 {
entry:
  %sub = sub i64 %a, %b, !dbg !1824
  %cmp = icmp sgt i64 %b, -1, !dbg !1825
  br i1 %cmp, label %if.then, label %if.else, !dbg !1826

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i64 %sub, %a, !dbg !1827
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1828

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1829
  unreachable, !dbg !1829

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1830

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i64 %sub, %a, !dbg !1831
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1832

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvdi3, i32 0, i32 0)) #5, !dbg !1833
  unreachable, !dbg !1833

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i64 %sub, !dbg !1834
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__subvsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1835 {
entry:
  %sub = sub i32 %a, %b, !dbg !1836
  %cmp = icmp sgt i32 %b, -1, !dbg !1837
  br i1 %cmp, label %if.then, label %if.else, !dbg !1838

if.then:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %sub, %a, !dbg !1839
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1840

if.then2:                                         ; preds = %if.then
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1841
  unreachable, !dbg !1841

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !1842

if.else:                                          ; preds = %entry
  %cmp3.not = icmp sgt i32 %sub, %a, !dbg !1843
  br i1 %cmp3.not, label %if.end5, label %if.then4, !dbg !1844

if.then4:                                         ; preds = %if.else
  call arm_aapcscc void @compilerrt_abort_impl(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 noundef 33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.__subvsi3, i32 0, i32 0)) #5, !dbg !1845
  unreachable, !dbg !1845

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  ret i32 %sub, !dbg !1846
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #2 !dbg !1847 {
entry:
  %x = alloca %union.dwords, align 8
  %y = alloca %union.dwords, align 8
  %all = getelementptr inbounds %union.dwords, %union.dwords* %x, i32 0, i32 0, !dbg !1848
  store i64 %a, i64* %all, align 8, !dbg !1849
  %all1 = getelementptr inbounds %union.dwords, %union.dwords* %y, i32 0, i32 0, !dbg !1850
  store i64 %b, i64* %all1, align 8, !dbg !1851
  %s = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1852
  %high = getelementptr inbounds %struct.DATA, %struct.DATA* %s, i32 0, i32 1, !dbg !1853
  %0 = load i32, i32* %high, align 4, !dbg !1853
  %s2 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1854
  %high3 = getelementptr inbounds %struct.DATA, %struct.DATA* %s2, i32 0, i32 1, !dbg !1855
  %1 = load i32, i32* %high3, align 4, !dbg !1855
  %cmp = icmp ult i32 %0, %1, !dbg !1856
  br i1 %cmp, label %if.then, label %if.end, !dbg !1857

if.then:                                          ; preds = %entry
  br label %return, !dbg !1858

if.end:                                           ; preds = %entry
  %s4 = bitcast %union.dwords* %x to %struct.DATA*, !dbg !1859
  %high5 = getelementptr inbounds %struct.DATA, %struct.DATA* %s4, i32 0, i32 1, !dbg !1860
  %2 = load i32, i32* %high5, align 4, !dbg !1860
  %s6 = bitcast %union.dwords* %y to %struct.DATA*, !dbg !1861
  %high7 = getelementptr inbounds %struct.DATA, %struct.DATA* %s6, i32 0, i32 1, !dbg !1862
  %3 = load i32, i32* %high7, align 4, !dbg !1862
  %cmp8 = icmp ugt i32 %2, %3, !dbg !1863
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1864

if.then9:                                         ; preds = %if.end
  br label %return, !dbg !1865

if.end10:                                         ; preds = %if.end
  %low = bitcast %union.dwords* %x to i32*, !dbg !1866
  %4 = load i32, i32* %low, align 8, !dbg !1866
  %low13 = bitcast %union.dwords* %y to i32*, !dbg !1867
  %5 = load i32, i32* %low13, align 8, !dbg !1867
  %cmp14 = icmp ult i32 %4, %5, !dbg !1868
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1869

if.then15:                                        ; preds = %if.end10
  br label %return, !dbg !1870

if.end16:                                         ; preds = %if.end10
  %low18 = bitcast %union.dwords* %x to i32*, !dbg !1871
  %6 = load i32, i32* %low18, align 8, !dbg !1871
  %low20 = bitcast %union.dwords* %y to i32*, !dbg !1872
  %7 = load i32, i32* %low20, align 8, !dbg !1872
  %cmp21 = icmp ugt i32 %6, %7, !dbg !1873
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1874

if.then22:                                        ; preds = %if.end16
  br label %return, !dbg !1875

if.end23:                                         ; preds = %if.end16
  br label %return, !dbg !1876

return:                                           ; preds = %if.end23, %if.then22, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 2, %if.then9 ], [ 0, %if.then15 ], [ 2, %if.then22 ], [ 1, %if.end23 ], !dbg !1877
  ret i32 %retval.0, !dbg !1878
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__aeabi_ulcmp(i64 noundef %a, i64 noundef %b) #2 !dbg !1879 {
entry:
  %call = call arm_aapcscc i32 @__ucmpdi2(i64 noundef %a, i64 noundef %b) #4, !dbg !1880
  %sub = add nsw i32 %call, -1, !dbg !1881
  ret i32 %sub, !dbg !1882
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__udivdi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1883 {
entry:
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef null) #4, !dbg !1884
  ret i64 %call, !dbg !1885
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivmodsi4(i32 noundef %a, i32 noundef %b, i32* noundef %rem) #2 !dbg !1886 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1887
  %mul = mul i32 %call, %b, !dbg !1888
  %sub = sub i32 %a, %mul, !dbg !1889
  store i32 %sub, i32* %rem, align 4, !dbg !1890
  ret i32 %call, !dbg !1891
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__udivsi3(i32 noundef %n, i32 noundef %d) #2 !dbg !1892 {
entry:
  %cmp = icmp eq i32 %d, 0, !dbg !1893
  br i1 %cmp, label %if.then, label %if.end, !dbg !1894

if.then:                                          ; preds = %entry
  br label %return, !dbg !1895

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 0, !dbg !1896
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1897

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1898

if.end3:                                          ; preds = %if.end
  %0 = call i32 @llvm.ctlz.i32(i32 %d, i1 true), !dbg !1899, !range !1092
  %1 = call i32 @llvm.ctlz.i32(i32 %n, i1 true), !dbg !1900, !range !1092
  %sub = sub nsw i32 %0, %1, !dbg !1901
  %cmp4 = icmp ugt i32 %sub, 31, !dbg !1902
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1903

if.then5:                                         ; preds = %if.end3
  br label %return, !dbg !1904

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %sub, 31, !dbg !1905
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1906

if.then8:                                         ; preds = %if.end6
  br label %return, !dbg !1907

if.end9:                                          ; preds = %if.end6
  %inc = add nsw i32 %sub, 1, !dbg !1908
  %sub10 = sub nsw i32 31, %sub, !dbg !1909
  %shl = shl i32 %n, %sub10, !dbg !1910
  %shr = lshr i32 %n, %inc, !dbg !1911
  br label %for.cond, !dbg !1912

for.cond:                                         ; preds = %for.inc, %if.end9
  %q.0 = phi i32 [ %shl, %if.end9 ], [ %or15, %for.inc ], !dbg !1913
  %r.0 = phi i32 [ %shr, %if.end9 ], [ %sub20, %for.inc ], !dbg !1913
  %sr.0 = phi i32 [ %inc, %if.end9 ], [ %dec, %for.inc ], !dbg !1913
  %carry.0 = phi i32 [ 0, %if.end9 ], [ %and, %for.inc ], !dbg !1913
  %cmp11.not = icmp eq i32 %sr.0, 0, !dbg !1914
  br i1 %cmp11.not, label %for.end, label %for.body, !dbg !1912

for.body:                                         ; preds = %for.cond
  %or = call i32 @llvm.fshl.i32(i32 %r.0, i32 %q.0, i32 1), !dbg !1915
  %2 = xor i32 %or, -1, !dbg !1916
  %sub17 = add i32 %2, %d, !dbg !1916
  br label %for.inc, !dbg !1917

for.inc:                                          ; preds = %for.body
  %isneg = icmp slt i32 %sub17, 0, !dbg !1918
  %and19 = select i1 %isneg, i32 %d, i32 0, !dbg !1918
  %sub20 = sub i32 %or, %and19, !dbg !1919
  %and = lshr i32 %sub17, 31, !dbg !1920
  %shl14 = shl i32 %q.0, 1, !dbg !1921
  %or15 = or i32 %shl14, %carry.0, !dbg !1922
  %dec = add i32 %sr.0, -1, !dbg !1923
  br label %for.cond, !dbg !1912, !llvm.loop !1924

for.end:                                          ; preds = %for.cond
  %shl21 = shl i32 %q.0, 1, !dbg !1925
  %or22 = or i32 %shl21, %carry.0, !dbg !1926
  br label %return, !dbg !1927

return:                                           ; preds = %for.end, %if.then8, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then5 ], [ %n, %if.then8 ], [ %or22, %for.end ], !dbg !1913
  ret i32 %retval.0, !dbg !1928
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i64 @__umoddi3(i64 noundef %a, i64 noundef %b) #2 !dbg !1929 {
entry:
  %r = alloca i64, align 8
  %call = call arm_aapcscc i64 @__udivmoddi4(i64 noundef %a, i64 noundef %b, i64* noundef nonnull %r) #4, !dbg !1930
  %0 = load i64, i64* %r, align 8, !dbg !1931
  ret i64 %0, !dbg !1932
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i32 @__umodsi3(i32 noundef %a, i32 noundef %b) #2 !dbg !1933 {
entry:
  %call = call arm_aapcscc i32 @__udivsi3(i32 noundef %a, i32 noundef %b) #4, !dbg !1934
  %mul = mul i32 %call, %b, !dbg !1935
  %sub = sub i32 %a, %mul, !dbg !1936
  ret i32 %sub, !dbg !1937
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memcpy(i8* noundef %destination, i8* noundef %source, i32 noundef %num) #2 !dbg !1938 {
entry:
  br label %for.cond, !dbg !1939

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1940
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1941
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1942

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i8, i8* %source, i32 %i.0, !dbg !1943
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1943
  %arrayidx1 = getelementptr inbounds i8, i8* %destination, i32 %i.0, !dbg !1944
  store i8 %0, i8* %arrayidx1, align 1, !dbg !1945
  br label %for.inc, !dbg !1946

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1947
  br label %for.cond, !dbg !1942, !llvm.loop !1948

for.end:                                          ; preds = %for.cond
  ret i8* undef, !dbg !1949
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcscc i8* @memset(i8* noundef %ptr, i32 noundef %value, i32 noundef %num) #2 !dbg !1950 {
entry:
  br label %for.cond, !dbg !1951

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1952
  %exitcond.not = icmp eq i32 %i.0, %num, !dbg !1953
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1954

for.body:                                         ; preds = %for.cond
  %conv = trunc i32 %value to i8, !dbg !1955
  %arrayidx = getelementptr inbounds i8, i8* %ptr, i32 %i.0, !dbg !1956
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1957
  br label %for.inc, !dbg !1958

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0, 1, !dbg !1959
  br label %for.cond, !dbg !1954, !llvm.loop !1960

for.end:                                          ; preds = %for.cond
  ret i8* %ptr, !dbg !1961
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

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
attributes #2 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122}
!llvm.ident = !{!124, !124, !124, !124, !124, !124, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125, !125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133, !134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/adpcm_dec.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "6ebd865e09876ee217b03c4acb2875df")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/workspaces/llvmta/testcases/test/bs.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "bd8125837db9308c88c5ffb782c95b7d")
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/workspaces/llvmta/testcases/test/expint.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/workspaces/llvmta/testcases/test/lms.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/workspaces/llvmta/testcases/test/matmult.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/workspaces/llvmta/testcases/test/rad2deg.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "../absvdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f0fa545ed84eab29322431dd903e1bd2")
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "../absvsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4c623fefc2c7ed3929c6e73514b667d1")
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "../absvti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "37a4bc629baa89b5b7c1570be0d03e1f")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "../addvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "aa240ee8ce7c28b2c3bcec10a7603d3f")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "../addvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6cd4d40cc00928f1aaf6f29e299078cd")
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "../addvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0db25cee24f6026e13fc556e48cb2a4f")
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../ashldi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae5236ddcefaf3e5efc4feba69d334b1")
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../ashlti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "040402442e4641b723a41224f90bb33c")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "../ashrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "df60b7a82095e7d7b5c11e1095a5679a")
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../ashrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d09af17b4c5b806431a14ef018da30a2")
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "../clzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "901c40e0319a50689080965b20695c3e")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "../clzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "9b0156c55102d3143e17bdf85bafbc30")
!36 = distinct !DICompileUnit(language: DW_LANG_C99, file: !37, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!37 = !DIFile(filename: "../clzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6289c95e51f48974308ae457c947fa76")
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "../cmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79ec8a4b383c8374d228cd0869637319")
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "../cmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "8b9214d8b14681920bdf2cff2acab581")
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "../ctzdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0415a3f61808ca646548bc24b48a844a")
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "../ctzsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0372a2c6647eddaa73c0b61d8d03c3b1")
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "../ctzti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "13fd6233b75667ee3310f19e92769490")
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "../divdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "281227589e0794a81d7211e4ee4a402c")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "../divmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd72633dccf26f3dd8ee74bf04f7fdac")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "../divmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "0cf7caca427f8ea020b675e27b5985b5")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "../divsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7845e3e46788425cf69d463f3cfe00e5")
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!57 = !DIFile(filename: "../divti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "6f197084470906a806c88d3dd279e870")
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "../ffsdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "4b800e1cad35a0bc99971441032171a3")
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../ffssi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "182169d6765bddc2bf1b03cc7a4f47cb")
!62 = distinct !DICompileUnit(language: DW_LANG_C99, file: !63, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!63 = !DIFile(filename: "../ffsti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "828ab085c50c22a6e163e289ad75e357")
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "../int_util.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7ceb1d4e85bede509d8e6a0974078bc9")
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!67 = !DIFile(filename: "../lshrdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c456e45323b3205c3b32d82b51570771")
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "../lshrti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "a0deefe7ea6369a844ff00cfd3adca3e")
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "../moddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "76733914157a978303cbe3d6f6d1c647")
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "../modsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ada583aff17540d2228ce14dc879fdc8")
!74 = distinct !DICompileUnit(language: DW_LANG_C99, file: !75, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!75 = !DIFile(filename: "../modti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "7d8393bf5eb9f0ba6dd3cb5fd0d18b1c")
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "../mulvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bb6aa1440e4e37fe94db90279d27db10")
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!79 = !DIFile(filename: "../mulvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "32cd947949fac3c039bd0839cd5d7c78")
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!81 = !DIFile(filename: "../mulvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "600972d5762784972446ff2942320803")
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../paritydi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "bd9549e31bcebf1c2265048ea6f18a77")
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!85 = !DIFile(filename: "../paritysi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "235e89e1ac3c55fb43879550247ea25b")
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!87 = !DIFile(filename: "../parityti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "731d722977e9d8c0cd1987cb790d412a")
!88 = distinct !DICompileUnit(language: DW_LANG_C99, file: !89, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!89 = !DIFile(filename: "../popcountdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "05f001da7fc478c773612fd707769c2a")
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!91 = !DIFile(filename: "../popcountsi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f9ebedb2d8810ee5a54fff38e1b09d64")
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "../popcountti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "cc3baf5a1f58193aeafb2e81bae65208")
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "../subvdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "5774ab7a3a8e168deb55531047d6a873")
!96 = distinct !DICompileUnit(language: DW_LANG_C99, file: !97, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!97 = !DIFile(filename: "../subvsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9558a85e8fabce36f42a29933bd87e9")
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!99 = !DIFile(filename: "../subvti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ae43c388730e95c5ad9b20d37f73fd82")
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "../ucmpdi2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "79f778ef54939446d175079e19d07756")
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../ucmpti2.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "d30b659e82f7851c826242cd1de6f293")
!104 = distinct !DICompileUnit(language: DW_LANG_C99, file: !105, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!105 = !DIFile(filename: "../udivdi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "580a28989090b62fc3d261faa6e31a6b")
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "../udivmoddi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "eca4b147be989cda91330ba5b56ed879")
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!109 = !DIFile(filename: "../udivmodsi4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c0341684574a20dbcfbe4df0ab9f8538")
!110 = distinct !DICompileUnit(language: DW_LANG_C99, file: !111, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!111 = !DIFile(filename: "../udivmodti4.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "876858111b283249167fa6a71cc4682f")
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!113 = !DIFile(filename: "../udivsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "b74987a973aededf95faab34db33f58a")
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!115 = !DIFile(filename: "../udivti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "c9304f2e77edc1023290a4f40073f6f7")
!116 = distinct !DICompileUnit(language: DW_LANG_C99, file: !117, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!117 = !DIFile(filename: "../umoddi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "1a99e635325595a81040fb97dab88295")
!118 = distinct !DICompileUnit(language: DW_LANG_C99, file: !119, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!119 = !DIFile(filename: "../umodsi3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "ce74ac33cd2bd170a84f43824cae8961")
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../umodti3.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsint/buildarmv4", checksumkind: CSK_MD5, checksum: "f900660feeec718da080f01b23c74384")
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!123 = !DIFile(filename: "../memory.c", directory: "/workspaces/llvmta/testcases/libraries/builtinsstd/buildarmv4", checksumkind: CSK_MD5, checksum: "fa9c872a007b30a353222cd13b38538d")
!124 = !{!"clang version 14.0.6"}
!125 = !{!"clang version 14.0.6 (git@gitlab.tu-dortmund.de:f4-ls12-daes/llvmta/llvmta.git 64262528b05c9d91a76d9ec1ec1045982f385529)"}
!126 = !{i32 7, !"Dwarf Version", i32 5}
!127 = !{i32 2, !"Debug Info Version", i32 3}
!128 = !{i32 1, !"wchar_size", i32 4}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 1, !"branch-target-enforcement", i32 0}
!131 = !{i32 1, !"sign-return-address", i32 0}
!132 = !{i32 1, !"sign-return-address-all", i32 0}
!133 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = distinct !DISubprogram(name: "adpcm_dec_fabs", scope: !136, file: !136, line: 206, type: !137, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!136 = !DIFile(filename: "test/adpcm_dec.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "6ebd865e09876ee217b03c4acb2875df")
!137 = !DISubroutineType(types: !138)
!138 = !{}
!139 = !DILocation(line: 211, column: 10, scope: !135)
!140 = !DILocation(line: 211, column: 8, scope: !135)
!141 = !DILocation(line: 212, column: 5, scope: !135)
!142 = !DILocation(line: 214, column: 9, scope: !135)
!143 = !DILocation(line: 0, scope: !135)
!144 = !DILocation(line: 216, column: 3, scope: !135)
!145 = distinct !DISubprogram(name: "adpcm_dec_sin", scope: !136, file: !136, line: 220, type: !137, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!146 = !DILocation(line: 229, column: 3, scope: !145)
!147 = distinct !{!147, !146, !148, !149}
!148 = !DILocation(line: 230, column: 16, scope: !145)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 233, column: 3, scope: !145)
!151 = distinct !{!151, !150, !152, !149}
!152 = !DILocation(line: 234, column: 16, scope: !145)
!153 = !DILocation(line: 238, column: 28, scope: !145)
!154 = !DILocation(line: 238, column: 17, scope: !145)
!155 = !DILocation(line: 238, column: 40, scope: !145)
!156 = !DILocation(line: 239, column: 13, scope: !145)
!157 = !DILocation(line: 245, column: 3, scope: !145)
!158 = !DILocation(line: 0, scope: !145)
!159 = !DILocation(line: 245, column: 11, scope: !145)
!160 = !DILocation(line: 245, column: 34, scope: !145)
!161 = !DILocation(line: 246, column: 30, scope: !145)
!162 = !DILocation(line: 246, column: 19, scope: !145)
!163 = !DILocation(line: 246, column: 50, scope: !145)
!164 = !DILocation(line: 246, column: 64, scope: !145)
!165 = !DILocation(line: 246, column: 70, scope: !145)
!166 = !DILocation(line: 246, column: 58, scope: !145)
!167 = !DILocation(line: 246, column: 42, scope: !145)
!168 = !DILocation(line: 247, column: 15, scope: !145)
!169 = !DILocation(line: 248, column: 8, scope: !145)
!170 = distinct !{!170, !157, !171, !149}
!171 = !DILocation(line: 249, column: 3, scope: !145)
!172 = !DILocation(line: 251, column: 3, scope: !145)
!173 = distinct !DISubprogram(name: "adpcm_dec_cos", scope: !136, file: !136, line: 255, type: !137, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!174 = !DILocation(line: 257, column: 34, scope: !173)
!175 = !DILocation(line: 257, column: 12, scope: !173)
!176 = !DILocation(line: 257, column: 3, scope: !173)
!177 = distinct !DISubprogram(name: "adpcm_dec_decode", scope: !136, file: !136, line: 266, type: !137, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!178 = !DILocation(line: 274, column: 25, scope: !177)
!179 = !DILocation(line: 274, column: 17, scope: !177)
!180 = !DILocation(line: 275, column: 24, scope: !177)
!181 = !DILocation(line: 275, column: 16, scope: !177)
!182 = !DILocation(line: 280, column: 23, scope: !177)
!183 = !DILocation(line: 280, column: 21, scope: !177)
!184 = !DILocation(line: 284, column: 41, scope: !177)
!185 = !DILocation(line: 284, column: 61, scope: !177)
!186 = !DILocation(line: 285, column: 41, scope: !177)
!187 = !DILocation(line: 285, column: 61, scope: !177)
!188 = !DILocation(line: 284, column: 23, scope: !177)
!189 = !DILocation(line: 284, column: 21, scope: !177)
!190 = !DILocation(line: 287, column: 42, scope: !177)
!191 = !DILocation(line: 287, column: 40, scope: !177)
!192 = !DILocation(line: 287, column: 20, scope: !177)
!193 = !DILocation(line: 290, column: 33, scope: !177)
!194 = !DILocation(line: 291, column: 52, scope: !177)
!195 = !DILocation(line: 292, column: 29, scope: !177)
!196 = !DILocation(line: 291, column: 25, scope: !177)
!197 = !DILocation(line: 290, column: 52, scope: !177)
!198 = !DILocation(line: 292, column: 38, scope: !177)
!199 = !DILocation(line: 290, column: 21, scope: !177)
!200 = !DILocation(line: 295, column: 28, scope: !177)
!201 = !DILocation(line: 296, column: 47, scope: !177)
!202 = !DILocation(line: 296, column: 20, scope: !177)
!203 = !DILocation(line: 295, column: 47, scope: !177)
!204 = !DILocation(line: 296, column: 64, scope: !177)
!205 = !DILocation(line: 295, column: 16, scope: !177)
!206 = !DILocation(line: 299, column: 33, scope: !177)
!207 = !DILocation(line: 299, column: 31, scope: !177)
!208 = !DILocation(line: 299, column: 16, scope: !177)
!209 = !DILocation(line: 302, column: 41, scope: !177)
!210 = !DILocation(line: 302, column: 56, scope: !177)
!211 = !DILocation(line: 302, column: 23, scope: !177)
!212 = !DILocation(line: 302, column: 21, scope: !177)
!213 = !DILocation(line: 305, column: 24, scope: !177)
!214 = !DILocation(line: 305, column: 22, scope: !177)
!215 = !DILocation(line: 309, column: 23, scope: !177)
!216 = !DILocation(line: 309, column: 43, scope: !177)
!217 = !DILocation(line: 309, column: 41, scope: !177)
!218 = !DILocation(line: 309, column: 21, scope: !177)
!219 = !DILocation(line: 312, column: 3, scope: !177)
!220 = !DILocation(line: 316, column: 41, scope: !177)
!221 = !DILocation(line: 316, column: 60, scope: !177)
!222 = !DILocation(line: 317, column: 41, scope: !177)
!223 = !DILocation(line: 317, column: 60, scope: !177)
!224 = !DILocation(line: 318, column: 41, scope: !177)
!225 = !DILocation(line: 316, column: 23, scope: !177)
!226 = !DILocation(line: 316, column: 21, scope: !177)
!227 = !DILocation(line: 321, column: 41, scope: !177)
!228 = !DILocation(line: 322, column: 41, scope: !177)
!229 = !DILocation(line: 322, column: 60, scope: !177)
!230 = !DILocation(line: 321, column: 23, scope: !177)
!231 = !DILocation(line: 321, column: 21, scope: !177)
!232 = !DILocation(line: 325, column: 23, scope: !177)
!233 = !DILocation(line: 325, column: 42, scope: !177)
!234 = !DILocation(line: 325, column: 40, scope: !177)
!235 = !DILocation(line: 325, column: 21, scope: !177)
!236 = !DILocation(line: 328, column: 24, scope: !177)
!237 = !DILocation(line: 328, column: 22, scope: !177)
!238 = !DILocation(line: 329, column: 22, scope: !177)
!239 = !DILocation(line: 330, column: 24, scope: !177)
!240 = !DILocation(line: 330, column: 22, scope: !177)
!241 = !DILocation(line: 331, column: 24, scope: !177)
!242 = !DILocation(line: 331, column: 22, scope: !177)
!243 = !DILocation(line: 336, column: 23, scope: !177)
!244 = !DILocation(line: 336, column: 21, scope: !177)
!245 = !DILocation(line: 340, column: 41, scope: !177)
!246 = !DILocation(line: 340, column: 60, scope: !177)
!247 = !DILocation(line: 341, column: 41, scope: !177)
!248 = !DILocation(line: 341, column: 60, scope: !177)
!249 = !DILocation(line: 340, column: 23, scope: !177)
!250 = !DILocation(line: 340, column: 21, scope: !177)
!251 = !DILocation(line: 344, column: 42, scope: !177)
!252 = !DILocation(line: 344, column: 40, scope: !177)
!253 = !DILocation(line: 344, column: 20, scope: !177)
!254 = !DILocation(line: 347, column: 32, scope: !177)
!255 = !DILocation(line: 348, column: 51, scope: !177)
!256 = !DILocation(line: 348, column: 24, scope: !177)
!257 = !DILocation(line: 347, column: 51, scope: !177)
!258 = !DILocation(line: 348, column: 68, scope: !177)
!259 = !DILocation(line: 347, column: 20, scope: !177)
!260 = !DILocation(line: 351, column: 55, scope: !177)
!261 = !DILocation(line: 351, column: 23, scope: !177)
!262 = !DILocation(line: 351, column: 21, scope: !177)
!263 = !DILocation(line: 354, column: 24, scope: !177)
!264 = !DILocation(line: 354, column: 22, scope: !177)
!265 = !DILocation(line: 357, column: 22, scope: !177)
!266 = !DILocation(line: 357, column: 41, scope: !177)
!267 = !DILocation(line: 357, column: 39, scope: !177)
!268 = !DILocation(line: 357, column: 20, scope: !177)
!269 = !DILocation(line: 360, column: 3, scope: !177)
!270 = !DILocation(line: 364, column: 41, scope: !177)
!271 = !DILocation(line: 364, column: 60, scope: !177)
!272 = !DILocation(line: 365, column: 41, scope: !177)
!273 = !DILocation(line: 365, column: 59, scope: !177)
!274 = !DILocation(line: 365, column: 78, scope: !177)
!275 = !DILocation(line: 364, column: 23, scope: !177)
!276 = !DILocation(line: 364, column: 21, scope: !177)
!277 = !DILocation(line: 368, column: 41, scope: !177)
!278 = !DILocation(line: 369, column: 41, scope: !177)
!279 = !DILocation(line: 369, column: 59, scope: !177)
!280 = !DILocation(line: 368, column: 23, scope: !177)
!281 = !DILocation(line: 368, column: 21, scope: !177)
!282 = !DILocation(line: 372, column: 18, scope: !177)
!283 = !DILocation(line: 372, column: 37, scope: !177)
!284 = !DILocation(line: 372, column: 35, scope: !177)
!285 = !DILocation(line: 372, column: 16, scope: !177)
!286 = !DILocation(line: 375, column: 23, scope: !177)
!287 = !DILocation(line: 375, column: 21, scope: !177)
!288 = !DILocation(line: 376, column: 21, scope: !177)
!289 = !DILocation(line: 377, column: 23, scope: !177)
!290 = !DILocation(line: 377, column: 21, scope: !177)
!291 = !DILocation(line: 378, column: 23, scope: !177)
!292 = !DILocation(line: 378, column: 21, scope: !177)
!293 = !DILocation(line: 383, column: 18, scope: !177)
!294 = !DILocation(line: 383, column: 33, scope: !177)
!295 = !DILocation(line: 383, column: 31, scope: !177)
!296 = !DILocation(line: 383, column: 16, scope: !177)
!297 = !DILocation(line: 384, column: 31, scope: !177)
!298 = !DILocation(line: 384, column: 16, scope: !177)
!299 = !DILocation(line: 390, column: 35, scope: !177)
!300 = !DILocation(line: 390, column: 31, scope: !177)
!301 = !DILocation(line: 391, column: 35, scope: !177)
!302 = !DILocation(line: 391, column: 31, scope: !177)
!303 = !DILocation(line: 395, column: 9, scope: !177)
!304 = !DILocation(line: 0, scope: !177)
!305 = !DILocation(line: 395, column: 18, scope: !177)
!306 = !DILocation(line: 395, column: 3, scope: !177)
!307 = !DILocation(line: 398, column: 3, scope: !177)
!308 = !DILocation(line: 397, column: 22, scope: !177)
!309 = !DILocation(line: 396, column: 44, scope: !177)
!310 = !DILocation(line: 397, column: 38, scope: !177)
!311 = !DILocation(line: 397, column: 34, scope: !177)
!312 = !DILocation(line: 397, column: 9, scope: !177)
!313 = !DILocation(line: 397, column: 44, scope: !177)
!314 = !DILocation(line: 397, column: 29, scope: !177)
!315 = !DILocation(line: 396, column: 22, scope: !177)
!316 = !DILocation(line: 396, column: 38, scope: !177)
!317 = !DILocation(line: 396, column: 34, scope: !177)
!318 = !DILocation(line: 396, column: 9, scope: !177)
!319 = !DILocation(line: 396, column: 29, scope: !177)
!320 = !DILocation(line: 395, column: 25, scope: !177)
!321 = distinct !{!321, !306, !307, !149}
!322 = !DILocation(line: 401, column: 20, scope: !177)
!323 = !DILocation(line: 401, column: 34, scope: !177)
!324 = !DILocation(line: 401, column: 30, scope: !177)
!325 = !DILocation(line: 401, column: 7, scope: !177)
!326 = !DILocation(line: 402, column: 20, scope: !177)
!327 = !DILocation(line: 402, column: 34, scope: !177)
!328 = !DILocation(line: 402, column: 30, scope: !177)
!329 = !DILocation(line: 402, column: 7, scope: !177)
!330 = !DILocation(line: 405, column: 25, scope: !177)
!331 = !DILocation(line: 405, column: 19, scope: !177)
!332 = !DILocation(line: 406, column: 25, scope: !177)
!333 = !DILocation(line: 406, column: 19, scope: !177)
!334 = !DILocation(line: 413, column: 9, scope: !177)
!335 = !DILocation(line: 413, column: 18, scope: !177)
!336 = !DILocation(line: 413, column: 3, scope: !177)
!337 = !DILocation(line: 414, column: 17, scope: !177)
!338 = !DILocation(line: 414, column: 15, scope: !177)
!339 = !DILocation(line: 415, column: 17, scope: !177)
!340 = !DILocation(line: 415, column: 15, scope: !177)
!341 = !DILocation(line: 416, column: 3, scope: !177)
!342 = !DILocation(line: 415, column: 12, scope: !177)
!343 = !DILocation(line: 415, column: 25, scope: !177)
!344 = !DILocation(line: 414, column: 12, scope: !177)
!345 = !DILocation(line: 414, column: 25, scope: !177)
!346 = !DILocation(line: 413, column: 25, scope: !177)
!347 = distinct !{!347, !336, !341, !149}
!348 = !DILocation(line: 418, column: 13, scope: !177)
!349 = !DILocation(line: 418, column: 11, scope: !177)
!350 = !DILocation(line: 419, column: 13, scope: !177)
!351 = !DILocation(line: 419, column: 11, scope: !177)
!352 = !DILocation(line: 421, column: 3, scope: !177)
!353 = distinct !DISubprogram(name: "adpcm_dec_filtez", scope: !136, file: !136, line: 427, type: !137, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!354 = !DILocation(line: 433, column: 18, scope: !353)
!355 = !DILocation(line: 433, column: 31, scope: !353)
!356 = !DILocation(line: 433, column: 27, scope: !353)
!357 = !DILocation(line: 437, column: 9, scope: !353)
!358 = !DILocation(line: 0, scope: !353)
!359 = !DILocation(line: 437, column: 18, scope: !353)
!360 = !DILocation(line: 437, column: 3, scope: !353)
!361 = !DILocation(line: 438, column: 5, scope: !353)
!362 = !DILocation(line: 438, column: 21, scope: !353)
!363 = !DILocation(line: 438, column: 34, scope: !353)
!364 = !DILocation(line: 438, column: 30, scope: !353)
!365 = !DILocation(line: 438, column: 8, scope: !353)
!366 = !DILocation(line: 437, column: 24, scope: !353)
!367 = distinct !{!367, !360, !368, !149}
!368 = !DILocation(line: 438, column: 41, scope: !353)
!369 = !DILocation(line: 440, column: 24, scope: !353)
!370 = !DILocation(line: 440, column: 3, scope: !353)
!371 = distinct !DISubprogram(name: "adpcm_dec_filtep", scope: !136, file: !136, line: 446, type: !137, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!372 = !DILocation(line: 451, column: 10, scope: !371)
!373 = !DILocation(line: 452, column: 21, scope: !371)
!374 = !DILocation(line: 453, column: 11, scope: !371)
!375 = !DILocation(line: 454, column: 22, scope: !371)
!376 = !DILocation(line: 454, column: 6, scope: !371)
!377 = !DILocation(line: 456, column: 24, scope: !371)
!378 = !DILocation(line: 456, column: 3, scope: !371)
!379 = distinct !DISubprogram(name: "adpcm_dec_logscl", scope: !136, file: !136, line: 462, type: !137, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!380 = !DILocation(line: 467, column: 22, scope: !379)
!381 = !DILocation(line: 467, column: 31, scope: !379)
!382 = !DILocation(line: 468, column: 49, scope: !379)
!383 = !DILocation(line: 468, column: 21, scope: !379)
!384 = !DILocation(line: 468, column: 19, scope: !379)
!385 = !DILocation(line: 470, column: 12, scope: !379)
!386 = !DILocation(line: 470, column: 8, scope: !379)
!387 = !DILocation(line: 471, column: 5, scope: !379)
!388 = !DILocation(line: 0, scope: !379)
!389 = !DILocation(line: 472, column: 12, scope: !379)
!390 = !DILocation(line: 472, column: 8, scope: !379)
!391 = !DILocation(line: 473, column: 5, scope: !379)
!392 = !DILocation(line: 475, column: 3, scope: !379)
!393 = distinct !DISubprogram(name: "adpcm_dec_scalel", scope: !136, file: !136, line: 480, type: !137, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!394 = !DILocation(line: 485, column: 15, scope: !393)
!395 = !DILocation(line: 485, column: 22, scope: !393)
!396 = !DILocation(line: 486, column: 13, scope: !393)
!397 = !DILocation(line: 487, column: 9, scope: !393)
!398 = !DILocation(line: 487, column: 56, scope: !393)
!399 = !DILocation(line: 487, column: 60, scope: !393)
!400 = !DILocation(line: 487, column: 36, scope: !393)
!401 = !DILocation(line: 489, column: 16, scope: !393)
!402 = !DILocation(line: 489, column: 3, scope: !393)
!403 = distinct !DISubprogram(name: "adpcm_dec_upzero", scope: !136, file: !136, line: 495, type: !137, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!404 = !DILocation(line: 501, column: 12, scope: !403)
!405 = !DILocation(line: 501, column: 8, scope: !403)
!406 = !DILocation(line: 503, column: 11, scope: !403)
!407 = !DILocation(line: 0, scope: !403)
!408 = !DILocation(line: 503, column: 20, scope: !403)
!409 = !DILocation(line: 503, column: 5, scope: !403)
!410 = !DILocation(line: 504, column: 36, scope: !403)
!411 = !DILocation(line: 504, column: 34, scope: !403)
!412 = !DILocation(line: 504, column: 47, scope: !403)
!413 = !DILocation(line: 504, column: 7, scope: !403)
!414 = !DILocation(line: 504, column: 16, scope: !403)
!415 = !DILocation(line: 505, column: 5, scope: !403)
!416 = !DILocation(line: 503, column: 26, scope: !403)
!417 = distinct !{!417, !409, !415, !149}
!418 = !DILocation(line: 507, column: 3, scope: !403)
!419 = !DILocation(line: 509, column: 11, scope: !403)
!420 = !DILocation(line: 509, column: 20, scope: !403)
!421 = !DILocation(line: 509, column: 5, scope: !403)
!422 = !DILocation(line: 510, column: 26, scope: !403)
!423 = !DILocation(line: 510, column: 24, scope: !403)
!424 = !DILocation(line: 510, column: 36, scope: !403)
!425 = !DILocation(line: 510, column: 12, scope: !403)
!426 = !DILocation(line: 511, column: 9, scope: !403)
!427 = !DILocation(line: 515, column: 31, scope: !403)
!428 = !DILocation(line: 515, column: 29, scope: !403)
!429 = !DILocation(line: 515, column: 42, scope: !403)
!430 = !DILocation(line: 516, column: 22, scope: !403)
!431 = !DILocation(line: 516, column: 7, scope: !403)
!432 = !DILocation(line: 516, column: 16, scope: !403)
!433 = !DILocation(line: 517, column: 5, scope: !403)
!434 = !DILocation(line: 509, column: 26, scope: !403)
!435 = distinct !{!435, !421, !433, !149}
!436 = !DILocation(line: 522, column: 15, scope: !403)
!437 = !DILocation(line: 522, column: 3, scope: !403)
!438 = !DILocation(line: 522, column: 13, scope: !403)
!439 = !DILocation(line: 523, column: 15, scope: !403)
!440 = !DILocation(line: 523, column: 3, scope: !403)
!441 = !DILocation(line: 523, column: 13, scope: !403)
!442 = !DILocation(line: 524, column: 15, scope: !403)
!443 = !DILocation(line: 524, column: 3, scope: !403)
!444 = !DILocation(line: 524, column: 13, scope: !403)
!445 = !DILocation(line: 525, column: 15, scope: !403)
!446 = !DILocation(line: 525, column: 3, scope: !403)
!447 = !DILocation(line: 525, column: 13, scope: !403)
!448 = !DILocation(line: 526, column: 13, scope: !403)
!449 = !DILocation(line: 528, column: 3, scope: !403)
!450 = distinct !DISubprogram(name: "adpcm_dec_uppol2", scope: !136, file: !136, line: 534, type: !137, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!451 = !DILocation(line: 540, column: 12, scope: !450)
!452 = !DILocation(line: 541, column: 20, scope: !450)
!453 = !DILocation(line: 541, column: 27, scope: !450)
!454 = !DILocation(line: 541, column: 8, scope: !450)
!455 = !DILocation(line: 542, column: 11, scope: !450)
!456 = !DILocation(line: 542, column: 5, scope: !450)
!457 = !DILocation(line: 0, scope: !450)
!458 = !DILocation(line: 543, column: 13, scope: !450)
!459 = !DILocation(line: 545, column: 20, scope: !450)
!460 = !DILocation(line: 545, column: 27, scope: !450)
!461 = !DILocation(line: 545, column: 8, scope: !450)
!462 = !DILocation(line: 546, column: 15, scope: !450)
!463 = !DILocation(line: 547, column: 3, scope: !450)
!464 = !DILocation(line: 548, column: 15, scope: !450)
!465 = !DILocation(line: 549, column: 23, scope: !450)
!466 = !DILocation(line: 549, column: 37, scope: !450)
!467 = !DILocation(line: 549, column: 14, scope: !450)
!468 = !DILocation(line: 552, column: 13, scope: !450)
!469 = !DILocation(line: 552, column: 8, scope: !450)
!470 = !DILocation(line: 553, column: 5, scope: !450)
!471 = !DILocation(line: 554, column: 13, scope: !450)
!472 = !DILocation(line: 554, column: 8, scope: !450)
!473 = !DILocation(line: 555, column: 5, scope: !450)
!474 = !DILocation(line: 557, column: 3, scope: !450)
!475 = distinct !DISubprogram(name: "adpcm_dec_uppol1", scope: !136, file: !136, line: 563, type: !137, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!476 = !DILocation(line: 569, column: 23, scope: !475)
!477 = !DILocation(line: 569, column: 32, scope: !475)
!478 = !DILocation(line: 570, column: 20, scope: !475)
!479 = !DILocation(line: 570, column: 27, scope: !475)
!480 = !DILocation(line: 570, column: 8, scope: !475)
!481 = !DILocation(line: 571, column: 23, scope: !475)
!482 = !DILocation(line: 572, column: 3, scope: !475)
!483 = !DILocation(line: 573, column: 23, scope: !475)
!484 = !DILocation(line: 0, scope: !475)
!485 = !DILocation(line: 576, column: 15, scope: !475)
!486 = !DILocation(line: 577, column: 13, scope: !475)
!487 = !DILocation(line: 577, column: 8, scope: !475)
!488 = !DILocation(line: 578, column: 5, scope: !475)
!489 = !DILocation(line: 579, column: 13, scope: !475)
!490 = !DILocation(line: 579, column: 8, scope: !475)
!491 = !DILocation(line: 580, column: 5, scope: !475)
!492 = !DILocation(line: 582, column: 3, scope: !475)
!493 = distinct !DISubprogram(name: "adpcm_dec_logsch", scope: !136, file: !136, line: 588, type: !137, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!494 = !DILocation(line: 593, column: 22, scope: !493)
!495 = !DILocation(line: 593, column: 31, scope: !493)
!496 = !DILocation(line: 594, column: 14, scope: !493)
!497 = !DILocation(line: 594, column: 12, scope: !493)
!498 = !DILocation(line: 596, column: 12, scope: !493)
!499 = !DILocation(line: 596, column: 8, scope: !493)
!500 = !DILocation(line: 597, column: 5, scope: !493)
!501 = !DILocation(line: 0, scope: !493)
!502 = !DILocation(line: 598, column: 12, scope: !493)
!503 = !DILocation(line: 598, column: 8, scope: !493)
!504 = !DILocation(line: 599, column: 5, scope: !493)
!505 = !DILocation(line: 601, column: 3, scope: !493)
!506 = distinct !DISubprogram(name: "adpcm_dec_reset", scope: !136, file: !136, line: 610, type: !137, scopeLine: 611, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!507 = !DILocation(line: 615, column: 39, scope: !506)
!508 = !DILocation(line: 615, column: 18, scope: !506)
!509 = !DILocation(line: 616, column: 39, scope: !506)
!510 = !DILocation(line: 616, column: 18, scope: !506)
!511 = !DILocation(line: 618, column: 69, scope: !506)
!512 = !DILocation(line: 618, column: 52, scope: !506)
!513 = !DILocation(line: 618, column: 35, scope: !506)
!514 = !DILocation(line: 617, column: 66, scope: !506)
!515 = !DILocation(line: 617, column: 49, scope: !506)
!516 = !DILocation(line: 617, column: 33, scope: !506)
!517 = !DILocation(line: 617, column: 17, scope: !506)
!518 = !DILocation(line: 620, column: 67, scope: !506)
!519 = !DILocation(line: 620, column: 51, scope: !506)
!520 = !DILocation(line: 619, column: 81, scope: !506)
!521 = !DILocation(line: 619, column: 65, scope: !506)
!522 = !DILocation(line: 619, column: 49, scope: !506)
!523 = !DILocation(line: 619, column: 33, scope: !506)
!524 = !DILocation(line: 619, column: 17, scope: !506)
!525 = !DILocation(line: 622, column: 68, scope: !506)
!526 = !DILocation(line: 622, column: 47, scope: !506)
!527 = !DILocation(line: 622, column: 26, scope: !506)
!528 = !DILocation(line: 621, column: 82, scope: !506)
!529 = !DILocation(line: 621, column: 61, scope: !506)
!530 = !DILocation(line: 621, column: 41, scope: !506)
!531 = !DILocation(line: 621, column: 21, scope: !506)
!532 = !DILocation(line: 624, column: 65, scope: !506)
!533 = !DILocation(line: 624, column: 45, scope: !506)
!534 = !DILocation(line: 624, column: 25, scope: !506)
!535 = !DILocation(line: 623, column: 81, scope: !506)
!536 = !DILocation(line: 623, column: 61, scope: !506)
!537 = !DILocation(line: 623, column: 41, scope: !506)
!538 = !DILocation(line: 623, column: 21, scope: !506)
!539 = !DILocation(line: 627, column: 9, scope: !506)
!540 = !DILocation(line: 0, scope: !506)
!541 = !DILocation(line: 627, column: 18, scope: !506)
!542 = !DILocation(line: 627, column: 3, scope: !506)
!543 = !DILocation(line: 629, column: 5, scope: !506)
!544 = !DILocation(line: 629, column: 30, scope: !506)
!545 = !DILocation(line: 630, column: 5, scope: !506)
!546 = !DILocation(line: 630, column: 33, scope: !506)
!547 = !DILocation(line: 631, column: 5, scope: !506)
!548 = !DILocation(line: 631, column: 32, scope: !506)
!549 = !DILocation(line: 632, column: 3, scope: !506)
!550 = !DILocation(line: 627, column: 24, scope: !506)
!551 = distinct !{!551, !542, !549, !149}
!552 = !DILocation(line: 635, column: 9, scope: !506)
!553 = !DILocation(line: 635, column: 18, scope: !506)
!554 = !DILocation(line: 635, column: 3, scope: !506)
!555 = !DILocation(line: 637, column: 5, scope: !506)
!556 = !DILocation(line: 637, column: 30, scope: !506)
!557 = !DILocation(line: 638, column: 5, scope: !506)
!558 = !DILocation(line: 638, column: 32, scope: !506)
!559 = !DILocation(line: 639, column: 5, scope: !506)
!560 = !DILocation(line: 639, column: 32, scope: !506)
!561 = !DILocation(line: 640, column: 3, scope: !506)
!562 = !DILocation(line: 635, column: 24, scope: !506)
!563 = distinct !{!563, !554, !561, !149}
!564 = !DILocation(line: 643, column: 9, scope: !506)
!565 = !DILocation(line: 643, column: 18, scope: !506)
!566 = !DILocation(line: 643, column: 3, scope: !506)
!567 = !DILocation(line: 644, column: 5, scope: !506)
!568 = !DILocation(line: 644, column: 27, scope: !506)
!569 = !DILocation(line: 645, column: 5, scope: !506)
!570 = !DILocation(line: 645, column: 27, scope: !506)
!571 = !DILocation(line: 646, column: 3, scope: !506)
!572 = !DILocation(line: 643, column: 25, scope: !506)
!573 = distinct !{!573, !566, !571, !149}
!574 = !DILocation(line: 648, column: 3, scope: !506)
!575 = distinct !DISubprogram(name: "adpcm_dec_init", scope: !136, file: !136, line: 651, type: !137, scopeLine: 652, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!576 = !DILocation(line: 654, column: 16, scope: !575)
!577 = !DILocation(line: 660, column: 3, scope: !575)
!578 = !DILocation(line: 667, column: 9, scope: !575)
!579 = !DILocation(line: 0, scope: !575)
!580 = !DILocation(line: 667, column: 19, scope: !575)
!581 = !DILocation(line: 667, column: 3, scope: !575)
!582 = !DILocation(line: 668, column: 66, scope: !575)
!583 = !DILocation(line: 668, column: 44, scope: !575)
!584 = !DILocation(line: 668, column: 42, scope: !575)
!585 = !DILocation(line: 668, column: 5, scope: !575)
!586 = !DILocation(line: 668, column: 30, scope: !575)
!587 = !DILocation(line: 671, column: 33, scope: !575)
!588 = !DILocation(line: 671, column: 5, scope: !575)
!589 = !DILocation(line: 671, column: 30, scope: !575)
!590 = !DILocation(line: 672, column: 3, scope: !575)
!591 = !DILocation(line: 667, column: 29, scope: !575)
!592 = distinct !{!592, !581, !590, !149}
!593 = !DILocation(line: 673, column: 1, scope: !575)
!594 = distinct !DISubprogram(name: "adpcm_dec_return", scope: !136, file: !136, line: 675, type: !137, scopeLine: 676, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!595 = !DILocation(line: 680, column: 9, scope: !594)
!596 = !DILocation(line: 0, scope: !594)
!597 = !DILocation(line: 680, column: 18, scope: !594)
!598 = !DILocation(line: 680, column: 3, scope: !594)
!599 = !DILocation(line: 681, column: 5, scope: !594)
!600 = !DILocation(line: 681, column: 20, scope: !594)
!601 = !DILocation(line: 681, column: 64, scope: !594)
!602 = !DILocation(line: 681, column: 44, scope: !594)
!603 = !DILocation(line: 681, column: 42, scope: !594)
!604 = !DILocation(line: 681, column: 15, scope: !594)
!605 = !DILocation(line: 680, column: 30, scope: !594)
!606 = distinct !{!606, !598, !607, !149}
!607 = !DILocation(line: 681, column: 70, scope: !594)
!608 = !DILocation(line: 683, column: 20, scope: !594)
!609 = !DILocation(line: 683, column: 3, scope: !594)
!610 = distinct !DISubprogram(name: "adpcm_dec_adpcm_dec", scope: !136, file: !136, line: 690, type: !137, scopeLine: 691, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!611 = !DILocation(line: 695, column: 9, scope: !610)
!612 = !DILocation(line: 0, scope: !610)
!613 = !DILocation(line: 695, column: 19, scope: !610)
!614 = !DILocation(line: 695, column: 3, scope: !610)
!615 = !DILocation(line: 696, column: 23, scope: !610)
!616 = !DILocation(line: 696, column: 5, scope: !610)
!617 = !DILocation(line: 697, column: 29, scope: !610)
!618 = !DILocation(line: 697, column: 5, scope: !610)
!619 = !DILocation(line: 697, column: 27, scope: !610)
!620 = !DILocation(line: 698, column: 33, scope: !610)
!621 = !DILocation(line: 698, column: 25, scope: !610)
!622 = !DILocation(line: 698, column: 5, scope: !610)
!623 = !DILocation(line: 698, column: 31, scope: !610)
!624 = !DILocation(line: 699, column: 3, scope: !610)
!625 = !DILocation(line: 695, column: 32, scope: !610)
!626 = distinct !{!626, !614, !624, !149}
!627 = !DILocation(line: 701, column: 1, scope: !610)
!628 = distinct !DISubprogram(name: "adpcm_dec", scope: !136, file: !136, line: 704, type: !137, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !138)
!629 = !DILocation(line: 706, column: 3, scope: !628)
!630 = !DILocation(line: 707, column: 3, scope: !628)
!631 = !DILocation(line: 709, column: 3, scope: !628)
!632 = !DILocation(line: 710, column: 1, scope: !628)
!633 = distinct !DISubprogram(name: "bs", scope: !634, file: !634, line: 71, type: !137, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !138)
!634 = !DIFile(filename: "test/bs.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "bd8125837db9308c88c5ffb782c95b7d")
!635 = !DILocation(line: 73, column: 2, scope: !633)
!636 = !DILocation(line: 74, column: 1, scope: !633)
!637 = distinct !DISubprogram(name: "binary_search", scope: !634, file: !634, line: 76, type: !137, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !138)
!638 = !DILocation(line: 83, column: 3, scope: !637)
!639 = !DILocation(line: 0, scope: !637)
!640 = !DILocation(line: 80, column: 7, scope: !637)
!641 = !DILocation(line: 83, column: 14, scope: !637)
!642 = !DILocation(line: 84, column: 16, scope: !637)
!643 = !DILocation(line: 84, column: 22, scope: !637)
!644 = !DILocation(line: 85, column: 20, scope: !637)
!645 = !DILocation(line: 85, column: 24, scope: !637)
!646 = !DILocation(line: 85, column: 10, scope: !637)
!647 = !DILocation(line: 86, column: 16, scope: !637)
!648 = !DILocation(line: 87, column: 26, scope: !637)
!649 = !DILocation(line: 91, column: 5, scope: !637)
!650 = !DILocation(line: 93, column: 22, scope: !637)
!651 = !DILocation(line: 93, column: 26, scope: !637)
!652 = !DILocation(line: 93, column: 12, scope: !637)
!653 = !DILocation(line: 94, column: 11, scope: !637)
!654 = !DILocation(line: 98, column: 7, scope: !637)
!655 = !DILocation(line: 100, column: 25, scope: !637)
!656 = distinct !{!656, !638, !657, !149}
!657 = !DILocation(line: 108, column: 3, scope: !637)
!658 = !DILocation(line: 112, column: 3, scope: !637)
!659 = distinct !DISubprogram(name: "expint", scope: !660, file: !660, line: 29, type: !137, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !138)
!660 = !DIFile(filename: "test/expint.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "43d51292e0f0d67fd2201d0e410a84f4")
!661 = !DILocation(line: 33, column: 3, scope: !659)
!662 = !DILocation(line: 38, column: 1, scope: !659)
!663 = distinct !DISubprogram(name: "expint_expint", scope: !660, file: !660, line: 56, type: !137, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !138)
!664 = !DILocation(line: 66, column: 8, scope: !663)
!665 = !DILocation(line: 70, column: 7, scope: !663)
!666 = !DILocation(line: 70, column: 6, scope: !663)
!667 = !DILocation(line: 74, column: 10, scope: !663)
!668 = !DILocation(line: 84, column: 12, scope: !663)
!669 = !DILocation(line: 0, scope: !663)
!670 = !DILocation(line: 84, column: 17, scope: !663)
!671 = !DILocation(line: 84, column: 7, scope: !663)
!672 = !DILocation(line: 88, column: 22, scope: !663)
!673 = !DILocation(line: 88, column: 17, scope: !663)
!674 = !DILocation(line: 90, column: 13, scope: !663)
!675 = !DILocation(line: 92, column: 18, scope: !663)
!676 = !DILocation(line: 92, column: 20, scope: !663)
!677 = !DILocation(line: 92, column: 15, scope: !663)
!678 = !DILocation(line: 94, column: 16, scope: !663)
!679 = !DILocation(line: 94, column: 14, scope: !663)
!680 = !DILocation(line: 96, column: 16, scope: !663)
!681 = !DILocation(line: 98, column: 13, scope: !663)
!682 = !DILocation(line: 100, column: 19, scope: !663)
!683 = !DILocation(line: 100, column: 15, scope: !663)
!684 = !DILocation(line: 104, column: 20, scope: !663)
!685 = !DILocation(line: 106, column: 15, scope: !663)
!686 = !DILocation(line: 110, column: 9, scope: !663)
!687 = !DILocation(line: 84, column: 24, scope: !663)
!688 = distinct !{!688, !671, !686, !149}
!689 = !DILocation(line: 112, column: 5, scope: !663)
!690 = !DILocation(line: 122, column: 17, scope: !663)
!691 = !DILocation(line: 122, column: 13, scope: !663)
!692 = !DILocation(line: 126, column: 12, scope: !663)
!693 = !DILocation(line: 126, column: 17, scope: !663)
!694 = !DILocation(line: 126, column: 7, scope: !663)
!695 = !DILocation(line: 130, column: 21, scope: !663)
!696 = !DILocation(line: 130, column: 16, scope: !663)
!697 = !DILocation(line: 132, column: 17, scope: !663)
!698 = !DILocation(line: 132, column: 15, scope: !663)
!699 = !DILocation(line: 134, column: 27, scope: !663)
!700 = !DILocation(line: 134, column: 24, scope: !663)
!701 = !DILocation(line: 134, column: 13, scope: !663)
!702 = !DILocation(line: 142, column: 20, scope: !663)
!703 = !DILocation(line: 142, column: 15, scope: !663)
!704 = !DILocation(line: 144, column: 17, scope: !663)
!705 = distinct !{!705, !703, !706, !149}
!706 = !DILocation(line: 144, column: 29, scope: !663)
!707 = !DILocation(line: 146, column: 28, scope: !663)
!708 = !DILocation(line: 146, column: 27, scope: !663)
!709 = !DILocation(line: 146, column: 22, scope: !663)
!710 = !DILocation(line: 154, column: 9, scope: !663)
!711 = !DILocation(line: 150, column: 15, scope: !663)
!712 = !DILocation(line: 126, column: 24, scope: !663)
!713 = distinct !{!713, !694, !710, !149}
!714 = !DILocation(line: 160, column: 3, scope: !663)
!715 = !DILocation(line: 162, column: 1, scope: !663)
!716 = distinct !DISubprogram(name: "foo", scope: !660, file: !660, line: 40, type: !137, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !138)
!717 = !DILocation(line: 44, column: 13, scope: !716)
!718 = !DILocation(line: 44, column: 22, scope: !716)
!719 = !DILocation(line: 44, column: 19, scope: !716)
!720 = !DILocation(line: 44, column: 3, scope: !716)
!721 = distinct !DISubprogram(name: "lms_sinus", scope: !722, file: !722, line: 57, type: !137, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !138)
!722 = !DIFile(filename: "test/lms.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!723 = !DILocation(line: 58, column: 13, scope: !721)
!724 = !DILocation(line: 59, column: 9, scope: !721)
!725 = !DILocation(line: 59, column: 7, scope: !721)
!726 = !DILocation(line: 60, column: 27, scope: !721)
!727 = !DILocation(line: 60, column: 24, scope: !721)
!728 = !DILocation(line: 60, column: 59, scope: !721)
!729 = !DILocation(line: 61, column: 48, scope: !721)
!730 = !DILocation(line: 60, column: 13, scope: !721)
!731 = !DILocation(line: 60, column: 12, scope: !721)
!732 = !DILocation(line: 60, column: 5, scope: !721)
!733 = !DILocation(line: 62, column: 24, scope: !721)
!734 = !DILocation(line: 62, column: 21, scope: !721)
!735 = !DILocation(line: 62, column: 52, scope: !721)
!736 = !DILocation(line: 62, column: 10, scope: !721)
!737 = !DILocation(line: 62, column: 3, scope: !721)
!738 = !DILocation(line: 0, scope: !721)
!739 = !DILocation(line: 63, column: 1, scope: !721)
!740 = distinct !DISubprogram(name: "lms_init", scope: !722, file: !722, line: 65, type: !137, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !138)
!741 = !DILocation(line: 69, column: 16, scope: !740)
!742 = !DILocation(line: 73, column: 5, scope: !740)
!743 = !DILocation(line: 80, column: 5, scope: !740)
!744 = distinct !{!744, !742, !745, !149}
!745 = !DILocation(line: 80, column: 21, scope: !740)
!746 = !DILocation(line: 85, column: 20, scope: !740)
!747 = !DILocation(line: 85, column: 33, scope: !740)
!748 = !DILocation(line: 85, column: 18, scope: !740)
!749 = !DILocation(line: 88, column: 45, scope: !740)
!750 = !DILocation(line: 0, scope: !740)
!751 = !DILocation(line: 88, column: 54, scope: !740)
!752 = !DILocation(line: 88, column: 40, scope: !740)
!753 = !DILocation(line: 91, column: 5, scope: !740)
!754 = !DILocation(line: 93, column: 19, scope: !740)
!755 = !DILocation(line: 93, column: 32, scope: !740)
!756 = !DILocation(line: 94, column: 18, scope: !740)
!757 = !DILocation(line: 94, column: 12, scope: !740)
!758 = !DILocation(line: 94, column: 50, scope: !740)
!759 = !DILocation(line: 95, column: 19, scope: !740)
!760 = !DILocation(line: 95, column: 32, scope: !740)
!761 = !DILocation(line: 96, column: 18, scope: !740)
!762 = !DILocation(line: 96, column: 12, scope: !740)
!763 = !DILocation(line: 96, column: 50, scope: !740)
!764 = !DILocation(line: 97, column: 24, scope: !740)
!765 = !DILocation(line: 97, column: 19, scope: !740)
!766 = !DILocation(line: 98, column: 5, scope: !740)
!767 = !DILocation(line: 98, column: 16, scope: !740)
!768 = distinct !{!768, !753, !769, !149}
!769 = !DILocation(line: 98, column: 21, scope: !740)
!770 = !DILocation(line: 102, column: 22, scope: !740)
!771 = !DILocation(line: 103, column: 20, scope: !740)
!772 = !DILocation(line: 103, column: 33, scope: !740)
!773 = !DILocation(line: 103, column: 5, scope: !740)
!774 = !DILocation(line: 103, column: 18, scope: !740)
!775 = !DILocation(line: 104, column: 36, scope: !740)
!776 = !DILocation(line: 104, column: 24, scope: !740)
!777 = !DILocation(line: 104, column: 41, scope: !740)
!778 = !DILocation(line: 104, column: 17, scope: !740)
!779 = !DILocation(line: 104, column: 5, scope: !740)
!780 = !DILocation(line: 104, column: 22, scope: !740)
!781 = !DILocation(line: 105, column: 3, scope: !740)
!782 = !DILocation(line: 88, column: 61, scope: !740)
!783 = distinct !{!783, !752, !781, !149}
!784 = !DILocation(line: 106, column: 1, scope: !740)
!785 = distinct !DISubprogram(name: "lms_calc", scope: !722, file: !722, line: 108, type: !137, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !138)
!786 = !DILocation(line: 113, column: 43, scope: !785)
!787 = !DILocation(line: 0, scope: !785)
!788 = !DILocation(line: 113, column: 52, scope: !785)
!789 = !DILocation(line: 113, column: 38, scope: !785)
!790 = !DILocation(line: 114, column: 17, scope: !785)
!791 = !DILocation(line: 114, column: 7, scope: !785)
!792 = !DILocation(line: 113, column: 63, scope: !785)
!793 = !DILocation(line: 113, column: 74, scope: !785)
!794 = !DILocation(line: 113, column: 59, scope: !785)
!795 = distinct !{!795, !789, !796, !149}
!796 = !DILocation(line: 114, column: 20, scope: !785)
!797 = !DILocation(line: 115, column: 14, scope: !785)
!798 = !DILocation(line: 119, column: 18, scope: !785)
!799 = !DILocation(line: 119, column: 31, scope: !785)
!800 = !DILocation(line: 119, column: 43, scope: !785)
!801 = !DILocation(line: 119, column: 40, scope: !785)
!802 = !DILocation(line: 119, column: 26, scope: !785)
!803 = !DILocation(line: 119, column: 10, scope: !785)
!804 = !DILocation(line: 121, column: 43, scope: !785)
!805 = !DILocation(line: 121, column: 52, scope: !785)
!806 = !DILocation(line: 121, column: 38, scope: !785)
!807 = !DILocation(line: 121, column: 63, scope: !785)
!808 = !DILocation(line: 122, column: 7, scope: !785)
!809 = !DILocation(line: 122, column: 14, scope: !785)
!810 = !DILocation(line: 121, column: 65, scope: !785)
!811 = !DILocation(line: 121, column: 59, scope: !785)
!812 = distinct !{!812, !806, !813, !149}
!813 = !DILocation(line: 122, column: 23, scope: !785)
!814 = !DILocation(line: 125, column: 21, scope: !785)
!815 = !DILocation(line: 125, column: 16, scope: !785)
!816 = !DILocation(line: 125, column: 29, scope: !785)
!817 = !DILocation(line: 125, column: 26, scope: !785)
!818 = !DILocation(line: 127, column: 43, scope: !785)
!819 = !DILocation(line: 127, column: 52, scope: !785)
!820 = !DILocation(line: 127, column: 38, scope: !785)
!821 = !DILocation(line: 128, column: 11, scope: !785)
!822 = !DILocation(line: 127, column: 63, scope: !785)
!823 = !DILocation(line: 127, column: 68, scope: !785)
!824 = !DILocation(line: 127, column: 59, scope: !785)
!825 = distinct !{!825, !820, !826, !149}
!826 = !DILocation(line: 128, column: 20, scope: !785)
!827 = !DILocation(line: 130, column: 3, scope: !785)
!828 = distinct !DISubprogram(name: "lms_main", scope: !722, file: !722, line: 133, type: !137, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !138)
!829 = !DILocation(line: 137, column: 9, scope: !828)
!830 = !DILocation(line: 139, column: 43, scope: !828)
!831 = !DILocation(line: 0, scope: !828)
!832 = !DILocation(line: 139, column: 52, scope: !828)
!833 = !DILocation(line: 139, column: 38, scope: !828)
!834 = !DILocation(line: 140, column: 5, scope: !828)
!835 = !DILocation(line: 140, column: 10, scope: !828)
!836 = !DILocation(line: 141, column: 5, scope: !828)
!837 = !DILocation(line: 141, column: 16, scope: !828)
!838 = !DILocation(line: 142, column: 3, scope: !828)
!839 = !DILocation(line: 139, column: 59, scope: !828)
!840 = distinct !{!840, !833, !838, !149}
!841 = !DILocation(line: 144, column: 45, scope: !828)
!842 = !DILocation(line: 144, column: 54, scope: !828)
!843 = !DILocation(line: 144, column: 40, scope: !828)
!844 = !DILocation(line: 145, column: 30, scope: !828)
!845 = !DILocation(line: 145, column: 56, scope: !828)
!846 = !DILocation(line: 145, column: 44, scope: !828)
!847 = !DILocation(line: 145, column: 62, scope: !828)
!848 = !DILocation(line: 146, column: 52, scope: !828)
!849 = !DILocation(line: 145, column: 21, scope: !828)
!850 = !DILocation(line: 145, column: 5, scope: !828)
!851 = !DILocation(line: 145, column: 19, scope: !828)
!852 = !DILocation(line: 147, column: 3, scope: !828)
!853 = !DILocation(line: 144, column: 60, scope: !828)
!854 = distinct !{!854, !843, !852, !149}
!855 = !DILocation(line: 148, column: 1, scope: !828)
!856 = distinct !DISubprogram(name: "lms_return", scope: !722, file: !722, line: 150, type: !137, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !138)
!857 = !DILocation(line: 154, column: 45, scope: !856)
!858 = !DILocation(line: 0, scope: !856)
!859 = !DILocation(line: 154, column: 54, scope: !856)
!860 = !DILocation(line: 154, column: 40, scope: !856)
!861 = !DILocation(line: 156, column: 3, scope: !856)
!862 = !DILocation(line: 155, column: 12, scope: !856)
!863 = !DILocation(line: 155, column: 9, scope: !856)
!864 = !DILocation(line: 154, column: 60, scope: !856)
!865 = distinct !{!865, !860, !861, !149}
!866 = !DILocation(line: 158, column: 33, scope: !856)
!867 = !DILocation(line: 158, column: 26, scope: !856)
!868 = !DILocation(line: 158, column: 10, scope: !856)
!869 = !DILocation(line: 158, column: 3, scope: !856)
!870 = distinct !DISubprogram(name: "lms", scope: !722, file: !722, line: 163, type: !137, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !138)
!871 = !DILocation(line: 164, column: 3, scope: !870)
!872 = !DILocation(line: 165, column: 3, scope: !870)
!873 = !DILocation(line: 166, column: 3, scope: !870)
!874 = !DILocation(line: 167, column: 1, scope: !870)
!875 = distinct !DISubprogram(name: "matmult", scope: !876, file: !876, line: 52, type: !137, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !138)
!876 = !DIFile(filename: "test/matmult.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "9a184d8c1a3e835ab24813f22529d2a5")
!877 = !DILocation(line: 54, column: 4, scope: !875)
!878 = !DILocation(line: 61, column: 4, scope: !875)
!879 = !DILocation(line: 62, column: 1, scope: !875)
!880 = distinct !DISubprogram(name: "InitSeed", scope: !876, file: !876, line: 65, type: !137, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !138)
!881 = !DILocation(line: 73, column: 8, scope: !880)
!882 = !DILocation(line: 74, column: 1, scope: !880)
!883 = distinct !DISubprogram(name: "Test", scope: !876, file: !876, line: 77, type: !137, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !138)
!884 = !DILocation(line: 88, column: 4, scope: !883)
!885 = !DILocation(line: 89, column: 4, scope: !883)
!886 = !DILocation(line: 96, column: 4, scope: !883)
!887 = !DILocation(line: 105, column: 1, scope: !883)
!888 = distinct !DISubprogram(name: "Initialize", scope: !876, file: !876, line: 108, type: !137, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !138)
!889 = !DILocation(line: 115, column: 9, scope: !888)
!890 = !DILocation(line: 0, scope: !888)
!891 = !DILocation(line: 115, column: 36, scope: !888)
!892 = !DILocation(line: 115, column: 4, scope: !888)
!893 = !DILocation(line: 116, column: 12, scope: !888)
!894 = !DILocation(line: 116, column: 39, scope: !888)
!895 = !DILocation(line: 116, column: 7, scope: !888)
!896 = !DILocation(line: 117, column: 42, scope: !888)
!897 = !DILocation(line: 117, column: 10, scope: !888)
!898 = !DILocation(line: 117, column: 40, scope: !888)
!899 = !DILocation(line: 116, column: 63, scope: !888)
!900 = distinct !{!900, !895, !901, !149}
!901 = !DILocation(line: 117, column: 56, scope: !888)
!902 = !DILocation(line: 115, column: 60, scope: !888)
!903 = distinct !{!903, !892, !901, !149}
!904 = !DILocation(line: 118, column: 1, scope: !888)
!905 = distinct !DISubprogram(name: "Multiply", scope: !876, file: !876, line: 147, type: !137, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !138)
!906 = !DILocation(line: 154, column: 9, scope: !905)
!907 = !DILocation(line: 0, scope: !905)
!908 = !DILocation(line: 154, column: 26, scope: !905)
!909 = !DILocation(line: 154, column: 4, scope: !905)
!910 = !DILocation(line: 155, column: 12, scope: !905)
!911 = !DILocation(line: 155, column: 29, scope: !905)
!912 = !DILocation(line: 155, column: 7, scope: !905)
!913 = !DILocation(line: 157, column: 10, scope: !905)
!914 = !DILocation(line: 157, column: 29, scope: !905)
!915 = !DILocation(line: 158, column: 15, scope: !905)
!916 = !DILocation(line: 158, column: 32, scope: !905)
!917 = !DILocation(line: 158, column: 10, scope: !905)
!918 = !DILocation(line: 160, column: 16, scope: !905)
!919 = !DILocation(line: 160, column: 34, scope: !905)
!920 = !DILocation(line: 160, column: 32, scope: !905)
!921 = !DILocation(line: 159, column: 13, scope: !905)
!922 = !DILocation(line: 159, column: 32, scope: !905)
!923 = !DILocation(line: 158, column: 51, scope: !905)
!924 = distinct !{!924, !917, !925, !149}
!925 = !DILocation(line: 160, column: 48, scope: !905)
!926 = !DILocation(line: 161, column: 8, scope: !905)
!927 = !DILocation(line: 155, column: 48, scope: !905)
!928 = distinct !{!928, !912, !926, !149}
!929 = !DILocation(line: 154, column: 45, scope: !905)
!930 = distinct !{!930, !909, !926, !149}
!931 = !DILocation(line: 162, column: 1, scope: !905)
!932 = distinct !DISubprogram(name: "RandomInteger", scope: !876, file: !876, line: 121, type: !137, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !138)
!933 = !DILocation(line: 126, column: 13, scope: !932)
!934 = !DILocation(line: 126, column: 18, scope: !932)
!935 = !DILocation(line: 126, column: 25, scope: !932)
!936 = !DILocation(line: 126, column: 31, scope: !932)
!937 = !DILocation(line: 126, column: 9, scope: !932)
!938 = !DILocation(line: 127, column: 4, scope: !932)
!939 = distinct !DISubprogram(name: "rad2deg_init", scope: !940, file: !940, line: 47, type: !137, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !138)
!940 = !DIFile(filename: "test/rad2deg.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!941 = !DILocation(line: 48, column: 13, scope: !939)
!942 = !DILocation(line: 49, column: 13, scope: !939)
!943 = !DILocation(line: 50, column: 1, scope: !939)
!944 = distinct !DISubprogram(name: "rad2deg_return", scope: !940, file: !940, line: 56, type: !137, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !138)
!945 = !DILocation(line: 57, column: 14, scope: !944)
!946 = !DILocation(line: 59, column: 12, scope: !944)
!947 = !DILocation(line: 59, column: 7, scope: !944)
!948 = !DILocation(line: 60, column: 5, scope: !944)
!949 = !DILocation(line: 62, column: 5, scope: !944)
!950 = !DILocation(line: 0, scope: !944)
!951 = !DILocation(line: 63, column: 1, scope: !944)
!952 = distinct !DISubprogram(name: "rad2deg_main", scope: !940, file: !940, line: 69, type: !137, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !138)
!953 = !DILocation(line: 70, column: 45, scope: !952)
!954 = !DILocation(line: 0, scope: !952)
!955 = !DILocation(line: 71, column: 55, scope: !952)
!956 = !DILocation(line: 70, column: 40, scope: !952)
!957 = !DILocation(line: 73, column: 20, scope: !952)
!958 = !DILocation(line: 73, column: 17, scope: !952)
!959 = !DILocation(line: 73, column: 7, scope: !952)
!960 = !DILocation(line: 72, column: 55, scope: !952)
!961 = distinct !{!961, !956, !957, !149}
!962 = !DILocation(line: 74, column: 1, scope: !952)
!963 = distinct !DISubprogram(name: "rad2deg", scope: !940, file: !940, line: 76, type: !137, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !138)
!964 = !DILocation(line: 77, column: 3, scope: !963)
!965 = !DILocation(line: 78, column: 3, scope: !963)
!966 = !DILocation(line: 79, column: 3, scope: !963)
!967 = !DILocation(line: 80, column: 1, scope: !963)
!968 = distinct !DISubprogram(name: "__absvdi2", scope: !13, file: !13, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !138)
!969 = !DILocation(line: 25, column: 11, scope: !968)
!970 = !DILocation(line: 25, column: 9, scope: !968)
!971 = !DILocation(line: 26, column: 9, scope: !968)
!972 = !DILocation(line: 28, column: 20, scope: !968)
!973 = !DILocation(line: 28, column: 5, scope: !968)
!974 = distinct !DISubprogram(name: "compilerrt_abort_impl", scope: !65, file: !65, line: 57, type: !137, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !64, retainedNodes: !138)
!975 = !DILocation(line: 59, column: 1, scope: !974)
!976 = distinct !DISubprogram(name: "__absvsi2", scope: !15, file: !15, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !138)
!977 = !DILocation(line: 25, column: 11, scope: !976)
!978 = !DILocation(line: 25, column: 9, scope: !976)
!979 = !DILocation(line: 26, column: 9, scope: !976)
!980 = !DILocation(line: 28, column: 20, scope: !976)
!981 = !DILocation(line: 28, column: 5, scope: !976)
!982 = distinct !DISubprogram(name: "__addvdi3", scope: !19, file: !19, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !138)
!983 = !DILocation(line: 24, column: 27, scope: !982)
!984 = !DILocation(line: 25, column: 11, scope: !982)
!985 = !DILocation(line: 25, column: 9, scope: !982)
!986 = !DILocation(line: 27, column: 15, scope: !982)
!987 = !DILocation(line: 27, column: 13, scope: !982)
!988 = !DILocation(line: 28, column: 13, scope: !982)
!989 = !DILocation(line: 29, column: 5, scope: !982)
!990 = !DILocation(line: 32, column: 15, scope: !982)
!991 = !DILocation(line: 32, column: 13, scope: !982)
!992 = !DILocation(line: 33, column: 13, scope: !982)
!993 = !DILocation(line: 35, column: 5, scope: !982)
!994 = distinct !DISubprogram(name: "__addvsi3", scope: !21, file: !21, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !138)
!995 = !DILocation(line: 24, column: 27, scope: !994)
!996 = !DILocation(line: 25, column: 11, scope: !994)
!997 = !DILocation(line: 25, column: 9, scope: !994)
!998 = !DILocation(line: 27, column: 15, scope: !994)
!999 = !DILocation(line: 27, column: 13, scope: !994)
!1000 = !DILocation(line: 28, column: 13, scope: !994)
!1001 = !DILocation(line: 29, column: 5, scope: !994)
!1002 = !DILocation(line: 32, column: 15, scope: !994)
!1003 = !DILocation(line: 32, column: 13, scope: !994)
!1004 = !DILocation(line: 33, column: 13, scope: !994)
!1005 = !DILocation(line: 35, column: 5, scope: !994)
!1006 = distinct !DISubprogram(name: "__ashldi3", scope: !25, file: !25, line: 24, type: !137, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !138)
!1007 = !DILocation(line: 29, column: 11, scope: !1006)
!1008 = !DILocation(line: 29, column: 15, scope: !1006)
!1009 = !DILocation(line: 30, column: 11, scope: !1006)
!1010 = !DILocation(line: 30, column: 9, scope: !1006)
!1011 = !DILocation(line: 32, column: 18, scope: !1006)
!1012 = !DILocation(line: 32, column: 22, scope: !1006)
!1013 = !DILocation(line: 33, column: 33, scope: !1006)
!1014 = !DILocation(line: 33, column: 43, scope: !1006)
!1015 = !DILocation(line: 33, column: 37, scope: !1006)
!1016 = !DILocation(line: 33, column: 16, scope: !1006)
!1017 = !DILocation(line: 33, column: 18, scope: !1006)
!1018 = !DILocation(line: 33, column: 23, scope: !1006)
!1019 = !DILocation(line: 34, column: 5, scope: !1006)
!1020 = !DILocation(line: 37, column: 15, scope: !1006)
!1021 = !DILocation(line: 37, column: 13, scope: !1006)
!1022 = !DILocation(line: 38, column: 13, scope: !1006)
!1023 = !DILocation(line: 39, column: 33, scope: !1006)
!1024 = !DILocation(line: 39, column: 37, scope: !1006)
!1025 = !DILocation(line: 39, column: 18, scope: !1006)
!1026 = !DILocation(line: 39, column: 23, scope: !1006)
!1027 = !DILocation(line: 40, column: 32, scope: !1006)
!1028 = !DILocation(line: 40, column: 34, scope: !1006)
!1029 = !DILocation(line: 40, column: 39, scope: !1006)
!1030 = !DILocation(line: 40, column: 56, scope: !1006)
!1031 = !DILocation(line: 40, column: 77, scope: !1006)
!1032 = !DILocation(line: 40, column: 60, scope: !1006)
!1033 = !DILocation(line: 40, column: 45, scope: !1006)
!1034 = !DILocation(line: 40, column: 16, scope: !1006)
!1035 = !DILocation(line: 40, column: 18, scope: !1006)
!1036 = !DILocation(line: 40, column: 23, scope: !1006)
!1037 = !DILocation(line: 42, column: 19, scope: !1006)
!1038 = !DILocation(line: 42, column: 5, scope: !1006)
!1039 = !DILocation(line: 0, scope: !1006)
!1040 = !DILocation(line: 43, column: 1, scope: !1006)
!1041 = distinct !DISubprogram(name: "__ashrdi3", scope: !29, file: !29, line: 24, type: !137, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !138)
!1042 = !DILocation(line: 29, column: 11, scope: !1041)
!1043 = !DILocation(line: 29, column: 15, scope: !1041)
!1044 = !DILocation(line: 30, column: 11, scope: !1041)
!1045 = !DILocation(line: 30, column: 9, scope: !1041)
!1046 = !DILocation(line: 33, column: 31, scope: !1041)
!1047 = !DILocation(line: 33, column: 33, scope: !1041)
!1048 = !DILocation(line: 33, column: 38, scope: !1041)
!1049 = !DILocation(line: 33, column: 16, scope: !1041)
!1050 = !DILocation(line: 33, column: 18, scope: !1041)
!1051 = !DILocation(line: 33, column: 23, scope: !1041)
!1052 = !DILocation(line: 34, column: 30, scope: !1041)
!1053 = !DILocation(line: 34, column: 32, scope: !1041)
!1054 = !DILocation(line: 34, column: 43, scope: !1041)
!1055 = !DILocation(line: 34, column: 37, scope: !1041)
!1056 = !DILocation(line: 34, column: 18, scope: !1041)
!1057 = !DILocation(line: 34, column: 22, scope: !1041)
!1058 = !DILocation(line: 35, column: 5, scope: !1041)
!1059 = !DILocation(line: 38, column: 15, scope: !1041)
!1060 = !DILocation(line: 38, column: 13, scope: !1041)
!1061 = !DILocation(line: 39, column: 13, scope: !1041)
!1062 = !DILocation(line: 40, column: 32, scope: !1041)
!1063 = !DILocation(line: 40, column: 34, scope: !1041)
!1064 = !DILocation(line: 40, column: 39, scope: !1041)
!1065 = !DILocation(line: 40, column: 16, scope: !1041)
!1066 = !DILocation(line: 40, column: 18, scope: !1041)
!1067 = !DILocation(line: 40, column: 24, scope: !1041)
!1068 = !DILocation(line: 41, column: 31, scope: !1041)
!1069 = !DILocation(line: 41, column: 33, scope: !1041)
!1070 = !DILocation(line: 41, column: 55, scope: !1041)
!1071 = !DILocation(line: 41, column: 38, scope: !1041)
!1072 = !DILocation(line: 41, column: 72, scope: !1041)
!1073 = !DILocation(line: 41, column: 76, scope: !1041)
!1074 = !DILocation(line: 41, column: 61, scope: !1041)
!1075 = !DILocation(line: 41, column: 18, scope: !1041)
!1076 = !DILocation(line: 41, column: 22, scope: !1041)
!1077 = !DILocation(line: 43, column: 19, scope: !1041)
!1078 = !DILocation(line: 43, column: 5, scope: !1041)
!1079 = !DILocation(line: 0, scope: !1041)
!1080 = !DILocation(line: 44, column: 1, scope: !1041)
!1081 = distinct !DISubprogram(name: "__clzdi2", scope: !33, file: !33, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !138)
!1082 = !DILocation(line: 25, column: 7, scope: !1081)
!1083 = !DILocation(line: 25, column: 11, scope: !1081)
!1084 = !DILocation(line: 26, column: 26, scope: !1081)
!1085 = !DILocation(line: 26, column: 28, scope: !1081)
!1086 = !DILocation(line: 26, column: 33, scope: !1081)
!1087 = !DILocation(line: 27, column: 29, scope: !1081)
!1088 = !DILocation(line: 27, column: 31, scope: !1081)
!1089 = !DILocation(line: 27, column: 49, scope: !1081)
!1090 = !DILocation(line: 27, column: 42, scope: !1081)
!1091 = !DILocation(line: 27, column: 12, scope: !1081)
!1092 = !{i32 0, i32 33}
!1093 = !DILocation(line: 28, column: 15, scope: !1081)
!1094 = !DILocation(line: 27, column: 59, scope: !1081)
!1095 = !DILocation(line: 27, column: 5, scope: !1081)
!1096 = distinct !DISubprogram(name: "__clzsi2", scope: !35, file: !35, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !138)
!1097 = !DILocation(line: 25, column: 34, scope: !1096)
!1098 = !DILocation(line: 25, column: 40, scope: !1096)
!1099 = !DILocation(line: 26, column: 14, scope: !1096)
!1100 = !DILocation(line: 26, column: 7, scope: !1096)
!1101 = !DILocation(line: 29, column: 13, scope: !1096)
!1102 = !DILocation(line: 29, column: 23, scope: !1096)
!1103 = !DILocation(line: 29, column: 29, scope: !1096)
!1104 = !DILocation(line: 30, column: 13, scope: !1096)
!1105 = !DILocation(line: 30, column: 7, scope: !1096)
!1106 = !DILocation(line: 31, column: 7, scope: !1096)
!1107 = !DILocation(line: 33, column: 13, scope: !1096)
!1108 = !DILocation(line: 33, column: 21, scope: !1096)
!1109 = !DILocation(line: 33, column: 27, scope: !1096)
!1110 = !DILocation(line: 34, column: 13, scope: !1096)
!1111 = !DILocation(line: 34, column: 7, scope: !1096)
!1112 = !DILocation(line: 35, column: 7, scope: !1096)
!1113 = !DILocation(line: 37, column: 13, scope: !1096)
!1114 = !DILocation(line: 37, column: 20, scope: !1096)
!1115 = !DILocation(line: 37, column: 26, scope: !1096)
!1116 = !DILocation(line: 38, column: 13, scope: !1096)
!1117 = !DILocation(line: 38, column: 7, scope: !1096)
!1118 = !DILocation(line: 39, column: 7, scope: !1096)
!1119 = !DILocation(line: 52, column: 20, scope: !1096)
!1120 = !DILocation(line: 52, column: 37, scope: !1096)
!1121 = !DILocation(line: 52, column: 25, scope: !1096)
!1122 = !DILocation(line: 52, column: 14, scope: !1096)
!1123 = !DILocation(line: 52, column: 5, scope: !1096)
!1124 = distinct !DISubprogram(name: "__cmpdi2", scope: !39, file: !39, line: 23, type: !137, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !138)
!1125 = !DILocation(line: 26, column: 7, scope: !1124)
!1126 = !DILocation(line: 26, column: 11, scope: !1124)
!1127 = !DILocation(line: 28, column: 7, scope: !1124)
!1128 = !DILocation(line: 28, column: 11, scope: !1124)
!1129 = !DILocation(line: 29, column: 11, scope: !1124)
!1130 = !DILocation(line: 29, column: 13, scope: !1124)
!1131 = !DILocation(line: 29, column: 22, scope: !1124)
!1132 = !DILocation(line: 29, column: 24, scope: !1124)
!1133 = !DILocation(line: 29, column: 18, scope: !1124)
!1134 = !DILocation(line: 29, column: 9, scope: !1124)
!1135 = !DILocation(line: 30, column: 9, scope: !1124)
!1136 = !DILocation(line: 31, column: 11, scope: !1124)
!1137 = !DILocation(line: 31, column: 13, scope: !1124)
!1138 = !DILocation(line: 31, column: 22, scope: !1124)
!1139 = !DILocation(line: 31, column: 24, scope: !1124)
!1140 = !DILocation(line: 31, column: 18, scope: !1124)
!1141 = !DILocation(line: 31, column: 9, scope: !1124)
!1142 = !DILocation(line: 32, column: 9, scope: !1124)
!1143 = !DILocation(line: 33, column: 13, scope: !1124)
!1144 = !DILocation(line: 33, column: 23, scope: !1124)
!1145 = !DILocation(line: 33, column: 17, scope: !1124)
!1146 = !DILocation(line: 33, column: 9, scope: !1124)
!1147 = !DILocation(line: 34, column: 9, scope: !1124)
!1148 = !DILocation(line: 35, column: 13, scope: !1124)
!1149 = !DILocation(line: 35, column: 23, scope: !1124)
!1150 = !DILocation(line: 35, column: 17, scope: !1124)
!1151 = !DILocation(line: 35, column: 9, scope: !1124)
!1152 = !DILocation(line: 36, column: 9, scope: !1124)
!1153 = !DILocation(line: 37, column: 5, scope: !1124)
!1154 = !DILocation(line: 0, scope: !1124)
!1155 = !DILocation(line: 38, column: 1, scope: !1124)
!1156 = distinct !DISubprogram(name: "__aeabi_lcmp", scope: !39, file: !39, line: 46, type: !137, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !38, retainedNodes: !138)
!1157 = !DILocation(line: 48, column: 9, scope: !1156)
!1158 = !DILocation(line: 48, column: 24, scope: !1156)
!1159 = !DILocation(line: 48, column: 2, scope: !1156)
!1160 = distinct !DISubprogram(name: "__ctzdi2", scope: !43, file: !43, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !138)
!1161 = !DILocation(line: 25, column: 7, scope: !1160)
!1162 = !DILocation(line: 25, column: 11, scope: !1160)
!1163 = !DILocation(line: 26, column: 28, scope: !1160)
!1164 = !DILocation(line: 26, column: 32, scope: !1160)
!1165 = !DILocation(line: 27, column: 29, scope: !1160)
!1166 = !DILocation(line: 27, column: 31, scope: !1160)
!1167 = !DILocation(line: 27, column: 41, scope: !1160)
!1168 = !DILocation(line: 27, column: 12, scope: !1160)
!1169 = !DILocation(line: 28, column: 18, scope: !1160)
!1170 = !DILocation(line: 27, column: 59, scope: !1160)
!1171 = !DILocation(line: 27, column: 5, scope: !1160)
!1172 = distinct !DISubprogram(name: "__ctzsi2", scope: !45, file: !45, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !138)
!1173 = !DILocation(line: 25, column: 20, scope: !1172)
!1174 = !DILocation(line: 25, column: 34, scope: !1172)
!1175 = !DILocation(line: 25, column: 40, scope: !1172)
!1176 = !DILocation(line: 26, column: 7, scope: !1172)
!1177 = !DILocation(line: 29, column: 13, scope: !1172)
!1178 = !DILocation(line: 29, column: 23, scope: !1172)
!1179 = !DILocation(line: 29, column: 29, scope: !1172)
!1180 = !DILocation(line: 30, column: 7, scope: !1172)
!1181 = !DILocation(line: 31, column: 7, scope: !1172)
!1182 = !DILocation(line: 33, column: 13, scope: !1172)
!1183 = !DILocation(line: 33, column: 21, scope: !1172)
!1184 = !DILocation(line: 33, column: 27, scope: !1172)
!1185 = !DILocation(line: 34, column: 7, scope: !1172)
!1186 = !DILocation(line: 35, column: 7, scope: !1172)
!1187 = !DILocation(line: 37, column: 13, scope: !1172)
!1188 = !DILocation(line: 37, column: 20, scope: !1172)
!1189 = !DILocation(line: 37, column: 26, scope: !1172)
!1190 = !DILocation(line: 38, column: 7, scope: !1172)
!1191 = !DILocation(line: 40, column: 7, scope: !1172)
!1192 = !DILocation(line: 56, column: 25, scope: !1172)
!1193 = !DILocation(line: 56, column: 20, scope: !1172)
!1194 = !DILocation(line: 56, column: 44, scope: !1172)
!1195 = !DILocation(line: 56, column: 32, scope: !1172)
!1196 = !DILocation(line: 56, column: 14, scope: !1172)
!1197 = !DILocation(line: 56, column: 5, scope: !1172)
!1198 = distinct !DISubprogram(name: "__divdi3", scope: !49, file: !49, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !138)
!1199 = !DILocation(line: 23, column: 20, scope: !1198)
!1200 = !DILocation(line: 24, column: 20, scope: !1198)
!1201 = !DILocation(line: 25, column: 12, scope: !1198)
!1202 = !DILocation(line: 25, column: 19, scope: !1198)
!1203 = !DILocation(line: 26, column: 12, scope: !1198)
!1204 = !DILocation(line: 26, column: 19, scope: !1198)
!1205 = !DILocation(line: 27, column: 9, scope: !1198)
!1206 = !DILocation(line: 28, column: 13, scope: !1198)
!1207 = !DILocation(line: 28, column: 44, scope: !1198)
!1208 = !DILocation(line: 28, column: 51, scope: !1198)
!1209 = !DILocation(line: 28, column: 5, scope: !1198)
!1210 = distinct !DISubprogram(name: "__udivmoddi4", scope: !107, file: !107, line: 24, type: !137, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !106, retainedNodes: !138)
!1211 = !DILocation(line: 29, column: 7, scope: !1210)
!1212 = !DILocation(line: 29, column: 11, scope: !1210)
!1213 = !DILocation(line: 31, column: 7, scope: !1210)
!1214 = !DILocation(line: 31, column: 11, scope: !1210)
!1215 = !DILocation(line: 36, column: 11, scope: !1210)
!1216 = !DILocation(line: 36, column: 13, scope: !1210)
!1217 = !DILocation(line: 36, column: 18, scope: !1210)
!1218 = !DILocation(line: 36, column: 9, scope: !1210)
!1219 = !DILocation(line: 38, column: 15, scope: !1210)
!1220 = !DILocation(line: 38, column: 17, scope: !1210)
!1221 = !DILocation(line: 38, column: 22, scope: !1210)
!1222 = !DILocation(line: 38, column: 13, scope: !1210)
!1223 = !DILocation(line: 44, column: 17, scope: !1210)
!1224 = !DILocation(line: 45, column: 28, scope: !1210)
!1225 = !DILocation(line: 45, column: 38, scope: !1210)
!1226 = !DILocation(line: 45, column: 32, scope: !1210)
!1227 = !DILocation(line: 45, column: 24, scope: !1210)
!1228 = !DILocation(line: 45, column: 22, scope: !1210)
!1229 = !DILocation(line: 45, column: 17, scope: !1210)
!1230 = !DILocation(line: 46, column: 24, scope: !1210)
!1231 = !DILocation(line: 46, column: 34, scope: !1210)
!1232 = !DILocation(line: 46, column: 28, scope: !1210)
!1233 = !DILocation(line: 46, column: 20, scope: !1210)
!1234 = !DILocation(line: 46, column: 13, scope: !1210)
!1235 = !DILocation(line: 52, column: 13, scope: !1210)
!1236 = !DILocation(line: 53, column: 24, scope: !1210)
!1237 = !DILocation(line: 53, column: 20, scope: !1210)
!1238 = !DILocation(line: 53, column: 18, scope: !1210)
!1239 = !DILocation(line: 53, column: 13, scope: !1210)
!1240 = !DILocation(line: 54, column: 9, scope: !1210)
!1241 = !DILocation(line: 57, column: 13, scope: !1210)
!1242 = !DILocation(line: 57, column: 17, scope: !1210)
!1243 = !DILocation(line: 57, column: 9, scope: !1210)
!1244 = !DILocation(line: 59, column: 15, scope: !1210)
!1245 = !DILocation(line: 59, column: 17, scope: !1210)
!1246 = !DILocation(line: 59, column: 22, scope: !1210)
!1247 = !DILocation(line: 59, column: 13, scope: !1210)
!1248 = !DILocation(line: 65, column: 17, scope: !1210)
!1249 = !DILocation(line: 66, column: 26, scope: !1210)
!1250 = !DILocation(line: 66, column: 28, scope: !1210)
!1251 = !DILocation(line: 66, column: 39, scope: !1210)
!1252 = !DILocation(line: 66, column: 33, scope: !1210)
!1253 = !DILocation(line: 66, column: 24, scope: !1210)
!1254 = !DILocation(line: 66, column: 22, scope: !1210)
!1255 = !DILocation(line: 66, column: 17, scope: !1210)
!1256 = !DILocation(line: 67, column: 22, scope: !1210)
!1257 = !DILocation(line: 67, column: 24, scope: !1210)
!1258 = !DILocation(line: 67, column: 35, scope: !1210)
!1259 = !DILocation(line: 67, column: 29, scope: !1210)
!1260 = !DILocation(line: 67, column: 20, scope: !1210)
!1261 = !DILocation(line: 67, column: 13, scope: !1210)
!1262 = !DILocation(line: 70, column: 17, scope: !1210)
!1263 = !DILocation(line: 70, column: 21, scope: !1210)
!1264 = !DILocation(line: 70, column: 13, scope: !1210)
!1265 = !DILocation(line: 76, column: 17, scope: !1210)
!1266 = !DILocation(line: 78, column: 30, scope: !1210)
!1267 = !DILocation(line: 78, column: 32, scope: !1210)
!1268 = !DILocation(line: 78, column: 41, scope: !1210)
!1269 = !DILocation(line: 78, column: 43, scope: !1210)
!1270 = !DILocation(line: 78, column: 37, scope: !1210)
!1271 = !DILocation(line: 78, column: 19, scope: !1210)
!1272 = !DILocation(line: 78, column: 21, scope: !1210)
!1273 = !DILocation(line: 78, column: 26, scope: !1210)
!1274 = !DILocation(line: 79, column: 21, scope: !1210)
!1275 = !DILocation(line: 79, column: 25, scope: !1210)
!1276 = !DILocation(line: 80, column: 26, scope: !1210)
!1277 = !DILocation(line: 80, column: 22, scope: !1210)
!1278 = !DILocation(line: 81, column: 13, scope: !1210)
!1279 = !DILocation(line: 82, column: 22, scope: !1210)
!1280 = !DILocation(line: 82, column: 24, scope: !1210)
!1281 = !DILocation(line: 82, column: 33, scope: !1210)
!1282 = !DILocation(line: 82, column: 35, scope: !1210)
!1283 = !DILocation(line: 82, column: 29, scope: !1210)
!1284 = !DILocation(line: 82, column: 20, scope: !1210)
!1285 = !DILocation(line: 82, column: 13, scope: !1210)
!1286 = !DILocation(line: 88, column: 16, scope: !1210)
!1287 = !DILocation(line: 88, column: 18, scope: !1210)
!1288 = !DILocation(line: 88, column: 28, scope: !1210)
!1289 = !DILocation(line: 88, column: 30, scope: !1210)
!1290 = !DILocation(line: 88, column: 35, scope: !1210)
!1291 = !DILocation(line: 88, column: 23, scope: !1210)
!1292 = !DILocation(line: 88, column: 41, scope: !1210)
!1293 = !DILocation(line: 88, column: 13, scope: !1210)
!1294 = !DILocation(line: 90, column: 17, scope: !1210)
!1295 = !DILocation(line: 92, column: 31, scope: !1210)
!1296 = !DILocation(line: 92, column: 21, scope: !1210)
!1297 = !DILocation(line: 92, column: 25, scope: !1210)
!1298 = !DILocation(line: 93, column: 30, scope: !1210)
!1299 = !DILocation(line: 93, column: 32, scope: !1210)
!1300 = !DILocation(line: 93, column: 42, scope: !1210)
!1301 = !DILocation(line: 93, column: 44, scope: !1210)
!1302 = !DILocation(line: 93, column: 49, scope: !1210)
!1303 = !DILocation(line: 93, column: 37, scope: !1210)
!1304 = !DILocation(line: 93, column: 19, scope: !1210)
!1305 = !DILocation(line: 93, column: 21, scope: !1210)
!1306 = !DILocation(line: 93, column: 26, scope: !1210)
!1307 = !DILocation(line: 94, column: 26, scope: !1210)
!1308 = !DILocation(line: 94, column: 22, scope: !1210)
!1309 = !DILocation(line: 95, column: 13, scope: !1210)
!1310 = !DILocation(line: 96, column: 22, scope: !1210)
!1311 = !DILocation(line: 96, column: 24, scope: !1210)
!1312 = !DILocation(line: 96, column: 48, scope: !1210)
!1313 = !DILocation(line: 96, column: 50, scope: !1210)
!1314 = !DILocation(line: 96, column: 32, scope: !1210)
!1315 = !DILocation(line: 96, column: 29, scope: !1210)
!1316 = !DILocation(line: 96, column: 20, scope: !1210)
!1317 = !DILocation(line: 96, column: 13, scope: !1210)
!1318 = !DILocation(line: 102, column: 30, scope: !1210)
!1319 = !DILocation(line: 102, column: 32, scope: !1210)
!1320 = !DILocation(line: 102, column: 14, scope: !1210)
!1321 = !DILocation(line: 102, column: 56, scope: !1210)
!1322 = !DILocation(line: 102, column: 58, scope: !1210)
!1323 = !DILocation(line: 102, column: 40, scope: !1210)
!1324 = !DILocation(line: 102, column: 38, scope: !1210)
!1325 = !DILocation(line: 104, column: 16, scope: !1210)
!1326 = !DILocation(line: 104, column: 13, scope: !1210)
!1327 = !DILocation(line: 106, column: 16, scope: !1210)
!1328 = !DILocation(line: 107, column: 26, scope: !1210)
!1329 = !DILocation(line: 107, column: 22, scope: !1210)
!1330 = !DILocation(line: 107, column: 17, scope: !1210)
!1331 = !DILocation(line: 108, column: 13, scope: !1210)
!1332 = !DILocation(line: 110, column: 9, scope: !1210)
!1333 = !DILocation(line: 113, column: 13, scope: !1210)
!1334 = !DILocation(line: 113, column: 17, scope: !1210)
!1335 = !DILocation(line: 114, column: 24, scope: !1210)
!1336 = !DILocation(line: 114, column: 45, scope: !1210)
!1337 = !DILocation(line: 114, column: 28, scope: !1210)
!1338 = !DILocation(line: 114, column: 11, scope: !1210)
!1339 = !DILocation(line: 114, column: 13, scope: !1210)
!1340 = !DILocation(line: 114, column: 18, scope: !1210)
!1341 = !DILocation(line: 116, column: 22, scope: !1210)
!1342 = !DILocation(line: 116, column: 24, scope: !1210)
!1343 = !DILocation(line: 116, column: 29, scope: !1210)
!1344 = !DILocation(line: 116, column: 11, scope: !1210)
!1345 = !DILocation(line: 116, column: 13, scope: !1210)
!1346 = !DILocation(line: 116, column: 18, scope: !1210)
!1347 = !DILocation(line: 117, column: 22, scope: !1210)
!1348 = !DILocation(line: 117, column: 24, scope: !1210)
!1349 = !DILocation(line: 117, column: 46, scope: !1210)
!1350 = !DILocation(line: 117, column: 29, scope: !1210)
!1351 = !DILocation(line: 117, column: 60, scope: !1210)
!1352 = !DILocation(line: 117, column: 64, scope: !1210)
!1353 = !DILocation(line: 117, column: 53, scope: !1210)
!1354 = !DILocation(line: 117, column: 13, scope: !1210)
!1355 = !DILocation(line: 117, column: 17, scope: !1210)
!1356 = !DILocation(line: 118, column: 5, scope: !1210)
!1357 = !DILocation(line: 121, column: 15, scope: !1210)
!1358 = !DILocation(line: 121, column: 17, scope: !1210)
!1359 = !DILocation(line: 121, column: 22, scope: !1210)
!1360 = !DILocation(line: 121, column: 13, scope: !1210)
!1361 = !DILocation(line: 127, column: 22, scope: !1210)
!1362 = !DILocation(line: 127, column: 43, scope: !1210)
!1363 = !DILocation(line: 127, column: 17, scope: !1210)
!1364 = !DILocation(line: 129, column: 21, scope: !1210)
!1365 = !DILocation(line: 130, column: 32, scope: !1210)
!1366 = !DILocation(line: 130, column: 43, scope: !1210)
!1367 = !DILocation(line: 130, column: 47, scope: !1210)
!1368 = !DILocation(line: 130, column: 36, scope: !1210)
!1369 = !DILocation(line: 130, column: 28, scope: !1210)
!1370 = !DILocation(line: 130, column: 26, scope: !1210)
!1371 = !DILocation(line: 130, column: 21, scope: !1210)
!1372 = !DILocation(line: 131, column: 25, scope: !1210)
!1373 = !DILocation(line: 131, column: 29, scope: !1210)
!1374 = !DILocation(line: 131, column: 21, scope: !1210)
!1375 = !DILocation(line: 132, column: 30, scope: !1210)
!1376 = !DILocation(line: 132, column: 21, scope: !1210)
!1377 = !DILocation(line: 133, column: 40, scope: !1210)
!1378 = !DILocation(line: 133, column: 22, scope: !1210)
!1379 = !DILocation(line: 134, column: 30, scope: !1210)
!1380 = !DILocation(line: 134, column: 32, scope: !1210)
!1381 = !DILocation(line: 134, column: 37, scope: !1210)
!1382 = !DILocation(line: 134, column: 19, scope: !1210)
!1383 = !DILocation(line: 134, column: 21, scope: !1210)
!1384 = !DILocation(line: 134, column: 26, scope: !1210)
!1385 = !DILocation(line: 135, column: 30, scope: !1210)
!1386 = !DILocation(line: 135, column: 32, scope: !1210)
!1387 = !DILocation(line: 135, column: 54, scope: !1210)
!1388 = !DILocation(line: 135, column: 37, scope: !1210)
!1389 = !DILocation(line: 135, column: 68, scope: !1210)
!1390 = !DILocation(line: 135, column: 72, scope: !1210)
!1391 = !DILocation(line: 135, column: 61, scope: !1210)
!1392 = !DILocation(line: 135, column: 21, scope: !1210)
!1393 = !DILocation(line: 135, column: 25, scope: !1210)
!1394 = !DILocation(line: 136, column: 26, scope: !1210)
!1395 = !DILocation(line: 136, column: 17, scope: !1210)
!1396 = !DILocation(line: 142, column: 55, scope: !1210)
!1397 = !DILocation(line: 142, column: 37, scope: !1210)
!1398 = !DILocation(line: 142, column: 35, scope: !1210)
!1399 = !DILocation(line: 142, column: 78, scope: !1210)
!1400 = !DILocation(line: 142, column: 80, scope: !1210)
!1401 = !DILocation(line: 142, column: 62, scope: !1210)
!1402 = !DILocation(line: 142, column: 60, scope: !1210)
!1403 = !DILocation(line: 147, column: 20, scope: !1210)
!1404 = !DILocation(line: 147, column: 17, scope: !1210)
!1405 = !DILocation(line: 149, column: 21, scope: !1210)
!1406 = !DILocation(line: 149, column: 25, scope: !1210)
!1407 = !DILocation(line: 150, column: 32, scope: !1210)
!1408 = !DILocation(line: 150, column: 19, scope: !1210)
!1409 = !DILocation(line: 150, column: 21, scope: !1210)
!1410 = !DILocation(line: 150, column: 26, scope: !1210)
!1411 = !DILocation(line: 151, column: 19, scope: !1210)
!1412 = !DILocation(line: 151, column: 21, scope: !1210)
!1413 = !DILocation(line: 151, column: 26, scope: !1210)
!1414 = !DILocation(line: 152, column: 29, scope: !1210)
!1415 = !DILocation(line: 152, column: 31, scope: !1210)
!1416 = !DILocation(line: 152, column: 21, scope: !1210)
!1417 = !DILocation(line: 152, column: 25, scope: !1210)
!1418 = !DILocation(line: 153, column: 13, scope: !1210)
!1419 = !DILocation(line: 154, column: 25, scope: !1210)
!1420 = !DILocation(line: 154, column: 22, scope: !1210)
!1421 = !DILocation(line: 156, column: 21, scope: !1210)
!1422 = !DILocation(line: 156, column: 25, scope: !1210)
!1423 = !DILocation(line: 157, column: 32, scope: !1210)
!1424 = !DILocation(line: 157, column: 53, scope: !1210)
!1425 = !DILocation(line: 157, column: 36, scope: !1210)
!1426 = !DILocation(line: 157, column: 19, scope: !1210)
!1427 = !DILocation(line: 157, column: 21, scope: !1210)
!1428 = !DILocation(line: 157, column: 26, scope: !1210)
!1429 = !DILocation(line: 158, column: 30, scope: !1210)
!1430 = !DILocation(line: 158, column: 32, scope: !1210)
!1431 = !DILocation(line: 158, column: 37, scope: !1210)
!1432 = !DILocation(line: 158, column: 19, scope: !1210)
!1433 = !DILocation(line: 158, column: 21, scope: !1210)
!1434 = !DILocation(line: 158, column: 26, scope: !1210)
!1435 = !DILocation(line: 159, column: 30, scope: !1210)
!1436 = !DILocation(line: 159, column: 32, scope: !1210)
!1437 = !DILocation(line: 159, column: 54, scope: !1210)
!1438 = !DILocation(line: 159, column: 37, scope: !1210)
!1439 = !DILocation(line: 159, column: 68, scope: !1210)
!1440 = !DILocation(line: 159, column: 72, scope: !1210)
!1441 = !DILocation(line: 159, column: 61, scope: !1210)
!1442 = !DILocation(line: 159, column: 21, scope: !1210)
!1443 = !DILocation(line: 159, column: 25, scope: !1210)
!1444 = !DILocation(line: 160, column: 13, scope: !1210)
!1445 = !DILocation(line: 163, column: 31, scope: !1210)
!1446 = !DILocation(line: 163, column: 53, scope: !1210)
!1447 = !DILocation(line: 163, column: 35, scope: !1210)
!1448 = !DILocation(line: 163, column: 21, scope: !1210)
!1449 = !DILocation(line: 163, column: 25, scope: !1210)
!1450 = !DILocation(line: 164, column: 31, scope: !1210)
!1451 = !DILocation(line: 164, column: 33, scope: !1210)
!1452 = !DILocation(line: 164, column: 56, scope: !1210)
!1453 = !DILocation(line: 164, column: 38, scope: !1210)
!1454 = !DILocation(line: 165, column: 33, scope: !1210)
!1455 = !DILocation(line: 165, column: 44, scope: !1210)
!1456 = !DILocation(line: 165, column: 37, scope: !1210)
!1457 = !DILocation(line: 164, column: 63, scope: !1210)
!1458 = !DILocation(line: 164, column: 19, scope: !1210)
!1459 = !DILocation(line: 164, column: 21, scope: !1210)
!1460 = !DILocation(line: 164, column: 26, scope: !1210)
!1461 = !DILocation(line: 166, column: 19, scope: !1210)
!1462 = !DILocation(line: 166, column: 21, scope: !1210)
!1463 = !DILocation(line: 166, column: 26, scope: !1210)
!1464 = !DILocation(line: 167, column: 29, scope: !1210)
!1465 = !DILocation(line: 167, column: 31, scope: !1210)
!1466 = !DILocation(line: 167, column: 43, scope: !1210)
!1467 = !DILocation(line: 167, column: 36, scope: !1210)
!1468 = !DILocation(line: 167, column: 21, scope: !1210)
!1469 = !DILocation(line: 167, column: 25, scope: !1210)
!1470 = !DILocation(line: 169, column: 9, scope: !1210)
!1471 = !DILocation(line: 176, column: 34, scope: !1210)
!1472 = !DILocation(line: 176, column: 36, scope: !1210)
!1473 = !DILocation(line: 176, column: 18, scope: !1210)
!1474 = !DILocation(line: 176, column: 60, scope: !1210)
!1475 = !DILocation(line: 176, column: 62, scope: !1210)
!1476 = !DILocation(line: 176, column: 44, scope: !1210)
!1477 = !DILocation(line: 176, column: 42, scope: !1210)
!1478 = !DILocation(line: 178, column: 20, scope: !1210)
!1479 = !DILocation(line: 178, column: 17, scope: !1210)
!1480 = !DILocation(line: 180, column: 21, scope: !1210)
!1481 = !DILocation(line: 181, column: 30, scope: !1210)
!1482 = !DILocation(line: 181, column: 26, scope: !1210)
!1483 = !DILocation(line: 181, column: 21, scope: !1210)
!1484 = !DILocation(line: 182, column: 17, scope: !1210)
!1485 = !DILocation(line: 184, column: 13, scope: !1210)
!1486 = !DILocation(line: 187, column: 17, scope: !1210)
!1487 = !DILocation(line: 187, column: 21, scope: !1210)
!1488 = !DILocation(line: 188, column: 20, scope: !1210)
!1489 = !DILocation(line: 188, column: 17, scope: !1210)
!1490 = !DILocation(line: 190, column: 32, scope: !1210)
!1491 = !DILocation(line: 190, column: 19, scope: !1210)
!1492 = !DILocation(line: 190, column: 21, scope: !1210)
!1493 = !DILocation(line: 190, column: 26, scope: !1210)
!1494 = !DILocation(line: 191, column: 19, scope: !1210)
!1495 = !DILocation(line: 191, column: 21, scope: !1210)
!1496 = !DILocation(line: 191, column: 26, scope: !1210)
!1497 = !DILocation(line: 192, column: 29, scope: !1210)
!1498 = !DILocation(line: 192, column: 31, scope: !1210)
!1499 = !DILocation(line: 192, column: 21, scope: !1210)
!1500 = !DILocation(line: 192, column: 25, scope: !1210)
!1501 = !DILocation(line: 193, column: 13, scope: !1210)
!1502 = !DILocation(line: 196, column: 32, scope: !1210)
!1503 = !DILocation(line: 196, column: 53, scope: !1210)
!1504 = !DILocation(line: 196, column: 36, scope: !1210)
!1505 = !DILocation(line: 196, column: 19, scope: !1210)
!1506 = !DILocation(line: 196, column: 21, scope: !1210)
!1507 = !DILocation(line: 196, column: 26, scope: !1210)
!1508 = !DILocation(line: 197, column: 30, scope: !1210)
!1509 = !DILocation(line: 197, column: 32, scope: !1210)
!1510 = !DILocation(line: 197, column: 37, scope: !1210)
!1511 = !DILocation(line: 197, column: 19, scope: !1210)
!1512 = !DILocation(line: 197, column: 21, scope: !1210)
!1513 = !DILocation(line: 197, column: 26, scope: !1210)
!1514 = !DILocation(line: 198, column: 30, scope: !1210)
!1515 = !DILocation(line: 198, column: 32, scope: !1210)
!1516 = !DILocation(line: 198, column: 54, scope: !1210)
!1517 = !DILocation(line: 198, column: 37, scope: !1210)
!1518 = !DILocation(line: 198, column: 68, scope: !1210)
!1519 = !DILocation(line: 198, column: 72, scope: !1210)
!1520 = !DILocation(line: 198, column: 61, scope: !1210)
!1521 = !DILocation(line: 198, column: 21, scope: !1210)
!1522 = !DILocation(line: 198, column: 25, scope: !1210)
!1523 = !DILocation(line: 0, scope: !1210)
!1524 = !DILocation(line: 209, column: 5, scope: !1210)
!1525 = !DILocation(line: 209, column: 15, scope: !1210)
!1526 = !DILocation(line: 212, column: 23, scope: !1210)
!1527 = !DILocation(line: 212, column: 25, scope: !1210)
!1528 = !DILocation(line: 212, column: 43, scope: !1210)
!1529 = !DILocation(line: 212, column: 36, scope: !1210)
!1530 = !DILocation(line: 212, column: 11, scope: !1210)
!1531 = !DILocation(line: 212, column: 13, scope: !1210)
!1532 = !DILocation(line: 212, column: 18, scope: !1210)
!1533 = !DILocation(line: 213, column: 41, scope: !1210)
!1534 = !DILocation(line: 213, column: 43, scope: !1210)
!1535 = !DILocation(line: 213, column: 36, scope: !1210)
!1536 = !DILocation(line: 213, column: 13, scope: !1210)
!1537 = !DILocation(line: 213, column: 18, scope: !1210)
!1538 = !DILocation(line: 214, column: 23, scope: !1210)
!1539 = !DILocation(line: 214, column: 25, scope: !1210)
!1540 = !DILocation(line: 214, column: 43, scope: !1210)
!1541 = !DILocation(line: 214, column: 36, scope: !1210)
!1542 = !DILocation(line: 214, column: 11, scope: !1210)
!1543 = !DILocation(line: 214, column: 13, scope: !1210)
!1544 = !DILocation(line: 214, column: 18, scope: !1210)
!1545 = !DILocation(line: 215, column: 30, scope: !1210)
!1546 = !DILocation(line: 215, column: 36, scope: !1210)
!1547 = !DILocation(line: 215, column: 13, scope: !1210)
!1548 = !DILocation(line: 215, column: 18, scope: !1210)
!1549 = !DILocation(line: 223, column: 37, scope: !1210)
!1550 = !DILocation(line: 223, column: 45, scope: !1210)
!1551 = !DILocation(line: 223, column: 49, scope: !1210)
!1552 = !DILocation(line: 225, column: 24, scope: !1210)
!1553 = !DILocation(line: 225, column: 11, scope: !1210)
!1554 = !DILocation(line: 225, column: 15, scope: !1210)
!1555 = !DILocation(line: 226, column: 5, scope: !1210)
!1556 = !DILocation(line: 224, column: 19, scope: !1210)
!1557 = !DILocation(line: 224, column: 17, scope: !1210)
!1558 = !DILocation(line: 209, column: 20, scope: !1210)
!1559 = distinct !{!1559, !1524, !1555, !149}
!1560 = !DILocation(line: 227, column: 16, scope: !1210)
!1561 = !DILocation(line: 227, column: 20, scope: !1210)
!1562 = !DILocation(line: 227, column: 28, scope: !1210)
!1563 = !DILocation(line: 227, column: 26, scope: !1210)
!1564 = !DILocation(line: 227, column: 7, scope: !1210)
!1565 = !DILocation(line: 227, column: 11, scope: !1210)
!1566 = !DILocation(line: 228, column: 9, scope: !1210)
!1567 = !DILocation(line: 229, column: 18, scope: !1210)
!1568 = !DILocation(line: 229, column: 14, scope: !1210)
!1569 = !DILocation(line: 229, column: 9, scope: !1210)
!1570 = !DILocation(line: 230, column: 14, scope: !1210)
!1571 = !DILocation(line: 230, column: 5, scope: !1210)
!1572 = !DILocation(line: 231, column: 1, scope: !1210)
!1573 = distinct !DISubprogram(name: "__divmoddi4", scope: !51, file: !51, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !138)
!1574 = !DILocation(line: 22, column: 14, scope: !1573)
!1575 = !DILocation(line: 23, column: 16, scope: !1573)
!1576 = !DILocation(line: 23, column: 12, scope: !1573)
!1577 = !DILocation(line: 23, column: 8, scope: !1573)
!1578 = !DILocation(line: 24, column: 3, scope: !1573)
!1579 = distinct !DISubprogram(name: "__divmodsi4", scope: !53, file: !53, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !138)
!1580 = !DILocation(line: 22, column: 14, scope: !1579)
!1581 = !DILocation(line: 23, column: 16, scope: !1579)
!1582 = !DILocation(line: 23, column: 12, scope: !1579)
!1583 = !DILocation(line: 23, column: 8, scope: !1579)
!1584 = !DILocation(line: 24, column: 3, scope: !1579)
!1585 = distinct !DISubprogram(name: "__divsi3", scope: !55, file: !55, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !138)
!1586 = !DILocation(line: 25, column: 20, scope: !1585)
!1587 = !DILocation(line: 26, column: 20, scope: !1585)
!1588 = !DILocation(line: 27, column: 12, scope: !1585)
!1589 = !DILocation(line: 27, column: 19, scope: !1585)
!1590 = !DILocation(line: 28, column: 12, scope: !1585)
!1591 = !DILocation(line: 28, column: 19, scope: !1585)
!1592 = !DILocation(line: 29, column: 9, scope: !1585)
!1593 = !DILocation(line: 36, column: 22, scope: !1585)
!1594 = !DILocation(line: 36, column: 33, scope: !1585)
!1595 = !DILocation(line: 36, column: 40, scope: !1585)
!1596 = !DILocation(line: 36, column: 5, scope: !1585)
!1597 = distinct !DISubprogram(name: "__ffsdi2", scope: !59, file: !59, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !58, retainedNodes: !138)
!1598 = !DILocation(line: 25, column: 7, scope: !1597)
!1599 = !DILocation(line: 25, column: 11, scope: !1597)
!1600 = !DILocation(line: 26, column: 13, scope: !1597)
!1601 = !DILocation(line: 26, column: 17, scope: !1597)
!1602 = !DILocation(line: 26, column: 9, scope: !1597)
!1603 = !DILocation(line: 28, column: 15, scope: !1597)
!1604 = !DILocation(line: 28, column: 17, scope: !1597)
!1605 = !DILocation(line: 28, column: 22, scope: !1597)
!1606 = !DILocation(line: 28, column: 13, scope: !1597)
!1607 = !DILocation(line: 29, column: 13, scope: !1597)
!1608 = !DILocation(line: 30, column: 32, scope: !1597)
!1609 = !DILocation(line: 30, column: 34, scope: !1597)
!1610 = !DILocation(line: 30, column: 16, scope: !1597)
!1611 = !DILocation(line: 30, column: 40, scope: !1597)
!1612 = !DILocation(line: 30, column: 9, scope: !1597)
!1613 = !DILocation(line: 32, column: 30, scope: !1597)
!1614 = !DILocation(line: 32, column: 12, scope: !1597)
!1615 = !DILocation(line: 32, column: 35, scope: !1597)
!1616 = !DILocation(line: 32, column: 5, scope: !1597)
!1617 = !DILocation(line: 0, scope: !1597)
!1618 = !DILocation(line: 33, column: 1, scope: !1597)
!1619 = distinct !DISubprogram(name: "__ffssi2", scope: !61, file: !61, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !138)
!1620 = !DILocation(line: 24, column: 11, scope: !1619)
!1621 = !DILocation(line: 24, column: 9, scope: !1619)
!1622 = !DILocation(line: 26, column: 9, scope: !1619)
!1623 = !DILocation(line: 28, column: 12, scope: !1619)
!1624 = !DILocation(line: 28, column: 29, scope: !1619)
!1625 = !DILocation(line: 28, column: 5, scope: !1619)
!1626 = !DILocation(line: 0, scope: !1619)
!1627 = !DILocation(line: 29, column: 1, scope: !1619)
!1628 = distinct !DISubprogram(name: "__lshrdi3", scope: !67, file: !67, line: 24, type: !137, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !66, retainedNodes: !138)
!1629 = !DILocation(line: 29, column: 11, scope: !1628)
!1630 = !DILocation(line: 29, column: 15, scope: !1628)
!1631 = !DILocation(line: 30, column: 11, scope: !1628)
!1632 = !DILocation(line: 30, column: 9, scope: !1628)
!1633 = !DILocation(line: 32, column: 16, scope: !1628)
!1634 = !DILocation(line: 32, column: 18, scope: !1628)
!1635 = !DILocation(line: 32, column: 23, scope: !1628)
!1636 = !DILocation(line: 33, column: 30, scope: !1628)
!1637 = !DILocation(line: 33, column: 32, scope: !1628)
!1638 = !DILocation(line: 33, column: 43, scope: !1628)
!1639 = !DILocation(line: 33, column: 37, scope: !1628)
!1640 = !DILocation(line: 33, column: 18, scope: !1628)
!1641 = !DILocation(line: 33, column: 22, scope: !1628)
!1642 = !DILocation(line: 34, column: 5, scope: !1628)
!1643 = !DILocation(line: 37, column: 15, scope: !1628)
!1644 = !DILocation(line: 37, column: 13, scope: !1628)
!1645 = !DILocation(line: 38, column: 13, scope: !1628)
!1646 = !DILocation(line: 39, column: 32, scope: !1628)
!1647 = !DILocation(line: 39, column: 34, scope: !1628)
!1648 = !DILocation(line: 39, column: 39, scope: !1628)
!1649 = !DILocation(line: 39, column: 16, scope: !1628)
!1650 = !DILocation(line: 39, column: 18, scope: !1628)
!1651 = !DILocation(line: 39, column: 24, scope: !1628)
!1652 = !DILocation(line: 40, column: 31, scope: !1628)
!1653 = !DILocation(line: 40, column: 33, scope: !1628)
!1654 = !DILocation(line: 40, column: 55, scope: !1628)
!1655 = !DILocation(line: 40, column: 38, scope: !1628)
!1656 = !DILocation(line: 40, column: 72, scope: !1628)
!1657 = !DILocation(line: 40, column: 76, scope: !1628)
!1658 = !DILocation(line: 40, column: 61, scope: !1628)
!1659 = !DILocation(line: 40, column: 18, scope: !1628)
!1660 = !DILocation(line: 40, column: 22, scope: !1628)
!1661 = !DILocation(line: 42, column: 19, scope: !1628)
!1662 = !DILocation(line: 42, column: 5, scope: !1628)
!1663 = !DILocation(line: 0, scope: !1628)
!1664 = !DILocation(line: 43, column: 1, scope: !1628)
!1665 = distinct !DISubprogram(name: "__moddi3", scope: !71, file: !71, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !70, retainedNodes: !138)
!1666 = !DILocation(line: 24, column: 17, scope: !1665)
!1667 = !DILocation(line: 25, column: 11, scope: !1665)
!1668 = !DILocation(line: 26, column: 12, scope: !1665)
!1669 = !DILocation(line: 26, column: 17, scope: !1665)
!1670 = !DILocation(line: 28, column: 5, scope: !1665)
!1671 = !DILocation(line: 29, column: 21, scope: !1665)
!1672 = !DILocation(line: 29, column: 23, scope: !1665)
!1673 = !DILocation(line: 29, column: 28, scope: !1665)
!1674 = !DILocation(line: 29, column: 5, scope: !1665)
!1675 = distinct !DISubprogram(name: "__modsi3", scope: !73, file: !73, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !138)
!1676 = !DILocation(line: 22, column: 16, scope: !1675)
!1677 = !DILocation(line: 22, column: 31, scope: !1675)
!1678 = !DILocation(line: 22, column: 14, scope: !1675)
!1679 = !DILocation(line: 22, column: 5, scope: !1675)
!1680 = distinct !DISubprogram(name: "__mulvdi3", scope: !77, file: !77, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !76, retainedNodes: !138)
!1681 = !DILocation(line: 27, column: 11, scope: !1680)
!1682 = !DILocation(line: 27, column: 9, scope: !1680)
!1683 = !DILocation(line: 29, column: 15, scope: !1680)
!1684 = !DILocation(line: 29, column: 20, scope: !1680)
!1685 = !DILocation(line: 29, column: 25, scope: !1680)
!1686 = !DILocation(line: 29, column: 13, scope: !1680)
!1687 = !DILocation(line: 30, column: 13, scope: !1680)
!1688 = !DILocation(line: 31, column: 9, scope: !1680)
!1689 = !DILocation(line: 33, column: 11, scope: !1680)
!1690 = !DILocation(line: 33, column: 9, scope: !1680)
!1691 = !DILocation(line: 35, column: 15, scope: !1680)
!1692 = !DILocation(line: 35, column: 20, scope: !1680)
!1693 = !DILocation(line: 35, column: 25, scope: !1680)
!1694 = !DILocation(line: 35, column: 13, scope: !1680)
!1695 = !DILocation(line: 36, column: 13, scope: !1680)
!1696 = !DILocation(line: 37, column: 9, scope: !1680)
!1697 = !DILocation(line: 39, column: 19, scope: !1680)
!1698 = !DILocation(line: 40, column: 23, scope: !1680)
!1699 = !DILocation(line: 40, column: 29, scope: !1680)
!1700 = !DILocation(line: 41, column: 19, scope: !1680)
!1701 = !DILocation(line: 42, column: 23, scope: !1680)
!1702 = !DILocation(line: 42, column: 29, scope: !1680)
!1703 = !DILocation(line: 43, column: 15, scope: !1680)
!1704 = !DILocation(line: 43, column: 19, scope: !1680)
!1705 = !DILocation(line: 43, column: 28, scope: !1680)
!1706 = !DILocation(line: 43, column: 9, scope: !1680)
!1707 = !DILocation(line: 44, column: 9, scope: !1680)
!1708 = !DILocation(line: 45, column: 12, scope: !1680)
!1709 = !DILocation(line: 45, column: 9, scope: !1680)
!1710 = !DILocation(line: 47, column: 25, scope: !1680)
!1711 = !DILocation(line: 47, column: 19, scope: !1680)
!1712 = !DILocation(line: 47, column: 13, scope: !1680)
!1713 = !DILocation(line: 48, column: 13, scope: !1680)
!1714 = !DILocation(line: 49, column: 5, scope: !1680)
!1715 = !DILocation(line: 52, column: 27, scope: !1680)
!1716 = !DILocation(line: 52, column: 25, scope: !1680)
!1717 = !DILocation(line: 52, column: 19, scope: !1680)
!1718 = !DILocation(line: 52, column: 13, scope: !1680)
!1719 = !DILocation(line: 53, column: 13, scope: !1680)
!1720 = !DILocation(line: 55, column: 5, scope: !1680)
!1721 = !DILocation(line: 0, scope: !1680)
!1722 = !DILocation(line: 56, column: 1, scope: !1680)
!1723 = distinct !DISubprogram(name: "__mulvsi3", scope: !79, file: !79, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !78, retainedNodes: !138)
!1724 = !DILocation(line: 27, column: 11, scope: !1723)
!1725 = !DILocation(line: 27, column: 9, scope: !1723)
!1726 = !DILocation(line: 29, column: 15, scope: !1723)
!1727 = !DILocation(line: 29, column: 20, scope: !1723)
!1728 = !DILocation(line: 29, column: 25, scope: !1723)
!1729 = !DILocation(line: 29, column: 13, scope: !1723)
!1730 = !DILocation(line: 30, column: 13, scope: !1723)
!1731 = !DILocation(line: 31, column: 9, scope: !1723)
!1732 = !DILocation(line: 33, column: 11, scope: !1723)
!1733 = !DILocation(line: 33, column: 9, scope: !1723)
!1734 = !DILocation(line: 35, column: 15, scope: !1723)
!1735 = !DILocation(line: 35, column: 20, scope: !1723)
!1736 = !DILocation(line: 35, column: 25, scope: !1723)
!1737 = !DILocation(line: 35, column: 13, scope: !1723)
!1738 = !DILocation(line: 36, column: 13, scope: !1723)
!1739 = !DILocation(line: 37, column: 9, scope: !1723)
!1740 = !DILocation(line: 39, column: 19, scope: !1723)
!1741 = !DILocation(line: 40, column: 23, scope: !1723)
!1742 = !DILocation(line: 40, column: 29, scope: !1723)
!1743 = !DILocation(line: 41, column: 19, scope: !1723)
!1744 = !DILocation(line: 42, column: 23, scope: !1723)
!1745 = !DILocation(line: 42, column: 29, scope: !1723)
!1746 = !DILocation(line: 43, column: 15, scope: !1723)
!1747 = !DILocation(line: 43, column: 19, scope: !1723)
!1748 = !DILocation(line: 43, column: 28, scope: !1723)
!1749 = !DILocation(line: 43, column: 9, scope: !1723)
!1750 = !DILocation(line: 44, column: 9, scope: !1723)
!1751 = !DILocation(line: 45, column: 12, scope: !1723)
!1752 = !DILocation(line: 45, column: 9, scope: !1723)
!1753 = !DILocation(line: 47, column: 25, scope: !1723)
!1754 = !DILocation(line: 47, column: 19, scope: !1723)
!1755 = !DILocation(line: 47, column: 13, scope: !1723)
!1756 = !DILocation(line: 48, column: 13, scope: !1723)
!1757 = !DILocation(line: 49, column: 5, scope: !1723)
!1758 = !DILocation(line: 52, column: 27, scope: !1723)
!1759 = !DILocation(line: 52, column: 25, scope: !1723)
!1760 = !DILocation(line: 52, column: 19, scope: !1723)
!1761 = !DILocation(line: 52, column: 13, scope: !1723)
!1762 = !DILocation(line: 53, column: 13, scope: !1723)
!1763 = !DILocation(line: 55, column: 5, scope: !1723)
!1764 = !DILocation(line: 0, scope: !1723)
!1765 = !DILocation(line: 56, column: 1, scope: !1723)
!1766 = distinct !DISubprogram(name: "__paritydi2", scope: !83, file: !83, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !82, retainedNodes: !138)
!1767 = !DILocation(line: 23, column: 7, scope: !1766)
!1768 = !DILocation(line: 23, column: 11, scope: !1766)
!1769 = !DILocation(line: 24, column: 26, scope: !1766)
!1770 = !DILocation(line: 24, column: 28, scope: !1766)
!1771 = !DILocation(line: 24, column: 39, scope: !1766)
!1772 = !DILocation(line: 24, column: 33, scope: !1766)
!1773 = !DILocation(line: 24, column: 12, scope: !1766)
!1774 = !DILocation(line: 24, column: 5, scope: !1766)
!1775 = distinct !DISubprogram(name: "__paritysi2", scope: !85, file: !85, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !84, retainedNodes: !138)
!1776 = !DILocation(line: 23, column: 12, scope: !1775)
!1777 = !DILocation(line: 23, column: 7, scope: !1775)
!1778 = !DILocation(line: 24, column: 12, scope: !1775)
!1779 = !DILocation(line: 24, column: 7, scope: !1775)
!1780 = !DILocation(line: 25, column: 12, scope: !1775)
!1781 = !DILocation(line: 25, column: 7, scope: !1775)
!1782 = !DILocation(line: 26, column: 26, scope: !1775)
!1783 = !DILocation(line: 26, column: 20, scope: !1775)
!1784 = !DILocation(line: 26, column: 34, scope: !1775)
!1785 = !DILocation(line: 26, column: 5, scope: !1775)
!1786 = distinct !DISubprogram(name: "__popcountdi2", scope: !89, file: !89, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !88, retainedNodes: !138)
!1787 = !DILocation(line: 23, column: 20, scope: !1786)
!1788 = !DILocation(line: 23, column: 26, scope: !1786)
!1789 = !DILocation(line: 23, column: 13, scope: !1786)
!1790 = !DILocation(line: 25, column: 15, scope: !1786)
!1791 = !DILocation(line: 25, column: 21, scope: !1786)
!1792 = !DILocation(line: 25, column: 52, scope: !1786)
!1793 = !DILocation(line: 25, column: 46, scope: !1786)
!1794 = !DILocation(line: 27, column: 20, scope: !1786)
!1795 = !DILocation(line: 27, column: 14, scope: !1786)
!1796 = !DILocation(line: 27, column: 27, scope: !1786)
!1797 = !DILocation(line: 29, column: 34, scope: !1786)
!1798 = !DILocation(line: 29, column: 28, scope: !1786)
!1799 = !DILocation(line: 29, column: 16, scope: !1786)
!1800 = !DILocation(line: 32, column: 16, scope: !1786)
!1801 = !DILocation(line: 32, column: 11, scope: !1786)
!1802 = !DILocation(line: 35, column: 20, scope: !1786)
!1803 = !DILocation(line: 35, column: 15, scope: !1786)
!1804 = !DILocation(line: 35, column: 27, scope: !1786)
!1805 = !DILocation(line: 35, column: 5, scope: !1786)
!1806 = distinct !DISubprogram(name: "__popcountsi2", scope: !91, file: !91, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !90, retainedNodes: !138)
!1807 = !DILocation(line: 23, column: 17, scope: !1806)
!1808 = !DILocation(line: 23, column: 23, scope: !1806)
!1809 = !DILocation(line: 23, column: 11, scope: !1806)
!1810 = !DILocation(line: 25, column: 13, scope: !1806)
!1811 = !DILocation(line: 25, column: 19, scope: !1806)
!1812 = !DILocation(line: 25, column: 38, scope: !1806)
!1813 = !DILocation(line: 25, column: 33, scope: !1806)
!1814 = !DILocation(line: 27, column: 17, scope: !1806)
!1815 = !DILocation(line: 27, column: 12, scope: !1806)
!1816 = !DILocation(line: 27, column: 24, scope: !1806)
!1817 = !DILocation(line: 29, column: 17, scope: !1806)
!1818 = !DILocation(line: 29, column: 12, scope: !1806)
!1819 = !DILocation(line: 32, column: 20, scope: !1806)
!1820 = !DILocation(line: 32, column: 15, scope: !1806)
!1821 = !DILocation(line: 32, column: 27, scope: !1806)
!1822 = !DILocation(line: 32, column: 5, scope: !1806)
!1823 = distinct !DISubprogram(name: "__subvdi3", scope: !95, file: !95, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !94, retainedNodes: !138)
!1824 = !DILocation(line: 24, column: 27, scope: !1823)
!1825 = !DILocation(line: 25, column: 11, scope: !1823)
!1826 = !DILocation(line: 25, column: 9, scope: !1823)
!1827 = !DILocation(line: 27, column: 15, scope: !1823)
!1828 = !DILocation(line: 27, column: 13, scope: !1823)
!1829 = !DILocation(line: 28, column: 13, scope: !1823)
!1830 = !DILocation(line: 29, column: 5, scope: !1823)
!1831 = !DILocation(line: 32, column: 15, scope: !1823)
!1832 = !DILocation(line: 32, column: 13, scope: !1823)
!1833 = !DILocation(line: 33, column: 13, scope: !1823)
!1834 = !DILocation(line: 35, column: 5, scope: !1823)
!1835 = distinct !DISubprogram(name: "__subvsi3", scope: !97, file: !97, line: 22, type: !137, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !96, retainedNodes: !138)
!1836 = !DILocation(line: 24, column: 27, scope: !1835)
!1837 = !DILocation(line: 25, column: 11, scope: !1835)
!1838 = !DILocation(line: 25, column: 9, scope: !1835)
!1839 = !DILocation(line: 27, column: 15, scope: !1835)
!1840 = !DILocation(line: 27, column: 13, scope: !1835)
!1841 = !DILocation(line: 28, column: 13, scope: !1835)
!1842 = !DILocation(line: 29, column: 5, scope: !1835)
!1843 = !DILocation(line: 32, column: 15, scope: !1835)
!1844 = !DILocation(line: 32, column: 13, scope: !1835)
!1845 = !DILocation(line: 33, column: 13, scope: !1835)
!1846 = !DILocation(line: 35, column: 5, scope: !1835)
!1847 = distinct !DISubprogram(name: "__ucmpdi2", scope: !101, file: !101, line: 23, type: !137, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !138)
!1848 = !DILocation(line: 26, column: 7, scope: !1847)
!1849 = !DILocation(line: 26, column: 11, scope: !1847)
!1850 = !DILocation(line: 28, column: 7, scope: !1847)
!1851 = !DILocation(line: 28, column: 11, scope: !1847)
!1852 = !DILocation(line: 29, column: 11, scope: !1847)
!1853 = !DILocation(line: 29, column: 13, scope: !1847)
!1854 = !DILocation(line: 29, column: 22, scope: !1847)
!1855 = !DILocation(line: 29, column: 24, scope: !1847)
!1856 = !DILocation(line: 29, column: 18, scope: !1847)
!1857 = !DILocation(line: 29, column: 9, scope: !1847)
!1858 = !DILocation(line: 30, column: 9, scope: !1847)
!1859 = !DILocation(line: 31, column: 11, scope: !1847)
!1860 = !DILocation(line: 31, column: 13, scope: !1847)
!1861 = !DILocation(line: 31, column: 22, scope: !1847)
!1862 = !DILocation(line: 31, column: 24, scope: !1847)
!1863 = !DILocation(line: 31, column: 18, scope: !1847)
!1864 = !DILocation(line: 31, column: 9, scope: !1847)
!1865 = !DILocation(line: 32, column: 9, scope: !1847)
!1866 = !DILocation(line: 33, column: 13, scope: !1847)
!1867 = !DILocation(line: 33, column: 23, scope: !1847)
!1868 = !DILocation(line: 33, column: 17, scope: !1847)
!1869 = !DILocation(line: 33, column: 9, scope: !1847)
!1870 = !DILocation(line: 34, column: 9, scope: !1847)
!1871 = !DILocation(line: 35, column: 13, scope: !1847)
!1872 = !DILocation(line: 35, column: 23, scope: !1847)
!1873 = !DILocation(line: 35, column: 17, scope: !1847)
!1874 = !DILocation(line: 35, column: 9, scope: !1847)
!1875 = !DILocation(line: 36, column: 9, scope: !1847)
!1876 = !DILocation(line: 37, column: 5, scope: !1847)
!1877 = !DILocation(line: 0, scope: !1847)
!1878 = !DILocation(line: 38, column: 1, scope: !1847)
!1879 = distinct !DISubprogram(name: "__aeabi_ulcmp", scope: !101, file: !101, line: 46, type: !137, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !100, retainedNodes: !138)
!1880 = !DILocation(line: 48, column: 9, scope: !1879)
!1881 = !DILocation(line: 48, column: 25, scope: !1879)
!1882 = !DILocation(line: 48, column: 2, scope: !1879)
!1883 = distinct !DISubprogram(name: "__udivdi3", scope: !105, file: !105, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !104, retainedNodes: !138)
!1884 = !DILocation(line: 22, column: 12, scope: !1883)
!1885 = !DILocation(line: 22, column: 5, scope: !1883)
!1886 = distinct !DISubprogram(name: "__udivmodsi4", scope: !109, file: !109, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !108, retainedNodes: !138)
!1887 = !DILocation(line: 22, column: 14, scope: !1886)
!1888 = !DILocation(line: 23, column: 16, scope: !1886)
!1889 = !DILocation(line: 23, column: 12, scope: !1886)
!1890 = !DILocation(line: 23, column: 8, scope: !1886)
!1891 = !DILocation(line: 24, column: 3, scope: !1886)
!1892 = distinct !DISubprogram(name: "__udivsi3", scope: !113, file: !113, line: 25, type: !137, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !112, retainedNodes: !138)
!1893 = !DILocation(line: 32, column: 11, scope: !1892)
!1894 = !DILocation(line: 32, column: 9, scope: !1892)
!1895 = !DILocation(line: 33, column: 9, scope: !1892)
!1896 = !DILocation(line: 34, column: 11, scope: !1892)
!1897 = !DILocation(line: 34, column: 9, scope: !1892)
!1898 = !DILocation(line: 35, column: 9, scope: !1892)
!1899 = !DILocation(line: 36, column: 10, scope: !1892)
!1900 = !DILocation(line: 36, column: 29, scope: !1892)
!1901 = !DILocation(line: 36, column: 27, scope: !1892)
!1902 = !DILocation(line: 38, column: 12, scope: !1892)
!1903 = !DILocation(line: 38, column: 9, scope: !1892)
!1904 = !DILocation(line: 39, column: 9, scope: !1892)
!1905 = !DILocation(line: 40, column: 12, scope: !1892)
!1906 = !DILocation(line: 40, column: 9, scope: !1892)
!1907 = !DILocation(line: 41, column: 9, scope: !1892)
!1908 = !DILocation(line: 42, column: 5, scope: !1892)
!1909 = !DILocation(line: 45, column: 28, scope: !1892)
!1910 = !DILocation(line: 45, column: 11, scope: !1892)
!1911 = !DILocation(line: 46, column: 11, scope: !1892)
!1912 = !DILocation(line: 48, column: 5, scope: !1892)
!1913 = !DILocation(line: 0, scope: !1892)
!1914 = !DILocation(line: 48, column: 15, scope: !1892)
!1915 = !DILocation(line: 51, column: 22, scope: !1892)
!1916 = !DILocation(line: 60, column: 41, scope: !1892)
!1917 = !DILocation(line: 63, column: 5, scope: !1892)
!1918 = !DILocation(line: 62, column: 16, scope: !1892)
!1919 = !DILocation(line: 62, column: 11, scope: !1892)
!1920 = !DILocation(line: 61, column: 19, scope: !1892)
!1921 = !DILocation(line: 52, column: 16, scope: !1892)
!1922 = !DILocation(line: 52, column: 22, scope: !1892)
!1923 = !DILocation(line: 48, column: 20, scope: !1892)
!1924 = distinct !{!1924, !1912, !1917, !149}
!1925 = !DILocation(line: 64, column: 12, scope: !1892)
!1926 = !DILocation(line: 64, column: 18, scope: !1892)
!1927 = !DILocation(line: 65, column: 5, scope: !1892)
!1928 = !DILocation(line: 66, column: 1, scope: !1892)
!1929 = distinct !DISubprogram(name: "__umoddi3", scope: !117, file: !117, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !116, retainedNodes: !138)
!1930 = !DILocation(line: 23, column: 5, scope: !1929)
!1931 = !DILocation(line: 24, column: 12, scope: !1929)
!1932 = !DILocation(line: 24, column: 5, scope: !1929)
!1933 = distinct !DISubprogram(name: "__umodsi3", scope: !119, file: !119, line: 20, type: !137, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !118, retainedNodes: !138)
!1934 = !DILocation(line: 22, column: 16, scope: !1933)
!1935 = !DILocation(line: 22, column: 32, scope: !1933)
!1936 = !DILocation(line: 22, column: 14, scope: !1933)
!1937 = !DILocation(line: 22, column: 5, scope: !1933)
!1938 = distinct !DISubprogram(name: "memcpy", scope: !123, file: !123, line: 3, type: !137, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !138)
!1939 = !DILocation(line: 8, column: 6, scope: !1938)
!1940 = !DILocation(line: 0, scope: !1938)
!1941 = !DILocation(line: 8, column: 19, scope: !1938)
!1942 = !DILocation(line: 8, column: 2, scope: !1938)
!1943 = !DILocation(line: 9, column: 21, scope: !1938)
!1944 = !DILocation(line: 9, column: 3, scope: !1938)
!1945 = !DILocation(line: 9, column: 19, scope: !1938)
!1946 = !DILocation(line: 10, column: 2, scope: !1938)
!1947 = !DILocation(line: 8, column: 26, scope: !1938)
!1948 = distinct !{!1948, !1942, !1946, !149}
!1949 = !DILocation(line: 11, column: 1, scope: !1938)
!1950 = distinct !DISubprogram(name: "memset", scope: !123, file: !123, line: 13, type: !137, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !122, retainedNodes: !138)
!1951 = !DILocation(line: 17, column: 6, scope: !1950)
!1952 = !DILocation(line: 0, scope: !1950)
!1953 = !DILocation(line: 17, column: 19, scope: !1950)
!1954 = !DILocation(line: 17, column: 2, scope: !1950)
!1955 = !DILocation(line: 18, column: 13, scope: !1950)
!1956 = !DILocation(line: 18, column: 3, scope: !1950)
!1957 = !DILocation(line: 18, column: 11, scope: !1950)
!1958 = !DILocation(line: 19, column: 2, scope: !1950)
!1959 = !DILocation(line: 17, column: 26, scope: !1950)
!1960 = distinct !{!1960, !1954, !1958, !149}
!1961 = !DILocation(line: 20, column: 2, scope: !1950)
