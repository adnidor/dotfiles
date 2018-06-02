#!/bin/bash

function Dmenu() {
dmenu -l $1 -nb black -nf white -sb white -sf black
}

selection=$(ls ~/wallpapers/ | Dmenu 7 )

feh --bg-fill --no-fehbg "/home/yannik/wallpapers/$selection"
