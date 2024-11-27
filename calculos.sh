#!/bin/bash

# Función para calcular el factorial
factorial() {
    local n=$1
    local result=1
    for (( i=1; i<=n; i++ ))
    do
        result=$((result * i))
    done
    echo "Factorial de $n: $result"
}

# Función para calcular la serie de Fibonacci
fibonacci() {
    local n=$1
    local a=0
    local b=1
    echo -n "Serie Fibonacci de $n: $a $b"
    for (( i=2; i<n; i++ ))
    do
        local temp=$((a + b))
        echo -n " $temp"
        a=$b
        b=$temp
    done
    echo
}

# Validar entrada
if [[ $1 == "factorial" ]]; then
    factorial $2
elif [[ $1 == "fibonacci" ]]; then
    fibonacci $2
else
    echo "Uso: $0 {factorial|fibonacci} número"
fi
