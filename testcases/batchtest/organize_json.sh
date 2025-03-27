#!/bin/bash
# organize_json.sh - 将当前目录下的**ON文件移动到同名文件夹

# 遍历当前目录所有.json文件
for json_file in *.json; do
    # 跳过非文件项
    [ -f "$json_file" ] || continue
    
    # 提取纯文件名（不含扩展名）
    dir_name="${json_file%.*}"

    # 检查是否存在同名文件夹
    if [ -d "$dir_name" ]; then
        echo "Moving $json_file => $dir_name/"
        mv -- "$json_file" "$dir_name/"
    else
        echo "Skip: $dir_name/ directory not found"
    fi
done
