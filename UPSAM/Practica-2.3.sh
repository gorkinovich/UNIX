#!/bin/bash

if test $# -ne 1
then
   echo "Debe pasar un parametro"
   exit 1
fi

Total=0
for i in `find $1`
do
   if test -f $i
   then
      TamAct=`ls -l $i|tr -s " *"|cut -f5 -d" "`
      Total=`expr $Total + $TamAct`
   fi
done

echo "El tamaño total de $1 es: $Total Bytes"
