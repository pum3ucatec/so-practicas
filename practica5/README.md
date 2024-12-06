##1. Crea un script bash que cree un nuevo directorio llamado mis_imagenes en el directorio actual y luego copie todos los archivos *.jpg del directorio actual al nuevo directorio

#!/bin/bash


# Verificar si existen archivos .jpg en el directorio actual
if ls *.jpg 1> /dev/null 2>&1; then
    # Copiar todos los archivos .jpg al nuevo directorio
    cp *.jpg mis_imagenes/
    echo "Los archivos .jpg han sido copiados a 'mis_imagenes'."
else
    echo "No se encontraron archivos .jpg en el directorio actual."
fi

##2.Creat un script bash que liste todos los archivos y directorios en el directorio actual y luego elimine todos los archivos *.txt
#!/bin/bash

# Listar todos los archivos y directorios en el directorio actual
echo "Archivos y directorios en el directorio actual:"
ls -l

# Verificar si existen archivos .txt en el directorio actual
if ls *.txt 1> /dev/null 2>&1; then
    # Eliminar todos los archivos .txt en el directorio actual
    rm *.txt
    echo "Todos los archivos .txt han sido eliminados."
else
    echo "No se encontraron archivos .txt en el directorio actual."
fi
