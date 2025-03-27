; ModuleID = '/workspaces/llvmta/testcases/test/prime.c'
source_filename = "/workspaces/llvmta/testcases/test/prime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@prime_seed = dso_local global i32 0, align 4
@prime_x = dso_local global i32 0, align 4
@prime_y = dso_local global i32 0, align 4
@prime_result = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_initSeed() #0 !dbg !12 {
entry:
  store volatile i32 0, i32* @prime_seed, align 4, !dbg !16
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @prime_randomInteger() #0 !dbg !18 {
entry:
  %0 = load volatile i32, i32* @prime_seed, align 4, !dbg !19
  %mul = mul nsw i32 %0, 133, !dbg !20
  %add = add nsw i32 %mul, 81, !dbg !21
  %rem = srem i32 %add, 8095, !dbg !22
  store volatile i32 %rem, i32* @prime_seed, align 4, !dbg !23
  %1 = load volatile i32, i32* @prime_seed, align 4, !dbg !24
  ret i32 %1, !dbg !25
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_init() #0 !dbg !26 {
entry:
  call arm_aapcs_vfpcc void @prime_initSeed() #1, !dbg !27
  %call = call arm_aapcs_vfpcc i32 @prime_randomInteger() #1, !dbg !28
  store i32 %call, i32* @prime_x, align 4, !dbg !29
  %call1 = call arm_aapcs_vfpcc i32 @prime_randomInteger() #1, !dbg !30
  store i32 %call1, i32* @prime_y, align 4, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @prime_return() #0 !dbg !33 {
entry:
  %0 = load i32, i32* @prime_result, align 4, !dbg !34
  ret i32 %0, !dbg !35
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef %n, i32 noundef %m) #0 !dbg !36 {
entry:
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32, i32* %m.addr, align 4, !dbg !37
  %1 = load i32, i32* %n.addr, align 4, !dbg !38
  %rem = urem i32 %0, %1, !dbg !39
  %cmp = icmp eq i32 %rem, 0, !dbg !40
  %conv = zext i1 %cmp to i32, !dbg !40
  %conv1 = trunc i32 %conv to i8, !dbg !41
  ret i8 %conv1, !dbg !42
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_even(i32 noundef %n) #0 !dbg !43 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !44
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef 2, i32 noundef %0) #1, !dbg !45
  ret i8 %call, !dbg !46
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %n) #0 !dbg !47 {
entry:
  %retval = alloca i8, align 1
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4, !dbg !48
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_even(i32 noundef %0) #1, !dbg !49
  %tobool = icmp ne i8 %call, 0, !dbg !49
  br i1 %tobool, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4, !dbg !50
  %cmp = icmp eq i32 %1, 2, !dbg !51
  %conv = zext i1 %cmp to i32, !dbg !51
  %conv1 = trunc i32 %conv to i8, !dbg !52
  store i8 %conv1, i8* %retval, align 1, !dbg !53
  br label %return, !dbg !53

if.end:                                           ; preds = %entry
  store i32 3, i32* %i, align 4, !dbg !54
  br label %for.cond, !dbg !55

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !56
  %3 = load i32, i32* %i, align 4, !dbg !57
  %mul = mul i32 %2, %3, !dbg !58
  %4 = load i32, i32* %n.addr, align 4, !dbg !59
  %cmp2 = icmp ule i32 %mul, %4, !dbg !60
  br i1 %cmp2, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !62
  %6 = load i32, i32* %n.addr, align 4, !dbg !63
  %call4 = call arm_aapcs_vfpcc zeroext i8 @prime_divides(i32 noundef %5, i32 noundef %6) #1, !dbg !64
  %tobool5 = icmp ne i8 %call4, 0, !dbg !64
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !64

if.then6:                                         ; preds = %for.body
  store i8 0, i8* %retval, align 1, !dbg !65
  br label %return, !dbg !65

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %if.end7
  %7 = load i32, i32* %i, align 4, !dbg !67
  %add = add i32 %7, 2, !dbg !67
  store i32 %add, i32* %i, align 4, !dbg !67
  br label %for.cond, !dbg !61, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n.addr, align 4, !dbg !70
  %cmp8 = icmp ugt i32 %8, 1, !dbg !71
  %conv9 = zext i1 %cmp8 to i32, !dbg !71
  %conv10 = trunc i32 %conv9 to i8, !dbg !72
  store i8 %conv10, i8* %retval, align 1, !dbg !73
  br label %return, !dbg !73

