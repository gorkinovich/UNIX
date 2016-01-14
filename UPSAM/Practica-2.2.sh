#!/bin/bash
if test $# -le 0
then
   echo "Para calcular el factorial necesitas argumentos"
   exit 1
else
   for i in $*
   do
      if expr $i - 1  1> /dev/null 2> /dev/null
      then
         if test $i -ge 0
         then
            RESULT=1
            NUM=$i
            while test $NUM -gt 0
            do
               RESULT=`expr $RESULT \* $NUM`
               NUM=`expr $NUM - 1`
            done
            echo "$i! = $RESULT"
         else
            echo "$i es negativo."
         fi
      else
         echo "$i no es un numero."
      fi
   done
fi
