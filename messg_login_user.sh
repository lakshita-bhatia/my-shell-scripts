#!/usr/bin/env bash


#send message to friend when user logs in

while [[ 1 ]];
do
    if [ -n "`who | grep -w "lakshita"`" ]
    then
        echo Hello
        break
    fi
    sleep 4s
done
