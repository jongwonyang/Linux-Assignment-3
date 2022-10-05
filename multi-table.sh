#!/bin/sh
if [ "$1" = "" -o "$2" = "" ]
then
	echo "Invalid input"
	exit 0
fi
if [ $1 -le 0 -o $2 -le 0 ]
then
	echo "Input must be greater than 0"
	exit 0
fi

row=1
while [ $row -le $1 ]
do
	col=1
	while [ $col -le $2 ]
	do
		ans=`expr $row \* $col`
		printf "$row*$col=$ans\t"
		col=`expr $col + 1`
	done
	printf "\n"
	row=`expr $row + 1`
done
exit 0

