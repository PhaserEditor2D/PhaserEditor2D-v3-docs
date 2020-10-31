#!/bin/bash

for name in `ls images/*.png`; do

    new_name=images/$(basename $name .png).webp
    echo ".. image:: ../$new_name"
    convert $name -define webp:lossless=true $new_name
    mv $name .backup-images/
done