# Listar todos los archivos y directorios en el directorio actual
ls -l

# Eliminar todos los archivos .txt
rm -f *.txt

# Verificar si quedan archivos .txt
ls *.txt 2>/dev/null || echo "No hay archivos .txt restantes."

#Para crear el script para la segunda tarea es:

nano listar_y_eliminar_txt.sh

# Escribimos lo siguiente y guardamos con Ctrl+O, luego presiona Enter, y finalmente Ctrl+Xpara salir:

#!/bin/bash

ls -l
rm -f *.txt
ls *.txt 2>/dev/null || echo "No hay archivos .txt restantes."

# Para Hacer los scripts ejecutables :

chmod +x crear_directorio_y_copiar.sh listar_y_eliminar_txt.sh

# Para ejecutar los scripts :

./crear_directorio_y_copiar.sh
./listar_y_eliminar_txt.sh
