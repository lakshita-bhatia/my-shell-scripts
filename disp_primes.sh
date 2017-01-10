#!/bin/bash

#print prime numbers between n and m

if [[ $1 -gt $2 ]];
then
    echo error!
else
    for (( i = $1; i <= $2; i++ ));
    do
        if [[ `factor $i | cut -d " " -f2` -eq $i ]];
        then
            echo $i
        fi
    done
fi
