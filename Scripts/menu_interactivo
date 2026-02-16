#!/bin/bash

# Menú con diferentes opciones para el usuario.

while true; do #Mientras cumpla una condición, haz lo siguiente.

echo "Menú de opciones" #Echo es para que muestra por pantalla (println en Java).
echo "-------------------------------------"
echo "1. Mostrar la fecha actual"
echo "2. Mostrar qué usuarios hay en el sistema"
echo "3. Cuánto espacio hay en el disco"
echo "4. Salir"
echo "-------------------------------------"
read -p "Elige una opción: " opcion #read es el scanner de Java, para recoger la información que introduce el usuario.
                                    #Con el -p podemos introducir un texto antes de la variable que almacenará la información que proporcione el usuario.

#Creamos un menú en base a las opciones que el usuario puede elegir.
case $opcion in #En bash usamos el $ para llamar a una variable.

#Botones interactivos
1)
clear
date
;; #Se utiliza para cerrar el botón. Es como "fin de este botón".
2)
clear
who
;;
3)
clear
df -h
;;
4)
clear
echo "Saliendo del sistema..."
exit 0
;;
#Botón de escape
*) #Se pone de esta forma cuando no es ninguna de las opciones anteriores.
echo "Opción no válida, por favor, introduce un número del 1 al 4."
;;
esac

done

#exit 0 se utiliza para salir del sistema cuando ha funcionado bien. Es decir, cuando tú quieres salir de él.
#exit 1 se utiliza cuando se sale del sistema, pero ha habido un error (se utiliza en condicionales: si hay algo que está mal, cierra el programa).
