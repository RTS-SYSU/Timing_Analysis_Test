; ModuleID = '/workspaces/llvmta/testcases/test/lms.c'
source_filename = "/workspaces/llvmta/testcases/test/lms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@lms_sintab = dso_local global [6 x double] [double 0.000000e+00, double 0x3FDBF8121BD59652, double 0x3FEA99A1C5033488, double 0x3FF24E53BCE7269F, double 0x3FF5851B9D89FA96, double 0x3FF6A09E667F3BC7], align 8
@lms_input = dso_local global [202 x float] zeroinitializer, align 4
@lms_output = dso_local global [202 x float] zeroinitializer, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc double @lms_sinus(i32 noundef %i) #0 !dbg !12 {
entry:
  %retval = alloca double, align 8
  %i.addr = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4, !dbg !16
  %rem = srem i32 %0, 20, !dbg !17
  store i32 %rem, i32* %s, align 4, !dbg !18
  %1 = load i32, i32* %s, align 4, !dbg !19
  %cmp = icmp sge i32 %1, 10, !dbg !20
  br i1 %cmp, label %if.then, label %if.end, !dbg !19

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %s, align 4, !dbg !21
  %cmp1 = icmp sgt i32 %2, 15, !dbg !22
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !23

cond.true:                                        ; preds = %if.then
  %3 = load i32, i32* %s, align 4, !dbg !24
  %sub = sub nsw i32 20, %3, !dbg !25
  br label %cond.end, !dbg !23

cond.false:                                       ; preds = %if.then
  %4 = load i32, i32* %s, align 4, !dbg !26
  %sub2 = sub nsw i32 %4, 10, !dbg !27
  br label %cond.end, !dbg !23

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub2, %cond.false ], !dbg !23
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond, !dbg !28
  %5 = load double, double* %arrayidx, align 8, !dbg !28
  %fneg = fneg double %5, !dbg !29
  store double %fneg, double* %retval, align 8, !dbg !30
  br label %return, !dbg !30

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %s, align 4, !dbg !31
  %cmp3 = icmp sgt i32 %6, 5, !dbg !32
  br i1 %cmp3, label %cond.true4, label %cond.false6, !dbg !33

cond.true4:                                       ; preds = %if.end
  %7 = load i32, i32* %s, align 4, !dbg !34
  %sub5 = sub nsw i32 10, %7, !dbg !35
  br label %cond.end7, !dbg !33

cond.false6:                                      ; preds = %if.end
  %8 = load i32, i32* %s, align 4, !dbg !36
  br label %cond.end7, !dbg !33

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi i32 [ %sub5, %cond.true4 ], [ %8, %cond.false6 ], !dbg !33
  %arrayidx9 = getelementptr inbounds [6 x double], [6 x double]* @lms_sintab, i32 0, i32 %cond8, !dbg !37
  %9 = load double, double* %arrayidx9, align 8, !dbg !37
  store double %9, double* %retval, align 8, !dbg !38
  br label %return, !dbg !38

return:                                           ; preds = %cond.end7, %cond.end
  %10 = load double, double* %retval, align 8, !dbg !39
  ret double %10, !dbg !39
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_init() #0 !dbg !40 {
entry:
  %seed = alloca i32, align 4
  %k = alloca i32, align 4
  %v1 = alloca double, align 8
  %v2 = alloca double, align 8
  %r = alloca double, align 8
  %scaleFactor = alloca double, align 8
  %noise = alloca double, align 8
  %v114 = alloca double, align 8
  %v215 = alloca double, align 8
  %r16 = alloca double, align 8
  %scaleFactor17 = alloca double, align 8
  %noise35 = alloca double, align 8
  store i32 1, i32* %seed, align 4, !dbg !41
  store float 0.000000e+00, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 0), align 4, !dbg !42
  store double 0x3E10000000000000, double* %scaleFactor, align 8, !dbg !43
  br label %do.body, !dbg !44

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %seed, align 4, !dbg !45
  %mul = mul i32 %0, 1103515245, !dbg !46
  %add = add i32 %mul, 12345, !dbg !47
  store i32 %add, i32* %seed, align 4, !dbg !48
  %1 = load i32, i32* %seed, align 4, !dbg !49
  %and = and i32 %1, 2147483647, !dbg !50
  %conv = uitofp i32 %and to double, !dbg !51
  %2 = call double @llvm.fmuladd.f64(double %conv, double 0x3E10000000000000, double -1.000000e+00), !dbg !52
  store double %2, double* %v1, align 8, !dbg !53
  %3 = load i32, i32* %seed, align 4, !dbg !54
  %mul2 = mul i32 %3, 1103515245, !dbg !55
  %add3 = add i32 %mul2, 12345, !dbg !56
  store i32 %add3, i32* %seed, align 4, !dbg !57
  %4 = load i32, i32* %seed, align 4, !dbg !58
  %and4 = and i32 %4, 2147483647, !dbg !59
  %conv5 = uitofp i32 %and4 to double, !dbg !60
  %5 = call double @llvm.fmuladd.f64(double %conv5, double 0x3E10000000000000, double -1.000000e+00), !dbg !61
  store double %5, double* %v2, align 8, !dbg !62
  %6 = load double, double* %v1, align 8, !dbg !63
  %7 = load double, double* %v1, align 8, !dbg !64
  %8 = load double, double* %v2, align 8, !dbg !65
  %9 = load double, double* %v2, align 8, !dbg !66
  %mul8 = fmul double %8, %9, !dbg !67
  %10 = call double @llvm.fmuladd.f64(double %6, double %7, double %mul8), !dbg !68
  store double %10, double* %r, align 8, !dbg !69
  br label %do.cond, !dbg !70

