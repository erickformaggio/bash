#!/bin/bash

case "$1" in
	[0-9])
		echo "parametro e um numero"
		;;
	[A-Z])
		echo "parametro eh letra maiuscula"
		;;
	[a-z])
		echo "parametro eh letra minuscula"
		;;
	*)
		echo "parametro eh um caractere especial"
		;;
esac

