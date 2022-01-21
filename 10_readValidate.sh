#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarla utilizando el comando read.
# By: Rafael Baculima - sigladon.rc@gmail.com

option=0
backupName=""
clave=""

echo "Programa Utilidades Posgres"
# Acepta el ingreso de información de un solo caracter.
read -n1 -p "Ingresar una opción: " option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup: " backupName
echo -e "\n"
echo "Opción:$option, backupName:$backupName"
read -s -p "Clave: " clave
echo "$clave"



