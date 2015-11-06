#!/bin/bash
time_remaining=$1
while [ $time_remaining != 0 ]; do
    echo "$time_remaining minutes remaining.";
    sleep 60
    let "time_remaining -= 1"
done
osascript -e 'display notification "Time is up!" with title "Freedom" sound name "Submarine"'
say "Time is up"
