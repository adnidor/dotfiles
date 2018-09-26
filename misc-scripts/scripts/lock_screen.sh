#!/bin/bash
revert() {
    echo placeholder
    #curl -H "Content-Type: application/json" -d '{"entity_id": "light.schreibtischlampe"}' -X POST http://homeassistant.yannik.intern.yannikenss.de:8123/api/services/light/turn_on
}
trap revert SIGHUP SIGINT SIGTERM
(sleep 5; xset dpms force off) &
curl -H "Content-Type: application/json" -d '{"entity_id": "light.schreibtischlampe"}' -X POST http://homeassistant.yannik.intern.yannikenss.de:8123/api/services/light/turn_off &
~/scripts/i3lock-wrapper -l -n
revert
