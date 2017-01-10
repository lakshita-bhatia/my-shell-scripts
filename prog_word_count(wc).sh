#!/bin/bash

#program for wc

if   [ $# -ne 1 ]
then
    if [[ $# -gt 4 ]]; then
        echo Error!
    else
        for a in "$@"
        do
        case $a in
            -w) wc -w "${@: -1}" | cut -d " " -f 1 ;;
            -c) wc -c "${@: -1}" | cut -d " " -f 1 ;;
            -l) wc -l "${@: -1}" | cut -d " " -f 1 ;;
            -wc) wc -wc "${@: -1}" | cut -d " " -f 2-4 ;;
            -cw) wc -cw "${@: -1}" | cut -d " " -f 2-4 ;;
            -cl) wc -cl "${@: -1}" | cut -d " " -f 2-4 ;;
            -lc) wc -lc "${@: -1}" | cut -d " " -f 2-4 ;;
            -wl) wc -wl "${@: -1}" | cut -d " " -f 2-4 ;;
            -lw) wc -lw "${@: -1}" | cut -d " " -f 2-4 ;;
            -wcl) wc -wcl "${@: -1}" | cut -d " " -f 2-6 ;;
            -wlc) wc -wlc "${@: -1}" | cut -d " " -f 2-6 ;;
            -clw) wc -clw "${@: -1}" | cut -d " " -f 2-6 ;;
            -cwl) wc -cwl "${@: -1}" | cut -d " " -f 2-6 ;;
            -lwc) wc -lwc "${@: -1}" | cut -d " " -f 2-6 ;;
            -lcw) wc -lcw "${@: -1}" | cut -d " " -f 2-6 ;;
        esac
        done
    fi
    echo ${@: -1} 
else
    wc "${@: -1}"
fi
