#!/bin/bash
read -p "Dime el primer num:" n1
read -p "Dime el segundo num:" n2

until [ $n1 -lt $n2 ]
do
	read -p "Dime el segundo num:" n2
done

until [ $n1 -gt $n2 ]
do
		cont=0
		for i in $(seq 1 1 $n1)
		do
			let res=$n1%$i
			if [ $res -eq 0 ]
			then
				let cont++
			fi
		done
		
		if [ $cont -le 2 ]
		then
			echo "$n1 es primo"
		fi

	let n1++

done


