#!/bin/bash
WPCURRENT="$(shuf -n1 -e ~/Wallpaper/*)"

feh --randomize --bg-fill "${WPCURRENT}"

color=`convert "${WPCURRENT}" -gravity east -crop 20%x100% -resize 1x1 -negate txt:- | tail -n1 |cut -d' ' -f4`

echo -n '${color '$color'}' > ~/Wallpaper/color.txt

cat ~/Wallpaper/color.txt
