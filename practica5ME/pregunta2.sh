#!/bin/bash

# Listar todos los archivos y directorios en el directorio actual
echo "Listando todos los archivos y directorios en el directorio actual:"
ls -la

# Eliminar todos los archivos con extensión .txt
echo "Eliminando todos los archivos con extensión .txt..."
find . -maxdepth 1 -type f -name "*.txt" -exec rm -v {} \;

# Mensaje final
echo "Proceso completado."