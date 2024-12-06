#!/bin/bash

# Función para calcular el factorial de un número
factorial() {
    if [ $1 -eq 0 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 )))))
    fi
}

# Función para calcular la serie Fibonacci hasta el número dado
fibonacci() {
    a=0
    b=1

    for (( i=0; i<$1; i++ )); do
        echo -n "$a "
        fn=$((a + b))
        a=$b
        b=$fn
    done
}

# Procesar los parámetros
if [ "$1" == "--nombre" ]; then
    if [ "$3" == "--n" ]; then
        if [ "$2" == "factorial" ]; then
            factorial $4
        elif [ "$2" == "fibonacci" ]; then
            fibonacci $4
        else
            echo "Función no válida. Use 'factorial' o 'fibonacci'."
        fi
    else
        echo "Uso: funcion --nombre factorial|fibonacci --n <número>"
    fi
else
    echo "Uso: funcion --nombre factorial|fibonacci --n <número>"
fi
