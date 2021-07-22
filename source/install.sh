#!/bin/bash
# -*- coding: utf-8 -*-
#CODED BY ISURUWA

re='\e[1;31m'
white='\e[1;37m'
bl='\e[1;34m'
Escape="\033";
ref="${Escape}[31m";
gf="${Escape}[32m";
lgf="${Escape}[92m"
yf="${Escape}[33m";
bf="${Escape}[34m";
cf="${Escape}[36m";
ee="${Escape}[0m";
pu='\033[1;35m'
cy='\e[0;36m'
lg='\e[1;32m'
ye='\e[1;33m'
pink='\033[1;35m'

figlet Metasploit | lolcat
figlet Install | lolcat
echo ""
echo -e $lgf "[*] The Best Script to install Metasploit is gushmazuko's metasploit_in_termux Script"
echo ""
echo -e "Reason" | lolcat
echo ""
echo -e $re "[*] Most Metasploit installing tools in termux are not working , because now termux req ruby 2.0"
echo -e $bl "[*] Termux installs only ruby 3.0 by default ,So it needs to install ruby 2.0 manually & needs to fix gems "
echo ""
echo -e $cy "[*] After you begin to install metasploit  , it takes about 40 minutes "
echo ""
echo -e $lgf "[+] Are you sure to Install Metasploit ? <y/n> "
read prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    cd
    apt-get update -y
    apt-get upgrade -y
    pkg install python -y
    pkg install python2 -y
    source <(curl -fsSL https://kutt.it/msf)
elif [[ $prompt == "n" || $prompt == "N" || $prompt == "no" || $prompt == "No" ]]
then
    echo -e $lgf "[*] GoodBye !"
    echo -e $cy "[*] Expect US !"
    exit 0
else
    echo -e $re "[+] Invalid Option "
    sleep 2
    cd
    cd MSF
    bash msf.sh
fi
