#!/bin/bash
if [ ! -f ~/sahilfile.txt ]
then
	m=1
else
touch ~/sahilfile.txt
fi
#if [ ! -f ~/viewgood.txt ]
#then
#	n=-1
#else
	touch ~/viewgood.txt
#fi
#if [ ! -f ~/sahilheader.txt ]
#then
#	p=-1
#else
	touch ~/sahilheader.txt
	echo "|     |       SONG NAME        |          ARTIST            |  YEAR  |   GENRE         |        YOUTUBE LINK  |
" > ~/sahilheader.txt
#fi
echo -n >> ~/sahilfile.txt
echo -n "Song Name: " ; read song
isInFile=$(cat ~/sahilfile.txt | grep -c -w -i "$song")
lines=$(wc -l < ~/sahilfile.txt)
lines=$(($lines+1))
#lines=$(($lines/2))
#lines=$(($lines+1))
if [ $isInFile -ne 0 ]
then
	echo "This song already exists in database!"
else
	#echo -n "$lines" >> sahilfile.txt
	#echo -n "|" >> sahilfile.txt
	echo -n "$song" >> ~/sahilfile.txt
	echo -n "|" >> ~/sahilfile.txt
	echo -n "Artist : " ; read artist
	echo -n "$artist" >> ~/sahilfile.txt
	echo -n "|" >> ~/sahilfile.txt
	echo -n "Year : " ; read year
	echo -n $year >> ~/sahilfile.txt
	echo -n "|" >> ~/sahilfile.txt
	echo -n "Genre : " ; read genre
	echo -n "$genre" >> ~/sahilfile.txt
	echo -n "|" >> ~/sahilfile.txt
	echo -n "YouTube link : "; read link
	echo -n $link >> ~/sahilfile.txt
	echo -n "|" >> ~/sahilfile.txt
	echo >> ~/sahilfile.txt
	echo
	clear
	echo "$song has been added to the list!"
#column -t -s "|" sahilfile.txt 
fi

