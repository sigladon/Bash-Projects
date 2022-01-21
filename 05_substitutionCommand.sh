#!/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilización.
# By: Rafael Baculima - sigladon.rc@gmail.com

actualDirectory=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es la siguiente: $actualDirectory"
echo "Información del Kernel: $infoKernel"
