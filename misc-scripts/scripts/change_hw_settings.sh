#!/bin/bash

function Dmenu() {
dmenu -l $1 -nb black -nf white -sb white -sf black
}

selection=$(Dmenu 4 <<EOF
Touchpad On/Off
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
    $(dirname $0)/kb_backlight.sh $(Dmenu 3 <<EOF
Auto
On
Off
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
*)
	echo Fehler
	;;
esac
