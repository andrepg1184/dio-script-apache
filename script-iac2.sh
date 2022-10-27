#!/bin/bash


echo "Atualizando o servidor..."
apt-get update 
apt-get upgrade -y
echo "instalando o Apache"
apt-get install apache2 -y
echo "Instalando o Unzip"
apt-get install unzip -y
cd /tmp
echo "Baixando o site da DIO"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
echo "Subindo o site localmente"
cp -R * /var/www/html/
