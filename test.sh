#stunde=$(date +"%H")
#if [[ $stunde >= 08 -o  $stunde <= 22 ]];
#then
mplayer -ao alsa "/home/pi/big-ben/full-hour.mp3"
hour=$(date +"%I")
x=0
while [ $x -lt $hour ]
do
    mplayer -ao alsa "/home/pi/big-ben/strike.mp3"
    let x=x+1
done
#fi
