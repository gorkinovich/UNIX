#!/bin/bash
#-----------------------------------------------------------------------#
# 3. Crear un gui�n procesos2 que permita matar procesos que se         #
# pasan como par�metros. Si el proceso contin�a activo se ejecutar�     #
# una orden de muerte incondicional a dicho proceso.                    #
# El n�mero de par�metros ser� indeterminado y los par�metros se        #
# pueden recibir como una orden o un PID.                               #
#-----------------------------------------------------------------------#

if test $# -ge 1
then
 while test $# -gt 0
 do
   VICTIMA=`ps|grep $1 2>/dev/null|tr -s " *"|cut -f1 -d" "`
   if test "$VICTIMA" = ""
   then
      VICTIMA=`ps|grep $1 2>/dev/null|tr -s " *"|cut -f2 -d" "`
   fi

   if test "$VICTIMA" != ""
   then
      kill $VICTIMA
      VIVO=`ps|grep $VICTIMA 2>/dev/null|tr -s " *"|cut -f1 -d" "`
      if test "$VIVO" = ""
      then
         VIVO=`ps|grep $VICTIMA 2>/dev/null|tr -s " *"|cut -f2 -d" "`
      fi

      if test "$VIVO" != ""
      then
         kill -s 9 $VIVO
      fi
   else
      echo "$1 no existe como proceso actualmente..."
   fi

   shift
 done
else
   echo "Tienes que meter al menos un parametro..."
   echo "sh Practica-3.3 [PID|Comando] ..."
fi
