#!/bin/bash
clear
###########
LURUS="\033[1;32m=\033[1;33m=\033[1;31m=\033[1;31m$NC"
LURUS2="\033[1;32m=\033[1;33m=\033[1;31m=\033[1;31m$NC"
KANAN="\033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m$NC"
KIRI="\033[1;32m>\033[1;33m>\033[1;31m>\033[1;31m$NC"
########
echo -e " ${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}"
echo -e "         • MENU INSTALLER SCRIPTS AUTO INSTALL •         "
echo -e " ${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}"
echo -e "" 
echo -e " ${KIRI} Status Bot ( ${status_bot} )"
echo -e ""
echo -e " [\e[36m•1\e[0m] Install Script Stunell"
echo -e " [\e[36m•2\e[0m] Install Scripts Happyproxy"
echo -e "" 
echo -e "" 
echo -e " ${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}${LURUS}${LURUS2}"
echo -e ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
01 | 1) clear ; apt update && apt upgrade -y && update-grub && sleep 2 && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt upgrade && apt install -y bzip2 gzip coreutils screen curl unzip && wget -q https://raw.githubusercontent.com/myvpn1/v5/main/setup.sh && chmod +x setup.sh && ./setup.sh ;;
02 | 2) clear ; hapus-bot ;;
*) clear ; exit ;;
esac
