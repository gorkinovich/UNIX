#!/bin/bash
if test $# -eq 0
then
   echo "Introduzca cadena 1: "
   read CADENA1
   echo "Introduzca cadena 2: "
   read CADENA2
   echo "Introduzca cadena 3: "
   read CADENA3
elif test $# -eq 3
then
   CADENA1=$1
   CADENA2=$2
   CADENA3=$3
else
   echo "Se requieren 3 argumentos"
   exit 1
fi

if test "$CADENA1" = "$CADENA2"
then
   if test "$CADENA2" = "$CADENA3"
   then
      echo "Las tres cadenas son iguales: $CADENA1"
   else
      echo "Las cadenas 1 y 2 son iguales: $CADENA2"
   fi
elif test "$CADENA1" = "$CADENA3"
then
   echo "Las cadenas 1 y 3 son iguales: $CADENA1"
elif test "$CADENA2" = "$CADENA3"
then
   echo "Las cadenas 2 y 3 son iguales: $CADENA2"
else
   echo "No hay ninguna cadena igual..."
   echo $CADENA1
   echo $CADENA2
   echo $CADENA3
   exit 2
fi
