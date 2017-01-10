#!/bin/bash

#program to copy first file contents to second,3rd to 4th and so on provided even num of file names are supplied

c=`expr $# % 2`
if [ $c -eq 1 ]
then
	echo Error!
else
	k=1
	for (( i=1;i < $# ;i+=2))
	do
	n=`expr $k + 1`
	cat ${!k} >> ${!n}
	k=`expr $k + 2`
	done
fi
