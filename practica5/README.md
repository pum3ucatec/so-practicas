## 1. Crea un script bash que cree un nuevo directorio llamado mis_imagenes en el directorio actual y luego copie todos los archivos *.jpg del directorio actual al nuevo directorio
#!/bin/bash

# Crear el directorio 'mis_imagenes' en el directorio actual
mkdir -p mis_imagenes

# Copiar todos los archivos *.jpg del directorio actual al directorio 'mis_imagenes'
cp *.jpg mis_imagenes/

# Mensaje de confirmación
echo "Se han copiado los archivos .jpg al directorio 'mis_imagenes'."
./copiar_imagenes.sh
## 2.Creat un script bash que liste todos los archivos y directorios en el directorio actual y luego elimine todos los archivos *.txt
#!/bin/bash

# Lista todos los archivos y directorios en el directorio actual
echo "Listado de archivos y directorios:"
ls -la

# Elimina todos los archivos *.txt
echo "Eliminando todos los archivos .txt..."
rm -f *.txt

# Confirmación de eliminación
echo "Archivos .txt eliminados."
