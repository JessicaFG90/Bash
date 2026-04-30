#!/bin/bash

probabilidad_cara=70
probabilidad_cruz=30

numero=$((RANDOM % 100 +1)) #En este caso sí debemos ponerle +1 porque queremos que cuente del 1 al 100 y no del 0 al 99.

#-le (low or equal). Es como el <= en Java.
#-ge (greater or equal). Es como el >= en Java.
#-gt (greater than). Es el > en Java.
#-lt (less than). Es el < en Java.

if [ $numero -le $probabilidad_cara ] ; then
echo "CARA"
else
echo "CRUZ"
fi