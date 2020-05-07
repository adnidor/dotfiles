#!/bin/bash -e

selection=$(ls ~/wallpapers/ | rofi -dmenu )

feh --bg-fill --no-fehbg "/home/yannik/wallpapers/$selection"
