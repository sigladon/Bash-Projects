#!/bin/bash
# Programa para solicitar información al usuario y posteriormente imprimirla en pantalla. 
# By: Rafael Baculima - sigladon.rc@gmail.com

namesRegex='^[A-Za-zá-üÁ-Ü\ ]*$'
lnamesRegex='^[A-Za-zá-üÁ-Ü\ ]*$'
ageRegex='^[0-9]{1,2}$'
cityRegex='^[A-Za-zá-úÁ-Ú\ ]*$'
phoneRegex='^[0-9]{10}$'


echo "Ingrese la información solicitada a continuación"
read -p "Nombres: " names
until [[ $names =~ $namesRegex ]]; do
    echo "El nombre no debe contener números. Ingrese nuevamente."
    read -p "Nombres: " names
done

read -p "Apellidos: " lnames
until [[ $lnames =~ $lnamesRegex ]]; do
    echo "Los apellidos no deben contener números. Ingrese nuevamente."
    read -p "Apellidos: " lnames 
done

read -p "Edad: " age
until [[ $age =~ $ageRegex ]]; do
    echo "Ingrese una edad válida."
    read -p "Edad: " age 
done

read -p "Ciudad: " city
until [[ $city =~ $cityRegex ]]; do
    echo "Ingrese una ciudad válida."
    read -p "Ciudad: " city
done

read -p "Número de celular: " phone
until [[ $phone =~ $phoneRegex ]]; do
    echo "Su número de teléfono debe tener 10 dígitos. Ingrese nuevamente."
    read -p "Número de celular: " phone
done

echo "-------------------------------------------"
echo "Sus datos son:"
echo "-------------------------------------------"
echo "Nombres:                   $names"
echo "Apellidos                  $lnames"
echo "Edad:                      $age años"
echo "Ciudad:                    $city"
echo "Número de celular:         $phone"
echo "-------------------------------------------"
echo -e "\n"
