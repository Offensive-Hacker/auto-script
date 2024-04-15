#!/bin/bash

# Starting the Script...

# Author of Auto-Script: Offensive Hacker
# Auto-Script can be very useful for your regular target scan and bruteforcing for directories
# WARNING: This tool is under developement
# 



#Bold text
BOLD=$(tput bold)
RESET=$(tput sgr0)

#Bold, Red, Green, Yellow, and Italic text... Colours are Importent :)
RED="31"
GREEN="32"
YELLOW="33"
BOLDYELLOW="\e[1;${YELLOW}m"
BOLDGREEN="\e[1;${GREEN}m"
ITALICRED="\e[3;${RED}m"
BOLDRED="\e[1;${RED}m"
ENDCOLOR="\e[0m"



# Printing Banner for AUTO-SCRIPT
banner(){

echo -e "\n 
            ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
            █                                                                                          █
            █     ${BOLDRED}█████╗ ██╗   ██╗████████╗ ██████╗${ENDCOLOR}     ${BOLDYELLOW}███████╗ ██████╗██████╗ ██╗██████╗ ████████╗${ENDCOLOR}   █
            █    ${BOLDRED}██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗${ENDCOLOR}    ${BOLDYELLOW}██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝${ENDCOLOR}   █
            █    ${BOLDRED}███████║██║   ██║   ██║   ██║   ██║${ENDCOLOR}    ${BOLDYELLOW}███████╗██║     ██████╔╝██║██████╔╝   ██║   ${ENDCOLOR}   █
            █    ${BOLDRED}██╔══██║██║   ██║   ██║   ██║   ██║${ENDCOLOR}    ${BOLDYELLOW}╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   ${ENDCOLOR}   █
            █    ${BOLDRED}██║  ██║╚██████╔╝   ██║   ╚██████╔╝${ENDCOLOR}    ${BOLDYELLOW}███████║╚██████╗██║  ██║██║██║        ██║   ${ENDCOLOR}   █
            █    ${BOLDRED}╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ${ENDCOLOR}    ${BOLDYELLOW}╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   ${ENDCOLOR}   █
            █                                                                                          █
            █    ═══════════════════════════════════════════════════════════════════════════════════   █
            █                                                                                          █
            █    ${BOLDGREEN}[𓄿 ]${ENDCOLOR} ${BOLDGREEN}Created by${ENDCOLOR} ${BOLDRED}Offensive Hacker${ENDCOLOR}                                                      █
            █    ${BOLDGREEN}[𓄿 ]${ENDCOLOR} ${BOLDGREEN}Follow me on IG:${ENDCOLOR} ${BOLDRED}@0ff3n51v3_h4ck3r${ENDCOLOR}                                               █
            █    ${BOLDGREEN}[🌟]${ENDCOLOR} ${BOLDGREEN}Create your directories and files with one command !${ENDCOLOR}                             █
            █    ${BOLDGREEN}[🌟]${ENDCOLOR} ${BOLDGREEN}Very Helpful in CTFs${ENDCOLOR}                                                             █
            █    ${BOLDGREEN}[⚠️ ]${ENDCOLOR} ${BOLDGREEN}Usage: Provide your target machine name and target IP${ENDCOLOR}                            █
            █                                                                                          █
            █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

"
}

# if [ -z "$1" ] || [ -z "$2" ]; then
    # print_banner
    # usage
# fi


usage(){

	echo -e " ${BOLDRED}[+]${ENDCOLOR} ${BOLD}Usage:${RESET} $0 <target_name> <target_ip>"
	echo -e " ${BOLDRED}[+]${ENDCOLOR} ${BOLD}Example:${RESET} $0 Mr_Robot 192.168.1.1\n"
	exit 1 # Exit if none or invalid arguments provided
}

#Checking if correct number of arguments is provided
if [[ "$#" -ne 2 ]]; then
	banner
	usage
fi

banner

# Target Name and Target IP
TARGET_NAME="$1"
TARGET_IP="$2"

