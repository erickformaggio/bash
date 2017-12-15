#!/bin/bash
# Autor: Erick Formaggio - erick.beltrami@gmail.com
# Programa de estudo com foco no comportamento perante o horário

HORA=$(date +%H)
MINUTO=$(date +%M)

#IF PARA DEFINIR O PERÍODO
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
	echo " Bom dia!"
elif [$HORA -ge 12 -a $HORA -lt 18 ]
then
	echo " Boa tarde!"
else
	echo " Boa noite!"
fi

#IF DO AM/PM

if [ $HORA -lt 12 ]
then
	echo " A hora atual é $HORA:$MINUTO AM"
else
	echo " A hora atual é $HORA:$MINUTO PM"
fi
