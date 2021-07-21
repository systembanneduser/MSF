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


cd
clear
toilet -f mono12 -F gay " APKMOD"
toilet -f mono12 -F gay " INSTALL"
echo ""
apt-get update -y
apt-get upgrade -y
pkg install python -y
pkg install python2 -y
pkg install git -y
pkg install wget
clear
figlet "APKMOD" | locat
wget https://raw.githubusercontent.com/Hax4us/Apkmod/master/setup.sh
echo -e $gr "Now  the installation process will start and it may take a long time to get done so please wait for it to complete... ! "
sleep 2
bash setup.sh
clear
toilet -f mono12 -F gay "APKMOD"
toilet -f mono12 -F gay "INSTALL"
echo ""
echo -e $cy "ApkMod is installed successfully ! "
sleep 2
echo -n -e $gr "Press Enter To Continue : >>> "
read input
cd
cd MSF
bash msf.sh
