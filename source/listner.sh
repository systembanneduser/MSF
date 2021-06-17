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

function postserver(){

clear
echo -e $bl " [${ye}∆${blue}] Setting up the Server........."
initdb $PREFIX/var/lib/postgresql > /dev/null 2>&1 
pg_ctl -D $PREFIX/var/lib/postgresql start > /dev/null 2>&1
echo ""
echo ""                                
echo -e $lgf " [${re}S${lgf}] Server has been Started "
sleep 2
echo $ye " "

}


postserver
msfconsole

