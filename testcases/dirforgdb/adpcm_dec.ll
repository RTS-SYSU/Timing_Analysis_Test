; ModuleID = '/workspaces/llvmta/testcases/test/adpcm_dec.c'
source_filename = "/workspaces/llvmta/testcases/test/adpcm_dec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

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

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_fabs(i32 noundef %n) #0 !dbg !12 {
entry:
  %n.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !16
  %cmp = icmp sge i32 %0, 0, !dbg !17
  br i1 %cmp, label %if.then, label %if.else, !dbg !16

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !18
  store i32 %1, i32* %f, align 4, !dbg !19
  br label %if.end, !dbg !20

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4, !dbg !21
  %sub = sub nsw i32 0, %2, !dbg !22
  store i32 %sub, i32* %f, align 4, !dbg !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %f, align 4, !dbg !24
  ret i32 %3, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_sin(i32 noundef %rad) #0 !dbg !26 {
entry:
  %rad.addr = alloca i32, align 4
  %diff = alloca i32, align 4
  %app = alloca i32, align 4
  %inc = alloca i32, align 4
  store i32 %rad, i32* %rad.addr, align 4
  store i32 0, i32* %app, align 4, !dbg !27
  store i32 1, i32* %inc, align 4, !dbg !28
  br label %while.cond, !dbg !29

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %rad.addr, align 4, !dbg !30
  %cmp = icmp sgt i32 %0, 6282, !dbg !31
  br i1 %cmp, label %while.body, label %while.end, !dbg !29

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %rad.addr, align 4, !dbg !32
  %sub = sub nsw i32 %1, 6282, !dbg !32
  store i32 %sub, i32* %rad.addr, align 4, !dbg !32
  br label %while.cond, !dbg !29, !llvm.loop !33

while.end:                                        ; preds = %while.cond
  br label %while.cond1, !dbg !36

while.cond1:                                      ; preds = %while.body3, %while.end
  %2 = load i32, i32* %rad.addr, align 4, !dbg !37
  %cmp2 = icmp slt i32 %2, -6282, !dbg !38
  br i1 %cmp2, label %while.body3, label %while.end4, !dbg !36

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, i32* %rad.addr, align 4, !dbg !39
  %add = add nsw i32 %3, 6282, !dbg !39
  store i32 %add, i32* %rad.addr, align 4, !dbg !39
  br label %while.cond1, !dbg !36, !llvm.loop !40

while.end4:                                       ; preds = %while.cond1
  %4 = load i32, i32* %rad.addr, align 4, !dbg !42
  store i32 %4, i32* %diff, align 4, !dbg !43
  %5 = load i32, i32* %diff, align 4, !dbg !44
  store i32 %5, i32* %app, align 4, !dbg !45
  %6 = load i32, i32* %diff, align 4, !dbg !46
  %7 = load i32, i32* %rad.addr, align 4, !dbg !47
  %8 = load i32, i32* %rad.addr, align 4, !dbg !48
  %mul = mul nsw i32 %7, %8, !dbg !49
  %sub5 = sub nsw i32 0, %mul, !dbg !50
  %mul6 = mul nsw i32 %6, %sub5, !dbg !51
  %9 = load i32, i32* %inc, align 4, !dbg !52
  %mul7 = mul nsw i32 2, %9, !dbg !53
  %10 = load i32, i32* %inc, align 4, !dbg !54
  %mul8 = mul nsw i32 2, %10, !dbg !55
  %add9 = add nsw i32 %mul8, 1, !dbg !56
  %mul10 = mul nsw i32 %mul7, %add9, !dbg !57
  %div = sdiv i32 %mul6, %mul10, !dbg !58
  store i32 %div, i32* %diff, align 4, !dbg !59
  %11 = load i32, i32* %app, align 4, !dbg !60
  %12 = load i32, i32* %diff, align 4, !dbg !61
  %add11 = add nsw i32 %11, %12, !dbg !62
  store i32 %add11, i32* %app, align 4, !dbg !63
  %13 = load i32, i32* %inc, align 4, !dbg !64
  %inc12 = add nsw i32 %13, 1, !dbg !64
  store i32 %inc12, i32* %inc, align 4, !dbg !64
  br label %while.cond13, !dbg !65

while.cond13:                                     ; preds = %while.body15, %while.end4
  %14 = load i32, i32* %diff, align 4, !dbg !66
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_fabs(i32 noundef %14) #1, !dbg !67
  %cmp14 = icmp sge i32 %call, 1, !dbg !68
  br i1 %cmp14, label %while.body15, label %while.end26, !dbg !65

while.body15:                                     ; preds = %while.cond13
  %15 = load i32, i32* %diff, align 4, !dbg !69
  %16 = load i32, i32* %rad.addr, align 4, !dbg !70
  %17 = load i32, i32* %rad.addr, align 4, !dbg !71
  %mul16 = mul nsw i32 %16, %17, !dbg !72
  %sub17 = sub nsw i32 0, %mul16, !dbg !73
  %mul18 = mul nsw i32 %15, %sub17, !dbg !74
  %18 = load i32, i32* %inc, align 4, !dbg !75
  %mul19 = mul nsw i32 2, %18, !dbg !76
  %19 = load i32, i32* %inc, align 4, !dbg !77
  %mul20 = mul nsw i32 2, %19, !dbg !78
  %add21 = add nsw i32 %mul20, 1, !dbg !79
  %mul22 = mul nsw i32 %mul19, %add21, !dbg !80
  %div23 = sdiv i32 %mul18, %mul22, !dbg !81
  store i32 %div23, i32* %diff, align 4, !dbg !82
  %20 = load i32, i32* %app, align 4, !dbg !83
  %21 = load i32, i32* %diff, align 4, !dbg !84
  %add24 = add nsw i32 %20, %21, !dbg !85
  store i32 %add24, i32* %app, align 4, !dbg !86
  %22 = load i32, i32* %inc, align 4, !dbg !87
  %inc25 = add nsw i32 %22, 1, !dbg !87
  store i32 %inc25, i32* %inc, align 4, !dbg !87
  br label %while.cond13, !dbg !65, !llvm.loop !88

