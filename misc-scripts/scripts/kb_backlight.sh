#!/bin/bash
FILE=/sys/devices/platform/sony-laptop/kbd_backlight

OFF=0
AUTO=1
ON=2

selection=$1

#selection=$(dmenu -i << EOF
#On
#Off
#Auto
#EOF
#)

case $(echo $selection | tr '[:upper:]' '[:lower:]') in
    on)
        command=$ON
    ;;
    off)
        command=$OFF
    ;;
    auto)
        command=$AUTO
    ;;
    *)
        echo Invalid Selection
        exit 1
    ;;
esac

echo $command > $FILE
