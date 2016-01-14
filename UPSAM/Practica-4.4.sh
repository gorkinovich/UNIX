#!/bin/bash
if [ $# -!eq 1 ]
then
  echo "Debe pasarle un directorio"
  exit 1
else
  for i in `cat $2`
  do
    for j in `find $1 -type f -gid $i`
    do
      if[ `cat /etc/group |grep $i`="" ]
      then
        PROPIETARIO=`ls -l $j|awk '{print $3}'`
	if [ PROPIETARIO="" ]
	then
	  rm -i $j
	else
	  chgrp PROPIETARIO $j
	fi
     done
  done
fi
exit 0
