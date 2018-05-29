#!/bin/bash
#Deklaration der Variablen:
minute=$(date +"%M")
hour=$(date +"%I")
stunde=$(date +"%H")
tag=$(date +"%d")
monat=$(date +"%m")
	if [[ $minute == 30 ]]
	then
	  mplayer -ao alsa "/home/pi/big-ben/half-hour.mp3"
	elif [[ $minute == 15 ]]
	then
	  mplayer -ao alsa "/home/pi/big-ben/quarter-hour.mp3"
	elif [[ $minute == 45 ]]
	then
	  mplayer -ao alsa "/home/pi/big-ben/3quarter-hour.mp3"
	elif [[ $minute == 00 ]]
	then
	  mplayer -ao alsa "/home/pi/big-ben/full-hour.mp3"
	  x=0
	  while [ $x -lt $hour ]
	  do
	    mplayer -ao alsa "/home/pi/big-ben/strike.mp3"
	    let x=x+1
	  done
	fi
#fi
