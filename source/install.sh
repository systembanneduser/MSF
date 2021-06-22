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
echo -e $lgf "The Best Script to install Metasploit is NoobHackers M-Wiz Script"
echo ""
echo -e "Reason" | lolcat
echo ""
echo -e $re "Most Metasploit installing tools in termux are not working , because now termux req ruby 2.0"
echo -e $bl "Termux installs only ruby 3.0 by default ,So it needs to install ruby 2.0 manually "
echo ""
echo -e "Installation Error" | lolcat
echo""
echo -e $lgf "But There is a Problem in NoobHackers M-Wiz script  ."
echo -e $cy "After you begin to install metasploit by M-wiz Script , it takes about 30 minutes "
echo ""
echo  "Fix Installtion Error" | lolcat
echo ""
echo -e $re "If after a long time it doesn't open Metasploit Interface Open a new session & enter 'bundle install' "
echo -e $cy "Then it is working perfectly . Check the old session it will show Boom ..."
echo ""
read -p "Are you sure you want to Install? <y/N> " prompt | lolcat
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    cd
    apt-get update -y
    apt-get upgrade -y
    pkg install python -y
    pkg install python2 -y
    pkg install git -y
    pip install lolcat
    git clone https://github.com/noob-hackers/m-wiz
    cd
    cd m-wiz
    bash m-wiz.sh
elif [[ $prompt == "n" || $prompt == "N" || $prompt == "no" || $prompt == "No" ]]
then
    echo -e $lgf "GoodBye"
    echo -e $cy "Expect US"
    exit 0
else
    echo -e $re "Invalid Option "
    sleep 2
    cd
    cd MSF
    bash msf.sh
fi
