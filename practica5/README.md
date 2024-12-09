#Crear el directorio “mis_imagenes” si no existe#
mkdir -p mis_imagenes

#Copiar los archivos .jpg al nuevo directorio#
cp *.jpg mis_imagenes 2>/dev/null

Comprobar si hay archivos .jpg para copiar
if [ “$(ls mis_imagenes/*.jpg 2>/dev/null)” ]; luego
haga eco “Se han copiado los archivos .jpg al directorio 'mis_imagenes'”.
else
echo “No se encontraron archivos .jpg para copiar”.
fi
