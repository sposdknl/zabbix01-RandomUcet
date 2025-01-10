#!/usr/bin/env bash

# Instalace balicku net-tools
sudo apt install -y net-tools

# Stažení balíčku pro instalaci zabbix repo
sudo wget https://repo.zabbix.com/zabbix/7.0/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.0+debian12_all.deb

# Instalace meta balíčku
sudo dpkg -i zabbix-release_latest_7.0+debian12_all.deb

# Aktualizace repository
sudo apt update

# Instalace meta balíčku
sudo apt install zabbix-agent2 zabbix-agent2-plugin-*

# Restart sluzby zabbix-agent2
sudo systemctl restart zabbix-agent2

# Povoleni sluzby zabbix-agent2
sudo systemctl enable zabbix-agent2

# EOF