#!/bin/bash
revert() {
    echo placeholder
}
trap revert SIGHUP SIGINT SIGTERM
(sleep 5; xset dpms force off) &
i3lock-wrapper -l -n
revert
