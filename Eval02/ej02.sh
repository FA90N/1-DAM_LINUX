#!/bin/bash
rm newuser.txt
read -p "Dime un usuario: " usuario
fichero=$(cat /etc/passwd | cut -d":" -f1)
cont=1
for linea in $(echo $fichero)
do

	echo "$cont:$linea" >> newuser.txt
	let cont++

done

existe=$(cat newuser.txt | grep -i $usuario | cut -d":" -f1)

if [ -z $existe ]
then

	echo "El usuario $usuario no existe"

else

	echo "El usuario $usuario esta en la posicion $existe"
	
		let resul=$existe%2

		if [ $resul -eq 0 ]
		then
			read -p "Quieres comprimir la carpeta de $usuario si o no: " decision
			dec=$(echo $decision | tr [A-Z] [a-z])
			if [ "dec" == "si" ]
			then
				tar -czf usuario.tgz /home/$usuario
			else
				echo "Carpeta no comprimido"
			fi
			
		else
			date +"Hola son las %H y %M minutos del dia %d de %b del año %Y"

		fi 

fi
