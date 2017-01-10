#!/bin/bash

#name and sizes of file with size>1k in descending order of sizes

n=0
for i in `ls -S`
do
    if [ -f $i ]
    then
        p=`wc -c $i | cut -d " " -f1`
        if [ $p -gt 1000 ]
        then
            echo $i : $p
            n=`expr $n + 1`
        fi
    fi
done
echo Total Files with size" > 1000" : $n
