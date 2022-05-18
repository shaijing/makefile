#!/usr/bin/env bash
# Description: demo scripts
# Auth: YuLing
# Email: 
# Date: 2022-05-5
# Version: 1.0
echo "执行的文件名:$0";

for file in $(ls .);do
    echo "file: ${file}"
done