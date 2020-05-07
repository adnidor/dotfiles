#!/bin/bash

function Dmenu() {
rofi -dmenu $1 
}

selection=$(Dmenu <<EOF
Keyboard layout
Desk lamp
Wallpaper
Touchpad On/Off
Suspend
Lock&Suspend
Keyboard Backlight
Fancontrol
Resume on Lid open
EOF
)
case $selection in
"Touchpad On/Off")
	$(dirname $0)/toggletouchpad.sh
	;;
"Keyboard Backlight")
    $(dirname $0)/kb_backlight.sh $(Dmenu <<EOF
Auto
On
Off
EOF
    )
	;;
"Keyboard layout")
    setxkbmap $(Dmenu <<EOF
de neo
de
en
EOF
    )
    ;;
"Fancontrol")
    $(dirname $0)/fancontrol.sh $(Dmenu <<EOF
On
Off
EOF
    )
    ;;    
"Resume on Lid open")
    $(dirname $0)/lidresume.sh $(Dmenu <<EOF
On
Off
EOF
    )
    ;;
"Desk lamp")
    $(dirname $0)/desklamp.py $(Dmenu <<EOF
On
Off
EOF
    )
    ;;
"Suspend")
    systemctl suspend
    ;;
"Lock&Suspend")
    $(dirname $0)/lock_screen.sh &
    sleep 2
    systemctl suspend
    ;;
"Wallpaper")
    $(dirname $0)/select_background.sh
    ;;
*)
	echo Fehler
	;;
esac
