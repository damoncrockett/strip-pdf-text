#!/bin/bash

mkdir /Users/damoncrockett/Dropbox/cogs220/proposal/lit/text
FILES=/Users/damoncrockett/Dropbox/cogs220/proposal/lit/*.pdf
EXT=".txt"
prefix="/Users/damoncrockett/Dropbox/cogs220/proposal/lit/text/"

for f in $FILES
do
	file=${f##*/}
	pith=${file%.*}
	pdf2txt.py -o "$prefix$pith$EXT" "$f"
done
