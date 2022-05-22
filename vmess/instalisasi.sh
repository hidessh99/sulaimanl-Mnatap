#!/bin/bash
#auto installer Bye HideSSH

mkdir /data
wget -O /data/tls.pem "https://raw.githubusercontent.com/hidessh99/sulaimanl-Mnatap/main/vmess/certi.pem"
wget -O /data/tls.key "https://raw.githubusercontent.com/hidessh99/sulaimanl-Mnatap/main/vmess/certi.key"


cd
apt-get update -y && apt-get install wget curl -y
wget -O install-vmess "https://www.dropbox.com/s/lo1qrse0w6xvncm/install-vmess.sh?dl=1" && chmod +x install-vmess && ./install-vmess


wget -O update-vmess "https://gist.githubusercontent.com/satriaajiputra/0cb7d47aa0265730d2fb3a01b2391ad3/raw/9cc9708258417b2459d462ce18f322094d68b058/updatevmess.sh" && chmod +x update-vmess && ./update-vmess && rm update-vmess

