#!/bin/bash
#####################################################################
DIR="$HOME/uptime_history"
echo "Numero de saltos de tiempo: "
awk '
{
   if (NR == 1)
   {
      ant = $7
   }
   else
   {
      if (($7 - ant) > 6)
      {
         printf ("Salto (%d): %f -> %f\n", NR, ant, $7)
      }

      ant = $7
   }
}' $DIR #|wc -l
exit 0
