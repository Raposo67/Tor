#!/bin/bash
apt install tor -y
apt install wget -y
wget https://sourceforge.net/projects/tor-browser-ports/files/8.5-arm64/tor-browser-linux-arm64-8.5_en-US.tar.xz

tar -xvf tor-browser-linux-arm64-8.5_en-US.tar.xz
mv tor-browser-linux-arm64-8.5_en-US torbrowser
sed -i s/#root/root/g /etc/security/limits.conf
sed -i s/debian-tor/root/g /usr/share/tor/tor-service-defaults-torrc
echo ""
echo "Tor Instalado | Tor Browser Instalado"