do.cond:                                          ; preds = %do.body
  %11 = load double, double* %r, align 8, !dbg !71
  %cmp = fcmp ogt double %11, 1.000000e+00, !dbg !72
  br i1 %cmp, label %do.body, label %do.end, !dbg !70, !llvm.loop !73

do.end:                                           ; preds = %do.cond
  %12 = load double, double* %r, align 8, !dbg !76
  %div = fdiv double 1.000000e+00, %12, !dbg !77
  store double %div, double* %noise, align 8, !dbg !78
  %call = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef 1) #2, !dbg !79
  %13 = load double, double* %noise, align 8, !dbg !80
  %14 = load double, double* %v2, align 8, !dbg !81
  %15 = call double @llvm.fmuladd.f64(double %13, double %14, double %call), !dbg !82
  %conv11 = fptrunc double %15 to float, !dbg !79
  store float %conv11, float* getelementptr inbounds ([202 x float], [202 x float]* @lms_input, i32 0, i32 1), align 4, !dbg !83
  store i32 2, i32* %k, align 4, !dbg !84
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %k, align 4, !dbg !86
  %cmp12 = icmp slt i32 %16, 201, !dbg !87
  br i1 %cmp12, label %for.body, label %for.end, !dbg !88

for.body:                                         ; preds = %for.cond
  store double 0x3E10000000000000, double* %scaleFactor17, align 8, !dbg !89
  br label %do.body18, !dbg !90

do.body18:                                        ; preds = %do.cond31, %for.body
  %17 = load i32, i32* %seed, align 4, !dbg !91
  %mul19 = mul i32 %17, 1103515245, !dbg !92
  %add20 = add i32 %mul19, 12345, !dbg !93
  store i32 %add20, i32* %seed, align 4, !dbg !94
  %18 = load i32, i32* %seed, align 4, !dbg !95
  %and21 = and i32 %18, 2147483647, !dbg !96
  %conv22 = uitofp i32 %and21 to double, !dbg !97
  %19 = call double @llvm.fmuladd.f64(double %conv22, double 0x3E10000000000000, double -1.000000e+00), !dbg !98
  store double %19, double* %v114, align 8, !dbg !99
  %20 = load i32, i32* %seed, align 4, !dbg !100
  %mul24 = mul i32 %20, 1103515245, !dbg !101
  %add25 = add i32 %mul24, 12345, !dbg !102
  store i32 %add25, i32* %seed, align 4, !dbg !103
  %21 = load i32, i32* %seed, align 4, !dbg !104
  %and26 = and i32 %21, 2147483647, !dbg !105
  %conv27 = uitofp i32 %and26 to double, !dbg !106
  %22 = call double @llvm.fmuladd.f64(double %conv27, double 0x3E10000000000000, double -1.000000e+00), !dbg !107
  store double %22, double* %v215, align 8, !dbg !108
  %23 = load double, double* %v114, align 8, !dbg !109
  %24 = load double, double* %v114, align 8, !dbg !110
  %25 = load double, double* %v215, align 8, !dbg !111
  %26 = load double, double* %v215, align 8, !dbg !112
  %mul30 = fmul double %25, %26, !dbg !113
  %27 = call double @llvm.fmuladd.f64(double %23, double %24, double %mul30), !dbg !114
  store double %27, double* %r16, align 8, !dbg !115
  br label %do.cond31, !dbg !116

do.cond31:                                        ; preds = %do.body18
  %28 = load double, double* %r16, align 8, !dbg !117
  %cmp32 = fcmp ogt double %28, 1.000000e+00, !dbg !118
  br i1 %cmp32, label %do.body18, label %do.end34, !dbg !116, !llvm.loop !119

do.end34:                                         ; preds = %do.cond31
  %29 = load double, double* %r16, align 8, !dbg !121
  %div36 = fdiv double 1.000000e+00, %29, !dbg !122
  store double %div36, double* %noise35, align 8, !dbg !123
  %30 = load i32, i32* %k, align 4, !dbg !124
  %call37 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %30) #2, !dbg !125
  %31 = load double, double* %noise35, align 8, !dbg !126
  %32 = load double, double* %v215, align 8, !dbg !127
  %33 = call double @llvm.fmuladd.f64(double %31, double %32, double %call37), !dbg !128
  %conv39 = fptrunc double %33 to float, !dbg !125
  %34 = load i32, i32* %k, align 4, !dbg !129
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %34, !dbg !130
  store float %conv39, float* %arrayidx, align 4, !dbg !131
  %35 = load i32, i32* %k, align 4, !dbg !132
  %add40 = add nsw i32 %35, 1, !dbg !133
  %call41 = call arm_aapcs_vfpcc double @lms_sinus(i32 noundef %add40) #2, !dbg !134
  %36 = load double, double* %noise35, align 8, !dbg !135
  %37 = load double, double* %v114, align 8, !dbg !136
  %38 = call double @llvm.fmuladd.f64(double %36, double %37, double %call41), !dbg !137
  %conv43 = fptrunc double %38 to float, !dbg !134
  %39 = load i32, i32* %k, align 4, !dbg !138
  %add44 = add nsw i32 %39, 1, !dbg !139
  %arrayidx45 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add44, !dbg !140
  store float %conv43, float* %arrayidx45, align 4, !dbg !141
  br label %for.inc, !dbg !142

