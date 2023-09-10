#!/bin/bash
#Developed by: Ahmed Mohamed (A l - A l a m y)
#YouTube Channel: https://www.youtube.com/channel/UCQuGjfmo04jDd6zlBscslGQ
#YouTube Channel: https://www.youtube.com/channel/UCm-UlQ6ygk4jkNfgFzlc2LA
# A7Y Team

r='\e[99;31m' # Red
g='\e[99;32m' # Green
y='\e[99;33m' # Yellow
b='\e[99;34m' # Blue

clear
echo
echo -e "${g} ███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗     █████╗ ██╗  ██╗";
echo -e "${g} ████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝    ██╔══██╗██║  ██║";
echo -e "${g} ██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝     ███████║███████║";
echo -e "${g} ██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗     ██╔══██║██╔══██║";
echo -e "${g} ██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗    ██║  ██║██║  ██║";
echo -e "${g} ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝  ╚═╝╚═╝  ╚═╝";
echo -e $b"             By 𝐀rab Hackers 𝐀rmy™ ==> Bo Haydar"
echo
echo -e $y"Do you want to install Ngrok? [Y/n]"
read selection
case $selection in
y)
    echo
    sleep 0.4
    #printf "Please wait..[                    ] 0% "
    #sleep 0.4
    #clear
    #printf "Please wait..[=====               ] 25%"
    #sleep 0.4
    #clear
    #printf "Please wait..[==========          ] 50%"
    #sleep 0.4
    #clear
    #printf "Please wait..[===============     ] 75%"
    #sleep 0.4
    #clear
    #printf "Please wait..[====================] 100%"
    #sleep 0.4
    #clear
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "unknown architecture"
esac
echo -e $g"Downloading..!"
wget "https://github.com/AL-AlamySploit/Ngrok-Test/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
xdg-open https://t.me/mosLord
sleep 0.10
ngrok authtoken 2VDaar4YNJ2PxyEImH2bwcny1Vl_5xZh5W1Wy2Xy9bTZcygup
clear
echo -e "${g}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo -e "${g}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo -e "${g}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo -e "${g}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo -e "${g}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo -e "${g}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo
echo -e $g"Example driving\n ('ngrok http 80' or ngrok help)"
;;

n)
    echo -e "${r}[-] Ngrok not installed"
    echo
    ;;
    
exit)
    echo -e $y"Goodbye "
    ;;
    
*)
    echo -e $y"unknown"
    ;;
esac
