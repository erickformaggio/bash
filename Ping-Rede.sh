#!/bin/bash

# Ping para ver quem esta na rede
# Erick Formaggio - erick.beltrami@gmail.com
# Data 06/12/17

# Variáveis
DATA=$(date)
REDE=$(ifconfig | grep "inet 1") 
MINI=$(date +%M)

if [ "$#" -eq 0 ]
then
	echo "-------------------------------------"
	echo "- Use ./Ping-Rede.sh [sua rede]     -"
	echo "- Exemplo ./Ping-Rede.sh 192.168.20 -"
	echo "-------------------------------------"
	echo ""
	echo "- Abaixo, talvez tenhamos informações sobre seu ip"
	echo $REDE
	exit 1
else
	echo ""
	echo "Iniciando em $DATA"
	echo ""
	echo "Rastreando... O processo pode levar alguns minutos!"
	for x in `seq 1 254`; do 
		ping -c 1 $1.$x | grep "64 bytes" #| cut -d" " -f4 | sed 's/.$//'
	done

	MFIM=$(date +%M)
	TEMPO=$(($MFIM-$MINI))
	echo ""
	echo "Tempo de execução $TEMPO minuto(s)"

	exit 1
fi
