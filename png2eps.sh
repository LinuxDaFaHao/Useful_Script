#!/bin/sh

find -name '*.png' | while read png_file;
do
    #eps_file=$(echo "$pngfile" | sed -r 's/png/eps/g')
    eps_file=${png_file//png/eps}
    echo Converting $png_file to $eps_file
    if [ -f $eps_file ]; then
        echo "File $eps_file already exists, skip!"
    else
        dir_name=$(dirname $eps_file)
        if [ ! -d $dir_name ]; then
            mkdir $dir_name
        fi
        convert -units PixelsPerInch -density 300 $png_file $eps_file
    fi
done
