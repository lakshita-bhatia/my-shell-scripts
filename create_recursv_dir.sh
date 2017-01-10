#!/bin/bash

#program to create hash-separated directories and change path to last directory

mk_cd()
{
    i=1
    while [[ 1 ]]
    do
        k=`echo $1 | cut -d "/" -f $i`
        if [ -n "$k" ]
        then
            mkdir "$k"
            cd "$k"
        else
            break
        fi
        i=`expr $i + 1`
    done
}

mk_cd $1
pwd
