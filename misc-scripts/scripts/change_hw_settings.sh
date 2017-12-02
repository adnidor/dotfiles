#!/bin/bash

function Dmenu() {
dmenu -l $1 -nb black -nf white -sb white -sf black
}

selection=$(Dmenu 7 <<EOF
Touchpad On/Off
Keyboard layout
Keyboard Backlight
Fancontrol
Resume on Lid open
Suspend
Lock&Suspend
EOF
)
case $selection in
"Touchpad On/Off")
	$(dirname $0)/toggletouchpad.sh
	;;
"Keyboard Backlight")
    $(dirname $0)/kb_backlight.sh $(Dmenu 3 <<EOF
Auto
On
Off
EOF
    )
	;;
"Keyboard layout")
    setxkbmap $(Dmenu 3 <<EOF
de neo
de
en
EOF
    )
    ;;
"Fancontrol")
    $(dirname $0)/fancontrol.sh $(Dmenu 2 <<EOF
On
Off
EOF
    )
    ;;    
"Resume on Lid open")
    $(dirname $0)/lidresume.sh $(Dmenu 2 <<EOF
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
*)
	echo Fehler
	;;
esac
