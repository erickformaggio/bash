#!/bin/bash

# Ping para ver quem esta na rede
# Erick Formaggio - erick.beltrami@gmail.com
# Data 06/12/17

DATA=$(date)
if [ $1 == '']
then
	echo "-Use ./Ping-Rede.sh [sua rede]"
	echo "-Exemplo ./Ping-Rede.sh 192.168.20"
	exit 1
else
	for x in `seq 1 254`; do
		ping -c 1 $1.$x | grep "64 bytes" # | cut -d" " -f4 | sed 's/.$//'
	done
	exit 0
fi	
