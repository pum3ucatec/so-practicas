#!/bin/bash

# Verifica si se han pasado los 3 parámetros
if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <directorio> <nombre_archivo> <formato>"
    echo "Formatos disponibles: zip, tar.gz"
    exit 1
fi

# Asignación de parámetros a variables
directorio=$1
nombre_archivo=$2
formato=$3

# Verificar si la carpeta existe
if [ ! -d "$directorio" ]; then
    echo "Error: El directorio $directorio no existe."
    exit 1
fi

# Comprimir según el formato elegido
case "$formato" in
    zip)
        zip -r "$nombre_archivo.zip" "$directorio"
        echo "Archivo comprimido a $nombre_archivo.zip"
        ;;
    tar.gz)
        tar -czf "$nombre_archivo.tar.gz" -C "$(dirname "$directorio")" "$(basename "$directorio")"
        echo "Archivo comprimido a $nombre_archivo.tar.gz"
        ;;
    *)
        echo "Formato no válido. Solo se aceptan 'zip' o 'tar.gz'."
        exit 1
        ;;
esac

