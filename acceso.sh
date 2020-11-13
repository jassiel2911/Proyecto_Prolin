#!/bin/bash

ban=3;

while [ $ban != 0 ]; 
do
    inicio=$PWD
    echo -n " Usuario: "
    read -e usuario
    echo -n " Clave de acceso: "
    read -s clave

    if [ "$usuario" == "salir" ]; 
    then
        exit 1
    fi

    comando=`sudo -S grep -r $usuario /etc/shadow`

    if [ ${comando} > 1 ];
    then

        IFS='$' read -r -a arreglo <<< "$comando"

        pos="\$${arreglo[1]}\$${arreglo[2]}"
        hash=`python -c 'import crypt; import sys; print crypt.crypt( sys.argv[1] , sys.argv[2])' $clave $pos`

        relacion=`echo "$comando" | grep -c "$hash"`

        if [ "$relacion" -eq 1 ];
        then
            clear
            echo -e "Bienvenido"

            while [ 1 ];
            do
                printf "PROLIN@$usuario: $PWD "
                read -e opcion
                dactual=$PWD
                cd $inicio
                case "$opcion" in
                    'ayuda') 
                    ./ayuda.sh
                    ;;
                    'limpiar')
                    ./limpiar.sh
                    ;;
                    'infosis')
                    ./infosis.sh
                    ;;
                    'arbol')
                    ./arbol.sh
                    ;;
                    'fecha')
                    ./fecha.sh
                    ;;
                    'creditos')
                    ./creditos.sh
                    ;;
                    'hora')
                    ./hora.sh
                    ;;
                    'buscar')
                    ./buscar.sh
                    ;;
                    'ahorcado')
                    echo " Bienvenido al juego 1 "
                    ./ahorcado.sh
                    ;;
                    'gato')
                    echo " Bienvenido al juego 2 "
                    ./gato.sh
                    ;;
                    'prebeplayer')
                    echo " Reproductor "
                    ./player.sh
                    ;;
                    'salir')
                    echo " Listo, proyecto terminado. Adios. "
                    exit 1
                    ;;
                    *)
                    cd $dactual; $opcion
                    echo " Opcion no valida, intente de nuevo."
                    ;;
                esac
                cd $dactual
            done
        else
            echo -e "Clave incorrecta, intenta de nuevo $(($fallos-1)) intentos restantes "
            let fallos--
        fi
    else
        echo ""
        echo " El usuario no se encuentra en este sistema operativo, intente con otro usuario. "
        let fallos--
    fi
done
echo -e " Adios "