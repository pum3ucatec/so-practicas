#!/bin/bash

# Solicitar el primer número
echo "Introduce el primer número:"
read numero1

# Solicitar el segundo número
echo "Introduce el segundo número:"
read numero2

# Sumar los números
suma=$((numero1 + numero2))

# Mostrar el resultado
echo "La suma de $numero1 y $numero2 es: $suma"