for.inc:                                          ; preds = %do.end34
  %40 = load i32, i32* %k, align 4, !dbg !143
  %add46 = add nsw i32 %40, 2, !dbg !143
  store i32 %add46, i32* %k, align 4, !dbg !143
  br label %for.cond, !dbg !88, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  ret void, !dbg !145
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc float @lms_calc(float noundef %x, float noundef %d, float* noundef %b, i32 noundef %l, float noundef %mu, float noundef %alpha, float* noundef %history, float* noundef %sigma) #0 !dbg !146 {
entry:
  %x.addr = alloca float, align 4
  %d.addr = alloca float, align 4
  %b.addr = alloca float*, align 4
  %l.addr = alloca i32, align 4
  %mu.addr = alloca float, align 4
  %alpha.addr = alloca float, align 4
  %history.addr = alloca float*, align 4
  %sigma.addr = alloca float*, align 4
  %i = alloca i32, align 4
  %y = alloca float, align 4
  %e = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %d, float* %d.addr, align 4
  store float* %b, float** %b.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store float %mu, float* %mu.addr, align 4
  store float %alpha, float* %alpha.addr, align 4
  store float* %history, float** %history.addr, align 4
  store float* %sigma, float** %sigma.addr, align 4
  %0 = load i32, i32* %l.addr, align 4, !dbg !147
  store i32 %0, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !149

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !150
  %cmp = icmp sge i32 %1, 1, !dbg !151
  br i1 %cmp, label %for.body, label %for.end, !dbg !152

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %history.addr, align 4, !dbg !153
  %3 = load i32, i32* %i, align 4, !dbg !154
  %sub = sub nsw i32 %3, 1, !dbg !155
  %arrayidx = getelementptr inbounds float, float* %2, i32 %sub, !dbg !153
  %4 = load float, float* %arrayidx, align 4, !dbg !153
  %5 = load float*, float** %history.addr, align 4, !dbg !156
  %6 = load i32, i32* %i, align 4, !dbg !157
  %arrayidx1 = getelementptr inbounds float, float* %5, i32 %6, !dbg !156
  store float %4, float* %arrayidx1, align 4, !dbg !158
  br label %for.inc, !dbg !156

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !159
  %dec = add nsw i32 %7, -1, !dbg !159
  store i32 %dec, i32* %i, align 4, !dbg !159
  br label %for.cond, !dbg !152, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  %8 = load float, float* %x.addr, align 4, !dbg !162
  %9 = load float*, float** %history.addr, align 4, !dbg !163
  %arrayidx2 = getelementptr inbounds float, float* %9, i32 0, !dbg !163
  store float %8, float* %arrayidx2, align 4, !dbg !164
  store float 0.000000e+00, float* %y, align 4, !dbg !165
  %10 = load float, float* %alpha.addr, align 4, !dbg !166
  %11 = load float, float* %x.addr, align 4, !dbg !167
  %mul = fmul float %10, %11, !dbg !168
  %12 = load float, float* %x.addr, align 4, !dbg !169
  %13 = load float, float* %alpha.addr, align 4, !dbg !170
  %sub4 = fsub float 1.000000e+00, %13, !dbg !171
  %14 = load float*, float** %sigma.addr, align 4, !dbg !172
  %15 = load float, float* %14, align 4, !dbg !173
  %mul5 = fmul float %sub4, %15, !dbg !174
  %16 = call float @llvm.fmuladd.f32(float %mul, float %12, float %mul5), !dbg !175
  %17 = load float*, float** %sigma.addr, align 4, !dbg !176
  store float %16, float* %17, align 4, !dbg !177
  store i32 0, i32* %i, align 4, !dbg !178
  br label %for.cond6, !dbg !179

for.cond6:                                        ; preds = %for.inc12, %for.end
  %18 = load i32, i32* %i, align 4, !dbg !180
  %19 = load i32, i32* %l.addr, align 4, !dbg !181
  %cmp7 = icmp sle i32 %18, %19, !dbg !182
  br i1 %cmp7, label %for.body8, label %for.end13, !dbg !183

for.body8:                                        ; preds = %for.cond6
  %20 = load float*, float** %b.addr, align 4, !dbg !184
  %21 = load i32, i32* %i, align 4, !dbg !185
  %arrayidx9 = getelementptr inbounds float, float* %20, i32 %21, !dbg !184
  %22 = load float, float* %arrayidx9, align 4, !dbg !184
  %23 = load float*, float** %history.addr, align 4, !dbg !186
  %24 = load i32, i32* %i, align 4, !dbg !187
  %arrayidx10 = getelementptr inbounds float, float* %23, i32 %24, !dbg !186
  %25 = load float, float* %arrayidx10, align 4, !dbg !186
  %26 = load float, float* %y, align 4, !dbg !188
  %27 = call float @llvm.fmuladd.f32(float %22, float %25, float %26), !dbg !188
  store float %27, float* %y, align 4, !dbg !188
  br label %for.inc12, !dbg !189

