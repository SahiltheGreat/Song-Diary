#!/bin/bash
echo
echo "Want to view songs based on a certain category ?"
echo
echo "Type 1, if you wish to view songs by a particular artist only."
echo "Type 2, if you wish to view songs from a particular year only."
echo "Type 3, if you wish to view songs of a particular genre only."
echo
read val
echo
if [ $val -eq 1 ]
then
	echo "Name of the artist?"
	echo
	read artist
	echo
	if [  $(cut -d "|" -f 1,2 ~/sahilfile.txt | grep -i -c "$artist") -eq 0 ]
	then
		echo "Oops! It seems like there doesn't exist any song by $artist in your collection"
		echo
	else
		clear
		echo "Here are the songs by "$artist" :"
		echo "________________________________________________________"
		echo
		cut -d "|" -f 1,2 ~/sahilfile.txt | grep -i "$artist" | cut -d "|" -f 1	
		echo "________________________________________________________"
		echo
	fi
elif [ $val -eq 2 ]
then
	echo "Which year are you looking for?"
	echo
	read year
	echo
	if [ $(cut -d "|" -f 1,2,3 ~/sahilfile.txt | grep -i -c $year) -eq 0 ]
	then
		echo "Oops! It seems that there are no songs from the year $year in your collection!"
		echo
	else
		clear
		echo "Here are the songs from the year $year :"
		echo "________________________________________________________"
		echo
		cut -d "|" -f 1,2,3 ~/sahilfile.txt | grep -i $year | cut -d "|" -f 1 | column -t -s "|" 
		echo "________________________________________________________"
		echo
	fi
elif [ $val -eq 3 ]
then
	echo "Which genre are you looking for?"
	echo
	read genre
	echo
	if [ $( cut -d "|" -f 1,2,3,4 ~/sahilfile.txt | grep -i -c "$genre") -eq 0 ]
	then	
		echo "Oops! It seems that you don't have any songs belonging to the $genre genre !"
		echo
	else
		clear
		echo "Here are the songs from the genre $genre :"
		echo "________________________________________________________"
		echo
		cut -d "|" -f 1,2,3,4 ~/sahilfile.txt | grep -i "$genre" | cut -d "|" -f 1 |column -t -s "|" 
		echo "________________________________________________________"
		echo
	fi
fi

