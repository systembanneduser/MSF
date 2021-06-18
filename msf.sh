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



function checkinternet(){

clear
figlet -f smmono9 " MSF" | lolcat
echo -e $lg " [*] Checking your Internet Connection "
echo " "
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" != 0 ]]
 then
    echo -e $ye " [-] Internet:${re} CONNECTION FAILED"
    echo ""
    echo -e $lgf " Need Internet Connection"
    echo ""
    echo -e $ye "                Exit" 
    echo "." | lolcat
    sleep 2
    exit
  else
    echo -e $ye " [+] Internet:${lg} CONNECTED"
    sleep 2
  fi

}


function postserver(){

clear
echo -e $bl " [${ye}∆${blue}] Setting up the Server........."
initdb $PREFIX/var/lib/postgresql > /dev/null 2>&1 
pg_ctl -D $PREFIX/var/lib/postgresql start > /dev/null 2>&1
echo ""
echo ""                                
echo -e $lgf " [${re}S${lgf}] Postgresql Server has been Started "
sleep 2
echo $ye " "

}



function menu(){

clear
toilet -f mono12 -F gay " MSF"
sleep 2
echo " [*]  Coded By Isuruwaa" | lolcat -a -d 30
echo " "
echo " "
echo -e $lgf "1.Install Metasploit"
echo -e $cy "2.Start a Listener"
echo -e $re "3.create a backdoor"
echo -e $pu "4.Android payload creater"
echo -e $lg "5.Windows Payload Creator"
echo -e $pink "6.Linux Payload Creator"
echo -e $bl "7.Mac Payload Creator "
echo -e $yf "8.PHP Payload Creator"
echo -e $cy "9.Python Payload Creator"
echo -e $ref "10.Install Apkmod "
echo -e $re "11.Bind Payload With Apkmod"
echo -e $bl "12.Sign Apk"
echo -e $lg "13.Download Ngrok"
echo -e $cy "14.Configure Ngrok"
echo -e $pu "15.About"
echo -e $re "16.Exit"
echo " "
echo -n -e $lgf "Enter Your option >>>  "
read userinput1

if [ "${userinput1:-}" = "1" ]
then
	cd
	cd MSF
	cd source
	bash install1.sh
elif [ "${userinput1:-}" = "2" ]
then
	postserver
	cd
	cd MSF
	cd source
	bash listner.sh
elif [ "${userinput1:-}" = "3" ]
then
	cd source
	cp -r inject.sh /sdcard
	sleep 2
	echo -e $lgf "The Backdoor Script has generated & coppied to the internal storage as inject.sh . "
        sleep 4
        cd
        cd MSF
        bash msf.sh
elif [ "${userinput1:-}" = "4" ]
then
	cd
	cd MSF
	cd source
	bash payloadandro.sh
elif [ "${userinput1:-}" = "5" ]
then
	cd
	cd MSF
	cd source
	bash payloadwin.sh
elif [ "${userinput1:-}" = "6" ]
then
	cd
	cd MSF
	cd source
	bash payloadlinux.sh
elif [ "${userinput1:-}" = "7" ]
then
	cd
	cd MSF
	cd source
	bash payloadmac.sh
elif  [ "${userinput1:-}" = "8" ]
then
	cd
	cd MSF
	cd source
	bash payloadphp.sh
elif  [ "${userinput1:-}" = "9" ]
then
	cd
	cd MSF
	cd source
	bash payloadpy.sh
elif  [ "${userinput1:-}" = "10" ]
then
	cd
	cd MSF
	cd source
	bash apkmodinstall.sh
elif  [ "${userinput1:-}" = "11" ]
then
	cd
	cd MSF
	cd source
	bash bind.sh
elif  [ "${userinput1:-}" = "12" ]
then
	cd
	cd MSF
	cd source
	bash sign.sh
elif  [ "${userinput1:-}" = "13" ]
then
	cd
	cd MSF
	cd source
	bash ngrokdown.sh
elif  [ "${userinput1:-}" = "14" ]
then
	cd
	cd MSF
	cd source
	bash ngrokconfigure.sh
elif  [ "${userinput1:-}" = "15" ]
then
	cd
	cd MSF
	cd source
	bash about.sh
elif  [ "${userinput1:-}" = "16" ]
then
	cd
	cd MSF
	cd source
        bash msf.sh
elif  [ "${userinput1:-}" = "" ]
then
         menu
else
        echo -e $re "Wrong Option"
        sleep 2
        menu
fi


 }


checkinternet
menu
