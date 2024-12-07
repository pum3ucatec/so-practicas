#!/bin/bash

# Listar todos los archivos y directorios en el directorio actual
echo "Contenido del directorio actual:"
ls -la

# Eliminar archivos con extensión .txt
echo "Eliminando archivos *.txt en el directorio actual..."
rm -f *.txt 2>/dev/null

# Verificar si quedan archivos .txt
if ls *.txt 1>/dev/null 2>&1; then
  echo "Algunos archivos *.txt no se pudieron eliminar o no se tiene permiso."
else
  echo "Todos los archivos *.txt han sido eliminados (si existían)."
fi
