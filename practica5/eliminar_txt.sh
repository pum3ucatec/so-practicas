#!/bin/bash

# Listar todos los archivos y directorios en el directorio actual
echo "Archivos y directorios en el directorio actual:"
ls -l

# Verificar si existen archivos .txt en el directorio actual
if ls *.txt 1> /dev/null 2>&1; then
    # Eliminar todos los archivos .txt en el directorio actual
    rm *.txt
    echo "Todos los archivos .txt han sido eliminados."
else
    echo "No se encontraron archivos .txt en el directorio actual."
fi

