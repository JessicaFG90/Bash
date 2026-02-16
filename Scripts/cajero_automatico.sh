#!/bin/bash

saldo=2000

mostrar_saldo() {
    echo "Tu saldo actual es: $saldo"
}

depositar() {
    read -p "Ingrese la cantidad de dinero a depositar: " cantidad
    if [[ ! $cantidad =~ ^[0-9]+$ ]] || (( cantidad <=0 )); then
        echo "Error: Introduce un número válido."
    else
        saldo=$(( saldo + cantidad ))
        echo "Has depositado $cantidad euros. Tu nuevo saldo es: $saldo"
    fi
}

retirar() {
    echo "Tu saldo actual es: $saldo"
    read -p "Ingresa la cantidad de dinero a retirar: " cantidad
    if [[ ! $cantidad =~ ^[0-9]+$ ]] || (( cantidad <=0 )); then
        echo "Error: Introduce un número válido."
    elif (( cantidad > saldo)); then
        echo "Fondos insuficientes."
    else
        saldo=$(( saldo - cantidad ))
        echo "Has retirado $cantidad euros. Tu saldo actual es: $saldo"
    fi
}

menu() {
    while true; do
        echo "Bienvenido al cajero Robomoney 3000🐭"
        echo "1. Consultar saldo"
        echo "2. Ingresar dinero"
        echo "3. Hacer una retirada"
        echo "4. Salir"
        read -p "Elige una de las opciones anteriores (1-4): " opcion
            case $opcion in
            1) 
                clear
                mostrar_saldo
                ;;
            2)
                clear
                depositar
                ;;
            3)
                clear
                retirar
                ;;
            4) echo "Adiós, gracias por darnos tu dinero"
                sleep 2 #Tiempo de espera.
                exit 0
                ;;
            *) echo "Opción no válida. Selecciona un número del 1 al 4."
            continue ;;
            esac
    done
}

menu
