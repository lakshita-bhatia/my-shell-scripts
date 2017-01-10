#!/bin/bash

#program to check first file containing linux word

for i in "$@"
do
    if [ -n "`grep -w linux $i`" ]
    then
        break
    fi
done
echo Found in $i
