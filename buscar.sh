#!/bin/bash

echo 'Escribe el nombre completo del archivo (Incluso con extension)'
read -e -r archivo
echo 'Ruta absoluta del archivo'
read -e ruta
cd $ruta

if find . -maxdepth 1 -name "$archivo" -print -quit | grep -q . 
then
  echo "Archivo encontrado"
else 
  echo "Archivo no encontrado"
fi