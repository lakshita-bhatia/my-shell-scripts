#!/bin/bash

#program to show first n lines

if [ "$#" -eq 2 -a $2 -ge 0 -a $2 -le 9 ];
then
    i=1
    while read line
    do
        if [ $i -gt $2 ]
        then
            break
        fi
        echo $line
        i=`expr $i + 1`
    done < $1
else
    echo Error!
fi
