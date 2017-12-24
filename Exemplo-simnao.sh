#!/bin/bash


read -p "Deseja fazer algo (s/n)?" -n1 CONT

if [ "$CONT" = "s" -o "$CONT" = "S" ]
then
	clear
	echo "Respondeu Sim!"
	exit 1
elif [ "$CONT" = "n" -o "$CONT" = "N" ]
then	
	clear
	echo "Respondeu Não"
	exit 1
else
	clear
	echo "Opção inválida!"
	exit 2
fi




