# Big-Ben 
The Chimes of Big-Ben played every 15 minutes on any Debian-based client

The code is written for a Raspberry Pi 3 A but with little modifications it can be run on any Debian based system with ease.

In my case the speaker is connected via 3.5mm Audio Jack

# Installation instructions:
1. Copy this git to your desired location
2. Update the system:
sudo apt-get update && sudo apt-get upgrade -y
3. Install all needed utils and their dependencies:
sudo apt-get install mplayer
4. Edit your crontab and paste the following: (you can change some variables if you want to)
0,15,30,45 * * * * bash /home/pi/big-ben/clock.sh
