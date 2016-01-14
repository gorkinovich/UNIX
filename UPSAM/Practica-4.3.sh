#!/bin/bash
############################################################################
#Guión que guarda cada diez minutos el número de segundos que lleva abierto#
#el sistema en un archivo uptime_history de 50 lineas.                     #
############################################################################
DIR="$HOME/uptime_history"
while `true`
do
  LINEA="`date` `awk '{print $1}' /proc/uptime`"
  echo $LINEA >> $DIR
  LINEAS=`wc -l $DIR | awk '{print $1}'`
  if test $LINEAS -gt 50
  then
    tail -n 50 $DIR > $DIR.temp
    mv $DIR.temp $DIR
  fi
  sleep 5
done
exit 0
