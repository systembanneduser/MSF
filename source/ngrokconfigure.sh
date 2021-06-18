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
figlet -f smmono9 " NGROK" | lolcat
figlet -f smmono9 " CONFIGURE" | lolcat
sleep 1
echo ""

function ngrokauth(){
        clear
        echo ""
        echo -n -e $gr "-*-*-* Enter Your Ngrok Authtoken : "
        read
        echo ""
        echo -e $cy "Authtoken Saved " | lolcat

}


ngrokauth
cd
./ngrok authtoken $ngrokauth
echo ""
echo -e $pink "AUTHTOKEN CONFIGURED !!!" | lolcat
sleep 2
cd MSF
bash msf.sh
