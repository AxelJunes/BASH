#!/bin/bash

cd /opt/lampp
ex=0
echo '"start" or "stop" ("close" to exit): '
read var
while [[ "$var" != "close" ]]; do
	if [[ "$var" == "start" ]]; then
		sudo ./lampp start
	elif [[ "$var" == "stop" ]]; then
		sudo ./lampp stop
	else
		echo 'Unknown command'
	fi
	echo ' '
	echo '"start" or "stop" ("close" to exit): '
	read var
done