#!/bin/sh

grep --color -n -i '^<.*>\|$' $1

if ["$#" -lt 1 ]; then
    echo "Usage : ./html-tag-shower.sh file.txt"
fi
