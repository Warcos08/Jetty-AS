#!/bin/bash

# Datos sobre la BD
baseName="bd_as"
tableName="archivos_web"

# Volumen en el que van a estar los archivos
media="/volumen-media/*"

# Creo la BD y la tabla
mysql -u root -e "CREATE DATABASE $baseName"
mysql -u root -e "USE $baseName; CREATE TABLE $tableName (Archivos varchar(255));"

# Vuelco los archivos en la BD
for file in $media; do

	file="${file:7}"
	myslqquery="USE $baseName; INSERT INTO $tableName (Archivos) VALUES ('$file');"

	mysql -u root -e "$myslqquery"

done
