#!/bin/bash
echo "Instalando..."
sleep 3
apt install tor -y
apt install wget -y
wget https://sourceforge.net/projects/tor-browser-ports/files/8.5-arm64/tor-browser-linux-arm64-8.5_en-US.tar.xz
echo "instalacao completa!"
sleep 3
echo ""
echo "Corrijindo erros"
tar -xvf tor-browser-linux-arm64-8.5_en-US.tar.xz
mv tor-browser_en-US torbrowser
sed -i "s/#root/root/g" /etc/security/limits.conf
sleep 3
sed -i "s/debian-tor/root/g" /usr/share/tor/tor-service-defaults-torrc
sleep 2
sed -i '139s/^/#/' /etc/init.d/tor
if [ "$?" -eq 1 ]; then
 service tor start
 sed -i '139s/^/#/' /etc/init.d/tor
fi
sleep 2
clear
echo "Instalacao Concluida!"
echo "[+] service tor start    iniciar tor"
echo "[+] service tor stop     parar o serviço"
echo "[+] service tor status   ver se esta on/off"
echo "navegue ate a pasta onde esta o arquivo start-tor-browser.desktop e execulte ele"
