#!/bin/bash

#Para parar los comandos se utiliza Ctrl+C.

while true; do

echo "Análisis básico de la red del sistema"
echo "-------------------------------------"
echo "Selecciona una de las siguientes opciones:"
echo "1. Mostrar configuración de red"
echo "2. Comprobar conectividad de red (ping)"
echo "3. Mostrar la tabla de rutas"
echo "4. Resolver nombres de dominio" #Resolver un nombre de dominio significa que traduce el nombre a una IP. Por ejemplo: google.com a su DNS 8.8.8.8.
echo "5. Mostrar conexiones activas"
echo "6. Mostrar la dirección MAC"
echo "7. SALIR"
echo "-------------------------------------"

read -p "Introduce una opción del 1 al 7: " opcion

case $opcion in

1)
echo "Configuración de red: "
ip addr #También se puede usar ifconfig.
;;

2)
read -p "Introduce una IP o un dominio a comprobar" destino
echo "Haciendo un ping a $destino"
ping -c 4 "$destino" #-c 4 es para hacer ping hasta 4 veces y que se corte.
;;

3)
echo "La tabla de rutas es: "
ip route
;;

4)
read -p "Introduce el dominio a resolver: " dominio
echo "Resolviendo el dominio..."
nslookup $dominio
;;

5)
echo "Conexiones activas"
ss -tuln
;;

6)
echo "Dirección MAC de las interfaces de red"
ip link
;;

7)
echo "Saliendo del Sistema..."
exit 0
;;

*)
echo "Opción no válida. Por favor, introduce un número del 1 al 7."
;;

esac
done