# Big-Ben 
The Chimes of Big-Ben played every 15 minutes on any Debian-based client

The code is written for a Raspberry Pi 3 A but with little modifications it can be run on any Debian based system with ease.

In my case the speaker is connected via 3.5mm Audio Jack

# Installation instructions:
1. Copy this git to your desired location
2. Make clock.sh and test.sh executable:

sudo chmod +x /home/pi/big-ben/clock.sh && sudo chmod +x /home/pi/big-ben/test.sh

2. Update the system:

sudo apt-get update && sudo apt-get upgrade -y

3. Install all needed utils and their dependencies:

sudo apt-get install mplayer2

4. Edit your crontab and paste the following: (you can change some variables if you want to)

0,15,30,45 * * * * bash /home/pi/big-ben/clock.sh

# Bonus:
1. If you want to, you can modify your .bashrc to force the bell-ringing:

alias bigben='bash /home/pi/big-ben/test.sh'

2. You can also set this file as an alarm clock by editing your crontab: (please note that the earlier you set your alarm the shorter the be alarm will be)

42 5 * * 1-5 bash /home/pi/big-ben/test.sh
