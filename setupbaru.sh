#!/bin/bash
#auto installer Bye HideSSH
# Credit 2022
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Link Hosting Kalian Untuk Ssh Vpn
akbarvpn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/ssh"
# Link Hosting Kalian Untuk Sstp
akbarvpnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/sstp"
# Link Hosting Kalian Untuk Ssr
akbarvpnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/ssr"
# Link Hosting Kalian Untuk Shadowsocks
akbarvpnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/shadowsocks"
# Link Hosting Kalian Untuk Wireguard
akbarvpnnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/wireguard"
# Link Hosting Kalian Untuk Xray
akbarvpnnnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/xray"
# Link Hosting Kalian Untuk Ipsec
akbarvpnnnnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/ipsec"
# Link Hosting Kalian Untuk Backup
akbarvpnnnnnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/backup"
# Link Hosting Kalian Untuk Websocket
akbarvpnnnnnnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/websocket"
# Link Hosting Kalian Untuk Ohp
akbarvpnnnnnnnnnn="raw.githubusercontent.com/fisabiliyusri/Mantap/main/ohp"

# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
IZIN=$(wget -qO- ipinfo.io/ip);

clear
if [ -f "/etc/xray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
mkdir /var/lib/crot;
echo "IP=" >> /var/lib/crot/ipvps.conf
#wget https://${akbarvpn}/slhost.sh && chmod +x slhost.sh && ./slhost.sh

#install xray
#wget https://${akbarvpnnnnnn}/ins-xray.sh && chmod +x ins-xray.sh && screen -S xray ./ins-xray.sh

#install ssh ovpn
#wget https://${akbarvpn}/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#wget https://${akbarvpnn}/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh

wget https://raw.githubusercontent.com/hidessh99/sulaimanl-Mnatap/main/ssh/hide-ssh.sh && chmod +x hide-ssh.sh && screen -S hide-ssh.sh ./hide-ssh.sh

#install ssr
#wget https://${akbarvpnnn}/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://${akbarvpnnnn}/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh

#installwg
#wget https://${akbarvpnnnnn}/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh

#install L2TP
wget https://${akbarvpnnnnnnn}/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
#wget https://${akbarvpnnnnnnnn}/set-br.sh && chmod +x set-br.sh && ./set-br.sh

# Websocket
#wget https://${akbarvpnnnnnnnnn}/edu.sh && chmod +x edu.sh && ./edu.sh

# Ohp Server
wget https://${akbarvpnnnnnnnnnn}/ohp.sh && chmod +x ohp.sh && ./ohp.sh

#tambahan
wget -O /usr/bin/addtrgo https://raw.githubusercontent.com/satriaajiputra/Mantap/main/trojango/addtrgo.sh && chmod +x /usr/bin/addtrgo
wget -O /usr/bin/addss https://raw.githubusercontent.com/satriaajiputra/Mantap/main/shadowsocks/addss.sh && chmod +x /usr/bin/addss

#tambahan l2tp
wget -O /usr/local/bin/stdev-l2tp-get-psk "https://gist.githubusercontent.com/satriaajiputra/0ddfe41a9218afb36f09d657cdfe8d91/raw/stdev-l2tp-get-psk"
wget -O /usr/local/bin/stdev-l2tp-add-user "https://gist.githubusercontent.com/satriaajiputra/0ddfe41a9218afb36f09d657cdfe8d91/raw/stdev-l2tp-add-user"
wget -O /usr/local/bin/stdev-l2tp-remove-user "https://gist.githubusercontent.com/satriaajiputra/0ddfe41a9218afb36f09d657cdfe8d91/raw/stdev-l2tp-remove-user"

#permisiion
chmod +x /usr/local/bin/stdev-l2tp-get-psk
chmod +x /usr/local/bin/stdev-l2tp-add-user
chmod +x /usr/local/bin/stdev-l2tp-remove-user

cd
# Install SlowDNS
wget https://raw.githubusercontent.com/hidessh99/sulaimanl-Mnatap/main/SLDNS/install-sldns && chmod +x install-sldns && ./install-sldns



# Informasi IP Saya dan Semua Port TCP UDP
# wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/ipsaya.sh && chmod +x ipsaya.sh
#
# install xray sl-grpc
#wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/grpc/sl-grpc.sh && chmod +x sl-grpc.sh && screen -S sl-grpc ./sl-grpc.sh
# install xray grpc
#wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/grpc/xray-grpc.sh && chmod +x xray-grpc.sh && screen -S xray-grpc ./xray-grpc.sh

# install shadowsocks plugin
#wget https://raw.githubusercontent.com/fisabiliyusri/Mantap/main/shadowsocks-plugin/install-ss-plugin.sh && chmod +x install-ss-plugin.sh && ./install-ss-plugin.sh
 

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-xray.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/edu.sh
rm -f /root/ohp.sh
rm -f /root/install
rm -f /root/sl-grpc.sh
rm -f /root/install-sldns
rm -f /root/install-ss-plugin.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=hidessh.com

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://${akbarvpn}/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
echo " "
echo "Installation has been completed!!"echo " "
echo "============================================================================" | tee -a log-install.txt
