#!/bin/bash
#-----------------------------------------------------------------------#
# 4. Diseñe una utilidad que permita:                                   #
# a) -b : Visualizar procesos de fondo o segundo plano.                 #
# b) -i : Seleccionar uno de ellos y relanzarlo como interactivo.       #
# c) -v : Visualizar la prioridad de un proceso.                        #
# d) -p : Variar la prioridad de un proceso.                            #
#-----------------------------------------------------------------------#
if test $# -eq 0
then
   echo "Se requieren parametros para este comando..."
   echo "sh Practica-3.4 -b"
   echo "sh Practica-3.4 -i trabajo"
   echo "sh Practica-3.4 -v PID"
   echo "sh Practica-3.4 -p PID prioridad"

else

case $1 in
   "-b") jobs
      ;;
   "-i")
      if test $# -eq 2
      then
         fg $2
      else
         echo "-i requiere un trabajo"
      fi
      ;;
   "-v")
      if test $# -eq 2
      then
         echo "PRI NI CMD"
         ps -l | grep $2 | tr -s " *" | cut -d" " -f7,8,14
         # ps -l | grep $2 | awk '{print $7 " " $8 " " $14}'
      else
         echo "-v requiere un PID"
      fi
     ;;
   "-p")
      if test $# -eq 3
      then
         renice $3 $2
      else
         echo "-p requiere 3 parametros..."
         echo "sh Practica-3.4 -p PID prioridad"
      fi
     ;;
esac

fi
