#!/bin/bash
FILE=/sys/devices/platform/sony-laptop/lid_resume_S5

OFF=0
ON=1

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
