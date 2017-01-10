#!/bin/bash

# program for changing directories

my_cd()
{
    if [ $1 == "-" ]
    then
        cd ..
    elif [ -d $1 ]
    then
        cd $1
    fi
}

my_cd $1
pwd
