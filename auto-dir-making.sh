#!/bin/bash

# Starting the Script

clear
echo -e "\n 
    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
    █                                                                                         █
    █     █████╗ ██╗   ██╗████████╗ ██████╗     ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗  █
    █    ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝  █
    █    ███████║██║   ██║   ██║   ██║   ██║    ███████╗██║     ██████╔╝██║██████╔╝   ██║     █
    █    ██╔══██║██║   ██║   ██║   ██║   ██║    ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║     █
    █    ██║  ██║╚██████╔╝   ██║   ╚██████╔╝    ███████║╚██████╗██║  ██║██║██║        ██║     █
    █    ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝     ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝     █
    █  ${BOLDGREEN}[+] Created by ${BOLDRED}Offensive Hacker${ENDCOLOR}                                                        █
    █  ${BOLDGREEN}[+] Create your directories and files with one command !${ENDCOLOR}                               █
    █  ${BOLDGREEN}[+] Very Helpful in CTFs${ENDCOLOR}                                                               █
    █  ${BOLDGREEN}[!] Usage: Provide your target machine name and target IP${ENDCOLOR}                              █
    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

"

#Bold text
BOLD=$(tput bold)
RESET=$(tput sgr0)

#Bold, Red, Green, Yellow, and Italic text
RED="31"
GREEN="32"
YELLOW="33"
BOLDYELLOW="\e[1;${YELLOW}m"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
BOLDRED="\e[1;${RED}m"
ENDCOLOR="\e[0m"


echo -e "\n ${BOLDRED}[+] Creating File:${ENDCOLOR} README.md \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} recon \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} exploitation \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} post \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} Loot"

touch README.md
mkdir recon exploitation post Loot 2>/dev/null 

printf "\n ${BOLDRED}[!]${ENDCOLOR} ${BOLDGREEN}Enter Your Machine (Target) Name Here:${ENDCOLOR} " &&  read name
printf "\n ${BOLDRED}[!]${ENDCOLOR} ${BOLDGREEN}Enter Your Machine (Target) IP Address Here:${ENDCOLOR} " &&  read ip

export IP=$ip
printf "\n ${BOLDRED}[*]${ENDCOLOR} ${BOLDGREEN}Your Target IP exported to your ~/.bashrc file Temporarily${ENDCOLOR}"

echo -e "
[toc]
---
# $name: $ip
----" > README.md
echo -e "




# Recon & Enum
----


## Ports and Services
----





# Gaining Access
----




# Exploitation
----





# Post-Exploitation
-----




# Loot
----



" >> README.md


sleep 1


printf "\n\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Pinging the Target: $ip${ENDCOLOR} " && sleep 3
if ping -c 1 $IP &> /dev/null; then
    echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}The $IP is up!${ENDCOLOR}"
else
    echo -e "\n ${BOLDRED}[!]${ENDCOLOR} ${BOLDYELLOW}The $IP is down or unreachable.${ENDCOLOR}"
fi

sleep 2

echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Running Comprehensive Nmap Scan on the target. This may take some time, Please be patient:${ENDCOLOR} \n"

echo -e "════════════════════════════════════════════════════════════════════════════"

sudo nmap $IP -F -sV -A -O -sS -Pn -oA recon/nmap-scan | grep tcp

echo -e "════════════════════════════════════════════════════════════════════════════"


echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Full Report can be found under the recon/ directory.${ENDCOLOR} 
 ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}For more information about target, please checkout the generated report...${ENDCOLOR}"

sleep 1

echo -e "\n [] Running dirb for directory bruteforcing on the target: "

echo -e "════════════════════════════════════════════════════════════════════════════"
dirb http://$IP -o recon/dirb-forcing.txt
echo -e "════════════════════════════════════════════════════════════════════════════"
echo -e "\n ${BOLDRED}
    ╔═════════════════════════════════════════════════════════╗
    ║ [+] Thanks for using me, Goodluck...Happy Hacking!!!    ║
    ╚═════════════════════════════════════════════════════════╝
  ${ENDCOLOR}\n"
sleep 2