# Creating Directories and README.md file
echo -e "\n ${BOLDRED}[+] Creating File:${ENDCOLOR} README.md \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} recon \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} exploitation \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} post \n ${BOLDRED}[+] Creating Directory:${ENDCOLOR} Loot \n ${BOLDRED}[+] Creating File:${ENDCOLOR} init-foothold"

touch README.md
mkdir recon exploitation post Loot init-foothold 2>/dev/null 
# 
# printf "\n ${BOLDRED}[!]${ENDCOLOR} ${BOLDGREEN}Enter Your Machine (Target) Name Here:${ENDCOLOR} " &&  read name
# printf "\n ${BOLDRED}[!]${ENDCOLOR} ${BOLDGREEN}Enter Your Machine (Target) IP Address Here:${ENDCOLOR} " &&  read ip

export IP=$2
printf "\n ${BOLDRED}[*]${ENDCOLOR} ${BOLDGREEN}Your Target IP exported to your ~/.bashrc file Temporarily${ENDCOLOR}"

# I think the README.md file contains nothing; let's fill it!
echo -e "
[toc]
---
# $1: $2
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

# Checking the target is Up or Down
printf "\n\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Pinging the Target... $ip${ENDCOLOR} " && sleep 3
if ping -c 1 $IP &> /dev/null; then
    echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}The $IP is up!${ENDCOLOR}"
else
    echo -e "\n ${BOLDRED}[!]${ENDCOLOR} ${BOLDYELLOW}The $IP is down or unreachable.${ENDCOLOR}"
    echo -e " ${BOLDRED}[!]${ENDCOLOR} ${BOLDRED}Exiting...${ENDCOLOR}\n"
    exit 
fi

sleep 2

#Running NMAP Scan on Target IP
echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDRED}Running Comprehensive NMAP Scan on the target. This may take some time, Please be patient:${ENDCOLOR} \n"

echo -e "════════════════════════════════════════════════════════════════════════════\n"

sudo nmap $IP -F -sV -A -O -sS -Pn -oN recon/nmap-scan.txt | grep -E "tcp|udp"

# Exporting NMAP Scan report to recon/ as nmap-scan.txt
echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Full Report can be found under the recon/ .${ENDCOLOR} 
 ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}For more information about the target, check out the generated report...${ENDCOLOR}"
echo -e "\n════════════════════════════════════════════════════════════════════════════"


sleep 2


# FFUF Zone
echo -e "\n\n ${BOLDRED}[*]${ENDCOLOR} ${BOLDYELLOW} Running ffuf for directory bruteforcing on the target${ENDCOLOR} \n"


# Choosing Wordlists & Threads
echo -e "${BOLDGREEN}[!] Choose a wordlists from below:${ENDCOLOR} \n"

# Wordlists:
# Length of Wordlists:
list1=$(wc -l < /usr/share/wordlists/SecLists/Discovery/Web-Content/big.txt)
list2=$(wc -l < /usr/share/dirb/wordlists/common.txt)
list3=$(wc -l < /usr/share/wordlists/SecLists/Discovery/Web-Content/common.txt)
list4=$(wc -l < /usr/share/wordlists/rockyou.txt)

printf "${BOLDRED}[1]${ENDCOLOR} /usr/share/wordlists/SecLists/Discovery/Web-Content/big.txt         :: [$list1]
${BOLDRED}[2]${ENDCOLOR} /usr/share/dirb/wordlists/common.txt                                :: [$list2]
${BOLDRED}[3]${ENDCOLOR} /usr/share/wordlists/SecLists/Discovery/Web-Content/common.txt      :: [$list3]
${BOLDRED}[4]${ENDCOLOR} /usr/share/wordlists/rockyou.txt                                    :: [$list4]
${BOLDRED}[5]${ENDCOLOR} Custom wordlist (Define PATH!) \n\n"

# Taking User Input for Wordlists and Threads
printf "${BOLDGREEN}Enter Wordlists Number Here:${ENDCOLOR} " && read -r wordlist_num
printf "WORDLIST => $wordlist_num\n"
printf "${BOLDGREEN}Enter Number of Threads Here:${ENDCOLOR} " && read -r threads
printf "THREADS => $threads\n\n"


# Choosing wordlists IF-ELIF-ELSE Conditions

