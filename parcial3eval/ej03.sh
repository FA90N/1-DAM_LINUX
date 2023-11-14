#!/bin/bash
source funciones.sh
buscarusuario $1

if [ "$op" == "si" ]
then
	buscarcarpeta $1
	echo "El usuario $1 $op existe en el sistema y $opc tiene carpeta"
	

else

	buscarcarpeta $1
	echo "El usuario $1 no existe en el sistema y $opc tiene carpeta"

fi






