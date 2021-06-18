#!/bin/bash
# -*- coding: utf-8 -*-
#CODED BY ISURUWA


red='\033[1;31m'
rset='\033[0m'
gr='\033[1;32m'
ye='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'

clear
figlet -f smmono9 " NGROK" | lolcat
figlet -f smmono9 " INSTALL" | lolcat
echo ""
cd
echo -e $gr "Downloading Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Arquitecture Error"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
chmod 777 ngrok
rm -rf ngrok.zip
clear
echo -e "\e[92mNgrok zip downloaded & extracted in the home Directory. Enter your authtoken & configure ngrok. \e[0m";
echo ""
read -p 'Press Enter To Continue :  ' userinput1;
#
cd
cd MSF
bash msf.sh

