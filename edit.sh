#!/bin/bash
echo "Enter the Song-ID for which you would like to make the change "
read x
echo "The song you've chosen is:- "
echo 
sed -n "$x"p ~/sahilfile.txt | column -t -s "|"
echo
echo "What would you like to edit ? "
echo
echo "Type 1-->Edit Song name"
echo "Type 2-->Edit Artist's name"
echo "Type 3-->Edit Year"
echo "Type 4-->Edit Genre"
echo "Type 5-->Edit Youtube link"
echo
read value
echo "Enter the change you'd like to make"
echo
read change
echo
if [ $value -eq 1 ]
then
	oldsong=$(sed -n "$x"p ~/sahilfile.txt | cut -d "|" -f 1)
	echo "The old song was--$oldsong"
	#awk 'NR==$x {$0="$change"} 1' sahilfile.txt
	#awk 'NR==$x {$0="$change"} 1' viewgood.txt
	#sed -i "s/head -$x sahilfile.txt | tail -1/$change/" sahilfile.txt
	#sed -i "s/head -$x viewgood.txt | tail -1/$change/" viewgood.txt
	sed -i "${x}s#$oldsong#$change#" ~/sahilfile.txt
	sed -i "${x}s#$oldsong#$change#" ~/viewgood.txt
	echo "Song Name changed to $change"
	echo
elif [ $value -eq 2 ]
then
	oldartist=$(sed -n "$x"p ~/sahilfile.txt | cut -d "|" -f 2)
        echo "The artist entered earlier was--$oldartist"
	sed -i "${x}s#$oldartist#$change#" ~/sahilfile.txt
       	sed -i "${x}s#$oldartist#$change#" ~/viewgood.txt
	echo "Artist Name changed to $change"
        echo

elif [ $value -eq 3 ]
then
        oldyear=$(sed -n "$x"p ~/sahilfile.txt | cut -d "|" -f 3)
        echo "The year entered earlier was--$oldyear"
        sed -i "${x}s#$oldyear#$change#" ~/sahilfile.txt
        sed -i "${x}s#$oldyear#$change#" ~/viewgood.txt
	echo "Year changed to $change"
        echo
elif [ $value -eq 4 ]
then
        oldgenre=$(sed -n "$x"p ~/sahilfile.txt | cut -d "|" -f 4)
        echo "The genre entered earlier was--$oldgenre"
        sed -i "${x}s#$oldgenre#$change#" ~/sahilfile.txt
        sed -i "${x}s#$oldgenre#$change#" ~/viewgood.txt
	echo "Genre changed to $change"
        echo
elif [ $value -eq 5 ]
then
        oldlink=$(sed -n "$x"p ~/sahilfile.txt | cut -d "|" -f 5)
        echo "The link entered earlier was--$oldlink"
        sed -i "${x}s#$oldlink#$change#" ~/sahilfile.txt
        sed -i "${x}s#$oldlink#$change#" ~/viewgood.txt
	echo "Youtube link changed to $change"
        echo
else
	echo "Invalid choice"
fi



