#!/usr/bin/bash

lines=$(cat $1);
for line in $lines; do
    convert $line -resize "1920x1080^" "gallery-${line%.*}.jpg"
done
