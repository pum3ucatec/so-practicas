#!/bin/bash

# Valores predeterminados
numero1=0
numero2=0
operacion="suma"

# Procesar los argumentos
while [[ $# -gt 0 ]]; do
  case $1 in
    --n1)
      numero1=$2
      shift 2 # Avanzar al siguiente par de argumentos
      ;;
    --n2)
      numero2=$2
      shift 2
      ;;
    --operacion)
      operacion=$2
      shift 2
      ;;
    *)
      echo "Uso: $0 --n1 numero1 --n2 numero2 --operacion operacion"
      exit 1
      ;;
  esac
done

# Realizar la operación
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
    if [ "$numero2" -ne 0 ]; then
      resultado=$((numero1 / numero2))
      echo "La división de $numero1 entre $numero2 es: $resultado"
    else
      echo "Error: No se puede dividir por cero"
      exit 1
    fi
    ;;
  *)
    echo "Operación no reconocida. Las operaciones válidas son: suma, resta, multiplicacion, division"
    exit 1
    ;;
esac
