#!/bin/bash

#Program to check a file or directory and mention number of lines in file


for i in "$@"
do
    if [ -d $i ]
    then
        echo "$i is directory"
    elif [ -f $i ]
    then
        echo "$i is file with lines:"
        wc -l $i
    fi
done