return:                                           ; preds = %for.end, %if.then6, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !74
  ret i8 %9, !dbg !74
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_swap(i32* noundef %a, i32* noundef %b) #0 !dbg !75 {
entry:
  %a.addr = alloca i32*, align 4
  %b.addr = alloca i32*, align 4
  %tmp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 4
  store i32* %b, i32** %b.addr, align 4
  %0 = load i32*, i32** %a.addr, align 4, !dbg !76
  %1 = load i32, i32* %0, align 4, !dbg !77
  store i32 %1, i32* %tmp, align 4, !dbg !78
  %2 = load i32*, i32** %b.addr, align 4, !dbg !79
  %3 = load i32, i32* %2, align 4, !dbg !80
  %4 = load i32*, i32** %a.addr, align 4, !dbg !81
  store i32 %3, i32* %4, align 4, !dbg !82
  %5 = load i32, i32* %tmp, align 4, !dbg !83
  %6 = load i32*, i32** %b.addr, align 4, !dbg !84
  store i32 %5, i32* %6, align 4, !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime_main() #0 !dbg !87 {
entry:
  call arm_aapcs_vfpcc void @prime_swap(i32* noundef @prime_x, i32* noundef @prime_y) #1, !dbg !88
  %0 = load i32, i32* @prime_x, align 4, !dbg !89
  %call = call arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %0) #1, !dbg !90
  %tobool = icmp ne i8 %call, 0, !dbg !90
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !91

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* @prime_y, align 4, !dbg !92
  %call1 = call arm_aapcs_vfpcc zeroext i8 @prime_prime(i32 noundef %1) #1, !dbg !93
  %tobool2 = icmp ne i8 %call1, 0, !dbg !94
  %lnot = xor i1 %tobool2, true, !dbg !94
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !95
  %lnot3 = xor i1 %2, true, !dbg !96
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !96
  store i32 %lnot.ext, i32* @prime_result, align 4, !dbg !97
  ret void, !dbg !98
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @prime(i8* noundef %0) #0 !dbg !99 {
entry:
  %.addr = alloca i8*, align 4
  store i8* %0, i8** %.addr, align 4
  call arm_aapcs_vfpcc void @prime_init() #1, !dbg !100
  call arm_aapcs_vfpcc void @prime_main() #1, !dbg !101
  %call = call arm_aapcs_vfpcc i32 @prime_return() #1, !dbg !102
  ret void, !dbg !103
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/prime.c", directory: "/workspaces/llvmta/testcases/tacle-bench", checksumkind: CSK_MD5, checksum: "93a752eea1599691c878402ecbe8f5e7")
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
!12 = distinct !DISubprogram(name: "prime_initSeed", scope: !13, file: !13, line: 49, type: !14, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "test/prime.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "93a752eea1599691c878402ecbe8f5e7")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 49, column: 36, scope: !12)
!17 = !DILocation(line: 49, column: 41, scope: !12)
!18 = distinct !DISubprogram(name: "prime_randomInteger", scope: !13, file: !13, line: 51, type: !14, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!19 = !DILocation(line: 52, column: 18, scope: !18)
!20 = !DILocation(line: 52, column: 29, scope: !18)
!21 = !DILocation(line: 52, column: 36, scope: !18)
!22 = !DILocation(line: 52, column: 42, scope: !18)
!23 = !DILocation(line: 52, column: 14, scope: !18)
!24 = !DILocation(line: 53, column: 11, scope: !18)
!25 = !DILocation(line: 53, column: 3, scope: !18)
!26 = distinct !DISubprogram(name: "prime_init", scope: !13, file: !13, line: 56, type: !14, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!27 = !DILocation(line: 57, column: 3, scope: !26)
!28 = !DILocation(line: 59, column: 13, scope: !26)
!29 = !DILocation(line: 59, column: 11, scope: !26)
!30 = !DILocation(line: 60, column: 13, scope: !26)
!31 = !DILocation(line: 60, column: 11, scope: !26)
!32 = !DILocation(line: 61, column: 1, scope: !26)
!33 = distinct !DISubprogram(name: "prime_return", scope: !13, file: !13, line: 63, type: !14, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!34 = !DILocation(line: 63, column: 29, scope: !33)
!35 = !DILocation(line: 63, column: 22, scope: !33)
!36 = distinct !DISubprogram(name: "prime_divides", scope: !13, file: !13, line: 69, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!37 = !DILocation(line: 70, column: 11, scope: !36)
!38 = !DILocation(line: 70, column: 15, scope: !36)
!39 = !DILocation(line: 70, column: 13, scope: !36)
!40 = !DILocation(line: 70, column: 17, scope: !36)
!41 = !DILocation(line: 70, column: 10, scope: !36)
!42 = !DILocation(line: 70, column: 3, scope: !36)
!43 = distinct !DISubprogram(name: "prime_even", scope: !13, file: !13, line: 73, type: !14, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!44 = !DILocation(line: 73, column: 69, scope: !43)
!45 = !DILocation(line: 73, column: 52, scope: !43)
!46 = !DILocation(line: 73, column: 44, scope: !43)
!47 = distinct !DISubprogram(name: "prime_prime", scope: !13, file: !13, line: 75, type: !14, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!48 = !DILocation(line: 77, column: 18, scope: !47)
!49 = !DILocation(line: 77, column: 7, scope: !47)
!50 = !DILocation(line: 78, column: 13, scope: !47)
!51 = !DILocation(line: 78, column: 15, scope: !47)
!52 = !DILocation(line: 78, column: 12, scope: !47)
!53 = !DILocation(line: 78, column: 5, scope: !47)
!54 = !DILocation(line: 79, column: 44, scope: !47)
!55 = !DILocation(line: 79, column: 42, scope: !47)
!56 = !DILocation(line: 79, column: 49, scope: !47)
!57 = !DILocation(line: 79, column: 53, scope: !47)
!58 = !DILocation(line: 79, column: 51, scope: !47)
!59 = !DILocation(line: 79, column: 58, scope: !47)
!60 = !DILocation(line: 79, column: 55, scope: !47)
!61 = !DILocation(line: 79, column: 37, scope: !47)
!62 = !DILocation(line: 80, column: 23, scope: !47)
!63 = !DILocation(line: 80, column: 26, scope: !47)
!64 = !DILocation(line: 80, column: 9, scope: !47)
!65 = !DILocation(line: 81, column: 7, scope: !47)
!66 = !DILocation(line: 82, column: 3, scope: !47)
!67 = !DILocation(line: 79, column: 63, scope: !47)
!68 = distinct !{!68, !61, !66, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !DILocation(line: 83, column: 11, scope: !47)
!71 = !DILocation(line: 83, column: 13, scope: !47)
!72 = !DILocation(line: 83, column: 10, scope: !47)
!73 = !DILocation(line: 83, column: 3, scope: !47)
!74 = !DILocation(line: 84, column: 1, scope: !47)
!75 = distinct !DISubprogram(name: "prime_swap", scope: !13, file: !13, line: 86, type: !14, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!76 = !DILocation(line: 87, column: 23, scope: !75)
!77 = !DILocation(line: 87, column: 22, scope: !75)
!78 = !DILocation(line: 87, column: 16, scope: !75)
!79 = !DILocation(line: 88, column: 9, scope: !75)
!80 = !DILocation(line: 88, column: 8, scope: !75)
!81 = !DILocation(line: 88, column: 4, scope: !75)
!82 = !DILocation(line: 88, column: 6, scope: !75)
!83 = !DILocation(line: 89, column: 8, scope: !75)
!84 = !DILocation(line: 89, column: 4, scope: !75)
!85 = !DILocation(line: 89, column: 6, scope: !75)
!86 = !DILocation(line: 90, column: 1, scope: !75)
!87 = distinct !DISubprogram(name: "prime_main", scope: !13, file: !13, line: 96, type: !14, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!88 = !DILocation(line: 97, column: 3, scope: !87)
!89 = !DILocation(line: 99, column: 33, scope: !87)
!90 = !DILocation(line: 99, column: 21, scope: !87)
!91 = !DILocation(line: 99, column: 42, scope: !87)
!92 = !DILocation(line: 99, column: 58, scope: !87)
!93 = !DILocation(line: 99, column: 46, scope: !87)
!94 = !DILocation(line: 99, column: 45, scope: !87)
!95 = !DILocation(line: 0, scope: !87)
!96 = !DILocation(line: 99, column: 18, scope: !87)
!97 = !DILocation(line: 99, column: 16, scope: !87)
!98 = !DILocation(line: 100, column: 1, scope: !87)
!99 = distinct !DISubprogram(name: "prime", scope: !13, file: !13, line: 102, type: !14, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!100 = !DILocation(line: 103, column: 3, scope: !99)
!101 = !DILocation(line: 104, column: 3, scope: !99)
!102 = !DILocation(line: 106, column: 3, scope: !99)
!103 = !DILocation(line: 107, column: 1, scope: !99)
