#!/bin/bash

echo "this script require poppler(pdfimages command) and imagemagick(convert command)"

script_dir=$(dirname $0)

# pdf/*.pdf -> tmp/*.{ppm,pbm}
for filepath in ${script_dir}/../pdf/*.pdf; do
    echo $filepath
    filename=$(basename $filepath)
    pdfimages $filepath ${script_dir}/../tmp/${filename}
done

# -> tmp/*.{ppm,pbm} -> jpg/*.jpg
for filepath in ${script_dir}/../tmp/*.{ppm,pbm}; do
    echo $filepath
    filename=$(basename $filepath .ppm)
    filename=$(basename $filename .pbm)
    convert $filepath -rotate -90 ${script_dir}/../jpg/${filename}.jpg
done
