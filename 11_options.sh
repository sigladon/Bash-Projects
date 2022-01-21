#!/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parámetros. 
# By: Rafael Baculima - sigladon.rc@gmail.com

echo "Programa Opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opciónes enviadas: $3"
echo -e "\n"
echo "Recuperar valores"

while [ -n "$1" ] 
do
    case "$1" in
        -a) echo "-a opción utilizada";;
        -b) echo "-b opción utilizada";;
        -c) echo "-c opción utilizada";;
    esac
    shift
done
