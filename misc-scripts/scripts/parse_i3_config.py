#!/usr/bin/python3
config_file_string="/home/yannik/.i3/config"
config_file=open(config_file_string)

for line in config_file:
    if line.startswith("bindsym"):
        key=line.split()[1]
        action=line.split()[2:]
        print(key+" => "+' '.join(action))
