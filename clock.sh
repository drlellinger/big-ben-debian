#!/bin/bash
#Deklaration der Variablen:
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
minute=$(date +"%M")
hour=$(date +"%I")
stunde=$(date +"%H")
tag=$(date +"%d")
monat=$(date +"%m")
	if [[ $minute == 30 ]]
	then
	  mplayer -ao alsa $SCRIPT_DIR/half-hour.mp3
	elif [[ $minute == 15 ]]
	then
	  mplayer -ao alsa $SCRIPT_DIR/quarter-hour.mp3
	elif [[ $minute == 45 ]]
	then
	  mplayer -ao alsa $SCRIPT_DIR/3quarter-hour.mp3
	elif [[ $minute == 00 ]]
	then
	  mplayer -ao alsa $SCRIPT_DIR/full-hour.mp3
	  x=0
	  while [ $x -lt $hour ]
	  do
	    mplayer -ao alsa $SCRIPT_DIR/strike.mp3
	    let x=x+1
	  done
	fi
#fi
