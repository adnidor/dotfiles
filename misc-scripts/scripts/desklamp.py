#!/usr/bin/python3
import requests
from sys import argv

def turn_on(entity_id):
    requests.post("http://homeassistant.yannik.intern.yannikenss.de:8123/api/services/light/turn_on", json={"entity_id": entity_id})

def turn_off(entity_id):
    requests.post("http://homeassistant.yannik.intern.yannikenss.de:8123/api/services/light/turn_off", json={"entity_id": entity_id})

def is_on(entity_id):
    return requests.get("http://homeassistant.yannik.intern.yannikenss.de:8123/api/states/"+entity_id).json()["state"] == "on"

command = argv[1].lower()

if command == "on":
    turn_on("light.schreibtischlampe")
elif command == "off":
    turn_off("light.schreibtischlampe")
elif command == "toggle":
    if is_on("light.schreibtischlampe"):
        turn_off("light.schreibtischlampe")
    else:
        turn_on("light.schreibtischlampe")
