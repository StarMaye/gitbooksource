#!/usr/bin/bash
comment=添加机器学习基础算法学习的链接
cur_path=$PWD
echo ${cur_path}
git add .
git commit -m "${comment}"
git push -u origin master
gitbook build

dir_name=Mayexia.github.io
cur_path2=${cur_path}/../${dir_name}
rm -rf ${cur_path2}/*
cp -rf _book/* ${cur_path2}/.
cd ${cur_path2}
ls
echo $PWD
git add .
git commit -m "${comment}"
git push -u origin master
