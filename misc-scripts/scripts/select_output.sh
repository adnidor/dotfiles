#!/bin/bash
#Displays a menu and runs xrandr to provide the selection
#!/bin/bash
selection=$(dmenu -nb black -nf "#888888" -sb white -sf black <<EOF
internal_only
HDMI1_only
VGA1_only
internal_HDMI1
internal_VGA1
clone_HDMI1
clone_VGA1
EOF
)
RESOLUTION=$(xrandr | sed -nr 's/LVDS1 connected primary ([0-9]+x[0-9]+).*/\1/p')
case $selection in
internal_only)
	xrandr --output LVDS1 --auto
	xrandr --output HDMI1 --off
	xrandr --output VGA1 --off
	;;
HDMI1_only)
	xrandr --output LVDS1 --off
	xrandr --output HDMI1 --auto
	xrandr --output VGA1 --off
	;;
VGA1_only)
	xrandr --output LVDS1 --off
	xrandr --output HDMI1 --off
	xrandr --output VGA1 --auto
	;;
internal_HDMI1)
	xrandr --output LVDS1 --auto --primary
	xrandr --output HDMI1 --auto --right-of LVDS1
	xrandr --output VGA1 --off
	;;
internal_VGA1)
	xrandr --output LVDS1 --auto --primary
	xrandr --output HDMI1 --off
	xrandr --output VGA1 --auto --right-of LVDS1
	;;
clone_HDMI1)
	xrandr --output LVDS1 --auto --primary
	xrandr --output HDMI1 --same-as LVDS1 --auto #--mode $RESOLUTION #Mode not available
	xrandr --output VGA1 --off
	;;
clone_VGA1)
	xrandr --output LVDS1 -auto --primary
	xrandr --output HDMI1 --off
	xrandr --output VGA1 --mode $RESOLUTION --same-as LVDS1
	;;
*)
	echo Fehler
	;;
esac
~/.fehbg