for.inc12:                                        ; preds = %for.body8
  %28 = load i32, i32* %i, align 4, !dbg !190
  %inc = add nsw i32 %28, 1, !dbg !190
  store i32 %inc, i32* %i, align 4, !dbg !190
  br label %for.cond6, !dbg !183, !llvm.loop !191

for.end13:                                        ; preds = %for.cond6
  %29 = load float, float* %mu.addr, align 4, !dbg !193
  %30 = load float, float* %d.addr, align 4, !dbg !194
  %31 = load float, float* %y, align 4, !dbg !195
  %sub14 = fsub float %30, %31, !dbg !196
  %mul15 = fmul float %29, %sub14, !dbg !197
  %32 = load float*, float** %sigma.addr, align 4, !dbg !198
  %33 = load float, float* %32, align 4, !dbg !199
  %div = fdiv float %mul15, %33, !dbg !200
  store float %div, float* %e, align 4, !dbg !201
  store i32 0, i32* %i, align 4, !dbg !202
  br label %for.cond16, !dbg !203

for.cond16:                                       ; preds = %for.inc22, %for.end13
  %34 = load i32, i32* %i, align 4, !dbg !204
  %35 = load i32, i32* %l.addr, align 4, !dbg !205
  %cmp17 = icmp sle i32 %34, %35, !dbg !206
  br i1 %cmp17, label %for.body18, label %for.end24, !dbg !207

for.body18:                                       ; preds = %for.cond16
  %36 = load float, float* %e, align 4, !dbg !208
  %37 = load float*, float** %history.addr, align 4, !dbg !209
  %38 = load i32, i32* %i, align 4, !dbg !210
  %arrayidx19 = getelementptr inbounds float, float* %37, i32 %38, !dbg !209
  %39 = load float, float* %arrayidx19, align 4, !dbg !209
  %40 = load float*, float** %b.addr, align 4, !dbg !211
  %41 = load i32, i32* %i, align 4, !dbg !212
  %arrayidx21 = getelementptr inbounds float, float* %40, i32 %41, !dbg !211
  %42 = load float, float* %arrayidx21, align 4, !dbg !213
  %43 = call float @llvm.fmuladd.f32(float %36, float %39, float %42), !dbg !213
  store float %43, float* %arrayidx21, align 4, !dbg !213
  br label %for.inc22, !dbg !211

for.inc22:                                        ; preds = %for.body18
  %44 = load i32, i32* %i, align 4, !dbg !214
  %inc23 = add nsw i32 %44, 1, !dbg !214
  store i32 %inc23, i32* %i, align 4, !dbg !214
  br label %for.cond16, !dbg !207, !llvm.loop !215

for.end24:                                        ; preds = %for.cond16
  %45 = load float, float* %y, align 4, !dbg !217
  ret float %45, !dbg !218
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms_main() #0 !dbg !219 {
entry:
  %i = alloca i32, align 4
  %b = alloca [21 x float], align 4
  %history = alloca [21 x float], align 4
  %sigma = alloca float, align 4
  store float 2.000000e+00, float* %sigma, align 4, !dbg !220
  store i32 0, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !223
  %cmp = icmp sle i32 %0, 20, !dbg !224
  br i1 %cmp, label %for.body, label %for.end, !dbg !225

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !226
  %arrayidx = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 %1, !dbg !227
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !228
  %2 = load i32, i32* %i, align 4, !dbg !229
  %arrayidx1 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 %2, !dbg !230
  store float 0.000000e+00, float* %arrayidx1, align 4, !dbg !231
  br label %for.inc, !dbg !232

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !233
  %inc = add nsw i32 %3, 1, !dbg !233
  store i32 %inc, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !225, !llvm.loop !234

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !235
  br label %for.cond2, !dbg !236

for.cond2:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, i32* %i, align 4, !dbg !237
  %cmp3 = icmp slt i32 %4, 201, !dbg !238
  br i1 %cmp3, label %for.body4, label %for.end11, !dbg !239

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4, !dbg !240
  %arrayidx5 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %5, !dbg !241
  %6 = load float, float* %arrayidx5, align 4, !dbg !241
  %7 = load i32, i32* %i, align 4, !dbg !242
  %add = add nsw i32 %7, 1, !dbg !243
  %arrayidx6 = getelementptr inbounds [202 x float], [202 x float]* @lms_input, i32 0, i32 %add, !dbg !244
  %8 = load float, float* %arrayidx6, align 4, !dbg !244
  %arraydecay = getelementptr inbounds [21 x float], [21 x float]* %b, i32 0, i32 0, !dbg !245
  %arraydecay7 = getelementptr inbounds [21 x float], [21 x float]* %history, i32 0, i32 0, !dbg !246
  %call = call arm_aapcs_vfpcc float @lms_calc(float noundef %6, float noundef %8, float* noundef %arraydecay, i32 noundef 20, float noundef 0x3F4F352680000000, float noundef 0x3F847AE140000000, float* noundef %arraydecay7, float* noundef %sigma) #2, !dbg !247
  %9 = load i32, i32* %i, align 4, !dbg !248
  %arrayidx8 = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %9, !dbg !249
  store float %call, float* %arrayidx8, align 4, !dbg !250
  br label %for.inc9, !dbg !251

