#!/bin/bash

# Nombre del directorio
DIRECTORIO="mis_imagenes"

# Verificar si el directorio ya existe
if [ -d "$DIRECTORIO" ]; then
    echo "El directorio '$DIRECTORIO' ya existe. ¿Quieres recrearlo? (s/n)"
    read RESPUESTA
    if [ "$RESPUESTA" == "s" ]; then
        echo "Eliminando y recreando el directorio '$DIRECTORIO'..."
        rm -rf "$DIRECTORIO"
        mkdir "$DIRECTORIO"
    else
        echo "Usando el directorio existente '$DIRECTORIO'."
    fi
else
    echo "Creando el directorio '$DIRECTORIO'..."
    mkdir "$DIRECTORIO"
fi

# Copiar archivos .jpg sin duplicar nombres
echo "Copiando archivos .jpg al directorio '$DIRECTORIO'..."
for ARCHIVO in *.jpg; do
    if [ -f "$ARCHIVO" ]; then
        DESTINO="$DIRECTORIO/$ARCHIVO"
        if [ -f "$DESTINO" ]; then
            echo "El archivo '$ARCHIVO' ya existe en '$DIRECTORIO'. No se copiará."
        else
            cp -v "$ARCHIVO" "$DESTINO"
        fi
    fi
done

echo "Operación completada."
