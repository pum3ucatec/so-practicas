#!/bin/bash

# Inicializar variables
numero1=0
numero2=0
operacion=""

# Procesar los argumentos
while [[ $# -gt 0 ]]; do
    case $1 in
        -n1) # Primer número
            numero1=$2
            shift 2
            ;;
        -n2) # Segundo número
            numero2=$2
            shift 2
            ;;
        -operacion) # Operación a realizar
            operacion=$2
            shift 2
            ;;
        *) # Manejo de argumentos desconocidos
            echo "Uso: $0 -n1 <numero1> -n2 <numero2> -operacion <operacion>"
            exit 1
            ;;
    esac
done

# Verificar que todos los parámetros necesarios estén presentes
if [[ -z $numero1 || -z $numero2 || -z $operacion ]]; then
    echo "Error: Debes proporcionar todos los parámetros: -n1, -n2 y -operacion"
    exit 1
fi

# Realizar la operación solicitada
case $operacion in
    suma)
        resultado=$((numero1 + numero2))
        echo "La suma de $numero1 y $numero2 es: $resultado"
        ;;
    resta)
        resultado=$((numero1 - numero2))
        echo "La resta de $numero1 y $numero2 es: $resultado"
        ;;
    multiplicacion)
        resultado=$((numero1 * numero2))
        echo "La multiplicación de $numero1 y $numero2 es: $resultado"
        ;;
    division)
        if [[ $numero2 -eq 0 ]]; then
            echo "Error: No se puede dividir por cero."
            exit 1
        fi
        resultado=$((numero1 / numero2))
        echo "La división de $numero1 entre $numero2 es: $resultado"
        ;;
    *)
        echo "Operación no soportada: $operacion"
        exit 1
        ;;
esac
