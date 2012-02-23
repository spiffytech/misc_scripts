#!/bin/sh

proc='ServerApps'

while true; do
    pids=`ps auxxxxx | grep $proc | awk -F' ' '{print $2;}'`
    for pid in $pids; do
        sudo renice -n 19 $pid 2> /dev/null
    done
    sleep 5
done
