#!/bin/bash 
count=0
read -p "Enter NO of times Loop Runs:" n
function lessthan(){
while [ $count -ne $n ]
do
	x=$(( RANDOM %10 ))
	y=$(( RANDOM %10 ))
	z=$(($x+$y))
	if [ $z -lt 10 ]
	then
		echo "The numbers are:""$x", "$y"
		((count++))
	fi
	if [ $(($x+5)) -eq 10 ]
	then
		echo "The sum is ($x+5) is 10:"
		((count++))
	fi
	if [ $((5+$y)) -eq 8 ]
	then
		echo "The sum is (5+$y) is 8 :"
		((count++))
	fi
	if [ $((2+2)) -eq $z ]
	then
		echo  "The  sum of (2+2) is $z:"
	fi
done
}
lessthan
