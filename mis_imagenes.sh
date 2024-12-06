# Crear el directorio llamado 'mis_imagenes'
mkdir mis_imagenes

# Copiar todos los archivos .jpg al nuevo directorio
cp *.jpg mis_imagenes

# Verificar si los archivos fueron copiados
ls mis_imagenes


# Crear el script para la primera tarea :
nano crear_directorio_y_copiar.sh

# Se debe escribir lo siguiente y guarda con Ctrl+O, luego presiona Enter, y finalmente Ctrl+Xpara salir:

#!/bin/bash

mkdir mis_imagenes
cp *.jpg mis_imagenes
ls mis_imagenes

