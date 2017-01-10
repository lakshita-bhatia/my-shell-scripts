#!/bin/bash

#check if file exists in current directory or in mydir directory else create in directory
ls
if [[ ! -d "mydir" ]];
then
    mkdir "mydir"
fi
k=0
for a in "$@"
do
    if [[ -f $a ]];
    then
        echo "$a :current directory"
        k=`expr $k + 1`
    else
        cd mydir
        if [[ -f $a ]]; then
            echo "$a :mydir"
        else
            touch $a
        fi
        cd ..
    fi
done

if [[ $k -eq $# ]]; then
    rm -r mydir
fi
ls
