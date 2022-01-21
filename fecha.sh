#!/bin/bash
# 
# By: Rafael Baculima - sigladon.rc@gmail.com

fechaRegex='^19|20[0-9]{2}$'

read -p "fecha: " fecha

until [[ $fecha =~ $fechaRegex ]]; do
    echo "Ingrese bien el año"
    read -p "fecha: " fecha
done


