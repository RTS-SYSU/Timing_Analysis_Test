; ModuleID = '/workspaces/llvmta/testcases/test/loopsinmultiplefunction.c'
source_filename = "/workspaces/llvmta/testcases/test/loopsinmultiplefunction.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @exec() #0 !dbg !12 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !16
  br label %for.cond, !dbg !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !18
  %cmp = icmp slt i32 %0, 5, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !21
  %add = add nsw i32 %1, 1, !dbg !21
  store i32 %add, i32* %i, align 4, !dbg !21
  %2 = load i32, i32* %i, align 4, !dbg !22
  %sub = sub nsw i32 %2, 1, !dbg !22
  store i32 %sub, i32* %i, align 4, !dbg !22
  br label %for.inc, !dbg !23

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !24
  %inc = add nsw i32 %3, 1, !dbg !24
  store i32 %inc, i32* %i, align 4, !dbg !24
  br label %for.cond, !dbg !20, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !27
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @a() #0 !dbg !28 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %0, 12, !dbg !32
  br i1 %cmp, label %for.body, label %for.end, !dbg !33

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @exec() #1, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4, !dbg !36
  %inc = add nsw i32 %1, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36
  br label %for.cond, !dbg !33, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret i32 1, !dbg !38
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @b() #0 !dbg !39 {
entry:
  %i = alloca i32, align 4
  store i32 2, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !42
  %cmp = icmp slt i32 %0, 5, !dbg !43
  br i1 %cmp, label %for.body, label %for.end, !dbg !44

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @exec() #1, !dbg !45
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4, !dbg !47
  %inc = add nsw i32 %1, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !44, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  ret i32 2, !dbg !49
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @loop() #0 !dbg !50 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4, !dbg !51
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !53
  %cmp = icmp slt i32 %0, 3, !dbg !54
  br i1 %cmp, label %for.body, label %for.end, !dbg !55

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @a() #1, !dbg !56
  %call1 = call arm_aapcs_vfpcc i32 @b() #1, !dbg !57
  br label %for.inc, !dbg !58

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4, !dbg !59
  %inc = add nsw i32 %1, 1, !dbg !59
  store i32 %inc, i32* %i, align 4, !dbg !59
  br label %for.cond, !dbg !55, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !61
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6 (git@github.com:RTS-SYSU/LLVM-TA.git b7f9c4ccdebc6c37532ddd772889e5f0ff989c79)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/loopsinmultiplefunction.c", directory: "/workspaces/llvmta/testcases/tacle-bench", checksumkind: CSK_MD5, checksum: "8b4cdeeba7ed4514f232cacc7fc66b22")
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
!12 = distinct !DISubprogram(name: "exec", scope: !13, file: !13, line: 1, type: !14, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "test/loopsinmultiplefunction.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "8b4cdeeba7ed4514f232cacc7fc66b22")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 2, column: 10, scope: !12)
!17 = !DILocation(line: 2, column: 6, scope: !12)
!18 = !DILocation(line: 2, column: 14, scope: !12)
!19 = !DILocation(line: 2, column: 16, scope: !12)
!20 = !DILocation(line: 2, column: 2, scope: !12)
!21 = !DILocation(line: 3, column: 5, scope: !12)
!22 = !DILocation(line: 4, column: 5, scope: !12)
!23 = !DILocation(line: 5, column: 2, scope: !12)
!24 = !DILocation(line: 2, column: 21, scope: !12)
!25 = distinct !{!25, !20, !23, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !DILocation(line: 6, column: 2, scope: !12)
!28 = distinct !DISubprogram(name: "a", scope: !13, file: !13, line: 9, type: !14, scopeLine: 9, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!29 = !DILocation(line: 10, column: 11, scope: !28)
!30 = !DILocation(line: 10, column: 7, scope: !28)
!31 = !DILocation(line: 10, column: 18, scope: !28)
!32 = !DILocation(line: 10, column: 20, scope: !28)
!33 = !DILocation(line: 10, column: 2, scope: !28)
!34 = !DILocation(line: 11, column: 3, scope: !28)
!35 = !DILocation(line: 12, column: 2, scope: !28)
!36 = !DILocation(line: 10, column: 26, scope: !28)
!37 = distinct !{!37, !33, !35, !26}
!38 = !DILocation(line: 13, column: 2, scope: !28)
!39 = distinct !DISubprogram(name: "b", scope: !13, file: !13, line: 16, type: !14, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!40 = !DILocation(line: 17, column: 11, scope: !39)
!41 = !DILocation(line: 17, column: 7, scope: !39)
!42 = !DILocation(line: 17, column: 18, scope: !39)
!43 = !DILocation(line: 17, column: 20, scope: !39)
!44 = !DILocation(line: 17, column: 2, scope: !39)
!45 = !DILocation(line: 18, column: 3, scope: !39)
!46 = !DILocation(line: 19, column: 2, scope: !39)
!47 = !DILocation(line: 17, column: 25, scope: !39)
!48 = distinct !{!48, !44, !46, !26}
!49 = !DILocation(line: 20, column: 2, scope: !39)
!50 = distinct !DISubprogram(name: "loop", scope: !13, file: !13, line: 23, type: !14, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!51 = !DILocation(line: 24, column: 10, scope: !50)
!52 = !DILocation(line: 24, column: 6, scope: !50)
!53 = !DILocation(line: 24, column: 14, scope: !50)
!54 = !DILocation(line: 24, column: 15, scope: !50)
!55 = !DILocation(line: 24, column: 2, scope: !50)
!56 = !DILocation(line: 25, column: 3, scope: !50)
!57 = !DILocation(line: 26, column: 3, scope: !50)
!58 = !DILocation(line: 27, column: 2, scope: !50)
!59 = !DILocation(line: 24, column: 19, scope: !50)
!60 = distinct !{!60, !55, !58, !26}
!61 = !DILocation(line: 28, column: 2, scope: !50)
