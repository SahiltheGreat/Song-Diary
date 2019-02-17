#!/bin/bash
echo "Enter the id for the song which you wish to delete:"
read k
#echo $k
#grep $word viewgood.txt | cut -d "|" -f 1 | cut -d " " -f 2
t=$(wc -l < ~/viewgood.txt)
if [ $k -gt $t ]
then
	echo "Oops! It seems this id doesn't exist!"
	echo
else
	sed -i "$k"d ~/viewgood.txt
	sed -i "$k"d ~/sahilfile.txt
	echo "The song has been deleted !"
fi
	echo

