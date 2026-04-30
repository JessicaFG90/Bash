#!/bin/bash

archivo="password.txt"

while true; do
    echo "=== Password Generatos ==="
    echo "1. Generar una contraseña"
    echo "2. Salir"

    read -p "Elige una opción: " opcion

    case $opcion in
        1)
        #Pedirle la longitud de la constraseña al usuario
        read -p "Elige la longitud de la contraseña (8-32 caracteres): " longitud
        if [[ ! $longitud =~ ^[0-9]+$ ]] || [[ $longitud -lt 8 ]] || [[ $longitud -gt 32 ]]; then
            echo "Error, introduce un número entre 8 y 32."
            continue
        fi

        #Preguntar al usuario si quiere meter mayúsculas, números y caracteres especiales
        read -rp "¿Quieres incluir mayúsculas? (s/n) " mayusculas
        read -rp "¿Quieres incluir números? (s/n) " numeros
        read -rp "¿Quieres incluir caracteres especiales? (s/n) " especiales

        if [[ $mayusculas != "s" && $numeros != "s" && $especiales != "s" ]]; then
            echo "Error, debes introducir al menos una de estas opciones."
            continue
        fi

        caracteres=""
        caracteres+="abcdefghijklmnñopqrstuvwxyz"

        if [[ $mayusculas == "s" ]]; then
            caracteres+="ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
        fi

        if [[ $numeros == "s" ]]; then
            caracteres+="0123456789"
        fi

        if [[ $especiales == "s" ]]; then
            caracteres+="!ñ@#$%^&*()_+-{}"
        fi

        #Bucle for para generar la constraseña
        password=""
        for((i = 0; i < $longitud; i++)); do
            rand=$((RANDOM % ${#caracteres}))
            password+="${caracteres:$rand:1}"
        done

        echo "Contraseña generada: $password"
        echo "$password" >> $archivo

        # > Guardar como y borra todo lo que había previamente.
        # >> Guardar como y añade al final del archivo el nuevo contenido.
        ;;

        2)
        echo "Saliendo del sistema ..."
        exit 0
        ;;

        *)
        echo "Error: Opción no válida."
        ;;
    esac
done

