#!/bin/bash
echo "***********************"
printf "\n"
echo "* Hora actual: *"
date +"%X / %Z / %z"
printf "\n"
echo "***********************"
#%X -> Hora en formato de 24 h.
#%Z -> Zona horaria
#%z -> Diferencia entre nuestra
#zona horaria y el UTC.
#UTC: Tiempo universal.
#CST: Tiempo del centro.