# Improved regular expression for flexibility
number_regex='^[-+]?[0-9]*(\.[0-9]+)?$'
# Check for valid numbers using a loop
wordlist_and_threads(){
    for num in "$wordlist_num" "$threads"; do
        if [[ $num =~ $number_regex ]]; then

            if [[ $wordlist_num == 1 ]];then
                wordlist="/usr/share/wordlists/SecLists/Discovery/Web-Content/big.txt"

            elif [[ $wordlist_num == 2 ]]; then
                wordlist="/usr/share/dirb/wordlists/common.txt"

            elif [[ $wordlist_num == 3 ]]; then
                wordlist="/usr/share/wordlists/SecLists/Discovery/Web-Content/common.txt"

            elif [[ $wordlist_num == 4 ]]; then
                wordlist="/usr/share/wordlists/rockyou.txt"

            elif [[ $wordlist_num == 5 ]]; then
                printf "${BOLDGREEN}Enter absolute wordlist path here:${ENDCOLOR} " && read -r custom_wordlist
                wordlist="$custom_wordlist"

            else
                #If Invalid User Input then exit
                printf "${BOLDRED}Invalid Input From USER${ENDCOLOR}\n"
                echo -e "\n\"$num\" is not a valid number."
                printf "${BOLDRED}Exiting...${ENDCOLOR}"
                exit 1 # Exit script with error status on invalid input
            fi
        else
        exit
        fi
    done
}
wordlist_and_threads

echo -e "════════════════════════════════════════════════════════════════════════════\n"

#Running FFUF and exporting report to recon/ as ffuf-report.txt
ffuf -u http://$IP/FUZZ -w "$wordlist" -ic -t "$threads" | tee recon/ffuf-report.txt | grep Status


printf "\n ${BOLDRED}[...]${ENDCOLOR} ${BOLDYELLOW}Checking If Port 8080 Is Open...${ENDCOLOR}"
sleep 2


if [[ $(cat recon/nmap-scan.txt | grep -w 8080 | cut -d / -f 1) ]]; then
    
    echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Port 8080 is open on the target${ENDCOLOR}"
    printf "\n ${BOLDRED}[?]${ENDCOLOR} ${BOLDRED}Do you want to run an additional FFUF scan for port 8080? [Y=1, N=2]: ${ENDCOLOR}" && read -r yes_or_no
    
    if [[ $yes_or_no == 1 || $yes_or_no == Y || $yes_or_no == y ]]; then
        
        echo -e "\n ${BOLDRED}[*]${ENDCOLOR} ${BOLDGREEN}Running Additional FFUF Scan for:${ENDCOLOR} http://$IP:8080/FUZZ \n" && sleep 2
        
        # wordlist_and_threads
        
        ffuf -u http://$IP:8080/FUZZ -w $wordlist -ic -t "$threads" | tee recon/ffuf-report_add.txt | grep Status
        printf "\n ${BOLDRED}[*]${ENDCOLOR} ${BOLDGREEN}Additional FFUF report can be found under recon/ as ffuf-report_add.txt${ENDCOLOR}"
    
    elif [[ $yes_or_no == 2 || $yes_or_no == n || $yes_or_no == N ]]; then
        echo -e " ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Okay!!! Skipping Additional FFUF Scan!${ENDCOLOR}"
    
    else
        echo "Invalid Input From User, Exiting..."
    fi

else
    echo -e "\n ${BOLDRED}[+]${ENDCOLOR} ${BOLDYELLOW}Port 8080 is not open! Skipping FFUF Scan...${ENDCOLOR}"
fi



printf "\n ${BOLDRED}[*]${ENDCOLOR} ${BOLDGREEN}FFUF report can be found under recon/ as ffuf-report.txt${ENDCOLOR}\n"
echo -e "\n════════════════════════════════════════════════════════════════════════════"

sleep 1

echo -e "\n ${BOLDRED}
    ╔══════════════════════════════════════════════════════════╗
    ║ [✨] Thanks for using me, Goodluck...Happy Hacking!!!    ║
    ╚══════════════════════════════════════════════════════════╝
  ${ENDCOLOR}\n"
sleep 2
