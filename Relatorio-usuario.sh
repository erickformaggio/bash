#!/bin/bash

grep $1 /etc/passwd > /dev/null 2>&1 || { echo "Usuario inexistente"; exit 1;}

USERID=$(grep $1 /etc/passwd|cut -d":" -f3)
DESC=$(grep $1 /etc/passwd|cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1|cut -f1)

clear
echo "======================================================================"
echo "Relatorio do usuario: $1"
echo
echo "UID: $USERID"
echo "Nome ou descricao: $DESC"
echo
echo "Total usado no /home/$1: $USOHOME"
echo
echo "Ultimo login:"
lastlog -u $1
echo "======================================================================"
exit 0
