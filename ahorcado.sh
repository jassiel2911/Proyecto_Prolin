#! /bin/bash

intentos=8
contador=0

function limpiar()
{
clear
}

limpiar

echo -e "\e[1;36m \n\n\n\t\t AHORCADO   como en el:   \n"

echo -e "\t\t  ________________          "
echo -e "\t\t |  ___________   |         "
echo -e "\t\t | |           |_ |         "
echo -e "\t\t | |            / \         "
echo -e "\t\t |S|            \ /         "
echo -e "\t\t |E|             |          "
echo -e "\t\t |M|         mmmmmmmmm      "
echo -e "\t\t |E|          /O  O\        "
echo -e "\t\t |S|         /  ()  \       "
echo -e "\t\t |T|       __\ '--' /___    "
echo -e "\t\t |R|      |mmm|  m  |mmm|   "
echo -e "\t\t |E|         /   m   \      "
echo -e "\t\t | |         \   m   /      "
echo -e "\t\t | |        _/  /\  \_      "
echo -e "\t\t | |      {mmmm/  \mmmm}    "
echo -e "\t\t xxxxxxxxxxxxxxxxxxxxxxxxxxxx\e[0m"
echo ""
echo -e "\e[1;37mJugador 1\e[0m"
echo -e "\e[1;34mEscribe tu nombre por favor:\e[0m"
read jugador1
echo ""
echo -e "\e[1;37mJugador 2\e[0m"
echo -e "\e[1;34mEscribe tu nombre por favor:\e[0m"
read jugador2
echo ""
declare -a palabra_secreta[30];
read -s -p "$jugador1 escriba la palabra por adivinar para $jugador2: " palabra_secreta2
let longitud=`expr length "$palabra_secreta2"`-1  
echo ""
echo "$jugador2 ... Prueba tu suerte! Solo tienes 8 intentos"


delcare -a pauxiliar[$longitud];

for i in $(seq 0 $longitud);
do
    palabra_secreta[$i]=${palabra_secreta2:$i:1}  
done 


declare -a palabra_adivinar[$longitud];

echo "Recuerda la pista!"
for i in $(seq 0 $longitud);
do
    pauxiliar[$i]=_                            
    echo ${pauxiliar[$i]}; 
done
limpiar;


while test $contador -le $intentos
	do
    echo -e "\e[1;31mINTENTO: $contador\e[0m"
    if [ $contador -eq 1 ]
	then
        echo -e "\t\t\e[1;36m  ________________  "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      \e[0m"
    
    elif [ $contador -eq 2 ]
    then
        echo -e "\t\t\e[1;36m  ________________          "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      "
        echo -e "\t\t |E|          /O  O\        "
        echo -e "\t\t |S|         /  ()  \       "
        echo -e "\t\t |T|       __\ '--' /___    "


    elif [ $contador -eq 3 ]
    then
        echo -e "\t\t\e[1;36m  ________________          "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      "
        echo -e "\t\t |E|          /O  O\        "
        echo -e "\t\t |S|         /  ()  \       "
        echo -e "\t\t |T|       __\ '--' /___    "
        echo -e "\t\t |R|      |mmm|  m  |       "


    elif [ $contador -eq 4 ]
    then
        echo -e "\t\t\e[1;36m  ________________          "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      "
        echo -e "\t\t |E|          /O  O\        "
        echo -e "\t\t |S|         /  ()  \       "
        echo -e "\t\t |T|       __\ '--' /___    "
        echo -e "\t\t |R|      |mmm|  m  |mmm|   "

    elif [ $contador -eq 5 ]
    then
        echo -e "\t\t\e[1;36m  ________________          "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      "
        echo -e "\t\t |E|          /O  O\        "
        echo -e "\t\t |S|         /  ()  \       "
        echo -e "\t\t |T|       __\ '--' /___    "
        echo -e "\t\t |R|      |mmm|  m  |mmm|   "
        echo -e "\t\t |E|         /   m   \      "
        echo -e "\t\t | |         \   m   /      "

    elif [ $contador -eq 6 ]
    then
        echo -e "\t\t\e[1;36m  ________________          "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      "
        echo -e "\t\t |E|          /O  O\        "
        echo -e "\t\t |S|         /  ()  \       "
        echo -e "\t\t |T|       __\ '--' /___    "
        echo -e "\t\t |R|      |mmm|  m  |mmm|   "
        echo -e "\t\t |E|         /   m   \      "
        echo -e "\t\t | |         \   m   /      "
        echo -e "\t\t | |        _/  /           "
        echo -e "\t\t | |      {mmmm/            "
        echo -e "\t\t xxxxxxxxxxxxxxxxxxxxxxxxxxxx\e[0m"
        
    elif [ $contador -eq 7 ]
    then
        echo -e "\t\t\e[1;36m  ________________          "
        echo -e "\t\t |  ___________   |         "
        echo -e "\t\t | |           |_ |         "
        echo -e "\t\t | |            / \         "
        echo -e "\t\t |S|            \ /         "
        echo -e "\t\t |E|             |          "
        echo -e "\t\t |M|         mmmmmmmmm      "
        echo -e "\t\t |E|          /O  O\        "
        echo -e "\t\t |S|         /  ()  \       "
        echo -e "\t\t |T|       __\ '--' /___    "
        echo -e "\t\t |R|      |mmm|  m  |mmm|   "
        echo -e "\t\t |E|         /   m   \      "
        echo -e "\t\t | |         \   m   /      "
        echo -e "\t\t | |        _/  /\  \_      "
        echo -e "\t\t | |      {mmmm/  \mmmm}    "
        echo -e "\t\t xxxxxxxxxxxxxxxxxxxxxxxxxxxx\e[0m"
    fi

for i in $(seq 0 $longitud);
do
	echo -n -e "\t${pauxiliar[$i]} ";
done
echo -e "\n"
echo "¿Qué letra podria ser?:"
read letra

echo $palabra_secreta2 | grep "$letra" > nul 2>&1 || let contador+=1
for i in $(seq 0 $longitud);
do
	if [ ${palabra_secreta[$i]} = "$letra" ];then
		pauxiliar[$i]=$letra
fi
done
	for i in $(seq 0 $longitud);
	do
		echo -n "${pauxiliar[$i]} ";
	done
limpiar

if [ "$contador" -ge "$intentos" ];
	then
		break
    fi
	i=0
	resp=`while test $i -le $longitud; do echo -n ${pauxiliar[$i]}; let i+=1; done`
	if [ "$resp" == "$palabra_secreta2" ];
	then
	break;
	fi
	done
    if [ "$resp" == "$palabra_secreta2" ]
	then
		echo -e "\e[1;33m¡Felicidades, ya GANASTE!\e[0m"
	else
        echo -e "\e[1;33m¡Ya perdiste!\e[0m"
    fi
    exit 0;