#!/bin/bash
#-----------------------------------------------------------------------#
# 1. Crear un gui�n procesos1 que permita obtener informaci�n sobre el  #
# significado de los campos que producen las salidas de las �rdenes     #
# ps -f y ps -l.                                                        #
# El gui�n deber� admitir un par�metro ( f � l ) que indicar� sobre que #
# listado se desea informaci�n.                                         #
# La salida seguir� el formato:                                         #
# <nombre del campo> : <n�mero de campo> # <significado>                #
#-----------------------------------------------------------------------#
if test $# -eq 1
then
   case $1 in
      "-f")
         echo "UID   :  1 # ID del usuario"
         echo "PID   :  2 # ID del proceso"
         echo "PPID  :  3 # ID del padre del proceso"
         echo "C     :  4 # Recursos utilizados de la CPU"
         echo "STIME :  5 # Hora de la creacion"
         echo "TTY   :  6 # Terminal"
         echo "TIME  :  7 # Tiempo de ejecucion"
         echo "CMD   :  8 # Comando"
         ;;
      "-l")
         echo "F     :  1 # Flags"
         echo "S     :  2 # Estado"
         echo "UID   :  3 # ID del usuario"
         echo "PID   :  4 # ID del proceso"
         echo "PPID  :  5 # ID del padre del proceso"
         echo "C     :  6 # Recursos utilizados de la CPU"
         echo "PRI   :  7 # Prioridad"
         echo "NI    :  8 # Valor de la propiedad NICE"
         echo "ADDR  :  9 # Numero de segmento de la pila"
         echo "SZ    : 10 # Tama�o en bloques de la imagen"
         echo "WCHAN : 11 # Direccion del proceso por el que esta esperando"
         echo "TTY   : 12 # Terminal"
         echo "TIME  : 13 # Tiempo de ejecucion"
         echo "CMD   : 14 # Comando"
         ;;
      *)
         echo "Parametro indicado erroneo..."
         echo "sh Practica-3.1 [-f|-l]"
         ;;
   esac
else
   echo "Numero de parametros erroneos..."
   echo "sh Practica-3.1 [-f|-l]"
fi