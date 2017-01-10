#!/usr/bin/env bash
#Description: gives pop up msg when battery charge goes below 90%

while [[ 1 ]];
do
bat=`upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "percentage"| cut -d ":" -f2| cut -c 11,12`
if [ $bat -lt 90 ]
then
	notify-send -i face-wink "below 90%, charge it!"
	break
fi
sleep 5s
done
