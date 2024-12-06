#!/bin/bash

# Crear el directorio 'mis_imagenes' en el directorio actual
mkdir -p mis_imagenes

# Copiar todos los archivos *.jpg del directorio actual al directorio 'mis_imagenes'
cp *.jpg mis_imagenes/

# Mensaje de confirmación
echo "Se han copiado los archivos .jpg al directorio 'mis_imagenes'."
./copiar_imagenes.sh

