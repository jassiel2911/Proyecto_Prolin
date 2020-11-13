#!/bin/bash

while [[ -z $(ls -d /usr/bin/mpg123) ]]
do
    clear
    echo -e " Necesitas instalar mpg123 para poder sar prebeplayer "
    echo -ne " Para continuar teclea S/N si deseas ejecutar esta acción"
    echo -ne " Realizar:  "
    read op
        case $dec in
        S|s)
            sudo apt-get install mpg123       
        ;;
        N|n)
            echo -e "  No se puede ejecutar prebeplayer... "
            sleep 2
            exit
        ;;
        *)
            echo -e " Opcion invalida "
            sleep 1
            clear
        ;;
    esac
done
echo "ya"