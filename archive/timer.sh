#!/bin/bash
time_remaining=$1
while [ $time_remaining != 0 ]; do
    echo "$time_remaining minutes remaining.";
    sleep 60
    let "time_remaining -= 1"
done
title_num=$RANDOM
body_num=$RANDOM

declare -a titles=("Freedom" "Timer Completed" "It's all over" "Way to be" "Bet you'd like a break" "What time is it?")
declare -a bodys=("You have completed your task." "Time is up!" "Take a break, Jake!" "You the man!" "What kind of time is it?" "Game time!" "STOP COMPUTING" "yolo")

which_title=$((title_num % ${#titles[@]}))
which_body=$((body_num % ${#bodys[@]}))

osascript -e 'display notification "'"${bodys[$which_body]}"'" with title "'"${titles[$which_title]}"'" sound name "Submarine"'
say "Time is up"
