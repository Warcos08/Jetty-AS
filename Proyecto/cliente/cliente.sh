#!/bin/bash

# Carpeta con los archivos a copiar
origen="/home/volumen-media/*";

# dest debe ser la ubicacion del volumen a utilizar por jetty
dest="/home/volumen-web/img"

# Elimina los archivos existentes en el destino
rm $dest/*

# Copia los archivos (no directorios) de origen en dest
for file in $origen; do
	cp $file $dest 
done

# Crea el archivo web.war para que pueda ser usado por el Dockerfile de jetty
#cd $dest/..
jar -cvf web.war $dest/../*

echo 'Cliente ejecutado'
