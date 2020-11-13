#/bin/bash


echo " ********************INFORMACION DEL SISTEMA****************************"
echo " Usuario actual: $(whoami)                                            "
echo " Memoria total: $(cat /proc/meminfo | grep "MemTotal" |  grep "[1-9].*" -o) "
echo " Memoria libre: $(cat /proc/meminfo | grep "MemFree" |  grep "[1-9].*" -o)  "
echo " Arquitectura del sistema: $(uname -m)                                      "
echo " Sistema operativo: $(cat /proc/version)                                    "
echo " Kernel del SO: $(uname -r)                                                 "
echo " ***********************************************************************"