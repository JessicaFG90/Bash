#!/bin/bash

#RANDOM permite crear un número aleatorio.
numero=$((RANDOM % 6 +1)) #Creamos una variable que genera un número aleatorio entre 6 opciones. Como empieza a contar desde 0, hay que añadirle un +1 para empiece desde el 1.

echo "El resultado de la tirada es: $numero."