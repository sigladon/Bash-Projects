#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando echo.
# By: Rafael Baculima - sigladon.rc@gmail.com

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo del backup: " backupName
echo "Opción:$option, backupName:$backupName"
