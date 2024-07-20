#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
mplayer -ao alsa $SCRIPT_DIR/full-hour.mp3
hour=$(date +"%I")
x=0
while [ $x -lt $hour ]
do
    mplayer -ao alsa $SCRIPT_DIR/strike.mp3
    let x=x+1
done
#fi
