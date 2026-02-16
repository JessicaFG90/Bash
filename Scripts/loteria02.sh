#!/bin/bash

echo "¡Bienvenido a la Lotería de Navidad!"

numero_ganador=$((RANDOM % 20 +1))

read -p "Por favor, introduce un número del 1 al 20: " numero #-rp va a traducir un texto a minúsculas aunque se ponga en mayúsculas.

if [[ $numero -ge 1 && $numero -le 20 ]]; then
    if [[ $numero -eq $numero_ganaror ]]; then
        echo "¡Has ganado el premio gordo!🎉"
    else
        echo "Lo siento, cómprate otro boleto".
    fi
else
    echo "Número inválido."
fi
