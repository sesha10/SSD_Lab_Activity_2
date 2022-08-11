#!/bin/bash

c=`awk 'END { print NR }' $1`
f=$((c%2))
d=$((c/2))

if [ $f -eq 1 ]
then
d=$((d+1))
fi

ans=`cat $1 | awk NR==$d`
echo $ans