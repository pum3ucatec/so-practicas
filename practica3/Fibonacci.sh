#!/bin/bash

# Función para calcular el factorial
factorial() {
    local num=$1
    local result=1
    for (( i=1; i<=num; i++ )); do
        result=$((result * i))
    done
    echo $result
}

# Función para generar la serie de Fibonacci
fibonacci() {
    local n=$1
    a=0
    b=1
    # Imprimir los primeros 'n' términos de Fibonacci
    for (( i=0; i<n; i++ )); do
        echo -n "$a "
        fn=$((a + b))
        a=$b
        b=$fn
    done
    echo
}

# Función para mostrar uso adecuado del script
show_usage() {
    echo "Uso: $0 --nombre <funcion> --n <numero>"
    echo "  --nombre    Nombre de la función a ejecutar: 'factorial' o 'fibonacci'"
    echo "  --n         Número para calcular el factorial o la serie Fibonacci"
}

# Verificar que se pasen los parámetros correctos
if [[ $# -lt 4 ]]; then
    show_usage
    exit 1
fi

# Procesar los parámetros de entrada
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --nombre)
            nombre="$2"
            shift 2
            ;;
        --n)
            n="$2"
            shift 2
            ;;
        *)
            echo "Opción desconocida: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Ejecutar la función correspondiente
if [[ "$nombre" == "factorial" ]]; then
    if [[ "$n" -ge 0 ]]; then
        factorial $n
    else
        echo "El número debe ser mayor o igual a 0 para el factorial."
        exit 1
    fi
elif [[ "$nombre" == "fibonacci" ]]; then
    if [[ "$n" -gt 0 ]]; then
        fibonacci $n
    else
        echo "El número debe ser mayor que 0 para la serie de Fibonacci."
        exit 1
    fi
else
    echo "Función desconocida: $nombre"
    show_usage
    exit 1
fi

# Para calcular el factorial de un número:./funcion.sh --nombre factorial --n 5
#Para obtener la serie de Fibonacci hasta el término n:./funcion.sh --nombre fibonacci --n 5