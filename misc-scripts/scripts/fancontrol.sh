#!/bin/bash
FILE=/sys/devices/platform/sony-laptop/fan_forced

OFF=1
ON=0

selection=$1

case $(echo $selection | tr '[:upper:]' '[:lower:]') in
    on)
        command=$ON
    ;;
    off)
        command=$OFF
    ;;
    *)
        echo Invalid Selection
        exit 1
    ;;
esac

echo $command > $FILE
