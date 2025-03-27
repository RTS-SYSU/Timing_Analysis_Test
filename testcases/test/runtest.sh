#!/bin/bash

# 清空旧的输出文件
> ./out.txt

# 遍历所有子目录
for dir in */; do
    # 去除目录末尾的斜杠
    dir=${dir%/}
    
    # 编译源代码
    # clang -w -g -O0 -fno-builtin \
    #     -mfloat-abi=soft \
    #     -o "${dir}/${dir}" "${dir}"/*.c|| {
    #     echo "编译失败: ${dir}"
    #     continue
    # }
    llvm-as "${dir}/${dir}.ll" -o "${dir}/${dir}.bc"
    llc "${dir}/${dir}.bc" -filetype=obj --float-abi=hard -mcpu=cortex-a72 -o "${dir}/${dir}.o" -dwarf-version=4
    clang "${dir}/${dir}.o" -target arm -mfloat-abi=hard -fno-builtin -mcpu=cortex-a72 -gdwarf-4 -o "${dir}/${dir}"

    # 运行valgrind并保存输出到当前目录
    valgrind --tool=callgrind \
             --simulate-cache=yes \
             --branch-sim=yes \
             --trace-children=yes \
             --dump-instr=yes \
             --collect-jumps=yes \
             --instr-atstart=yes \
             --I1=1024,8,64 \
             --callgrind-out-file="${dir}/callgrind.out" \
             "./${dir}/${dir}"

    # 提取数据并写入out.txt
    if [ -f "${dir}/callgrind.out" ]; then
    # 获取最后一个totals记录的第二个字段
    # value=$(grep '^totals:' "${dir}/callgrind.out" | tail -n 1 | awk '{sum = $2 + $3 + $4 - 170798 ; print sum}')
    value=$(grep '^totals:' "${dir}/callgrind.out" | tail -n 1 | awk '{sum = $2 - 128409; print sum}')
    # 增加有效性检查
        if [ -z "$value" ]; then
            echo "警告: ${dir} 中未找到有效性能数据"
            value="N/A"
        else
        # 写入结果文件
            echo "${dir} ${value}" >> ./out.txt
        fi
    else
        echo "警告: ${dir} 未生成callgrind.out文件"
    fi
done



