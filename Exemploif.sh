#!/bin/bash

USUARIO=$(grep "$1" /etc/passwd)

if test $# -eq 0
then
	echo "Informe um nome"
else
	if [ -n "$USUARIO" ]
	then
		echo "O usuario existe"
	else
		echo "Nao existe"
	fi
fi
