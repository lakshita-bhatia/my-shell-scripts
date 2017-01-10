#!/bin/bash

#wish good morning/afternoon/evening to user when logged in

h=`date +%H`
case $h in
    0[0-9] )msg="Morning"
        ;;
    1[0-1] )msg="Morning"
        ;;
    1[2-6] )msg="Afternoon"
        ;;
    1[7-9] )msg="Evening"
        ;;
    2[0-3] )msg="Night"
esac
user=`whoami`
echo Good $msg $user!!!!!
