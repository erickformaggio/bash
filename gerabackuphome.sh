#!/bin/bash

#Diretório onde vai ser salvo o backup
DIRDEST=$HOME/Backup

#Aqui testarei se o diretório não exite
if [ ! -d $DIRDEST]
then
	echo "Criando diretório $DIRDEST"
	mkdir -p $DIRDEST
fi

#Essa variavel vai receber uma busca para ver se ja existe nos ultimos 7 dias um arquivo com esse nome
DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7 " ] #Testa para ver se a variavel eh nula
then
	echo "Ja foi gerado um backup no diretorio $HOME nos ultimos 7dias"
	echo -n "Deseja continuar? (N/S):" #nesse caso o N permite somente um caracter na resposta
	read -n CONT
	echo
	if ["$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
	then
		echo "Backup abortado"
		exit 1
	elif ["$CONT" = S -o "$CONT" = s]
	then
		echo "Sera criado um backup"
	else
		echo "Opcao invalida"
		exit 2
	fi
fi


