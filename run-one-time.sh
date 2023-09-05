#!/bin/sh
sudo apt update
sudo apt install -f
sudo apt list --upgradable
sudo apt upgrade -y
sudo apt autoremove
sudo apt autoclean
# Install
sudo apt install apache2 -y
sudo apt install libapache2-mod-php -y
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt install php libapace2-mod-php php-zip php-gd php-json php-curl php-mbstring php8.2-mbstring -y
sudo apt install php-common php8.2-common php8.2-mysql -y
sudo apt install php8.2 libapache2-mod-php8.2 -y
sudo apt install php8.2-fpm libapache2-mod-fcgid -y
sudo apt install mysql-server -y
sudo apt install php-mysql -y
sudo a2enmod rewrite
sudo a2enconf php8.2-fpm
sudo phpenmod mbstring
sudo a2enmod proxy_fcgi setenvif
sudo systemctl restart apache2
# Install
sudo apt install git -y
sudo apt upgrade -y
git config --global credential.helper store
git config --global credential.helper 'cache --timeout 72000000'
#
# sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
# sudo a2enconf phpmyadmin.conf
# sudo systemctl restart apache2
#
#
sudo apt install curl -y
sudo curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
sudo php wp-cli.phar --info
sudo chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
wp --info
#
#
#
sudo wget https://gist.githubusercontent.com/raihanbabu/9795847956c3857bb1280c7cd42d0dd8/raw/3459b9925fc4ffe487ecd46c30081b29af66e25f/create-project.sh
sudo chmod +x create-project.sh
sudo mv create-project.sh /usr/local/bin/create-project
sudo wget https://gist.githubusercontent.com/raihanbabu/9795847956c3857bb1280c7cd42d0dd8/raw/3459b9925fc4ffe487ecd46c30081b29af66e25f/template
sudo mv template /etc/apache2/sites-available/templat
e
exit
