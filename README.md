# Scripts en Bash para gestión de archivos

Este repositorio contiene cripts en Bash diseñados para las tareas comunes relacionadas con archivos en un sistema Linux.

## 1. Crear un directorio y copiar archivos `.jpg`

Este script crea un nuevo directorio llamado `mis_imagenes` en el directorio actual y copia todos los archivos con extensión `.jpg` al nuevo directorio.

### Ejecución:
1. Asegúrate de que el script `crear_directorio_y_copiar.sh` tenga permisos de ejecución:
   ```bash
   chmod +x crear_directorio_y_copiar.sh
#!/bin/bash

# Listar todos los archivos y directorios en el directorio actual
echo "Listado de archivos y directorios en el directorio actual:"
ls -l

# Eliminar todos los archivos *.txt
echo "Eliminando archivos *.txt..."
rm -f *.txt 2>/dev/null

# Verificar si quedan archivos .txt
if ls *.txt 1> /dev/null 2>&1; then
    echo "Algunos archivos .txt no pudieron ser eliminados."
else
    echo "Todos los archivos .txt han sido eliminados."
fi
