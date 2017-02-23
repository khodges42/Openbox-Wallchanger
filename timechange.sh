#!/bin/bash
WALLPAPERS=/home/metis/Wallpaper
TIME=3m
while [ true ];
do
    feh --bg-scale "$(find $WALLPAPERS -name *.jpg -o -name '*.JPG' | shuf -n 1)" && sleep $TIME
done &
