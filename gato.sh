 #!/bin/bash
  
trap 'echo -e "\033[00;30m \n\nGracias por jugar \n"; exit 127' SIGINT
ROJO='\033[01;31m'
VERDE='\033[01;32m'
NEGRO='\033[00;30m'
NEGRITAS='\033[01;30m'
COLOR_DEFECTO='\033[01;30m'
   
casilla=( "" "" "" "" "" "" "" "" "")
    
    mensaje_ganador () {
    echo -e "${VERDE}Felicidades $USER_NO tu Ganas!!${NEGRO}\n"
    exit 1 ;
    }
     
     ganador () {
      if [ $CELDA_VALOR == "${casilla[0]}" ] && [ $CELDA_VALOR == "${casilla[1]}" ] && [ $CELDA_VALOR == "${casilla[2]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[3]}" ] && [ $CELDA_VALOR == "${casilla[4]}" ] && [ $CELDA_VALOR == "${casilla[5]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[6]}" ] && [ $CELDA_VALOR == "${casilla[7]}" ] && [ $CELDA_VALOR == "${casilla[8]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[0]}" ] && [ $CELDA_VALOR == "${casilla[3]}" ] && [ $CELDA_VALOR == "${casilla[6]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[1]}" ] && [ $CELDA_VALOR == "${casilla[4]}" ] && [ $CELDA_VALOR == "${casilla[7]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[2]}" ] && [ $CELDA_VALOR == "${casilla[5]}" ] && [ $CELDA_VALOR == "${casilla[8]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[0]}" ] && [ $CELDA_VALOR == "${casilla[4]}" ] && [ $CELDA_VALOR == "${casilla[8]}" ] ; then
      mensaje_ganador
      elif [ $CELDA_VALOR == "${casilla[2]}" ] && [ $CELDA_VALOR == "${casilla[4]}" ] && [ $CELDA_VALOR == "${casilla[6]}" ] ; then
      mensaje_ganador
      fi
     }
       
  pierde ()  {
   for k in `seq 0 $( expr ${#casilla[@]} - 1) `
    do
     if [ ! -z ${casilla[$k]} ] ; then
      gato_casilla[$k]=$k
       if [ "9"  -eq ${#gato_casilla[@]} ] ; then
        echo -e "${VERDE}\nTal vez tengas mejor suerte !!${NEGRO}\n"
        exit
       fi 
     fi
    done
  }
        
  gato_tablero () {
   clear
   echo -e "\t${NEGRITAS}*************************"
   echo -e "\t*\t ${casilla[0]:-0} | ${casilla[1]:-1} | ${casilla[2]:-2}\t*"
   echo -e "\t*\t____________\t*"
   echo -e "\t*\t ${casilla[3]:-3} | ${casilla[4]:-4} | ${casilla[5]:-5}\t*"
   echo -e "\t*\t____________\t*"
   echo -e "\t*\t ${casilla[6]:-6} | ${casilla[7]:-7} | ${casilla[8]:-8}\t*"
   echo -e "\t*************************\n${NEGRO}"
  }
         
  casilla_vacia () {
   echo -e -n "${COLOR_DEFECTO}"
   read -e -p "$nota" col
   case "$col" in
    [0-8]) if [  -z ${casilla[$col]}   ]; then
    CELDA_IS=empty
   else 
    CELDA_IS=notempty 
   fi;;
     *)  COLOR_DEFECTO=$ROJO
     nota="$USER_NO Escribe un número entre 0 a 8 : "
     casilla_vacia;;
   esac
   echo -e -n "${NEGRO}"
  }
          
           
  eleccion_casilla () { 
   casilla_vacia
   if [ "$CELDA_IS" == "empty" ]; then
    casilla[$col]="$CELDA_VALOR"
   else  
    COLOR_DEFECTO=${ROJO}
    nota="La caja no puede estar vacía, intenta de nuevo $USER_NO : "
    eleccion_casilla 
   fi
  }
            
   jugador () {
   if [ -z $USER1 ]; then
    read -e -p "Introduce el nombre del primer jugador: " USER1
   fi
   
   if [ -z $USER2 ]; then
    read -e -p "Introduce el nombre del segundo jugador: " USER2
   fi
     
   if [ -z $USER1 ] ; then 
     echo -e "${ROJO}El nombre del jugador no puede estar vacío" 
     jugador
   elif [ -z $USER2 ]; then
     echo -e "${ROJO}El nombre del jugador no puede estar vacío" 
     jugador
   fi
   }
     

gato_tablero
echo -e "${COLOR_DEFECTO}Bienvenido al juego 2 (Gato)"
echo -e "La reglas son, introducir un número en la caja entre 0 a 8"
read -n 1 -p "Para continuar escribe y : " y
echo -e "\n"
     
    if  [ "$y" == "y" ]  ||  [ "$y" == "Y" ]; then
     clear
     echo -e "${NEGRITAS}"
     jugador
    else
     echo -e "\nGracias por usarlo !!"
     exit 
    fi
                
 gato_tablero
  while :
   do
    ((i++))
    value=`expr $i % 2`
    if  [ "$value" == "0" ]; then
     USER_NO=$USER1
     nota="$USER_NO Introduce tu elección : "
     CELDA_VALOR="X"
     eleccion_casilla
    else 
     USER_NO=$USER2
     nota="$USER_NO Introduce tu elección : "
     CELDA_VALOR="O"
     eleccion_casilla 
   fi
 
    gato_tablero
    ganador
    pierde 
  done