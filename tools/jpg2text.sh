#!/bin/bash


echo "this script require need tesseract"

script_dir=$(dirname $0)

for filepath in ${script_dir}/../jpg/*.jpg; do
    echo $filepath
    filename=$(basename $filepath .jpg)
    # ocr
    tesseract $filepath ${script_dir}/../ocr-text/${filename} -l jpn
    # delete space
    sed -i "s/ //g" ${script_dir}/../ocr-text/${filename}.txt
done
