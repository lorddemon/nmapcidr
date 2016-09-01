#!/bin/bash
for line in $(cat lista.txt); do 
	echo "Se esta Procesando El rango de Red $line" ;
	carpeta=$(echo $line  | sed 's/\//_barra_/g' ):
	if [ ! -d "$carpeta" ]; then
		mkdir $carpeta;
		echo "Se creo el directorio $carpeta";
	else
		echo "El directorio  $carpeta ya existe";

	fi
	declare -a ips=$(./cidr.py $line);
#	echo $ips;
	for i in $ips
	do
		echo "Se empieza con el scaneo del equipo $i se guardara en la carpeta $carpeta";
		nmap -A -p- -vv $i -oX ./$carpeta/$i.xml
	done
done

