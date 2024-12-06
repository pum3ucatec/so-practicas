#!/bin/bash  

# Función para calcular el factorial  
factorial() {  
    if [ \$1 -lt 0 ]; then  
        echo "Error: el número debe ser no negativo."  
        exit 1  
    fi  
    result=1  
    for (( i=1; i<=\$1; i++ )); do  
        result=$(( result * i ))  
    done  
    echo "El factorial de \$1 es $result"  
}  

# Función para calcular la serie de Fibonacci  
fibonacci() {  
    if [ \$1 -lt 0 ]; then  
        echo "Error: el número debe ser no negativo."  
        exit 1  
    fi  
    a=0  
    b=1  
    echo -n "La serie de Fibonacci hasta el término \$1: "  
    for (( i=0; i<\$1; i++ )); do  
        echo -n "$a "  
        fn=$(( a + b ))  
        a=$b  
        b=$fn  
    done  
    echo ""  
}  

# Validación de parámetros  
if [ $# -lt 2 ]; then  
    echo "Uso: \$0 [factorial|fibonacci] [número]"  
    exit 1  
fi  

# Ejecución según el parámetro  
case \$1 in  
    factorial)  
        factorial \$2  
        ;;  
    fibonacci)  
        fibonacci \$2  
        ;;  
    *)  
        echo "Error: opción no válida. Usa 'factorial' o 'fibonacci'."  
        exit 1  
        ;;  
esac