#!/bin/bash

states=('new york' vermont idaho nevada hawaii)

haw=0
for state in ${states[@]}
do
	if [ $state = 'hawaii' ]
	then
		haw=1
	fi
done 
if [ $haw = 1 ]
then
	echo hawaii is the best
else
	echo not a fan of hawaii
fi

for num in {0..9}
do
	if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
	then
		echo $num
	fi
done

for item in $(ls)
do 
	echo $item
done 


