#!/bin/bash
# Programa del Reto 3 
# By: Rafael Baculima - sigladon.rc@gmail.com

echo "---------------------------------------------------------------------"
echo "|                        SCRIPT MULTIFUNCIÓN                        |"
echo "---------------------------------------------------------------------"
echo " Seleccione una de las siguientes opciones:"
echo " 1)Calcular edad."
echo " 2)Calcular días entre dos fechas."
echo " 3)Conversor de monedas."
echo " 4)Conversor de medidas."
echo " 5)Generador de contraseña."
read -p "opción: " option
optionRegex='^[1-5]$'
until [[ $option =~ $optionRegex ]]; do
    echo "$option no es una opción válida, ingrese nuevamente."
    read -p "opción: " option
done
case "$option" in
    1)
        echo "Calcular edad."
        echo "Ingrese la fecha de nacimiento:"
        read -p "Año (Ej:1998): " year
        read -p "Número de Mes (Ej: 02) : " month
        read -p "Día (Ej: 09): " day
        bday=$year/$month/$day
        today=$(date +%Y/%m/%d)
        bdayRegex='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'
        

        until [[ $bday =~ $bdayRegex ]] && date -d $bday >/dev/null 2>&1; do
            echo "Ingrese una fecha válida."
            read -p "Año (Ej: 1998): " year
            read -p "Número de Mes (Ej: 02): " month
            read -p "Día (Ej: 09): " day
            bday=$year/$month/$day
        done

        leapYear=0
        while [[ $year -lt $(date +%Y)  ]]; do
            if [[ $(($year % 4)) == 0 && ( $(($year % 100)) != 0 || $(($year % 400)) == 0 ) ]]; then
                leapYear=$(($leapYear + 1))
                year=$(($year +1))
            else
                year=$(($year + 1))
            fi
        done
        let DIFF=($(date +%s -d $today)-$(date +%s -d $bday)-$(($leapYear*60*60*24)))/$((60*60*24*365))
            if [[ $DIFF == 1 ]]; then
                echo "La edad es $DIFF año."
            else
                echo "La edad es $DIFF años."
            fi  
    ;;
    
    2)
        echo "Calcular cuántos días hay entre dos fechas."

        dateRegex='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'
        echo "Ingrese desde que fecha quiere calcular:"
        read -p "Año (Ej: 1998): " sinceYear
        read -p "Número de Mes (Ej: 02): " sinceMonth
        read -p "Día (Ej: 09): " sinceDay
        sinceDate=$sinceYear/$sinceMonth/$sinceDay
        until [[ $sinceDate =~ $dateRegex ]] && date -d $sinceDate >/dev/null 2>&1; do
            echo "Ingrese una fecha correcta: "
            read -p "Año (Ej: 1998): " sinceYear
            read -p "Número de Mes (Ej: 02): " sinceMonth
            read -p "Día (Ej: 09): " sinceDay
            sinceDate=$sinceYear/$sinceMonth/$sinceDay
        done

        echo -p "Ingrese hasta que fecha quiere calcular:"
        read -p "Año (Ej: 1998): " untilYear
        read -p "Número de Mes (Ej: 02): " untilMonth
        read -p "Día (Ej: 09): " untilDay
        untilDate=$untilYear/$untilMonth/$untilDay
        until [[ $untilDate =~ $dateRegex ]] && date -d $untilDate >/dev/null 2>&1; do
            echo "Ingrese una fecha correcta:"
            read -p "Año (Ej: 1998): " untilYear
            read -p "Número de Mes (Ej: 02): " untilMonth
            read -p "Día (Ej: 09): " untilDay
            untilDate=$untilYear/$untilMonth/$untilDay
        done
        
        sinceEpoch=$(date -d $sinceDate +%s)
        untilEpoch=$(date -d $untilDate +%s)
        
        if (( $sinceEpoch > $untilEpoch )); then
            let xbase=($sinceEpoch - $untilEpoch)
        else
            let xbase=($untilEpoch - $sinceEpoch)
        fi
        let xdays=($xbase/$((60*60*24)))
        echo "$xdays"
        manyYears=$(($xdays / 365))
        manyMonths=$(($(($xdays % 365)) / 30))
        manyDays=$(($(($xdays % 365)) % 30))
        echo "Entre $sinceDate y  $untilDate hay $xdays días, o lo que es lo mismo a $manyYears año(s), $manyMonths mes(es) y  $manyDays día(s)."
        
    ;;

    3)
        echo "Conversor de Monedas"
        echo "Lista de Monedas: "
        echo "1)Dólar Americano           6)Yen"
        echo "2)Euro                      7)Libra Esterlina"
        echo "3)Peso Argentino            8)Peso Chileno"
        echo "4)Peso Colombiano           9)Guaraníes"
        echo "5)Peso Mexicano             10)Nuevo Sol"
        read
esac

while [[ condition ]]; do
    
done

