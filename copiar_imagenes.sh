#!/bin/bash


# Verificar si existen archivos .jpg en el directorio actual
if ls *.jpg 1> /dev/null 2>&1; then
    # Copiar todos los archivos .jpg al nuevo directorio
    cp *.jpg mis_imagenes/
    echo "Los archivos .jpg han sido copiados a 'mis_imagenes'."
else
    echo "No se encontraron archivos .jpg en el directorio actual."
fi

