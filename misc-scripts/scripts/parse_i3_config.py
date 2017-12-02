#!/usr/bin/python3
config_file_name="/home/yannik/.i3/config"
config_file=open(config_file_name)

config_options = []

for line in config_file:
    if line.startswith("bindsym"):
        key=line.split()[1]
        action=" ".join(line.split()[2:])
        config_options.append((key,action))

for item in sorted(config_options,key=lambda a: a[1]):
    print(item[1]+" "*(30-len(item[1]))+" => "+item[0])
