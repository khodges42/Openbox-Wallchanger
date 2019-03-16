#!/bin/sh
WALLPAPER_PATH=~/Wallpaper

WPCURRENT="$(shuf -n1 -e $WALLPAPER_PATH/*)"

feh --bg-fill "${WPCURRENT}"

color=$(convert "${WPCURRENT}" -gravity east -crop 20%x100% -resize 1x1 -negate txt:- | tail -n1 |cut -d' ' -f4)

echo -n '${color '$color'}' > ~/Wallpaper/color.txt

cat ~/Wallpaper/color.txt
