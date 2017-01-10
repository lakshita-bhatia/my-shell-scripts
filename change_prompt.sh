#!/usr/bin/env bash

#Change $ prompt to current directory or passed directory

if [[ $# -eq 1 ]];
then
    export PS1="\w/$1>"
else
    export PS1="\w>"
fi
