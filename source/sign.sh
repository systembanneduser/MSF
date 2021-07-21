#bin/bash
# -*- coding: utf-8 -*-
#CODED BY ISURUWA

red='\033[1;31m'
rset='\033[0m'
gr='\033[1;32m'
ye='\033[1;33m'
blue='\033[1;34m'
cy='\033[1;36m'
pink='\033[1;35m'

clear
figlet -f smmono9 " APK" | lolcat
figlet -f smmono9 " SIGNER" | lolcat
echo ""

function path(){

echo -e $gr " [N] Name of Unsignned Apk with path :  "
echo -n -e " [N]: "
read lhost

}

function out(){

echo -e $cy " [O] Name of Output Signned Apk with path :   "
echo -n -e "[O] : "
read name

}

echo " "
path
echo " "
out
echo " "
apkmod -s $path.apk -o $out.apk
sleep 1
echo -e $gr "The Apk is Signned . "
echo ""
echo -e $cy "Press Enter To Continue : "
read input
cd
cd MSF
bash msf.sh



