#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    wget https://raw.githubusercontent.com/User058/vojo/main/ubuntu/menu.zip
    unzip menu.zip
    chmod +x menu
    chmod +x addhost
    chmod +x menu
    chmod +x m-sshws
    chmod +x trialssh
    chmod +x delssh
    chmod +x member
    chmod +x delexp
    chmod +x cekssh
    chmod +x restart
    chmod +x speedtest
    chmod +x info
    chmod +x about
    chmod +x autokill
    chmod +x tendang
    chmod +x ceklim
    chmod +x ram
    chmod +x renewssh
    chmod +x clearlog
    chmod +x changeport
    chmod +x portovpn
    chmod +x portwg
    chmod +x porttrojan
    chmod +x portsstp
    chmod +x portsquid
    chmod +x portvlm
    chmod +x wbmn
    chmod +x xp
    chmod +x swapkvm
    chmod +x addvmess
    chmod +x addvless
    chmod +x addtrojan
    chmod +x delv2ray
    chmod +x delvless
    chmod +x deltrojan
    chmod +x cekvmess
    chmod +x cekvless
    chmod +x cektrojan
    chmod +x renewvmess
    chmod +x renewvless
    chmod +x renewtrojan
    chmod +x certv2ray
    chmod +x addtrgo
    chmod +x deltrgo
    chmod +x renewtrgo
    chmod +x cektrgo
    mv menu /usr/local/sbin
    rm -rf menu
    rm -rf menu.zip
    rm -rf update.sh
}
netfilter-persistent
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m          UPDATED USER058 VPN       \e[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "  \033[1;91m update script service\033[1;37m"
fun_bar 'res1'
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu

###########- COLOR CODE -##############
