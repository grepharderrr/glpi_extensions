#!/bin/bash

# Mise à jour du système
sudo apt update
sudo apt upgrade -y

# Installation des extensions PHP nécessaires pour GLPI
sudo apt install -y php php-mysql php-curl php-fileinfo php-gd php-json php-mbstring php-session php-zlib php-simplexml php-xml php-intl php-cli php-ldap php-openssl php-xmlrpc php-apcu

# Redémarrage du service Apache pour prendre en compte les nouvelles extensions PHP
sudo systemctl restart apache2
