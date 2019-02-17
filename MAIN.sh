#!/bin/bash
echo "_____________________________________________________________________________________________________"
echo
echo "WELCOME TO YOUR VERY OWN MUSIC COLLECTION !"
echo
echo "_____________________________________________________________________________________________________"
echo
echo "What do you wish to do with your Music collection ?"
echo
echo "Type 1 for Adding a new entry"
echo "Type 2 for Editing a previous entry"
echo "Type 3 for Deleting a previous entry"
echo "Type 4 to Display your wonderful music collection !"
echo "Type 5 to View entries relevant to a certain category"
echo
read x
if [ $x -eq 1 ]
then
	clear
	echo
	./add.sh
	echo
elif [ $x -eq 2 ]
then
	clear
	echo
	./edit.sh
	echo
elif [ $x -eq 3 ]
then
	clear
	echo
	./delete.sh
	echo
elif [ $x -eq 4 ]
then
	clear
	echo "Here is your collection "
	echo
	./view.sh
	echo
elif [ $x -eq 5 ]
then
	clear
	echo
	./select.sh
	echo
else
	clear
	echo
	echo "Oops! Seems like you have entered an Invalid Choice"
	echo
fi

