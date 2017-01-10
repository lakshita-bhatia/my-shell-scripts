#!/bin/bash

#program to remove shell PID from name

touch abc.$$ lmn.$$ tyu.$$
ls
for i in *.$$
do
    mv "$i" "${i%.$$}.txt"
done
echo ---------------------------
ls
