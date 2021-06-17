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

echo -e $lg "The script is updating."
sleep 3
cd
rm  -rf MSF
git  clone https://github.com/isuruwa/MSF
echo -e $cy "The script is updated. "
sleep 3
cd
cd  MSF
bash msf.sh

