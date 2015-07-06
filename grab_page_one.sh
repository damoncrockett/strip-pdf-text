#!/bin/bash

FILES=/Users/damoncrockett/Dropbox/cogs220/proposal/lit/*.pdf
prefix="ONE"
BASE_PATH="/Users/damoncrockett/Dropbox/cogs220/proposal/lit/"

for f in $FILES
do
	pdftk "$f" cat 1-1 output "$BASE_PATH$prefix$(basename $f)"
done