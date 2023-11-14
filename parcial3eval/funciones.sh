#!/bin/bash
function enviar () {

	scp examendeleyan.tgz 192.168.1.112:/home/dam16 

}

function generar () {

	cat /home/dam16/parcial3eval/*.* > examendeleyan.txt

}

function ortografia () {


		bienono=$(echo $linea | aspell list)
		if [ -z $bienono ]
		then
			opcion=si
		else
			opcion=no
		fi

	
}

function buscarusuario {

 esta=$(cat /etc/passwd | grep -i $1)
	if [ -z $esta ]
	then
		op=no
	else
		op=si
 	fi

}


function buscarcarpeta {

 	esta=$(ls /home | grep -i $1)
	if [ -z $esta ]
	then
		opc=no
	else
		opc=si
 	fi

}

function sumar () {
	suma=0
	for linea in $(cat $1)
	do 
		let suma=$suma+$linea
	done
	
}

function multiplicar () {
	mul=1
	for linea in $(cat $1)
	do 
		let mul=$mul*$linea
	done
	
}

function factorial () {
	
	for linea in $(cat $1)
	do
		n=1
		for fac in $(seq 1 1 $linea)
		do
		
			let n=$n*$fac
		done
		echo "El factorial de $linea es $n" >> res.txt
	done

}


