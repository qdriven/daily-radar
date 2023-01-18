#!/bin/zsh
CURRD=`pwd`
for folder in `ls`
do
    cd ${CURRD}/${folder}
    echo - `gurl`
done