while.end26:                                      ; preds = %while.cond13
  %23 = load i32, i32* %app, align 4, !dbg !90
  ret i32 %23, !dbg !91
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_cos(i32 noundef %rad) #0 !dbg !92 {
entry:
  %rad.addr = alloca i32, align 4
  store i32 %rad, i32* %rad.addr, align 4
  %0 = load i32, i32* %rad.addr, align 4, !dbg !93
  %sub = sub nsw i32 1570, %0, !dbg !94
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_sin(i32 noundef %sub) #1, !dbg !95
  ret i32 %call, !dbg !96
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_decode(i32 noundef %input) #0 !dbg !97 {
entry:
  %input.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %xa1 = alloca i32, align 4
  %xa2 = alloca i32, align 4
  %h_ptr = alloca i32*, align 4
  %ac_ptr = alloca i32*, align 4
  %ac_ptr1 = alloca i32*, align 4
  %ad_ptr = alloca i32*, align 4
  %ad_ptr1 = alloca i32*, align 4
  store i32 %input, i32* %input.addr, align 4
  %0 = load i32, i32* %input.addr, align 4, !dbg !98
  %and = and i32 %0, 63, !dbg !99
  store i32 %and, i32* @adpcm_dec_ilr, align 4, !dbg !100
  %1 = load i32, i32* %input.addr, align 4, !dbg !101
  %shr = ashr i32 %1, 6, !dbg !102
  store i32 %shr, i32* @adpcm_dec_ih, align 4, !dbg !103
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bpl, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dltx, i32 0, i32 0)) #1, !dbg !104
  store i32 %call, i32* @adpcm_dec_dec_szl, align 4, !dbg !105
  %2 = load i32, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !106
  %3 = load i32, i32* @adpcm_dec_dec_al1, align 4, !dbg !107
  %4 = load i32, i32* @adpcm_dec_dec_rlt2, align 4, !dbg !108
  %5 = load i32, i32* @adpcm_dec_dec_al2, align 4, !dbg !109
  %call1 = call arm_aapcs_vfpcc i32 @adpcm_dec_filtep(i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1, !dbg !110
  store i32 %call1, i32* @adpcm_dec_dec_spl, align 4, !dbg !111
  %6 = load i32, i32* @adpcm_dec_dec_spl, align 4, !dbg !112
  %7 = load i32, i32* @adpcm_dec_dec_szl, align 4, !dbg !113
  %add = add nsw i32 %6, %7, !dbg !114
  store i32 %add, i32* @adpcm_dec_dec_sl, align 4, !dbg !115
  %8 = load i32, i32* @adpcm_dec_dec_detl, align 4, !dbg !116
  %9 = load i32, i32* @adpcm_dec_ilr, align 4, !dbg !117
  %shr2 = ashr i32 %9, 2, !dbg !118
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @adpcm_dec_qq4_code4_table, i32 0, i32 %shr2, !dbg !119
  %10 = load i32, i32* %arrayidx, align 4, !dbg !119
  %mul = mul nsw i32 %8, %10, !dbg !120
  %shr3 = ashr i32 %mul, 15, !dbg !121
  store i32 %shr3, i32* @adpcm_dec_dec_dlt, align 4, !dbg !122
  %11 = load i32, i32* @adpcm_dec_dec_detl, align 4, !dbg !123
  %12 = load i32, i32* @adpcm_dec_il, align 4, !dbg !124
  %arrayidx4 = getelementptr inbounds [64 x i32], [64 x i32]* @adpcm_dec_qq6_code6_table, i32 0, i32 %12, !dbg !125
  %13 = load i32, i32* %arrayidx4, align 4, !dbg !125
  %mul5 = mul nsw i32 %11, %13, !dbg !126
  %shr6 = ashr i32 %mul5, 15, !dbg !127
  store i32 %shr6, i32* @adpcm_dec_dl, align 4, !dbg !128
  %14 = load i32, i32* @adpcm_dec_dl, align 4, !dbg !129
  %15 = load i32, i32* @adpcm_dec_dec_sl, align 4, !dbg !130
  %add7 = add nsw i32 %14, %15, !dbg !131
  store i32 %add7, i32* @adpcm_dec_rl, align 4, !dbg !132
  %16 = load i32, i32* @adpcm_dec_ilr, align 4, !dbg !133
  %17 = load i32, i32* @adpcm_dec_dec_nbl, align 4, !dbg !134
  %call8 = call arm_aapcs_vfpcc i32 @adpcm_dec_logscl(i32 noundef %16, i32 noundef %17) #1, !dbg !135
  store i32 %call8, i32* @adpcm_dec_dec_nbl, align 4, !dbg !136
  %18 = load i32, i32* @adpcm_dec_dec_nbl, align 4, !dbg !137
  %call9 = call arm_aapcs_vfpcc i32 @adpcm_dec_scalel(i32 noundef %18, i32 noundef 8) #1, !dbg !138
  store i32 %call9, i32* @adpcm_dec_dec_detl, align 4, !dbg !139
  %19 = load i32, i32* @adpcm_dec_dec_dlt, align 4, !dbg !140
  %20 = load i32, i32* @adpcm_dec_dec_szl, align 4, !dbg !141
  %add10 = add nsw i32 %19, %20, !dbg !142
  store i32 %add10, i32* @adpcm_dec_dec_plt, align 4, !dbg !143
  %21 = load i32, i32* @adpcm_dec_dec_dlt, align 4, !dbg !144
  call arm_aapcs_vfpcc void @adpcm_dec_upzero(i32 noundef %21, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dltx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bpl, i32 0, i32 0)) #1, !dbg !145
  %22 = load i32, i32* @adpcm_dec_dec_al1, align 4, !dbg !146
  %23 = load i32, i32* @adpcm_dec_dec_al2, align 4, !dbg !147
  %24 = load i32, i32* @adpcm_dec_dec_plt, align 4, !dbg !148
  %25 = load i32, i32* @adpcm_dec_dec_plt1, align 4, !dbg !149
  %26 = load i32, i32* @adpcm_dec_dec_plt2, align 4, !dbg !150
  %call11 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol2(i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26) #1, !dbg !151
  store i32 %call11, i32* @adpcm_dec_dec_al2, align 4, !dbg !152
  %27 = load i32, i32* @adpcm_dec_dec_al1, align 4, !dbg !153
  %28 = load i32, i32* @adpcm_dec_dec_al2, align 4, !dbg !154
  %29 = load i32, i32* @adpcm_dec_dec_plt, align 4, !dbg !155
  %30 = load i32, i32* @adpcm_dec_dec_plt1, align 4, !dbg !156
  %call12 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol1(i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30) #1, !dbg !157
  store i32 %call12, i32* @adpcm_dec_dec_al1, align 4, !dbg !158
  %31 = load i32, i32* @adpcm_dec_dec_sl, align 4, !dbg !159
  %32 = load i32, i32* @adpcm_dec_dec_dlt, align 4, !dbg !160
  %add13 = add nsw i32 %31, %32, !dbg !161
  store i32 %add13, i32* @adpcm_dec_dec_rlt, align 4, !dbg !162
  %33 = load i32, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !163
  store i32 %33, i32* @adpcm_dec_dec_rlt2, align 4, !dbg !164
  %34 = load i32, i32* @adpcm_dec_dec_rlt, align 4, !dbg !165
  store i32 %34, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !166
  %35 = load i32, i32* @adpcm_dec_dec_plt1, align 4, !dbg !167
  store i32 %35, i32* @adpcm_dec_dec_plt2, align 4, !dbg !168
  %36 = load i32, i32* @adpcm_dec_dec_plt, align 4, !dbg !169
  store i32 %36, i32* @adpcm_dec_dec_plt1, align 4, !dbg !170
  %call14 = call arm_aapcs_vfpcc i32 @adpcm_dec_filtez(i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bph, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dhx, i32 0, i32 0)) #1, !dbg !171
  store i32 %call14, i32* @adpcm_dec_dec_szh, align 4, !dbg !172
  %37 = load i32, i32* @adpcm_dec_dec_rh1, align 4, !dbg !173
  %38 = load i32, i32* @adpcm_dec_dec_ah1, align 4, !dbg !174
  %39 = load i32, i32* @adpcm_dec_dec_rh2, align 4, !dbg !175
  %40 = load i32, i32* @adpcm_dec_dec_ah2, align 4, !dbg !176
  %call15 = call arm_aapcs_vfpcc i32 @adpcm_dec_filtep(i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40) #1, !dbg !177
  store i32 %call15, i32* @adpcm_dec_dec_sph, align 4, !dbg !178
  %41 = load i32, i32* @adpcm_dec_dec_sph, align 4, !dbg !179
  %42 = load i32, i32* @adpcm_dec_dec_szh, align 4, !dbg !180
  %add16 = add nsw i32 %41, %42, !dbg !181
  store i32 %add16, i32* @adpcm_dec_dec_sh, align 4, !dbg !182
  %43 = load i32, i32* @adpcm_dec_dec_deth, align 4, !dbg !183
  %44 = load i32, i32* @adpcm_dec_ih, align 4, !dbg !184
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* @adpcm_dec_qq2_code2_table, i32 0, i32 %44, !dbg !185
  %45 = load i32, i32* %arrayidx17, align 4, !dbg !185
  %mul18 = mul nsw i32 %43, %45, !dbg !186
  %shr19 = ashr i32 %mul18, 15, !dbg !187
  store i32 %shr19, i32* @adpcm_dec_dec_dh, align 4, !dbg !188
  %46 = load i32, i32* @adpcm_dec_ih, align 4, !dbg !189
  %47 = load i32, i32* @adpcm_dec_dec_nbh, align 4, !dbg !190
  %call20 = call arm_aapcs_vfpcc i32 @adpcm_dec_logsch(i32 noundef %46, i32 noundef %47) #1, !dbg !191
  store i32 %call20, i32* @adpcm_dec_dec_nbh, align 4, !dbg !192
  %48 = load i32, i32* @adpcm_dec_dec_nbh, align 4, !dbg !193
  %call21 = call arm_aapcs_vfpcc i32 @adpcm_dec_scalel(i32 noundef %48, i32 noundef 10) #1, !dbg !194
  store i32 %call21, i32* @adpcm_dec_dec_deth, align 4, !dbg !195
  %49 = load i32, i32* @adpcm_dec_dec_dh, align 4, !dbg !196
  %50 = load i32, i32* @adpcm_dec_dec_szh, align 4, !dbg !197
  %add22 = add nsw i32 %49, %50, !dbg !198
  store i32 %add22, i32* @adpcm_dec_dec_ph, align 4, !dbg !199
  %51 = load i32, i32* @adpcm_dec_dec_dh, align 4, !dbg !200
  call arm_aapcs_vfpcc void @adpcm_dec_upzero(i32 noundef %51, i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_dhx, i32 0, i32 0), i32* noundef getelementptr inbounds ([6 x i32], [6 x i32]* @adpcm_dec_dec_del_bph, i32 0, i32 0)) #1, !dbg !201
  %52 = load i32, i32* @adpcm_dec_dec_ah1, align 4, !dbg !202
  %53 = load i32, i32* @adpcm_dec_dec_ah2, align 4, !dbg !203
  %54 = load i32, i32* @adpcm_dec_dec_ph, align 4, !dbg !204
  %55 = load i32, i32* @adpcm_dec_dec_ph1, align 4, !dbg !205
  %56 = load i32, i32* @adpcm_dec_dec_ph2, align 4, !dbg !206
  %call23 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol2(i32 noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56) #1, !dbg !207
  store i32 %call23, i32* @adpcm_dec_dec_ah2, align 4, !dbg !208
  %57 = load i32, i32* @adpcm_dec_dec_ah1, align 4, !dbg !209
  %58 = load i32, i32* @adpcm_dec_dec_ah2, align 4, !dbg !210
  %59 = load i32, i32* @adpcm_dec_dec_ph, align 4, !dbg !211
  %60 = load i32, i32* @adpcm_dec_dec_ph1, align 4, !dbg !212
  %call24 = call arm_aapcs_vfpcc i32 @adpcm_dec_uppol1(i32 noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60) #1, !dbg !213
  store i32 %call24, i32* @adpcm_dec_dec_ah1, align 4, !dbg !214
  %61 = load i32, i32* @adpcm_dec_dec_sh, align 4, !dbg !215
  %62 = load i32, i32* @adpcm_dec_dec_dh, align 4, !dbg !216
  %add25 = add nsw i32 %61, %62, !dbg !217
  store i32 %add25, i32* @adpcm_dec_rh, align 4, !dbg !218
  %63 = load i32, i32* @adpcm_dec_dec_rh1, align 4, !dbg !219
  store i32 %63, i32* @adpcm_dec_dec_rh2, align 4, !dbg !220
  %64 = load i32, i32* @adpcm_dec_rh, align 4, !dbg !221
  store i32 %64, i32* @adpcm_dec_dec_rh1, align 4, !dbg !222
  %65 = load i32, i32* @adpcm_dec_dec_ph1, align 4, !dbg !223
  store i32 %65, i32* @adpcm_dec_dec_ph2, align 4, !dbg !224
  %66 = load i32, i32* @adpcm_dec_dec_ph, align 4, !dbg !225
  store i32 %66, i32* @adpcm_dec_dec_ph1, align 4, !dbg !226
  %67 = load i32, i32* @adpcm_dec_rl, align 4, !dbg !227
  %68 = load i32, i32* @adpcm_dec_rh, align 4, !dbg !228
  %sub = sub nsw i32 %67, %68, !dbg !229
  store i32 %sub, i32* @adpcm_dec_xd, align 4, !dbg !230
  %69 = load i32, i32* @adpcm_dec_rl, align 4, !dbg !231
  %70 = load i32, i32* @adpcm_dec_rh, align 4, !dbg !232
  %add26 = add nsw i32 %69, %70, !dbg !233
  store i32 %add26, i32* @adpcm_dec_xs, align 4, !dbg !234
  store i32* getelementptr inbounds ([24 x i32], [24 x i32]* @adpcm_dec_h, i32 0, i32 0), i32** %h_ptr, align 4, !dbg !235
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 0), i32** %ac_ptr, align 4, !dbg !236
  store i32* getelementptr inbounds ([11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 0), i32** %ad_ptr, align 4, !dbg !237
  %71 = load i32, i32* @adpcm_dec_xd, align 4, !dbg !238
  %72 = load i32*, i32** %h_ptr, align 4, !dbg !239
  %incdec.ptr = getelementptr inbounds i32, i32* %72, i32 1, !dbg !239
  store i32* %incdec.ptr, i32** %h_ptr, align 4, !dbg !239
  %73 = load i32, i32* %72, align 4, !dbg !240
  %mul27 = mul nsw i32 %71, %73, !dbg !241
  store i32 %mul27, i32* %xa1, align 4, !dbg !242
  %74 = load i32, i32* @adpcm_dec_xs, align 4, !dbg !243
  %75 = load i32*, i32** %h_ptr, align 4, !dbg !244
  %incdec.ptr28 = getelementptr inbounds i32, i32* %75, i32 1, !dbg !244
  store i32* %incdec.ptr28, i32** %h_ptr, align 4, !dbg !244
  %76 = load i32, i32* %75, align 4, !dbg !245
  %mul29 = mul nsw i32 %74, %76, !dbg !246
  store i32 %mul29, i32* %xa2, align 4, !dbg !247
  store i32 0, i32* %i, align 4, !dbg !248
  br label %for.cond, !dbg !249

for.cond:                                         ; preds = %for.inc, %entry
  %77 = load i32, i32* %i, align 4, !dbg !250
  %cmp = icmp slt i32 %77, 10, !dbg !251
  br i1 %cmp, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  %78 = load i32*, i32** %ac_ptr, align 4, !dbg !253
  %incdec.ptr30 = getelementptr inbounds i32, i32* %78, i32 1, !dbg !253
  store i32* %incdec.ptr30, i32** %ac_ptr, align 4, !dbg !253
  %79 = load i32, i32* %78, align 4, !dbg !254
  %80 = load i32*, i32** %h_ptr, align 4, !dbg !255
  %incdec.ptr31 = getelementptr inbounds i32, i32* %80, i32 1, !dbg !255
  store i32* %incdec.ptr31, i32** %h_ptr, align 4, !dbg !255
  %81 = load i32, i32* %80, align 4, !dbg !256
  %mul32 = mul nsw i32 %79, %81, !dbg !257
  %82 = load i32, i32* %xa1, align 4, !dbg !258
  %add33 = add nsw i32 %82, %mul32, !dbg !258
  store i32 %add33, i32* %xa1, align 4, !dbg !258
  %83 = load i32*, i32** %ad_ptr, align 4, !dbg !259
  %incdec.ptr34 = getelementptr inbounds i32, i32* %83, i32 1, !dbg !259
  store i32* %incdec.ptr34, i32** %ad_ptr, align 4, !dbg !259
  %84 = load i32, i32* %83, align 4, !dbg !260
  %85 = load i32*, i32** %h_ptr, align 4, !dbg !261
  %incdec.ptr35 = getelementptr inbounds i32, i32* %85, i32 1, !dbg !261
  store i32* %incdec.ptr35, i32** %h_ptr, align 4, !dbg !261
  %86 = load i32, i32* %85, align 4, !dbg !262
  %mul36 = mul nsw i32 %84, %86, !dbg !263
  %87 = load i32, i32* %xa2, align 4, !dbg !264
  %add37 = add nsw i32 %87, %mul36, !dbg !264
  store i32 %add37, i32* %xa2, align 4, !dbg !264
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %88 = load i32, i32* %i, align 4, !dbg !266
  %inc = add nsw i32 %88, 1, !dbg !266
  store i32 %inc, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !252, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %89 = load i32*, i32** %ac_ptr, align 4, !dbg !268
  %90 = load i32, i32* %89, align 4, !dbg !269
  %91 = load i32*, i32** %h_ptr, align 4, !dbg !270
  %incdec.ptr38 = getelementptr inbounds i32, i32* %91, i32 1, !dbg !270
  store i32* %incdec.ptr38, i32** %h_ptr, align 4, !dbg !270
  %92 = load i32, i32* %91, align 4, !dbg !271
  %mul39 = mul nsw i32 %90, %92, !dbg !272
  %93 = load i32, i32* %xa1, align 4, !dbg !273
  %add40 = add nsw i32 %93, %mul39, !dbg !273
  store i32 %add40, i32* %xa1, align 4, !dbg !273
  %94 = load i32*, i32** %ad_ptr, align 4, !dbg !274
  %95 = load i32, i32* %94, align 4, !dbg !275
  %96 = load i32*, i32** %h_ptr, align 4, !dbg !276
  %incdec.ptr41 = getelementptr inbounds i32, i32* %96, i32 1, !dbg !276
  store i32* %incdec.ptr41, i32** %h_ptr, align 4, !dbg !276
  %97 = load i32, i32* %96, align 4, !dbg !277
  %mul42 = mul nsw i32 %95, %97, !dbg !278
  %98 = load i32, i32* %xa2, align 4, !dbg !279
  %add43 = add nsw i32 %98, %mul42, !dbg !279
  store i32 %add43, i32* %xa2, align 4, !dbg !279
  %99 = load i32, i32* %xa1, align 4, !dbg !280
  %shr44 = ashr i32 %99, 14, !dbg !281
  store i32 %shr44, i32* @adpcm_dec_xout1, align 4, !dbg !282
  %100 = load i32, i32* %xa2, align 4, !dbg !283
  %shr45 = ashr i32 %100, 14, !dbg !284
  store i32 %shr45, i32* @adpcm_dec_xout2, align 4, !dbg !285
  %101 = load i32*, i32** %ac_ptr, align 4, !dbg !286
  %add.ptr = getelementptr inbounds i32, i32* %101, i32 -1, !dbg !287
  store i32* %add.ptr, i32** %ac_ptr1, align 4, !dbg !288
  %102 = load i32*, i32** %ad_ptr, align 4, !dbg !289
  %add.ptr46 = getelementptr inbounds i32, i32* %102, i32 -1, !dbg !290
  store i32* %add.ptr46, i32** %ad_ptr1, align 4, !dbg !291
  store i32 0, i32* %i, align 4, !dbg !292
  br label %for.cond47, !dbg !293

for.cond47:                                       ; preds = %for.inc54, %for.end
  %103 = load i32, i32* %i, align 4, !dbg !294
  %cmp48 = icmp slt i32 %103, 10, !dbg !295
  br i1 %cmp48, label %for.body49, label %for.end56, !dbg !296

for.body49:                                       ; preds = %for.cond47
  %104 = load i32*, i32** %ac_ptr1, align 4, !dbg !297
  %incdec.ptr50 = getelementptr inbounds i32, i32* %104, i32 -1, !dbg !297
  store i32* %incdec.ptr50, i32** %ac_ptr1, align 4, !dbg !297
  %105 = load i32, i32* %104, align 4, !dbg !298
  %106 = load i32*, i32** %ac_ptr, align 4, !dbg !299
  %incdec.ptr51 = getelementptr inbounds i32, i32* %106, i32 -1, !dbg !299
  store i32* %incdec.ptr51, i32** %ac_ptr, align 4, !dbg !299
  store i32 %105, i32* %106, align 4, !dbg !300
  %107 = load i32*, i32** %ad_ptr1, align 4, !dbg !301
  %incdec.ptr52 = getelementptr inbounds i32, i32* %107, i32 -1, !dbg !301
  store i32* %incdec.ptr52, i32** %ad_ptr1, align 4, !dbg !301
  %108 = load i32, i32* %107, align 4, !dbg !302
  %109 = load i32*, i32** %ad_ptr, align 4, !dbg !303
  %incdec.ptr53 = getelementptr inbounds i32, i32* %109, i32 -1, !dbg !303
  store i32* %incdec.ptr53, i32** %ad_ptr, align 4, !dbg !303
  store i32 %108, i32* %109, align 4, !dbg !304
  br label %for.inc54, !dbg !305

for.inc54:                                        ; preds = %for.body49
  %110 = load i32, i32* %i, align 4, !dbg !306
  %inc55 = add nsw i32 %110, 1, !dbg !306
  store i32 %inc55, i32* %i, align 4, !dbg !306
  br label %for.cond47, !dbg !296, !llvm.loop !307

for.end56:                                        ; preds = %for.cond47
  %111 = load i32, i32* @adpcm_dec_xd, align 4, !dbg !308
  %112 = load i32*, i32** %ac_ptr, align 4, !dbg !309
  store i32 %111, i32* %112, align 4, !dbg !310
  %113 = load i32, i32* @adpcm_dec_xs, align 4, !dbg !311
  %114 = load i32*, i32** %ad_ptr, align 4, !dbg !312
  store i32 %113, i32* %114, align 4, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_filtez(i32* noundef %bpl, i32* noundef %dlt) #0 !dbg !315 {
entry:
  %bpl.addr = alloca i32*, align 4
  %dlt.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %zl = alloca i32, align 4
  store i32* %bpl, i32** %bpl.addr, align 4
  store i32* %dlt, i32** %dlt.addr, align 4
  %0 = load i32*, i32** %bpl.addr, align 4, !dbg !316
  %incdec.ptr = getelementptr inbounds i32, i32* %0, i32 1, !dbg !316
  store i32* %incdec.ptr, i32** %bpl.addr, align 4, !dbg !316
  %1 = load i32, i32* %0, align 4, !dbg !317
  %2 = load i32*, i32** %dlt.addr, align 4, !dbg !318
  %incdec.ptr1 = getelementptr inbounds i32, i32* %2, i32 1, !dbg !318
  store i32* %incdec.ptr1, i32** %dlt.addr, align 4, !dbg !318
  %3 = load i32, i32* %2, align 4, !dbg !319
  %mul = mul nsw i32 %1, %3, !dbg !320
  store i32 %mul, i32* %zl, align 4, !dbg !321
  store i32 1, i32* %i, align 4, !dbg !322
  br label %for.cond, !dbg !323

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !324
  %cmp = icmp slt i32 %4, 6, !dbg !325
  br i1 %cmp, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %bpl.addr, align 4, !dbg !327
  %incdec.ptr2 = getelementptr inbounds i32, i32* %5, i32 1, !dbg !327
  store i32* %incdec.ptr2, i32** %bpl.addr, align 4, !dbg !327
  %6 = load i32, i32* %5, align 4, !dbg !328
  %7 = load i32*, i32** %dlt.addr, align 4, !dbg !329
  %incdec.ptr3 = getelementptr inbounds i32, i32* %7, i32 1, !dbg !329
  store i32* %incdec.ptr3, i32** %dlt.addr, align 4, !dbg !329
  %8 = load i32, i32* %7, align 4, !dbg !330
  %mul4 = mul nsw i32 %6, %8, !dbg !331
  %9 = load i32, i32* %zl, align 4, !dbg !332
  %add = add nsw i32 %9, %mul4, !dbg !332
  store i32 %add, i32* %zl, align 4, !dbg !332
  br label %for.inc, !dbg !333

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !334
  %inc = add nsw i32 %10, 1, !dbg !334
  store i32 %inc, i32* %i, align 4, !dbg !334
  br label %for.cond, !dbg !326, !llvm.loop !335

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %zl, align 4, !dbg !337
  %shr = ashr i32 %11, 14, !dbg !338
  ret i32 %shr, !dbg !339
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_filtep(i32 noundef %rlt1, i32 noundef %al1, i32 noundef %rlt2, i32 noundef %al2) #0 !dbg !340 {
entry:
  %rlt1.addr = alloca i32, align 4
  %al1.addr = alloca i32, align 4
  %rlt2.addr = alloca i32, align 4
  %al2.addr = alloca i32, align 4
  %pl = alloca i32, align 4
  %pl2 = alloca i32, align 4
  store i32 %rlt1, i32* %rlt1.addr, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %rlt2, i32* %rlt2.addr, align 4
  store i32 %al2, i32* %al2.addr, align 4
  %0 = load i32, i32* %rlt1.addr, align 4, !dbg !341
  %mul = mul nsw i32 2, %0, !dbg !342
  store i32 %mul, i32* %pl, align 4, !dbg !343
  %1 = load i32, i32* %al1.addr, align 4, !dbg !344
  %2 = load i32, i32* %pl, align 4, !dbg !345
  %mul1 = mul nsw i32 %1, %2, !dbg !346
  store i32 %mul1, i32* %pl, align 4, !dbg !347
  %3 = load i32, i32* %rlt2.addr, align 4, !dbg !348
  %mul2 = mul nsw i32 2, %3, !dbg !349
  store i32 %mul2, i32* %pl2, align 4, !dbg !350
  %4 = load i32, i32* %al2.addr, align 4, !dbg !351
  %5 = load i32, i32* %pl2, align 4, !dbg !352
  %mul3 = mul nsw i32 %4, %5, !dbg !353
  %6 = load i32, i32* %pl, align 4, !dbg !354
  %add = add nsw i32 %6, %mul3, !dbg !354
  store i32 %add, i32* %pl, align 4, !dbg !354
  %7 = load i32, i32* %pl, align 4, !dbg !355
  %shr = ashr i32 %7, 15, !dbg !356
  ret i32 %shr, !dbg !357
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_logscl(i32 noundef %il, i32 noundef %nbl) #0 !dbg !358 {
entry:
  %il.addr = alloca i32, align 4
  %nbl.addr = alloca i32, align 4
  %wd = alloca i32, align 4
  store i32 %il, i32* %il.addr, align 4
  store i32 %nbl, i32* %nbl.addr, align 4
  %0 = load i32, i32* %nbl.addr, align 4, !dbg !359
  %mul = mul nsw i32 %0, 127, !dbg !360
  %shr = ashr i32 %mul, 7, !dbg !361
  store i32 %shr, i32* %wd, align 4, !dbg !362
  %1 = load i32, i32* %wd, align 4, !dbg !363
  %2 = load i32, i32* %il.addr, align 4, !dbg !364
  %shr1 = ashr i32 %2, 2, !dbg !365
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @adpcm_dec_wl_code_table, i32 0, i32 %shr1, !dbg !366
  %3 = load i32, i32* %arrayidx, align 4, !dbg !366
  %add = add nsw i32 %1, %3, !dbg !367
  store i32 %add, i32* %nbl.addr, align 4, !dbg !368
  %4 = load i32, i32* %nbl.addr, align 4, !dbg !369
  %cmp = icmp slt i32 %4, 0, !dbg !370
  br i1 %cmp, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %entry
  store i32 0, i32* %nbl.addr, align 4, !dbg !371
  br label %if.end, !dbg !372

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nbl.addr, align 4, !dbg !373
  %cmp2 = icmp sgt i32 %5, 18432, !dbg !374
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !373

if.then3:                                         ; preds = %if.end
  store i32 18432, i32* %nbl.addr, align 4, !dbg !375
  br label %if.end4, !dbg !376

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %nbl.addr, align 4, !dbg !377
  ret i32 %6, !dbg !378
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_scalel(i32 noundef %nbl, i32 noundef %shift_constant) #0 !dbg !379 {
entry:
  %nbl.addr = alloca i32, align 4
  %shift_constant.addr = alloca i32, align 4
  %wd1 = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  store i32 %nbl, i32* %nbl.addr, align 4
  store i32 %shift_constant, i32* %shift_constant.addr, align 4
  %0 = load i32, i32* %nbl.addr, align 4, !dbg !380
  %shr = ashr i32 %0, 6, !dbg !381
  %and = and i32 %shr, 31, !dbg !382
  store i32 %and, i32* %wd1, align 4, !dbg !383
  %1 = load i32, i32* %nbl.addr, align 4, !dbg !384
  %shr1 = ashr i32 %1, 11, !dbg !385
  store i32 %shr1, i32* %wd2, align 4, !dbg !386
  %2 = load i32, i32* %wd1, align 4, !dbg !387
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* @adpcm_dec_ilb_table, i32 0, i32 %2, !dbg !388
  %3 = load i32, i32* %arrayidx, align 4, !dbg !388
  %4 = load i32, i32* %shift_constant.addr, align 4, !dbg !389
  %add = add nsw i32 %4, 1, !dbg !390
  %5 = load i32, i32* %wd2, align 4, !dbg !391
  %sub = sub nsw i32 %add, %5, !dbg !392
  %shr2 = ashr i32 %3, %sub, !dbg !393
  store i32 %shr2, i32* %wd3, align 4, !dbg !394
  %6 = load i32, i32* %wd3, align 4, !dbg !395
  %shl = shl i32 %6, 3, !dbg !396
  ret i32 %shl, !dbg !397
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_upzero(i32 noundef %dlt, i32* noundef %dlti, i32* noundef %bli) #0 !dbg !398 {
entry:
  %dlt.addr = alloca i32, align 4
  %dlti.addr = alloca i32*, align 4
  %bli.addr = alloca i32*, align 4
  %i = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  store i32 %dlt, i32* %dlt.addr, align 4
  store i32* %dlti, i32** %dlti.addr, align 4
  store i32* %bli, i32** %bli.addr, align 4
  %0 = load i32, i32* %dlt.addr, align 4, !dbg !399
  %cmp = icmp eq i32 %0, 0, !dbg !400
  br i1 %cmp, label %if.then, label %if.else, !dbg !399

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !401
  br label %for.cond, !dbg !402

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !403
  %cmp1 = icmp slt i32 %1, 6, !dbg !404
  br i1 %cmp1, label %for.body, label %for.end, !dbg !405

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %bli.addr, align 4, !dbg !406
  %3 = load i32, i32* %i, align 4, !dbg !407
  %arrayidx = getelementptr inbounds i32, i32* %2, i32 %3, !dbg !406
  %4 = load i32, i32* %arrayidx, align 4, !dbg !406
  %mul = mul nsw i32 255, %4, !dbg !408
  %shr = ashr i32 %mul, 8, !dbg !409
  %5 = load i32*, i32** %bli.addr, align 4, !dbg !410
  %6 = load i32, i32* %i, align 4, !dbg !411
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i32 %6, !dbg !410
  store i32 %shr, i32* %arrayidx2, align 4, !dbg !412
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !414
  %inc = add nsw i32 %7, 1, !dbg !414
  store i32 %inc, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !405, !llvm.loop !415

for.end:                                          ; preds = %for.cond
  br label %if.end18, !dbg !416

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !417
  br label %for.cond3, !dbg !418

for.cond3:                                        ; preds = %for.inc15, %if.else
  %8 = load i32, i32* %i, align 4, !dbg !419
  %cmp4 = icmp slt i32 %8, 6, !dbg !420
  br i1 %cmp4, label %for.body5, label %for.end17, !dbg !421

for.body5:                                        ; preds = %for.cond3
  %9 = load i32, i32* %dlt.addr, align 4, !dbg !422
  %10 = load i32*, i32** %dlti.addr, align 4, !dbg !423
  %11 = load i32, i32* %i, align 4, !dbg !424
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i32 %11, !dbg !423
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !423
  %mul7 = mul nsw i32 %9, %12, !dbg !425
  %cmp8 = icmp sge i32 %mul7, 0, !dbg !426
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !427

if.then9:                                         ; preds = %for.body5
  store i32 128, i32* %wd2, align 4, !dbg !428
  br label %if.end, !dbg !429

if.else10:                                        ; preds = %for.body5
  store i32 -128, i32* %wd2, align 4, !dbg !430
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  %13 = load i32*, i32** %bli.addr, align 4, !dbg !431
  %14 = load i32, i32* %i, align 4, !dbg !432
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i32 %14, !dbg !431
  %15 = load i32, i32* %arrayidx11, align 4, !dbg !431
  %mul12 = mul nsw i32 255, %15, !dbg !433
  %shr13 = ashr i32 %mul12, 8, !dbg !434
  store i32 %shr13, i32* %wd3, align 4, !dbg !435
  %16 = load i32, i32* %wd2, align 4, !dbg !436
  %17 = load i32, i32* %wd3, align 4, !dbg !437
  %add = add nsw i32 %16, %17, !dbg !438
  %18 = load i32*, i32** %bli.addr, align 4, !dbg !439
  %19 = load i32, i32* %i, align 4, !dbg !440
  %arrayidx14 = getelementptr inbounds i32, i32* %18, i32 %19, !dbg !439
  store i32 %add, i32* %arrayidx14, align 4, !dbg !441
  br label %for.inc15, !dbg !442

for.inc15:                                        ; preds = %if.end
  %20 = load i32, i32* %i, align 4, !dbg !443
  %inc16 = add nsw i32 %20, 1, !dbg !443
  store i32 %inc16, i32* %i, align 4, !dbg !443
  br label %for.cond3, !dbg !421, !llvm.loop !444

for.end17:                                        ; preds = %for.cond3
  br label %if.end18

if.end18:                                         ; preds = %for.end17, %for.end
  %21 = load i32*, i32** %dlti.addr, align 4, !dbg !445
  %arrayidx19 = getelementptr inbounds i32, i32* %21, i32 4, !dbg !445
  %22 = load i32, i32* %arrayidx19, align 4, !dbg !445
  %23 = load i32*, i32** %dlti.addr, align 4, !dbg !446
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i32 5, !dbg !446
  store i32 %22, i32* %arrayidx20, align 4, !dbg !447
  %24 = load i32*, i32** %dlti.addr, align 4, !dbg !448
  %arrayidx21 = getelementptr inbounds i32, i32* %24, i32 3, !dbg !448
  %25 = load i32, i32* %arrayidx21, align 4, !dbg !448
  %26 = load i32*, i32** %dlti.addr, align 4, !dbg !449
  %arrayidx22 = getelementptr inbounds i32, i32* %26, i32 4, !dbg !449
  store i32 %25, i32* %arrayidx22, align 4, !dbg !450
  %27 = load i32*, i32** %dlti.addr, align 4, !dbg !451
  %arrayidx23 = getelementptr inbounds i32, i32* %27, i32 2, !dbg !451
  %28 = load i32, i32* %arrayidx23, align 4, !dbg !451
  %29 = load i32*, i32** %dlti.addr, align 4, !dbg !452
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i32 3, !dbg !452
  store i32 %28, i32* %arrayidx24, align 4, !dbg !453
  %30 = load i32*, i32** %dlti.addr, align 4, !dbg !454
  %arrayidx25 = getelementptr inbounds i32, i32* %30, i32 0, !dbg !454
  %31 = load i32, i32* %arrayidx25, align 4, !dbg !454
  %32 = load i32*, i32** %dlti.addr, align 4, !dbg !455
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i32 1, !dbg !455
  store i32 %31, i32* %arrayidx26, align 4, !dbg !456
  %33 = load i32, i32* %dlt.addr, align 4, !dbg !457
  %34 = load i32*, i32** %dlti.addr, align 4, !dbg !458
  %arrayidx27 = getelementptr inbounds i32, i32* %34, i32 0, !dbg !458
  store i32 %33, i32* %arrayidx27, align 4, !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_uppol2(i32 noundef %al1, i32 noundef %al2, i32 noundef %plt, i32 noundef %plt1, i32 noundef %plt2) #0 !dbg !461 {
entry:
  %al1.addr = alloca i32, align 4
  %al2.addr = alloca i32, align 4
  %plt.addr = alloca i32, align 4
  %plt1.addr = alloca i32, align 4
  %plt2.addr = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd4 = alloca i32, align 4
  %apl2 = alloca i32, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %al2, i32* %al2.addr, align 4
  store i32 %plt, i32* %plt.addr, align 4
  store i32 %plt1, i32* %plt1.addr, align 4
  store i32 %plt2, i32* %plt2.addr, align 4
  %0 = load i32, i32* %al1.addr, align 4, !dbg !462
  %mul = mul nsw i32 4, %0, !dbg !463
  store i32 %mul, i32* %wd2, align 4, !dbg !464
  %1 = load i32, i32* %plt.addr, align 4, !dbg !465
  %2 = load i32, i32* %plt1.addr, align 4, !dbg !466
  %mul1 = mul nsw i32 %1, %2, !dbg !467
  %cmp = icmp sge i32 %mul1, 0, !dbg !468
  br i1 %cmp, label %if.then, label %if.end, !dbg !469

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %wd2, align 4, !dbg !470
  %sub = sub nsw i32 0, %3, !dbg !471
  store i32 %sub, i32* %wd2, align 4, !dbg !472
  br label %if.end, !dbg !473

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %wd2, align 4, !dbg !474
  %shr = ashr i32 %4, 7, !dbg !475
  store i32 %shr, i32* %wd2, align 4, !dbg !476
  %5 = load i32, i32* %plt.addr, align 4, !dbg !477
  %6 = load i32, i32* %plt2.addr, align 4, !dbg !478
  %mul2 = mul nsw i32 %5, %6, !dbg !479
  %cmp3 = icmp sge i32 %mul2, 0, !dbg !480
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !481

if.then4:                                         ; preds = %if.end
  %7 = load i32, i32* %wd2, align 4, !dbg !482
  %add = add nsw i32 %7, 128, !dbg !483
  store i32 %add, i32* %wd4, align 4, !dbg !484
  br label %if.end6, !dbg !485

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %wd2, align 4, !dbg !486
  %sub5 = sub nsw i32 %8, 128, !dbg !487
  store i32 %sub5, i32* %wd4, align 4, !dbg !488
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %9 = load i32, i32* %wd4, align 4, !dbg !489
  %10 = load i32, i32* %al2.addr, align 4, !dbg !490
  %mul7 = mul nsw i32 127, %10, !dbg !491
  %shr8 = ashr i32 %mul7, 7, !dbg !492
  %add9 = add nsw i32 %9, %shr8, !dbg !493
  store i32 %add9, i32* %apl2, align 4, !dbg !494
  %11 = load i32, i32* %apl2, align 4, !dbg !495
  %cmp10 = icmp sgt i32 %11, 12288, !dbg !496
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !495

if.then11:                                        ; preds = %if.end6
  store i32 12288, i32* %apl2, align 4, !dbg !497
  br label %if.end12, !dbg !498

if.end12:                                         ; preds = %if.then11, %if.end6
  %12 = load i32, i32* %apl2, align 4, !dbg !499
  %cmp13 = icmp slt i32 %12, -12288, !dbg !500
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !499

if.then14:                                        ; preds = %if.end12
  store i32 -12288, i32* %apl2, align 4, !dbg !501
  br label %if.end15, !dbg !502

if.end15:                                         ; preds = %if.then14, %if.end12
  %13 = load i32, i32* %apl2, align 4, !dbg !503
  ret i32 %13, !dbg !504
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_uppol1(i32 noundef %al1, i32 noundef %apl2, i32 noundef %plt, i32 noundef %plt1) #0 !dbg !505 {
entry:
  %al1.addr = alloca i32, align 4
  %apl2.addr = alloca i32, align 4
  %plt.addr = alloca i32, align 4
  %plt1.addr = alloca i32, align 4
  %wd2 = alloca i32, align 4
  %wd3 = alloca i32, align 4
  %apl1 = alloca i32, align 4
  store i32 %al1, i32* %al1.addr, align 4
  store i32 %apl2, i32* %apl2.addr, align 4
  store i32 %plt, i32* %plt.addr, align 4
  store i32 %plt1, i32* %plt1.addr, align 4
  %0 = load i32, i32* %al1.addr, align 4, !dbg !506
  %mul = mul nsw i32 %0, 255, !dbg !507
  %shr = ashr i32 %mul, 8, !dbg !508
  store i32 %shr, i32* %wd2, align 4, !dbg !509
  %1 = load i32, i32* %plt.addr, align 4, !dbg !510
  %2 = load i32, i32* %plt1.addr, align 4, !dbg !511
  %mul1 = mul nsw i32 %1, %2, !dbg !512
  %cmp = icmp sge i32 %mul1, 0, !dbg !513
  br i1 %cmp, label %if.then, label %if.else, !dbg !514

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %wd2, align 4, !dbg !515
  %add = add nsw i32 %3, 192, !dbg !516
  store i32 %add, i32* %apl1, align 4, !dbg !517
  br label %if.end, !dbg !518

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %wd2, align 4, !dbg !519
  %sub = sub nsw i32 %4, 192, !dbg !520
  store i32 %sub, i32* %apl1, align 4, !dbg !521
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %apl2.addr, align 4, !dbg !522
  %sub2 = sub nsw i32 15360, %5, !dbg !523
  store i32 %sub2, i32* %wd3, align 4, !dbg !524
  %6 = load i32, i32* %apl1, align 4, !dbg !525
  %7 = load i32, i32* %wd3, align 4, !dbg !526
  %cmp3 = icmp sgt i32 %6, %7, !dbg !527
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !525

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %wd3, align 4, !dbg !528
  store i32 %8, i32* %apl1, align 4, !dbg !529
  br label %if.end5, !dbg !530

if.end5:                                          ; preds = %if.then4, %if.end
  %9 = load i32, i32* %apl1, align 4, !dbg !531
  %10 = load i32, i32* %wd3, align 4, !dbg !532
  %sub6 = sub nsw i32 0, %10, !dbg !533
  %cmp7 = icmp slt i32 %9, %sub6, !dbg !534
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !531

if.then8:                                         ; preds = %if.end5
  %11 = load i32, i32* %wd3, align 4, !dbg !535
  %sub9 = sub nsw i32 0, %11, !dbg !536
  store i32 %sub9, i32* %apl1, align 4, !dbg !537
  br label %if.end10, !dbg !538

if.end10:                                         ; preds = %if.then8, %if.end5
  %12 = load i32, i32* %apl1, align 4, !dbg !539
  ret i32 %12, !dbg !540
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_logsch(i32 noundef %ih, i32 noundef %nbh) #0 !dbg !541 {
entry:
  %ih.addr = alloca i32, align 4
  %nbh.addr = alloca i32, align 4
  %wd = alloca i32, align 4
  store i32 %ih, i32* %ih.addr, align 4
  store i32 %nbh, i32* %nbh.addr, align 4
  %0 = load i32, i32* %nbh.addr, align 4, !dbg !542
  %mul = mul nsw i32 %0, 127, !dbg !543
  %shr = ashr i32 %mul, 7, !dbg !544
  store i32 %shr, i32* %wd, align 4, !dbg !545
  %1 = load i32, i32* %wd, align 4, !dbg !546
  %2 = load i32, i32* %ih.addr, align 4, !dbg !547
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @adpcm_dec_wh_code_table, i32 0, i32 %2, !dbg !548
  %3 = load i32, i32* %arrayidx, align 4, !dbg !548
  %add = add nsw i32 %1, %3, !dbg !549
  store i32 %add, i32* %nbh.addr, align 4, !dbg !550
  %4 = load i32, i32* %nbh.addr, align 4, !dbg !551
  %cmp = icmp slt i32 %4, 0, !dbg !552
  br i1 %cmp, label %if.then, label %if.end, !dbg !551

if.then:                                          ; preds = %entry
  store i32 0, i32* %nbh.addr, align 4, !dbg !553
  br label %if.end, !dbg !554

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %nbh.addr, align 4, !dbg !555
  %cmp1 = icmp sgt i32 %5, 22528, !dbg !556
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !555

if.then2:                                         ; preds = %if.end
  store i32 22528, i32* %nbh.addr, align 4, !dbg !557
  br label %if.end3, !dbg !558

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %nbh.addr, align 4, !dbg !559
  ret i32 %6, !dbg !560
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_reset() #0 !dbg !561 {
entry:
  %i = alloca i32, align 4
  store i32 32, i32* @adpcm_dec_dec_detl, align 4, !dbg !562
  store i32 32, i32* @adpcm_dec_detl, align 4, !dbg !563
  store i32 8, i32* @adpcm_dec_dec_deth, align 4, !dbg !564
  store i32 8, i32* @adpcm_dec_deth, align 4, !dbg !565
  store i32 0, i32* @adpcm_dec_rlt2, align 4, !dbg !566
  store i32 0, i32* @adpcm_dec_rlt1, align 4, !dbg !567
  store i32 0, i32* @adpcm_dec_plt2, align 4, !dbg !568
  store i32 0, i32* @adpcm_dec_plt1, align 4, !dbg !569
  store i32 0, i32* @adpcm_dec_al2, align 4, !dbg !570
  store i32 0, i32* @adpcm_dec_al1, align 4, !dbg !571
  store i32 0, i32* @adpcm_dec_nbl, align 4, !dbg !572
  store i32 0, i32* @adpcm_dec_rh2, align 4, !dbg !573
  store i32 0, i32* @adpcm_dec_rh1, align 4, !dbg !574
  store i32 0, i32* @adpcm_dec_ph2, align 4, !dbg !575
  store i32 0, i32* @adpcm_dec_ph1, align 4, !dbg !576
  store i32 0, i32* @adpcm_dec_ah2, align 4, !dbg !577
  store i32 0, i32* @adpcm_dec_ah1, align 4, !dbg !578
  store i32 0, i32* @adpcm_dec_nbh, align 4, !dbg !579
  store i32 0, i32* @adpcm_dec_dec_rlt2, align 4, !dbg !580
  store i32 0, i32* @adpcm_dec_dec_rlt1, align 4, !dbg !581
  store i32 0, i32* @adpcm_dec_dec_plt2, align 4, !dbg !582
  store i32 0, i32* @adpcm_dec_dec_plt1, align 4, !dbg !583
  store i32 0, i32* @adpcm_dec_dec_al2, align 4, !dbg !584
  store i32 0, i32* @adpcm_dec_dec_al1, align 4, !dbg !585
  store i32 0, i32* @adpcm_dec_dec_nbl, align 4, !dbg !586
  store i32 0, i32* @adpcm_dec_dec_rh2, align 4, !dbg !587
  store i32 0, i32* @adpcm_dec_dec_rh1, align 4, !dbg !588
  store i32 0, i32* @adpcm_dec_dec_ph2, align 4, !dbg !589
  store i32 0, i32* @adpcm_dec_dec_ph1, align 4, !dbg !590
  store i32 0, i32* @adpcm_dec_dec_ah2, align 4, !dbg !591
  store i32 0, i32* @adpcm_dec_dec_ah1, align 4, !dbg !592
  store i32 0, i32* @adpcm_dec_dec_nbh, align 4, !dbg !593
  store i32 0, i32* %i, align 4, !dbg !594
  br label %for.cond, !dbg !595

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !596
  %cmp = icmp slt i32 %0, 6, !dbg !597
  br i1 %cmp, label %for.body, label %for.end, !dbg !598

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !599
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_delay_dhx, i32 0, i32 %1, !dbg !600
  store i32 0, i32* %arrayidx, align 4, !dbg !601
  %2 = load i32, i32* %i, align 4, !dbg !602
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_dltx, i32 0, i32 %2, !dbg !603
  store i32 0, i32* %arrayidx1, align 4, !dbg !604
  %3 = load i32, i32* %i, align 4, !dbg !605
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_dhx, i32 0, i32 %3, !dbg !606
  store i32 0, i32* %arrayidx2, align 4, !dbg !607
  br label %for.inc, !dbg !608

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !609
  %inc = add nsw i32 %4, 1, !dbg !609
  store i32 %inc, i32* %i, align 4, !dbg !609
  br label %for.cond, !dbg !598, !llvm.loop !610

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !611
  br label %for.cond3, !dbg !612

for.cond3:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, i32* %i, align 4, !dbg !613
  %cmp4 = icmp slt i32 %5, 6, !dbg !614
  br i1 %cmp4, label %for.body5, label %for.end11, !dbg !615

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4, !dbg !616
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_delay_bph, i32 0, i32 %6, !dbg !617
  store i32 0, i32* %arrayidx6, align 4, !dbg !618
  %7 = load i32, i32* %i, align 4, !dbg !619
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_bpl, i32 0, i32 %7, !dbg !620
  store i32 0, i32* %arrayidx7, align 4, !dbg !621
  %8 = load i32, i32* %i, align 4, !dbg !622
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_dec_del_bph, i32 0, i32 %8, !dbg !623
  store i32 0, i32* %arrayidx8, align 4, !dbg !624
  br label %for.inc9, !dbg !625

for.inc9:                                         ; preds = %for.body5
  %9 = load i32, i32* %i, align 4, !dbg !626
  %inc10 = add nsw i32 %9, 1, !dbg !626
  store i32 %inc10, i32* %i, align 4, !dbg !626
  br label %for.cond3, !dbg !615, !llvm.loop !627

for.end11:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4, !dbg !628
  br label %for.cond12, !dbg !629

for.cond12:                                       ; preds = %for.inc17, %for.end11
  %10 = load i32, i32* %i, align 4, !dbg !630
  %cmp13 = icmp slt i32 %10, 11, !dbg !631
  br i1 %cmp13, label %for.body14, label %for.end19, !dbg !632

for.body14:                                       ; preds = %for.cond12
  %11 = load i32, i32* %i, align 4, !dbg !633
  %arrayidx15 = getelementptr inbounds [11 x i32], [11 x i32]* @adpcm_dec_accumc, i32 0, i32 %11, !dbg !634
  store i32 0, i32* %arrayidx15, align 4, !dbg !635
  %12 = load i32, i32* %i, align 4, !dbg !636
  %arrayidx16 = getelementptr inbounds [11 x i32], [11 x i32]* @adpcm_dec_accumd, i32 0, i32 %12, !dbg !637
  store i32 0, i32* %arrayidx16, align 4, !dbg !638
  br label %for.inc17, !dbg !639

for.inc17:                                        ; preds = %for.body14
  %13 = load i32, i32* %i, align 4, !dbg !640
  %inc18 = add nsw i32 %13, 1, !dbg !640
  store i32 %inc18, i32* %i, align 4, !dbg !640
  br label %for.cond12, !dbg !632, !llvm.loop !641

for.end19:                                        ; preds = %for.cond12
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_init() #0 !dbg !643 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %f = alloca i32, align 4
  %x = alloca i32, align 4
  store volatile i32 0, i32* %x, align 4, !dbg !644
  store i32 10, i32* %j, align 4, !dbg !645
  store i32 2000, i32* %f, align 4, !dbg !646
  call arm_aapcs_vfpcc void @adpcm_dec_reset() #1, !dbg !647
  store i32 0, i32* %i, align 4, !dbg !648
  br label %for.cond, !dbg !649

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !650
  %cmp = icmp slt i32 %0, 3, !dbg !651
  br i1 %cmp, label %for.body, label %for.end, !dbg !652

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4, !dbg !653
  %2 = load i32, i32* %f, align 4, !dbg !654
  %mul = mul nsw i32 %2, 3141, !dbg !655
  %3 = load i32, i32* %i, align 4, !dbg !656
  %mul1 = mul nsw i32 %mul, %3, !dbg !657
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_cos(i32 noundef %mul1) #1, !dbg !658
  %mul2 = mul nsw i32 %1, %call, !dbg !659
  %4 = load i32, i32* %i, align 4, !dbg !660
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_test_data, i32 0, i32 %4, !dbg !661
  store i32 %mul2, i32* %arrayidx, align 4, !dbg !662
  %5 = load volatile i32, i32* %x, align 4, !dbg !663
  %6 = load i32, i32* %i, align 4, !dbg !664
  %arrayidx3 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_test_data, i32 0, i32 %6, !dbg !665
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !666
  %add = add nsw i32 %7, %5, !dbg !666
  store i32 %add, i32* %arrayidx3, align 4, !dbg !666
  br label %for.inc, !dbg !667

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !668
  %inc = add nsw i32 %8, 1, !dbg !668
  store i32 %inc, i32* %i, align 4, !dbg !668
  br label %for.cond, !dbg !652, !llvm.loop !669

for.end:                                          ; preds = %for.cond
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @adpcm_dec_return() #0 !dbg !671 {
entry:
  %i = alloca i32, align 4
  %check_sum = alloca i32, align 4
  store i32 0, i32* %check_sum, align 4, !dbg !672
  store i32 0, i32* %i, align 4, !dbg !673
  br label %for.cond, !dbg !674

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !675
  %cmp = icmp slt i32 %0, 4, !dbg !676
  br i1 %cmp, label %for.body, label %for.end, !dbg !677

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !678
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %1, !dbg !679
  %2 = load i32, i32* %arrayidx, align 4, !dbg !679
  %3 = load i32, i32* %i, align 4, !dbg !680
  %add = add nsw i32 %3, 1, !dbg !681
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %add, !dbg !682
  %4 = load i32, i32* %arrayidx1, align 4, !dbg !682
  %add2 = add nsw i32 %2, %4, !dbg !683
  %5 = load i32, i32* %check_sum, align 4, !dbg !684
  %add3 = add nsw i32 %5, %add2, !dbg !684
  store i32 %add3, i32* %check_sum, align 4, !dbg !684
  br label %for.inc, !dbg !685

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !686
  %add4 = add nsw i32 %6, 2, !dbg !686
  store i32 %add4, i32* %i, align 4, !dbg !686
  br label %for.cond, !dbg !677, !llvm.loop !687

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %check_sum, align 4, !dbg !689
  %cmp5 = icmp ne i32 %7, -2, !dbg !690
  %conv = zext i1 %cmp5 to i32, !dbg !690
  ret i32 %conv, !dbg !691
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec_adpcm_dec() #0 !dbg !692 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !693
  br label %for.cond, !dbg !694

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !695
  %cmp = icmp slt i32 %0, 4, !dbg !696
  br i1 %cmp, label %for.body, label %for.end, !dbg !697

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !698
  %div = sdiv i32 %1, 2, !dbg !699
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @adpcm_dec_compressed, i32 0, i32 %div, !dbg !700
  %2 = load i32, i32* %arrayidx, align 4, !dbg !700
  call arm_aapcs_vfpcc void @adpcm_dec_decode(i32 noundef %2) #1, !dbg !701
  %3 = load i32, i32* @adpcm_dec_xout1, align 4, !dbg !702
  %4 = load i32, i32* %i, align 4, !dbg !703
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %4, !dbg !704
  store i32 %3, i32* %arrayidx1, align 4, !dbg !705
  %5 = load i32, i32* @adpcm_dec_xout2, align 4, !dbg !706
  %6 = load i32, i32* %i, align 4, !dbg !707
  %add = add nsw i32 %6, 1, !dbg !708
  %arrayidx2 = getelementptr inbounds [6 x i32], [6 x i32]* @adpcm_dec_result, i32 0, i32 %add, !dbg !709
  store i32 %5, i32* %arrayidx2, align 4, !dbg !710
  br label %for.inc, !dbg !711

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !712
  %add3 = add nsw i32 %7, 2, !dbg !712
  store i32 %add3, i32* %i, align 4, !dbg !712
  br label %for.cond, !dbg !697, !llvm.loop !713

for.end:                                          ; preds = %for.cond
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @adpcm_dec(i8* noundef %n) #0 !dbg !715 {
entry:
  %n.addr = alloca i8*, align 4
  store i8* %n, i8** %n.addr, align 4
  call arm_aapcs_vfpcc void @adpcm_dec_init() #1, !dbg !716
  call arm_aapcs_vfpcc void @adpcm_dec_adpcm_dec() #1, !dbg !717
  %call = call arm_aapcs_vfpcc i32 @adpcm_dec_return() #1, !dbg !718
  ret void, !dbg !719
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/adpcm_dec.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "6ebd865e09876ee217b03c4acb2875df")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 1, !"branch-target-enforcement", i32 0}
!7 = !{i32 1, !"sign-return-address", i32 0}
!8 = !{i32 1, !"sign-return-address-all", i32 0}
!9 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "adpcm_dec_fabs", scope: !13, file: !13, line: 206, type: !14, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "test/adpcm_dec.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "6ebd865e09876ee217b03c4acb2875df")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 211, column: 8, scope: !12)
!17 = !DILocation(line: 211, column: 10, scope: !12)
!18 = !DILocation(line: 212, column: 9, scope: !12)
!19 = !DILocation(line: 212, column: 7, scope: !12)
!20 = !DILocation(line: 212, column: 5, scope: !12)
!21 = !DILocation(line: 214, column: 10, scope: !12)
!22 = !DILocation(line: 214, column: 9, scope: !12)
!23 = !DILocation(line: 214, column: 7, scope: !12)
!24 = !DILocation(line: 216, column: 10, scope: !12)
!25 = !DILocation(line: 216, column: 3, scope: !12)
!26 = distinct !DISubprogram(name: "adpcm_dec_sin", scope: !13, file: !13, line: 220, type: !14, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 223, column: 7, scope: !26)
!28 = !DILocation(line: 224, column: 7, scope: !26)
!29 = !DILocation(line: 229, column: 3, scope: !26)
!30 = !DILocation(line: 229, column: 11, scope: !26)
!31 = !DILocation(line: 229, column: 15, scope: !26)
!32 = !DILocation(line: 230, column: 9, scope: !26)
!33 = distinct !{!33, !29, !34, !35}
!34 = !DILocation(line: 230, column: 16, scope: !26)
!35 = !{!"llvm.loop.mustprogress"}
!36 = !DILocation(line: 233, column: 3, scope: !26)
!37 = !DILocation(line: 233, column: 11, scope: !26)
!38 = !DILocation(line: 233, column: 15, scope: !26)
!39 = !DILocation(line: 234, column: 9, scope: !26)
!40 = distinct !{!40, !36, !41, !35}
!41 = !DILocation(line: 234, column: 16, scope: !26)
!42 = !DILocation(line: 236, column: 10, scope: !26)
!43 = !DILocation(line: 236, column: 8, scope: !26)
!44 = !DILocation(line: 237, column: 9, scope: !26)
!45 = !DILocation(line: 237, column: 7, scope: !26)
!46 = !DILocation(line: 238, column: 12, scope: !26)
!47 = !DILocation(line: 238, column: 24, scope: !26)
!48 = !DILocation(line: 238, column: 30, scope: !26)
!49 = !DILocation(line: 238, column: 28, scope: !26)
!50 = !DILocation(line: 238, column: 21, scope: !26)
!51 = !DILocation(line: 238, column: 17, scope: !26)
!52 = !DILocation(line: 238, column: 50, scope: !26)
!53 = !DILocation(line: 238, column: 48, scope: !26)
!54 = !DILocation(line: 238, column: 64, scope: !26)
!55 = !DILocation(line: 238, column: 62, scope: !26)
!56 = !DILocation(line: 238, column: 68, scope: !26)
!57 = !DILocation(line: 238, column: 56, scope: !26)
!58 = !DILocation(line: 238, column: 40, scope: !26)
!59 = !DILocation(line: 238, column: 8, scope: !26)
!60 = !DILocation(line: 239, column: 9, scope: !26)
!61 = !DILocation(line: 239, column: 15, scope: !26)
!62 = !DILocation(line: 239, column: 13, scope: !26)
!63 = !DILocation(line: 239, column: 7, scope: !26)
!64 = !DILocation(line: 240, column: 6, scope: !26)
!65 = !DILocation(line: 245, column: 3, scope: !26)
!66 = !DILocation(line: 245, column: 27, scope: !26)
!67 = !DILocation(line: 245, column: 11, scope: !26)
!68 = !DILocation(line: 245, column: 34, scope: !26)
!69 = !DILocation(line: 246, column: 14, scope: !26)
!70 = !DILocation(line: 246, column: 26, scope: !26)
!71 = !DILocation(line: 246, column: 32, scope: !26)
!72 = !DILocation(line: 246, column: 30, scope: !26)
!73 = !DILocation(line: 246, column: 23, scope: !26)
!74 = !DILocation(line: 246, column: 19, scope: !26)
!75 = !DILocation(line: 246, column: 52, scope: !26)
!76 = !DILocation(line: 246, column: 50, scope: !26)
!77 = !DILocation(line: 246, column: 66, scope: !26)
!78 = !DILocation(line: 246, column: 64, scope: !26)
!79 = !DILocation(line: 246, column: 70, scope: !26)
!80 = !DILocation(line: 246, column: 58, scope: !26)
!81 = !DILocation(line: 246, column: 42, scope: !26)
!82 = !DILocation(line: 246, column: 10, scope: !26)
!83 = !DILocation(line: 247, column: 11, scope: !26)
!84 = !DILocation(line: 247, column: 17, scope: !26)
!85 = !DILocation(line: 247, column: 15, scope: !26)
!86 = !DILocation(line: 247, column: 9, scope: !26)
!87 = !DILocation(line: 248, column: 8, scope: !26)
!88 = distinct !{!88, !65, !89, !35}
!89 = !DILocation(line: 249, column: 3, scope: !26)
!90 = !DILocation(line: 251, column: 10, scope: !26)
!91 = !DILocation(line: 251, column: 3, scope: !26)
!92 = distinct !DISubprogram(name: "adpcm_dec_cos", scope: !13, file: !13, line: 255, type: !14, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!93 = !DILocation(line: 257, column: 36, scope: !92)
!94 = !DILocation(line: 257, column: 34, scope: !92)
!95 = !DILocation(line: 257, column: 12, scope: !92)
!96 = !DILocation(line: 257, column: 3, scope: !92)
!97 = distinct !DISubprogram(name: "adpcm_dec_decode", scope: !13, file: !13, line: 266, type: !14, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!98 = !DILocation(line: 274, column: 19, scope: !97)
!99 = !DILocation(line: 274, column: 25, scope: !97)
!100 = !DILocation(line: 274, column: 17, scope: !97)
!101 = !DILocation(line: 275, column: 18, scope: !97)
!102 = !DILocation(line: 275, column: 24, scope: !97)
!103 = !DILocation(line: 275, column: 16, scope: !97)
!104 = !DILocation(line: 280, column: 23, scope: !97)
!105 = !DILocation(line: 280, column: 21, scope: !97)
!106 = !DILocation(line: 284, column: 41, scope: !97)
!107 = !DILocation(line: 284, column: 61, scope: !97)
!108 = !DILocation(line: 285, column: 41, scope: !97)
!109 = !DILocation(line: 285, column: 61, scope: !97)
!110 = !DILocation(line: 284, column: 23, scope: !97)
!111 = !DILocation(line: 284, column: 21, scope: !97)
!112 = !DILocation(line: 287, column: 22, scope: !97)
!113 = !DILocation(line: 287, column: 42, scope: !97)
!114 = !DILocation(line: 287, column: 40, scope: !97)
!115 = !DILocation(line: 287, column: 20, scope: !97)
!116 = !DILocation(line: 290, column: 33, scope: !97)
!117 = !DILocation(line: 291, column: 52, scope: !97)
!118 = !DILocation(line: 292, column: 29, scope: !97)
!119 = !DILocation(line: 291, column: 25, scope: !97)
!120 = !DILocation(line: 290, column: 52, scope: !97)
!121 = !DILocation(line: 292, column: 38, scope: !97)
!122 = !DILocation(line: 290, column: 21, scope: !97)
!123 = !DILocation(line: 295, column: 28, scope: !97)
!124 = !DILocation(line: 296, column: 47, scope: !97)
!125 = !DILocation(line: 296, column: 20, scope: !97)
!126 = !DILocation(line: 295, column: 47, scope: !97)
!127 = !DILocation(line: 296, column: 64, scope: !97)
!128 = !DILocation(line: 295, column: 16, scope: !97)
!129 = !DILocation(line: 299, column: 18, scope: !97)
!130 = !DILocation(line: 299, column: 33, scope: !97)
!131 = !DILocation(line: 299, column: 31, scope: !97)
!132 = !DILocation(line: 299, column: 16, scope: !97)
!133 = !DILocation(line: 302, column: 41, scope: !97)
!134 = !DILocation(line: 302, column: 56, scope: !97)
!135 = !DILocation(line: 302, column: 23, scope: !97)
!136 = !DILocation(line: 302, column: 21, scope: !97)
!137 = !DILocation(line: 305, column: 42, scope: !97)
!138 = !DILocation(line: 305, column: 24, scope: !97)
!139 = !DILocation(line: 305, column: 22, scope: !97)
!140 = !DILocation(line: 309, column: 23, scope: !97)
!141 = !DILocation(line: 309, column: 43, scope: !97)
!142 = !DILocation(line: 309, column: 41, scope: !97)
!143 = !DILocation(line: 309, column: 21, scope: !97)
!144 = !DILocation(line: 312, column: 21, scope: !97)
!145 = !DILocation(line: 312, column: 3, scope: !97)
!146 = !DILocation(line: 316, column: 41, scope: !97)
!147 = !DILocation(line: 316, column: 60, scope: !97)
!148 = !DILocation(line: 317, column: 41, scope: !97)
!149 = !DILocation(line: 317, column: 60, scope: !97)
!150 = !DILocation(line: 318, column: 41, scope: !97)
!151 = !DILocation(line: 316, column: 23, scope: !97)
!152 = !DILocation(line: 316, column: 21, scope: !97)
!153 = !DILocation(line: 321, column: 41, scope: !97)
!154 = !DILocation(line: 321, column: 60, scope: !97)
!155 = !DILocation(line: 322, column: 41, scope: !97)
!156 = !DILocation(line: 322, column: 60, scope: !97)
!157 = !DILocation(line: 321, column: 23, scope: !97)
!158 = !DILocation(line: 321, column: 21, scope: !97)
!159 = !DILocation(line: 325, column: 23, scope: !97)
!160 = !DILocation(line: 325, column: 42, scope: !97)
!161 = !DILocation(line: 325, column: 40, scope: !97)
!162 = !DILocation(line: 325, column: 21, scope: !97)
!163 = !DILocation(line: 328, column: 24, scope: !97)
!164 = !DILocation(line: 328, column: 22, scope: !97)
!165 = !DILocation(line: 329, column: 24, scope: !97)
!166 = !DILocation(line: 329, column: 22, scope: !97)
!167 = !DILocation(line: 330, column: 24, scope: !97)
!168 = !DILocation(line: 330, column: 22, scope: !97)
!169 = !DILocation(line: 331, column: 24, scope: !97)
!170 = !DILocation(line: 331, column: 22, scope: !97)
!171 = !DILocation(line: 336, column: 23, scope: !97)
!172 = !DILocation(line: 336, column: 21, scope: !97)
!173 = !DILocation(line: 340, column: 41, scope: !97)
!174 = !DILocation(line: 340, column: 60, scope: !97)
!175 = !DILocation(line: 341, column: 41, scope: !97)
!176 = !DILocation(line: 341, column: 60, scope: !97)
!177 = !DILocation(line: 340, column: 23, scope: !97)
!178 = !DILocation(line: 340, column: 21, scope: !97)
!179 = !DILocation(line: 344, column: 22, scope: !97)
!180 = !DILocation(line: 344, column: 42, scope: !97)
!181 = !DILocation(line: 344, column: 40, scope: !97)
!182 = !DILocation(line: 344, column: 20, scope: !97)
!183 = !DILocation(line: 347, column: 32, scope: !97)
!184 = !DILocation(line: 348, column: 51, scope: !97)
!185 = !DILocation(line: 348, column: 24, scope: !97)
!186 = !DILocation(line: 347, column: 51, scope: !97)
!187 = !DILocation(line: 348, column: 68, scope: !97)
!188 = !DILocation(line: 347, column: 20, scope: !97)
!189 = !DILocation(line: 351, column: 41, scope: !97)
!190 = !DILocation(line: 351, column: 55, scope: !97)
!191 = !DILocation(line: 351, column: 23, scope: !97)
!192 = !DILocation(line: 351, column: 21, scope: !97)
!193 = !DILocation(line: 354, column: 42, scope: !97)
!194 = !DILocation(line: 354, column: 24, scope: !97)
!195 = !DILocation(line: 354, column: 22, scope: !97)
!196 = !DILocation(line: 357, column: 22, scope: !97)
!197 = !DILocation(line: 357, column: 41, scope: !97)
!198 = !DILocation(line: 357, column: 39, scope: !97)
!199 = !DILocation(line: 357, column: 20, scope: !97)
!200 = !DILocation(line: 360, column: 21, scope: !97)
!201 = !DILocation(line: 360, column: 3, scope: !97)
!202 = !DILocation(line: 364, column: 41, scope: !97)
!203 = !DILocation(line: 364, column: 60, scope: !97)
!204 = !DILocation(line: 365, column: 41, scope: !97)
!205 = !DILocation(line: 365, column: 59, scope: !97)
!206 = !DILocation(line: 365, column: 78, scope: !97)
!207 = !DILocation(line: 364, column: 23, scope: !97)
!208 = !DILocation(line: 364, column: 21, scope: !97)
!209 = !DILocation(line: 368, column: 41, scope: !97)
!210 = !DILocation(line: 368, column: 60, scope: !97)
!211 = !DILocation(line: 369, column: 41, scope: !97)
!212 = !DILocation(line: 369, column: 59, scope: !97)
!213 = !DILocation(line: 368, column: 23, scope: !97)
!214 = !DILocation(line: 368, column: 21, scope: !97)
!215 = !DILocation(line: 372, column: 18, scope: !97)
!216 = !DILocation(line: 372, column: 37, scope: !97)
!217 = !DILocation(line: 372, column: 35, scope: !97)
!218 = !DILocation(line: 372, column: 16, scope: !97)
!219 = !DILocation(line: 375, column: 23, scope: !97)
!220 = !DILocation(line: 375, column: 21, scope: !97)
!221 = !DILocation(line: 376, column: 23, scope: !97)
!222 = !DILocation(line: 376, column: 21, scope: !97)
!223 = !DILocation(line: 377, column: 23, scope: !97)
!224 = !DILocation(line: 377, column: 21, scope: !97)
!225 = !DILocation(line: 378, column: 23, scope: !97)
!226 = !DILocation(line: 378, column: 21, scope: !97)
!227 = !DILocation(line: 383, column: 18, scope: !97)
!228 = !DILocation(line: 383, column: 33, scope: !97)
!229 = !DILocation(line: 383, column: 31, scope: !97)
!230 = !DILocation(line: 383, column: 16, scope: !97)
!231 = !DILocation(line: 384, column: 18, scope: !97)
!232 = !DILocation(line: 384, column: 33, scope: !97)
!233 = !DILocation(line: 384, column: 31, scope: !97)
!234 = !DILocation(line: 384, column: 16, scope: !97)
!235 = !DILocation(line: 387, column: 9, scope: !97)
!236 = !DILocation(line: 388, column: 10, scope: !97)
!237 = !DILocation(line: 389, column: 10, scope: !97)
!238 = !DILocation(line: 390, column: 18, scope: !97)
!239 = !DILocation(line: 390, column: 41, scope: !97)
!240 = !DILocation(line: 390, column: 35, scope: !97)
!241 = !DILocation(line: 390, column: 31, scope: !97)
!242 = !DILocation(line: 390, column: 7, scope: !97)
!243 = !DILocation(line: 391, column: 18, scope: !97)
!244 = !DILocation(line: 391, column: 41, scope: !97)
!245 = !DILocation(line: 391, column: 35, scope: !97)
!246 = !DILocation(line: 391, column: 31, scope: !97)
!247 = !DILocation(line: 391, column: 7, scope: !97)
!248 = !DILocation(line: 395, column: 11, scope: !97)
!249 = !DILocation(line: 395, column: 9, scope: !97)
!250 = !DILocation(line: 395, column: 16, scope: !97)
!251 = !DILocation(line: 395, column: 18, scope: !97)
!252 = !DILocation(line: 395, column: 3, scope: !97)
!253 = !DILocation(line: 396, column: 29, scope: !97)
!254 = !DILocation(line: 396, column: 22, scope: !97)
!255 = !DILocation(line: 396, column: 44, scope: !97)
!256 = !DILocation(line: 396, column: 38, scope: !97)
!257 = !DILocation(line: 396, column: 34, scope: !97)
!258 = !DILocation(line: 396, column: 9, scope: !97)
!259 = !DILocation(line: 397, column: 29, scope: !97)
!260 = !DILocation(line: 397, column: 22, scope: !97)
!261 = !DILocation(line: 397, column: 44, scope: !97)
!262 = !DILocation(line: 397, column: 38, scope: !97)
!263 = !DILocation(line: 397, column: 34, scope: !97)
!264 = !DILocation(line: 397, column: 9, scope: !97)
!265 = !DILocation(line: 398, column: 3, scope: !97)
!266 = !DILocation(line: 395, column: 25, scope: !97)
!267 = distinct !{!267, !252, !265, !35}
!268 = !DILocation(line: 401, column: 21, scope: !97)
!269 = !DILocation(line: 401, column: 20, scope: !97)
!270 = !DILocation(line: 401, column: 40, scope: !97)
!271 = !DILocation(line: 401, column: 34, scope: !97)
!272 = !DILocation(line: 401, column: 30, scope: !97)
!273 = !DILocation(line: 401, column: 7, scope: !97)
!274 = !DILocation(line: 402, column: 21, scope: !97)
!275 = !DILocation(line: 402, column: 20, scope: !97)
!276 = !DILocation(line: 402, column: 40, scope: !97)
!277 = !DILocation(line: 402, column: 34, scope: !97)
!278 = !DILocation(line: 402, column: 30, scope: !97)
!279 = !DILocation(line: 402, column: 7, scope: !97)
!280 = !DILocation(line: 405, column: 21, scope: !97)
!281 = !DILocation(line: 405, column: 25, scope: !97)
!282 = !DILocation(line: 405, column: 19, scope: !97)
!283 = !DILocation(line: 406, column: 21, scope: !97)
!284 = !DILocation(line: 406, column: 25, scope: !97)
!285 = !DILocation(line: 406, column: 19, scope: !97)
!286 = !DILocation(line: 409, column: 13, scope: !97)
!287 = !DILocation(line: 409, column: 20, scope: !97)
!288 = !DILocation(line: 409, column: 11, scope: !97)
!289 = !DILocation(line: 410, column: 13, scope: !97)
!290 = !DILocation(line: 410, column: 20, scope: !97)
!291 = !DILocation(line: 410, column: 11, scope: !97)
!292 = !DILocation(line: 413, column: 11, scope: !97)
!293 = !DILocation(line: 413, column: 9, scope: !97)
!294 = !DILocation(line: 413, column: 16, scope: !97)
!295 = !DILocation(line: 413, column: 18, scope: !97)
!296 = !DILocation(line: 413, column: 3, scope: !97)
!297 = !DILocation(line: 414, column: 25, scope: !97)
!298 = !DILocation(line: 414, column: 17, scope: !97)
!299 = !DILocation(line: 414, column: 12, scope: !97)
!300 = !DILocation(line: 414, column: 15, scope: !97)
!301 = !DILocation(line: 415, column: 25, scope: !97)
!302 = !DILocation(line: 415, column: 17, scope: !97)
!303 = !DILocation(line: 415, column: 12, scope: !97)
!304 = !DILocation(line: 415, column: 15, scope: !97)
!305 = !DILocation(line: 416, column: 3, scope: !97)
!306 = !DILocation(line: 413, column: 25, scope: !97)
!307 = distinct !{!307, !296, !305, !35}
!308 = !DILocation(line: 418, column: 13, scope: !97)
!309 = !DILocation(line: 418, column: 4, scope: !97)
!310 = !DILocation(line: 418, column: 11, scope: !97)
!311 = !DILocation(line: 419, column: 13, scope: !97)
!312 = !DILocation(line: 419, column: 4, scope: !97)
!313 = !DILocation(line: 419, column: 11, scope: !97)
!314 = !DILocation(line: 421, column: 3, scope: !97)
!315 = distinct !DISubprogram(name: "adpcm_dec_filtez", scope: !13, file: !13, line: 427, type: !14, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!316 = !DILocation(line: 433, column: 22, scope: !315)
!317 = !DILocation(line: 433, column: 18, scope: !315)
!318 = !DILocation(line: 433, column: 35, scope: !315)
!319 = !DILocation(line: 433, column: 31, scope: !315)
!320 = !DILocation(line: 433, column: 27, scope: !315)
!321 = !DILocation(line: 433, column: 6, scope: !315)
!322 = !DILocation(line: 437, column: 11, scope: !315)
!323 = !DILocation(line: 437, column: 9, scope: !315)
!324 = !DILocation(line: 437, column: 16, scope: !315)
!325 = !DILocation(line: 437, column: 18, scope: !315)
!326 = !DILocation(line: 437, column: 3, scope: !315)
!327 = !DILocation(line: 438, column: 25, scope: !315)
!328 = !DILocation(line: 438, column: 21, scope: !315)
!329 = !DILocation(line: 438, column: 38, scope: !315)
!330 = !DILocation(line: 438, column: 34, scope: !315)
!331 = !DILocation(line: 438, column: 30, scope: !315)
!332 = !DILocation(line: 438, column: 8, scope: !315)
!333 = !DILocation(line: 438, column: 5, scope: !315)
!334 = !DILocation(line: 437, column: 24, scope: !315)
!335 = distinct !{!335, !326, !336, !35}
!336 = !DILocation(line: 438, column: 41, scope: !315)
!337 = !DILocation(line: 440, column: 21, scope: !315)
!338 = !DILocation(line: 440, column: 24, scope: !315)
!339 = !DILocation(line: 440, column: 3, scope: !315)
!340 = distinct !DISubprogram(name: "adpcm_dec_filtep", scope: !13, file: !13, line: 446, type: !14, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!341 = !DILocation(line: 451, column: 12, scope: !340)
!342 = !DILocation(line: 451, column: 10, scope: !340)
!343 = !DILocation(line: 451, column: 6, scope: !340)
!344 = !DILocation(line: 452, column: 17, scope: !340)
!345 = !DILocation(line: 452, column: 23, scope: !340)
!346 = !DILocation(line: 452, column: 21, scope: !340)
!347 = !DILocation(line: 452, column: 6, scope: !340)
!348 = !DILocation(line: 453, column: 13, scope: !340)
!349 = !DILocation(line: 453, column: 11, scope: !340)
!350 = !DILocation(line: 453, column: 7, scope: !340)
!351 = !DILocation(line: 454, column: 18, scope: !340)
!352 = !DILocation(line: 454, column: 24, scope: !340)
!353 = !DILocation(line: 454, column: 22, scope: !340)
!354 = !DILocation(line: 454, column: 6, scope: !340)
!355 = !DILocation(line: 456, column: 21, scope: !340)
!356 = !DILocation(line: 456, column: 24, scope: !340)
!357 = !DILocation(line: 456, column: 3, scope: !340)
!358 = distinct !DISubprogram(name: "adpcm_dec_logscl", scope: !13, file: !13, line: 462, type: !14, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!359 = !DILocation(line: 467, column: 18, scope: !358)
!360 = !DILocation(line: 467, column: 22, scope: !358)
!361 = !DILocation(line: 467, column: 31, scope: !358)
!362 = !DILocation(line: 467, column: 6, scope: !358)
!363 = !DILocation(line: 468, column: 16, scope: !358)
!364 = !DILocation(line: 468, column: 46, scope: !358)
!365 = !DILocation(line: 468, column: 49, scope: !358)
!366 = !DILocation(line: 468, column: 21, scope: !358)
!367 = !DILocation(line: 468, column: 19, scope: !358)
!368 = !DILocation(line: 468, column: 7, scope: !358)
!369 = !DILocation(line: 470, column: 8, scope: !358)
!370 = !DILocation(line: 470, column: 12, scope: !358)
!371 = !DILocation(line: 471, column: 9, scope: !358)
!372 = !DILocation(line: 471, column: 5, scope: !358)
!373 = !DILocation(line: 472, column: 8, scope: !358)
!374 = !DILocation(line: 472, column: 12, scope: !358)
!375 = !DILocation(line: 473, column: 9, scope: !358)
!376 = !DILocation(line: 473, column: 5, scope: !358)
!377 = !DILocation(line: 475, column: 12, scope: !358)
!378 = !DILocation(line: 475, column: 3, scope: !358)
!379 = distinct !DISubprogram(name: "adpcm_dec_scalel", scope: !13, file: !13, line: 480, type: !14, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!380 = !DILocation(line: 485, column: 11, scope: !379)
!381 = !DILocation(line: 485, column: 15, scope: !379)
!382 = !DILocation(line: 485, column: 22, scope: !379)
!383 = !DILocation(line: 485, column: 7, scope: !379)
!384 = !DILocation(line: 486, column: 9, scope: !379)
!385 = !DILocation(line: 486, column: 13, scope: !379)
!386 = !DILocation(line: 486, column: 7, scope: !379)
!387 = !DILocation(line: 487, column: 30, scope: !379)
!388 = !DILocation(line: 487, column: 9, scope: !379)
!389 = !DILocation(line: 487, column: 41, scope: !379)
!390 = !DILocation(line: 487, column: 56, scope: !379)
!391 = !DILocation(line: 487, column: 62, scope: !379)
!392 = !DILocation(line: 487, column: 60, scope: !379)
!393 = !DILocation(line: 487, column: 36, scope: !379)
!394 = !DILocation(line: 487, column: 7, scope: !379)
!395 = !DILocation(line: 489, column: 12, scope: !379)
!396 = !DILocation(line: 489, column: 16, scope: !379)
!397 = !DILocation(line: 489, column: 3, scope: !379)
!398 = distinct !DISubprogram(name: "adpcm_dec_upzero", scope: !13, file: !13, line: 495, type: !14, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!399 = !DILocation(line: 501, column: 8, scope: !398)
!400 = !DILocation(line: 501, column: 12, scope: !398)
!401 = !DILocation(line: 503, column: 13, scope: !398)
!402 = !DILocation(line: 503, column: 11, scope: !398)
!403 = !DILocation(line: 503, column: 18, scope: !398)
!404 = !DILocation(line: 503, column: 20, scope: !398)
!405 = !DILocation(line: 503, column: 5, scope: !398)
!406 = !DILocation(line: 504, column: 36, scope: !398)
!407 = !DILocation(line: 504, column: 41, scope: !398)
!408 = !DILocation(line: 504, column: 34, scope: !398)
!409 = !DILocation(line: 504, column: 47, scope: !398)
!410 = !DILocation(line: 504, column: 7, scope: !398)
!411 = !DILocation(line: 504, column: 12, scope: !398)
!412 = !DILocation(line: 504, column: 16, scope: !398)
!413 = !DILocation(line: 505, column: 5, scope: !398)
!414 = !DILocation(line: 503, column: 26, scope: !398)
!415 = distinct !{!415, !405, !413, !35}
!416 = !DILocation(line: 507, column: 3, scope: !398)
!417 = !DILocation(line: 509, column: 13, scope: !398)
!418 = !DILocation(line: 509, column: 11, scope: !398)
!419 = !DILocation(line: 509, column: 18, scope: !398)
!420 = !DILocation(line: 509, column: 20, scope: !398)
!421 = !DILocation(line: 509, column: 5, scope: !398)
!422 = !DILocation(line: 510, column: 20, scope: !398)
!423 = !DILocation(line: 510, column: 26, scope: !398)
!424 = !DILocation(line: 510, column: 32, scope: !398)
!425 = !DILocation(line: 510, column: 24, scope: !398)
!426 = !DILocation(line: 510, column: 36, scope: !398)
!427 = !DILocation(line: 510, column: 12, scope: !398)
!428 = !DILocation(line: 511, column: 13, scope: !398)
!429 = !DILocation(line: 511, column: 9, scope: !398)
!430 = !DILocation(line: 513, column: 13, scope: !398)
!431 = !DILocation(line: 515, column: 31, scope: !398)
!432 = !DILocation(line: 515, column: 36, scope: !398)
!433 = !DILocation(line: 515, column: 29, scope: !398)
!434 = !DILocation(line: 515, column: 42, scope: !398)
!435 = !DILocation(line: 515, column: 11, scope: !398)
!436 = !DILocation(line: 516, column: 18, scope: !398)
!437 = !DILocation(line: 516, column: 24, scope: !398)
!438 = !DILocation(line: 516, column: 22, scope: !398)
!439 = !DILocation(line: 516, column: 7, scope: !398)
!440 = !DILocation(line: 516, column: 12, scope: !398)
!441 = !DILocation(line: 516, column: 16, scope: !398)
!442 = !DILocation(line: 517, column: 5, scope: !398)
!443 = !DILocation(line: 509, column: 26, scope: !398)
!444 = distinct !{!444, !421, !442, !35}
!445 = !DILocation(line: 522, column: 15, scope: !398)
!446 = !DILocation(line: 522, column: 3, scope: !398)
!447 = !DILocation(line: 522, column: 13, scope: !398)
!448 = !DILocation(line: 523, column: 15, scope: !398)
!449 = !DILocation(line: 523, column: 3, scope: !398)
!450 = !DILocation(line: 523, column: 13, scope: !398)
!451 = !DILocation(line: 524, column: 15, scope: !398)
!452 = !DILocation(line: 524, column: 3, scope: !398)
!453 = !DILocation(line: 524, column: 13, scope: !398)
!454 = !DILocation(line: 525, column: 15, scope: !398)
!455 = !DILocation(line: 525, column: 3, scope: !398)
!456 = !DILocation(line: 525, column: 13, scope: !398)
!457 = !DILocation(line: 526, column: 15, scope: !398)
!458 = !DILocation(line: 526, column: 3, scope: !398)
!459 = !DILocation(line: 526, column: 13, scope: !398)
!460 = !DILocation(line: 528, column: 3, scope: !398)
!461 = distinct !DISubprogram(name: "adpcm_dec_uppol2", scope: !13, file: !13, line: 534, type: !14, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!462 = !DILocation(line: 540, column: 22, scope: !461)
!463 = !DILocation(line: 540, column: 12, scope: !461)
!464 = !DILocation(line: 540, column: 7, scope: !461)
!465 = !DILocation(line: 541, column: 16, scope: !461)
!466 = !DILocation(line: 541, column: 22, scope: !461)
!467 = !DILocation(line: 541, column: 20, scope: !461)
!468 = !DILocation(line: 541, column: 27, scope: !461)
!469 = !DILocation(line: 541, column: 8, scope: !461)
!470 = !DILocation(line: 542, column: 12, scope: !461)
!471 = !DILocation(line: 542, column: 11, scope: !461)
!472 = !DILocation(line: 542, column: 9, scope: !461)
!473 = !DILocation(line: 542, column: 5, scope: !461)
!474 = !DILocation(line: 543, column: 9, scope: !461)
!475 = !DILocation(line: 543, column: 13, scope: !461)
!476 = !DILocation(line: 543, column: 7, scope: !461)
!477 = !DILocation(line: 545, column: 16, scope: !461)
!478 = !DILocation(line: 545, column: 22, scope: !461)
!479 = !DILocation(line: 545, column: 20, scope: !461)
!480 = !DILocation(line: 545, column: 27, scope: !461)
!481 = !DILocation(line: 545, column: 8, scope: !461)
!482 = !DILocation(line: 546, column: 11, scope: !461)
!483 = !DILocation(line: 546, column: 15, scope: !461)
!484 = !DILocation(line: 546, column: 9, scope: !461)
!485 = !DILocation(line: 547, column: 3, scope: !461)
!486 = !DILocation(line: 548, column: 11, scope: !461)
!487 = !DILocation(line: 548, column: 15, scope: !461)
!488 = !DILocation(line: 548, column: 9, scope: !461)
!489 = !DILocation(line: 549, column: 10, scope: !461)
!490 = !DILocation(line: 549, column: 33, scope: !461)
!491 = !DILocation(line: 549, column: 23, scope: !461)
!492 = !DILocation(line: 549, column: 37, scope: !461)
!493 = !DILocation(line: 549, column: 14, scope: !461)
!494 = !DILocation(line: 549, column: 8, scope: !461)
!495 = !DILocation(line: 552, column: 8, scope: !461)
!496 = !DILocation(line: 552, column: 13, scope: !461)
!497 = !DILocation(line: 553, column: 10, scope: !461)
!498 = !DILocation(line: 553, column: 5, scope: !461)
!499 = !DILocation(line: 554, column: 8, scope: !461)
!500 = !DILocation(line: 554, column: 13, scope: !461)
!501 = !DILocation(line: 555, column: 10, scope: !461)
!502 = !DILocation(line: 555, column: 5, scope: !461)
!503 = !DILocation(line: 557, column: 12, scope: !461)
!504 = !DILocation(line: 557, column: 3, scope: !461)
!505 = distinct !DISubprogram(name: "adpcm_dec_uppol1", scope: !13, file: !13, line: 563, type: !14, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!506 = !DILocation(line: 569, column: 19, scope: !505)
!507 = !DILocation(line: 569, column: 23, scope: !505)
!508 = !DILocation(line: 569, column: 32, scope: !505)
!509 = !DILocation(line: 569, column: 7, scope: !505)
!510 = !DILocation(line: 570, column: 16, scope: !505)
!511 = !DILocation(line: 570, column: 22, scope: !505)
!512 = !DILocation(line: 570, column: 20, scope: !505)
!513 = !DILocation(line: 570, column: 27, scope: !505)
!514 = !DILocation(line: 570, column: 8, scope: !505)
!515 = !DILocation(line: 571, column: 19, scope: !505)
!516 = !DILocation(line: 571, column: 23, scope: !505)
!517 = !DILocation(line: 571, column: 10, scope: !505)
!518 = !DILocation(line: 572, column: 3, scope: !505)
!519 = !DILocation(line: 573, column: 19, scope: !505)
!520 = !DILocation(line: 573, column: 23, scope: !505)
!521 = !DILocation(line: 573, column: 10, scope: !505)
!522 = !DILocation(line: 576, column: 17, scope: !505)
!523 = !DILocation(line: 576, column: 15, scope: !505)
!524 = !DILocation(line: 576, column: 7, scope: !505)
!525 = !DILocation(line: 577, column: 8, scope: !505)
!526 = !DILocation(line: 577, column: 15, scope: !505)
!527 = !DILocation(line: 577, column: 13, scope: !505)
!528 = !DILocation(line: 578, column: 12, scope: !505)
!529 = !DILocation(line: 578, column: 10, scope: !505)
!530 = !DILocation(line: 578, column: 5, scope: !505)
!531 = !DILocation(line: 579, column: 8, scope: !505)
!532 = !DILocation(line: 579, column: 16, scope: !505)
!533 = !DILocation(line: 579, column: 15, scope: !505)
!534 = !DILocation(line: 579, column: 13, scope: !505)
!535 = !DILocation(line: 580, column: 13, scope: !505)
!536 = !DILocation(line: 580, column: 12, scope: !505)
!537 = !DILocation(line: 580, column: 10, scope: !505)
!538 = !DILocation(line: 580, column: 5, scope: !505)
!539 = !DILocation(line: 582, column: 12, scope: !505)
!540 = !DILocation(line: 582, column: 3, scope: !505)
!541 = distinct !DISubprogram(name: "adpcm_dec_logsch", scope: !13, file: !13, line: 588, type: !14, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!542 = !DILocation(line: 593, column: 18, scope: !541)
!543 = !DILocation(line: 593, column: 22, scope: !541)
!544 = !DILocation(line: 593, column: 31, scope: !541)
!545 = !DILocation(line: 593, column: 6, scope: !541)
!546 = !DILocation(line: 594, column: 9, scope: !541)
!547 = !DILocation(line: 594, column: 39, scope: !541)
!548 = !DILocation(line: 594, column: 14, scope: !541)
!549 = !DILocation(line: 594, column: 12, scope: !541)
!550 = !DILocation(line: 594, column: 7, scope: !541)
!551 = !DILocation(line: 596, column: 8, scope: !541)
!552 = !DILocation(line: 596, column: 12, scope: !541)
!553 = !DILocation(line: 597, column: 9, scope: !541)
!554 = !DILocation(line: 597, column: 5, scope: !541)
!555 = !DILocation(line: 598, column: 8, scope: !541)
!556 = !DILocation(line: 598, column: 12, scope: !541)
!557 = !DILocation(line: 599, column: 9, scope: !541)
!558 = !DILocation(line: 599, column: 5, scope: !541)
!559 = !DILocation(line: 601, column: 12, scope: !541)
!560 = !DILocation(line: 601, column: 3, scope: !541)
!561 = distinct !DISubprogram(name: "adpcm_dec_reset", scope: !13, file: !13, line: 610, type: !14, scopeLine: 611, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!562 = !DILocation(line: 615, column: 39, scope: !561)
!563 = !DILocation(line: 615, column: 18, scope: !561)
!564 = !DILocation(line: 616, column: 39, scope: !561)
!565 = !DILocation(line: 616, column: 18, scope: !561)
!566 = !DILocation(line: 618, column: 69, scope: !561)
!567 = !DILocation(line: 618, column: 52, scope: !561)
!568 = !DILocation(line: 618, column: 35, scope: !561)
!569 = !DILocation(line: 617, column: 66, scope: !561)
!570 = !DILocation(line: 617, column: 49, scope: !561)
!571 = !DILocation(line: 617, column: 33, scope: !561)
!572 = !DILocation(line: 617, column: 17, scope: !561)
!573 = !DILocation(line: 620, column: 67, scope: !561)
!574 = !DILocation(line: 620, column: 51, scope: !561)
!575 = !DILocation(line: 619, column: 81, scope: !561)
!576 = !DILocation(line: 619, column: 65, scope: !561)
!577 = !DILocation(line: 619, column: 49, scope: !561)
!578 = !DILocation(line: 619, column: 33, scope: !561)
!579 = !DILocation(line: 619, column: 17, scope: !561)
!580 = !DILocation(line: 622, column: 68, scope: !561)
!581 = !DILocation(line: 622, column: 47, scope: !561)
!582 = !DILocation(line: 622, column: 26, scope: !561)
!583 = !DILocation(line: 621, column: 82, scope: !561)
!584 = !DILocation(line: 621, column: 61, scope: !561)
!585 = !DILocation(line: 621, column: 41, scope: !561)
!586 = !DILocation(line: 621, column: 21, scope: !561)
!587 = !DILocation(line: 624, column: 65, scope: !561)
!588 = !DILocation(line: 624, column: 45, scope: !561)
!589 = !DILocation(line: 624, column: 25, scope: !561)
!590 = !DILocation(line: 623, column: 81, scope: !561)
!591 = !DILocation(line: 623, column: 61, scope: !561)
!592 = !DILocation(line: 623, column: 41, scope: !561)
!593 = !DILocation(line: 623, column: 21, scope: !561)
!594 = !DILocation(line: 627, column: 11, scope: !561)
!595 = !DILocation(line: 627, column: 9, scope: !561)
!596 = !DILocation(line: 627, column: 16, scope: !561)
!597 = !DILocation(line: 627, column: 18, scope: !561)
!598 = !DILocation(line: 627, column: 3, scope: !561)
!599 = !DILocation(line: 629, column: 26, scope: !561)
!600 = !DILocation(line: 629, column: 5, scope: !561)
!601 = !DILocation(line: 629, column: 30, scope: !561)
!602 = !DILocation(line: 630, column: 29, scope: !561)
!603 = !DILocation(line: 630, column: 5, scope: !561)
!604 = !DILocation(line: 630, column: 33, scope: !561)
!605 = !DILocation(line: 631, column: 28, scope: !561)
!606 = !DILocation(line: 631, column: 5, scope: !561)
!607 = !DILocation(line: 631, column: 32, scope: !561)
!608 = !DILocation(line: 632, column: 3, scope: !561)
!609 = !DILocation(line: 627, column: 24, scope: !561)
!610 = distinct !{!610, !598, !608, !35}
!611 = !DILocation(line: 635, column: 11, scope: !561)
!612 = !DILocation(line: 635, column: 9, scope: !561)
!613 = !DILocation(line: 635, column: 16, scope: !561)
!614 = !DILocation(line: 635, column: 18, scope: !561)
!615 = !DILocation(line: 635, column: 3, scope: !561)
!616 = !DILocation(line: 637, column: 26, scope: !561)
!617 = !DILocation(line: 637, column: 5, scope: !561)
!618 = !DILocation(line: 637, column: 30, scope: !561)
!619 = !DILocation(line: 638, column: 28, scope: !561)
!620 = !DILocation(line: 638, column: 5, scope: !561)
!621 = !DILocation(line: 638, column: 32, scope: !561)
!622 = !DILocation(line: 639, column: 28, scope: !561)
!623 = !DILocation(line: 639, column: 5, scope: !561)
!624 = !DILocation(line: 639, column: 32, scope: !561)
!625 = !DILocation(line: 640, column: 3, scope: !561)
!626 = !DILocation(line: 635, column: 24, scope: !561)
!627 = distinct !{!627, !615, !625, !35}
!628 = !DILocation(line: 643, column: 11, scope: !561)
!629 = !DILocation(line: 643, column: 9, scope: !561)
!630 = !DILocation(line: 643, column: 16, scope: !561)
!631 = !DILocation(line: 643, column: 18, scope: !561)
!632 = !DILocation(line: 643, column: 3, scope: !561)
!633 = !DILocation(line: 644, column: 23, scope: !561)
!634 = !DILocation(line: 644, column: 5, scope: !561)
!635 = !DILocation(line: 644, column: 27, scope: !561)
!636 = !DILocation(line: 645, column: 23, scope: !561)
!637 = !DILocation(line: 645, column: 5, scope: !561)
!638 = !DILocation(line: 645, column: 27, scope: !561)
!639 = !DILocation(line: 646, column: 3, scope: !561)
!640 = !DILocation(line: 643, column: 25, scope: !561)
!641 = distinct !{!641, !632, !639, !35}
!642 = !DILocation(line: 648, column: 3, scope: !561)
!643 = distinct !DISubprogram(name: "adpcm_dec_init", scope: !13, file: !13, line: 651, type: !14, scopeLine: 652, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!644 = !DILocation(line: 654, column: 16, scope: !643)
!645 = !DILocation(line: 656, column: 5, scope: !643)
!646 = !DILocation(line: 657, column: 5, scope: !643)
!647 = !DILocation(line: 660, column: 3, scope: !643)
!648 = !DILocation(line: 667, column: 11, scope: !643)
!649 = !DILocation(line: 667, column: 9, scope: !643)
!650 = !DILocation(line: 667, column: 17, scope: !643)
!651 = !DILocation(line: 667, column: 19, scope: !643)
!652 = !DILocation(line: 667, column: 3, scope: !643)
!653 = !DILocation(line: 668, column: 40, scope: !643)
!654 = !DILocation(line: 668, column: 59, scope: !643)
!655 = !DILocation(line: 668, column: 61, scope: !643)
!656 = !DILocation(line: 668, column: 68, scope: !643)
!657 = !DILocation(line: 668, column: 66, scope: !643)
!658 = !DILocation(line: 668, column: 44, scope: !643)
!659 = !DILocation(line: 668, column: 42, scope: !643)
!660 = !DILocation(line: 668, column: 26, scope: !643)
!661 = !DILocation(line: 668, column: 5, scope: !643)
!662 = !DILocation(line: 668, column: 30, scope: !643)
!663 = !DILocation(line: 671, column: 33, scope: !643)
!664 = !DILocation(line: 671, column: 26, scope: !643)
!665 = !DILocation(line: 671, column: 5, scope: !643)
!666 = !DILocation(line: 671, column: 30, scope: !643)
!667 = !DILocation(line: 672, column: 3, scope: !643)
!668 = !DILocation(line: 667, column: 29, scope: !643)
!669 = distinct !{!669, !652, !667, !35}
!670 = !DILocation(line: 673, column: 1, scope: !643)
!671 = distinct !DISubprogram(name: "adpcm_dec_return", scope: !13, file: !13, line: 675, type: !14, scopeLine: 676, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!672 = !DILocation(line: 678, column: 7, scope: !671)
!673 = !DILocation(line: 680, column: 11, scope: !671)
!674 = !DILocation(line: 680, column: 9, scope: !671)
!675 = !DILocation(line: 680, column: 16, scope: !671)
!676 = !DILocation(line: 680, column: 18, scope: !671)
!677 = !DILocation(line: 680, column: 3, scope: !671)
!678 = !DILocation(line: 681, column: 38, scope: !671)
!679 = !DILocation(line: 681, column: 20, scope: !671)
!680 = !DILocation(line: 681, column: 62, scope: !671)
!681 = !DILocation(line: 681, column: 64, scope: !671)
!682 = !DILocation(line: 681, column: 44, scope: !671)
!683 = !DILocation(line: 681, column: 42, scope: !671)
!684 = !DILocation(line: 681, column: 15, scope: !671)
!685 = !DILocation(line: 681, column: 5, scope: !671)
!686 = !DILocation(line: 680, column: 30, scope: !671)
!687 = distinct !{!687, !677, !688, !35}
!688 = !DILocation(line: 681, column: 70, scope: !671)
!689 = !DILocation(line: 683, column: 10, scope: !671)
!690 = !DILocation(line: 683, column: 20, scope: !671)
!691 = !DILocation(line: 683, column: 3, scope: !671)
!692 = distinct !DISubprogram(name: "adpcm_dec_adpcm_dec", scope: !13, file: !13, line: 690, type: !14, scopeLine: 691, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!693 = !DILocation(line: 695, column: 11, scope: !692)
!694 = !DILocation(line: 695, column: 9, scope: !692)
!695 = !DILocation(line: 695, column: 17, scope: !692)
!696 = !DILocation(line: 695, column: 19, scope: !692)
!697 = !DILocation(line: 695, column: 3, scope: !692)
!698 = !DILocation(line: 696, column: 45, scope: !692)
!699 = !DILocation(line: 696, column: 47, scope: !692)
!700 = !DILocation(line: 696, column: 23, scope: !692)
!701 = !DILocation(line: 696, column: 5, scope: !692)
!702 = !DILocation(line: 697, column: 29, scope: !692)
!703 = !DILocation(line: 697, column: 23, scope: !692)
!704 = !DILocation(line: 697, column: 5, scope: !692)
!705 = !DILocation(line: 697, column: 27, scope: !692)
!706 = !DILocation(line: 698, column: 33, scope: !692)
!707 = !DILocation(line: 698, column: 23, scope: !692)
!708 = !DILocation(line: 698, column: 25, scope: !692)
!709 = !DILocation(line: 698, column: 5, scope: !692)
!710 = !DILocation(line: 698, column: 31, scope: !692)
!711 = !DILocation(line: 699, column: 3, scope: !692)
!712 = !DILocation(line: 695, column: 32, scope: !692)
!713 = distinct !{!713, !697, !711, !35}
!714 = !DILocation(line: 701, column: 1, scope: !692)
!715 = distinct !DISubprogram(name: "adpcm_dec", scope: !13, file: !13, line: 704, type: !14, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!716 = !DILocation(line: 706, column: 3, scope: !715)
!717 = !DILocation(line: 707, column: 3, scope: !715)
!718 = !DILocation(line: 709, column: 3, scope: !715)
!719 = !DILocation(line: 710, column: 1, scope: !715)
