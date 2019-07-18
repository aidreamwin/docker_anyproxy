#!/bin/bash
if [ ! -d "/app/scripts" ];then
cp -r /work/scripts /app/scripts
else
echo "scripts文件夹已经存在"
fi
cd /app/scripts
sh run.sh


