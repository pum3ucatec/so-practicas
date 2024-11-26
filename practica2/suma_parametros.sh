#!/bin/bash

# Verificar si se pasaron dos parámetros
if [ $# -ne 2 ]; then
    echo "Uso: $0 numero1 numero2"
    exit 1
fi

# Asignar parámetros a variables
numero1=$1
numero2=$2

# Sumar los números
suma=$((numero1 + numero2))

# Mostrar el resultado
echo "La suma de $numero1 y $numero2 es: $suma"
