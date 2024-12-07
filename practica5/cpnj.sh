#!/bin/bash

# Nombre del directorio a crear
NUEVO_DIRECTORIO="mis_imagenes"

# Crear el directorio si no existe
mkdir -p "$NUEVO_DIRECTORIO"
echo "Directorio '$NUEVO_DIRECTORIO' creado o ya existía."

# Copiar archivos .jpg al nuevo directorio
cp *.jpg "$NUEVO_DIRECTORIO" 2>/dev/null

# Verificar si hay archivos .jpg para copiar
if [ "$(ls -A $NUEVO_DIRECTORIO/*.jpg 2>/dev/null)" ]; then
  echo "Archivos .jpg copiados a '$NUEVO_DIRECTORIO'."
else
  echo "No se encontraron archivos .jpg en el directorio actual."
fi
