#!/bin/bash

# Función para calcular el factorial
factorial() {
    local num=$1
    local result=1
    for (( i=1; i<=num; i++ ))
    do
        (( result *= i ))
    done
    echo $result
}

# Función para calcular la serie de Fibonacci
fibonacci() {
    local num=$1
    a=0
    b=1
    for (( i=0; i<num; i++ ))
    do
        echo -n "$a "
        fn=$((a + b))
        a=$b
        b=$fn
    done
    echo
}

# Lógica para interpretar los parámetros
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --nombre)
            nombre=$2
            shift
            ;;
        --n)
            n=$2
            shift
            ;;
        *)
            echo "Opción no reconocida: $1"
            exit 1
            ;;
    esac
    shift
done

# Verificar la opción seleccionada
if [[ "$nombre" == "factorial" ]]; then
    factorial $n
elif [[ "$nombre" == "fibonacci" ]]; then
    fibonacci $n
else
    echo "El nombre debe ser 'factorial' o 'fibonacci'."
    exit 1
fi
