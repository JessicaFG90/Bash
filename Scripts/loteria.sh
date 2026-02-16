#!/bin/bash

echo "¡Bienvenido a la Lotería de Navidad!"
echo "Por favor, elige un número del 1 al 20"
read -p "Introduzca un número: " numero

if [[ $numero -ge 1 && $numero -le 20 ]]; then
    if [ $numero -eq 8 ]; then
        echo "!Has ganado el premio gordo! 🎉"
    elif [ $numero -eq 3 ]; then
        echo "¡Has ganado el segundo premio!✨"
    else
        echo "Lo sentimos, tu número no ha sido premiado."
    fi
else
    echo "Número inválido."
fi
