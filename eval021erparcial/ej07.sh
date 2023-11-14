#!/bin/bash

read -p "Dime un numero: " n1
read -p "Dime otro numero: " n2 
read -p "Operacion matematica (sum/res/div/mul)> " ope

case $ope in

	"sum")
		result=$(ssh 192.168.1.112 "echo $n1+$n2 | bc")
		echo "La suma de $n1 y $n2 es $result"

	;;

	"res")
		result=$(ssh 192.168.1.112 "echo $n1-$n2 | bc")
		echo "La resta de $n1 y $n2 es $result"
	;;

	"div")
		result=$(ssh 192.168.1.112 "echo 'scale=2;$n1/$n2'| bc")
		echo "La divison de $n1 y $n2 es $result"
	;;

	"mul")
		result=$(ssh 192.168.1.112 "echo $n1*$n2 | bc")
		echo "La multiplicacion de $n1 y $n2 es $result"
	;;
	
	*)
		echo "Error"
	;;
esac



	 