for.inc9:                                         ; preds = %for.body4
  %10 = load i32, i32* %i, align 4, !dbg !252
  %inc10 = add nsw i32 %10, 1, !dbg !252
  store i32 %inc10, i32* %i, align 4, !dbg !252
  br label %for.cond2, !dbg !239, !llvm.loop !253

for.end11:                                        ; preds = %for.cond2
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @lms_return() #0 !dbg !255 {
entry:
  %i = alloca i32, align 4
  %sum = alloca double, align 8
  store double 0.000000e+00, double* %sum, align 8, !dbg !256
  store i32 0, i32* %i, align 4, !dbg !257
  br label %for.cond, !dbg !258

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !259
  %cmp = icmp slt i32 %0, 201, !dbg !260
  br i1 %cmp, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !262
  %arrayidx = getelementptr inbounds [202 x float], [202 x float]* @lms_output, i32 0, i32 %1, !dbg !263
  %2 = load float, float* %arrayidx, align 4, !dbg !263
  %conv = fpext float %2 to double, !dbg !263
  %3 = load double, double* %sum, align 8, !dbg !264
  %add = fadd double %3, %conv, !dbg !264
  store double %add, double* %sum, align 8, !dbg !264
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !266
  %inc = add nsw i32 %4, 1, !dbg !266
  store i32 %inc, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !261, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %5 = load double, double* %sum, align 8, !dbg !268
  %add1 = fadd double %5, 0x4012D2A80064A9CE, !dbg !269
  %mul = fmul double 1.000000e+06, %add1, !dbg !270
  %conv2 = fptosi double %mul to i32, !dbg !271
  ret i32 %conv2, !dbg !272
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @lms(i8* noundef %n) #0 !dbg !273 {
entry:
  %n.addr = alloca i8*, align 4
  store i8* %n, i8** %n.addr, align 4
  call arm_aapcs_vfpcc void @lms_init() #2, !dbg !274
  call arm_aapcs_vfpcc void @lms_main() #2, !dbg !275
  %call = call arm_aapcs_vfpcc i32 @lms_return() #2, !dbg !276
  ret void, !dbg !277
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/lms.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 1, !"branch-target-enforcement", i32 0}
!7 = !{i32 1, !"sign-return-address", i32 0}
!8 = !{i32 1, !"sign-return-address-all", i32 0}
!9 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)"}
!12 = distinct !DISubprogram(name: "lms_sinus", scope: !13, file: !13, line: 57, type: !14, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "test/lms.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "13c45b733f2e3ae7bf4d78c55426b607")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 58, column: 11, scope: !12)
!17 = !DILocation(line: 58, column: 13, scope: !12)
!18 = !DILocation(line: 58, column: 7, scope: !12)
!19 = !DILocation(line: 59, column: 7, scope: !12)
!20 = !DILocation(line: 59, column: 9, scope: !12)
!21 = !DILocation(line: 60, column: 25, scope: !12)
!22 = !DILocation(line: 60, column: 27, scope: !12)
!23 = !DILocation(line: 60, column: 24, scope: !12)
!24 = !DILocation(line: 60, column: 61, scope: !12)
!25 = !DILocation(line: 60, column: 59, scope: !12)
!26 = !DILocation(line: 61, column: 46, scope: !12)
!27 = !DILocation(line: 61, column: 48, scope: !12)
!28 = !DILocation(line: 60, column: 13, scope: !12)
!29 = !DILocation(line: 60, column: 12, scope: !12)
!30 = !DILocation(line: 60, column: 5, scope: !12)
!31 = !DILocation(line: 62, column: 22, scope: !12)
!32 = !DILocation(line: 62, column: 24, scope: !12)
!33 = !DILocation(line: 62, column: 21, scope: !12)
!34 = !DILocation(line: 62, column: 54, scope: !12)
!35 = !DILocation(line: 62, column: 52, scope: !12)
!36 = !DILocation(line: 62, column: 59, scope: !12)
!37 = !DILocation(line: 62, column: 10, scope: !12)
!38 = !DILocation(line: 62, column: 3, scope: !12)
!39 = !DILocation(line: 63, column: 1, scope: !12)
!40 = distinct !DISubprogram(name: "lms_init", scope: !13, file: !13, line: 65, type: !14, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!41 = !DILocation(line: 66, column: 17, scope: !40)
!42 = !DILocation(line: 69, column: 16, scope: !40)
!43 = !DILocation(line: 72, column: 18, scope: !40)
!44 = !DILocation(line: 73, column: 5, scope: !40)
!45 = !DILocation(line: 75, column: 14, scope: !40)
!46 = !DILocation(line: 75, column: 19, scope: !40)
!47 = !DILocation(line: 75, column: 32, scope: !40)
!48 = !DILocation(line: 75, column: 12, scope: !40)
!49 = !DILocation(line: 76, column: 13, scope: !40)
!50 = !DILocation(line: 76, column: 18, scope: !40)
!51 = !DILocation(line: 76, column: 12, scope: !40)
!52 = !DILocation(line: 76, column: 50, scope: !40)
!53 = !DILocation(line: 76, column: 10, scope: !40)
!54 = !DILocation(line: 77, column: 14, scope: !40)
!55 = !DILocation(line: 77, column: 19, scope: !40)
!56 = !DILocation(line: 77, column: 32, scope: !40)
!57 = !DILocation(line: 77, column: 12, scope: !40)
!58 = !DILocation(line: 78, column: 13, scope: !40)
!59 = !DILocation(line: 78, column: 18, scope: !40)
!60 = !DILocation(line: 78, column: 12, scope: !40)
!61 = !DILocation(line: 78, column: 50, scope: !40)
!62 = !DILocation(line: 78, column: 10, scope: !40)
!63 = !DILocation(line: 79, column: 11, scope: !40)
!64 = !DILocation(line: 79, column: 16, scope: !40)
!65 = !DILocation(line: 79, column: 21, scope: !40)
!66 = !DILocation(line: 79, column: 26, scope: !40)
!67 = !DILocation(line: 79, column: 24, scope: !40)
!68 = !DILocation(line: 79, column: 19, scope: !40)
!69 = !DILocation(line: 79, column: 9, scope: !40)
!70 = !DILocation(line: 80, column: 5, scope: !40)
!71 = !DILocation(line: 80, column: 14, scope: !40)
!72 = !DILocation(line: 80, column: 16, scope: !40)
!73 = distinct !{!73, !44, !74, !75}
!74 = !DILocation(line: 80, column: 21, scope: !40)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !DILocation(line: 84, column: 24, scope: !40)
!77 = !DILocation(line: 84, column: 22, scope: !40)
!78 = !DILocation(line: 84, column: 12, scope: !40)
!79 = !DILocation(line: 85, column: 20, scope: !40)
!80 = !DILocation(line: 85, column: 35, scope: !40)
!81 = !DILocation(line: 85, column: 43, scope: !40)
!82 = !DILocation(line: 85, column: 33, scope: !40)
!83 = !DILocation(line: 85, column: 18, scope: !40)
!84 = !DILocation(line: 88, column: 47, scope: !40)
!85 = !DILocation(line: 88, column: 45, scope: !40)
!86 = !DILocation(line: 88, column: 52, scope: !40)
!87 = !DILocation(line: 88, column: 54, scope: !40)
!88 = !DILocation(line: 88, column: 40, scope: !40)
!89 = !DILocation(line: 90, column: 18, scope: !40)
!90 = !DILocation(line: 91, column: 5, scope: !40)
!91 = !DILocation(line: 93, column: 14, scope: !40)
!92 = !DILocation(line: 93, column: 19, scope: !40)
!93 = !DILocation(line: 93, column: 32, scope: !40)
!94 = !DILocation(line: 93, column: 12, scope: !40)
!95 = !DILocation(line: 94, column: 13, scope: !40)
!96 = !DILocation(line: 94, column: 18, scope: !40)
!97 = !DILocation(line: 94, column: 12, scope: !40)
!98 = !DILocation(line: 94, column: 50, scope: !40)
!99 = !DILocation(line: 94, column: 10, scope: !40)
!100 = !DILocation(line: 95, column: 14, scope: !40)
!101 = !DILocation(line: 95, column: 19, scope: !40)
!102 = !DILocation(line: 95, column: 32, scope: !40)
!103 = !DILocation(line: 95, column: 12, scope: !40)
!104 = !DILocation(line: 96, column: 13, scope: !40)
!105 = !DILocation(line: 96, column: 18, scope: !40)
!106 = !DILocation(line: 96, column: 12, scope: !40)
!107 = !DILocation(line: 96, column: 50, scope: !40)
!108 = !DILocation(line: 96, column: 10, scope: !40)
!109 = !DILocation(line: 97, column: 11, scope: !40)
!110 = !DILocation(line: 97, column: 16, scope: !40)
!111 = !DILocation(line: 97, column: 21, scope: !40)
!112 = !DILocation(line: 97, column: 26, scope: !40)
!113 = !DILocation(line: 97, column: 24, scope: !40)
!114 = !DILocation(line: 97, column: 19, scope: !40)
!115 = !DILocation(line: 97, column: 9, scope: !40)
!116 = !DILocation(line: 98, column: 5, scope: !40)
!117 = !DILocation(line: 98, column: 14, scope: !40)
!118 = !DILocation(line: 98, column: 16, scope: !40)
!119 = distinct !{!119, !90, !120, !75}
!120 = !DILocation(line: 98, column: 21, scope: !40)
!121 = !DILocation(line: 102, column: 24, scope: !40)
!122 = !DILocation(line: 102, column: 22, scope: !40)
!123 = !DILocation(line: 102, column: 12, scope: !40)
!124 = !DILocation(line: 103, column: 30, scope: !40)
!125 = !DILocation(line: 103, column: 20, scope: !40)
!126 = !DILocation(line: 103, column: 35, scope: !40)
!127 = !DILocation(line: 103, column: 43, scope: !40)
!128 = !DILocation(line: 103, column: 33, scope: !40)
!129 = !DILocation(line: 103, column: 15, scope: !40)
!130 = !DILocation(line: 103, column: 5, scope: !40)
!131 = !DILocation(line: 103, column: 18, scope: !40)
!132 = !DILocation(line: 104, column: 34, scope: !40)
!133 = !DILocation(line: 104, column: 36, scope: !40)
!134 = !DILocation(line: 104, column: 24, scope: !40)
!135 = !DILocation(line: 104, column: 43, scope: !40)
!136 = !DILocation(line: 104, column: 51, scope: !40)
!137 = !DILocation(line: 104, column: 41, scope: !40)
!138 = !DILocation(line: 104, column: 15, scope: !40)
!139 = !DILocation(line: 104, column: 17, scope: !40)
!140 = !DILocation(line: 104, column: 5, scope: !40)
!141 = !DILocation(line: 104, column: 22, scope: !40)
!142 = !DILocation(line: 105, column: 3, scope: !40)
!143 = !DILocation(line: 88, column: 61, scope: !40)
!144 = distinct !{!144, !88, !142, !75}
!145 = !DILocation(line: 106, column: 1, scope: !40)
!146 = distinct !DISubprogram(name: "lms_calc", scope: !13, file: !13, line: 108, type: !14, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!147 = !DILocation(line: 113, column: 47, scope: !146)
!148 = !DILocation(line: 113, column: 45, scope: !146)
!149 = !DILocation(line: 113, column: 43, scope: !146)
!150 = !DILocation(line: 113, column: 50, scope: !146)
!151 = !DILocation(line: 113, column: 52, scope: !146)
!152 = !DILocation(line: 113, column: 38, scope: !146)
!153 = !DILocation(line: 114, column: 7, scope: !146)
!154 = !DILocation(line: 114, column: 15, scope: !146)
!155 = !DILocation(line: 114, column: 17, scope: !146)
!156 = !DILocation(line: 113, column: 63, scope: !146)
!157 = !DILocation(line: 113, column: 71, scope: !146)
!158 = !DILocation(line: 113, column: 74, scope: !146)
!159 = !DILocation(line: 113, column: 59, scope: !146)
!160 = distinct !{!160, !152, !161, !75}
!161 = !DILocation(line: 114, column: 20, scope: !146)
!162 = !DILocation(line: 115, column: 16, scope: !146)
!163 = !DILocation(line: 115, column: 3, scope: !146)
!164 = !DILocation(line: 115, column: 14, scope: !146)
!165 = !DILocation(line: 118, column: 9, scope: !146)
!166 = !DILocation(line: 119, column: 12, scope: !146)
!167 = !DILocation(line: 119, column: 20, scope: !146)
!168 = !DILocation(line: 119, column: 18, scope: !146)
!169 = !DILocation(line: 119, column: 24, scope: !146)
!170 = !DILocation(line: 119, column: 33, scope: !146)
!171 = !DILocation(line: 119, column: 31, scope: !146)
!172 = !DILocation(line: 119, column: 44, scope: !146)
!173 = !DILocation(line: 119, column: 43, scope: !146)
!174 = !DILocation(line: 119, column: 40, scope: !146)
!175 = !DILocation(line: 119, column: 26, scope: !146)
!176 = !DILocation(line: 119, column: 4, scope: !146)
!177 = !DILocation(line: 119, column: 10, scope: !146)
!178 = !DILocation(line: 121, column: 45, scope: !146)
!179 = !DILocation(line: 121, column: 43, scope: !146)
!180 = !DILocation(line: 121, column: 50, scope: !146)
!181 = !DILocation(line: 121, column: 55, scope: !146)
!182 = !DILocation(line: 121, column: 52, scope: !146)
!183 = !DILocation(line: 121, column: 38, scope: !146)
!184 = !DILocation(line: 122, column: 7, scope: !146)
!185 = !DILocation(line: 122, column: 9, scope: !146)
!186 = !DILocation(line: 122, column: 14, scope: !146)
!187 = !DILocation(line: 122, column: 22, scope: !146)
!188 = !DILocation(line: 121, column: 65, scope: !146)
!189 = !DILocation(line: 121, column: 63, scope: !146)
!190 = !DILocation(line: 121, column: 59, scope: !146)
!191 = distinct !{!191, !183, !192, !75}
!192 = !DILocation(line: 122, column: 23, scope: !146)
!193 = !DILocation(line: 125, column: 13, scope: !146)
!194 = !DILocation(line: 125, column: 19, scope: !146)
!195 = !DILocation(line: 125, column: 23, scope: !146)
!196 = !DILocation(line: 125, column: 21, scope: !146)
!197 = !DILocation(line: 125, column: 16, scope: !146)
!198 = !DILocation(line: 125, column: 30, scope: !146)
!199 = !DILocation(line: 125, column: 29, scope: !146)
!200 = !DILocation(line: 125, column: 26, scope: !146)
!201 = !DILocation(line: 125, column: 9, scope: !146)
!202 = !DILocation(line: 127, column: 45, scope: !146)
!203 = !DILocation(line: 127, column: 43, scope: !146)
!204 = !DILocation(line: 127, column: 50, scope: !146)
!205 = !DILocation(line: 127, column: 55, scope: !146)
!206 = !DILocation(line: 127, column: 52, scope: !146)
!207 = !DILocation(line: 127, column: 38, scope: !146)
!208 = !DILocation(line: 128, column: 7, scope: !146)
!209 = !DILocation(line: 128, column: 11, scope: !146)
!210 = !DILocation(line: 128, column: 19, scope: !146)
!211 = !DILocation(line: 127, column: 63, scope: !146)
!212 = !DILocation(line: 127, column: 65, scope: !146)
!213 = !DILocation(line: 127, column: 68, scope: !146)
!214 = !DILocation(line: 127, column: 59, scope: !146)
!215 = distinct !{!215, !207, !216, !75}
!216 = !DILocation(line: 128, column: 20, scope: !146)
!217 = !DILocation(line: 130, column: 10, scope: !146)
!218 = !DILocation(line: 130, column: 3, scope: !146)
!219 = distinct !DISubprogram(name: "lms_main", scope: !13, file: !13, line: 133, type: !14, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!220 = !DILocation(line: 137, column: 9, scope: !219)
!221 = !DILocation(line: 139, column: 45, scope: !219)
!222 = !DILocation(line: 139, column: 43, scope: !219)
!223 = !DILocation(line: 139, column: 50, scope: !219)
!224 = !DILocation(line: 139, column: 52, scope: !219)
!225 = !DILocation(line: 139, column: 38, scope: !219)
!226 = !DILocation(line: 140, column: 7, scope: !219)
!227 = !DILocation(line: 140, column: 5, scope: !219)
!228 = !DILocation(line: 140, column: 10, scope: !219)
!229 = !DILocation(line: 141, column: 13, scope: !219)
!230 = !DILocation(line: 141, column: 5, scope: !219)
!231 = !DILocation(line: 141, column: 16, scope: !219)
!232 = !DILocation(line: 142, column: 3, scope: !219)
!233 = !DILocation(line: 139, column: 59, scope: !219)
!234 = distinct !{!234, !225, !232, !75}
!235 = !DILocation(line: 144, column: 47, scope: !219)
!236 = !DILocation(line: 144, column: 45, scope: !219)
!237 = !DILocation(line: 144, column: 52, scope: !219)
!238 = !DILocation(line: 144, column: 54, scope: !219)
!239 = !DILocation(line: 144, column: 40, scope: !219)
!240 = !DILocation(line: 145, column: 40, scope: !219)
!241 = !DILocation(line: 145, column: 30, scope: !219)
!242 = !DILocation(line: 145, column: 54, scope: !219)
!243 = !DILocation(line: 145, column: 56, scope: !219)
!244 = !DILocation(line: 145, column: 44, scope: !219)
!245 = !DILocation(line: 145, column: 62, scope: !219)
!246 = !DILocation(line: 146, column: 52, scope: !219)
!247 = !DILocation(line: 145, column: 21, scope: !219)
!248 = !DILocation(line: 145, column: 16, scope: !219)
!249 = !DILocation(line: 145, column: 5, scope: !219)
!250 = !DILocation(line: 145, column: 19, scope: !219)
!251 = !DILocation(line: 147, column: 3, scope: !219)
!252 = !DILocation(line: 144, column: 60, scope: !219)
!253 = distinct !{!253, !239, !251, !75}
!254 = !DILocation(line: 148, column: 1, scope: !219)
!255 = distinct !DISubprogram(name: "lms_return", scope: !13, file: !13, line: 150, type: !14, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!256 = !DILocation(line: 152, column: 10, scope: !255)
!257 = !DILocation(line: 154, column: 47, scope: !255)
!258 = !DILocation(line: 154, column: 45, scope: !255)
!259 = !DILocation(line: 154, column: 52, scope: !255)
!260 = !DILocation(line: 154, column: 54, scope: !255)
!261 = !DILocation(line: 154, column: 40, scope: !255)
!262 = !DILocation(line: 155, column: 23, scope: !255)
!263 = !DILocation(line: 155, column: 12, scope: !255)
!264 = !DILocation(line: 155, column: 9, scope: !255)
!265 = !DILocation(line: 156, column: 3, scope: !255)
!266 = !DILocation(line: 154, column: 60, scope: !255)
!267 = distinct !{!267, !261, !265, !75}
!268 = !DILocation(line: 158, column: 29, scope: !255)
!269 = !DILocation(line: 158, column: 33, scope: !255)
!270 = !DILocation(line: 158, column: 26, scope: !255)
!271 = !DILocation(line: 158, column: 10, scope: !255)
!272 = !DILocation(line: 158, column: 3, scope: !255)
!273 = distinct !DISubprogram(name: "lms", scope: !13, file: !13, line: 163, type: !14, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!274 = !DILocation(line: 164, column: 3, scope: !273)
!275 = !DILocation(line: 165, column: 3, scope: !273)
!276 = !DILocation(line: 166, column: 3, scope: !273)
!277 = !DILocation(line: 167, column: 1, scope: !273)
