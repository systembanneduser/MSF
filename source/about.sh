#!/bin/bash
# -*- coding: utf-8 -*-
#CODED BY ISURUWA


re='\e[1;31m'
white='\e[1;37m'
blue='\e[1;34m'
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

echo ""
sleep 2
toilet -f mono12 -F gay "About"
echo ""
fortune | cowsay -f eyes | toilet --metal -f term | lolcat
read -p 'Press Enter To Continue : >>> ' userinput1;
#
cd
cd MSF
bash msf.sh
