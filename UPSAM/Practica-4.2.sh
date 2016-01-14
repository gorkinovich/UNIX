#!/bin/bash
NOMBRE=`hostname`
echo `cat /etc/hosts|grep $NOMBRE|tr -s " *"|cut -d" " -f 1`
exit 0
