#!/bin/bash

if grep "$1" /etc/passwd
then
	echo "O usuario existe"
else
	echo "Nao existe"
fi
