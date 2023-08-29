#!/bin/bash
# sudo apt update
# sudo apt list --upgradable
# sudo apt upgrade -y
# sudo apt autoremove -y
# sudo apt autoclean


#  default info

URL="$1"

DB="$URL"
USER="root"
PASS="password"
FILE="wp-config-sample.php"



cd /var/www/html
sudo mkdir temp
cd temp
cd ..
sudo chmod -R 777 temp
cd temp
sudo wget https://wordpress.org/latest.zip
sudo apt-get install unzip -y
sudo unzip latest.zip
cd /var/www/html
mkdir $URL
sudo mv /var/www/html/temp/wordpress/* /var/www/html/$URL
cd /var/www/html/
sudo rm -rf temp
sudo chmod -R 777 /var/www/html/$URL/*
cd $URL
sudo sed -i "s/database_name_here/${URL}/g" "/var/www/html/$URL/$FILE"
sudo sed -i "s/username_here/${USER}/g" "/var/www/html/$URL/$FILE"
sudo sed -i "s/password_here/${PASS}/g" "/var/www/html/$URL/$FILE"
sudo mv $FILE wp-config.php


mysql -uroot -ppassword -e "CREATE DATABASE $DB CHARACTER SET utf8 COLLATE utf8_general_ci";
# mysql -uroot -prootpassword -e "CREATE USER $USER@'127.0.0.1' IDENTIFIED BY '$PASS'";
# mysql -uroot -prootpassword -e "GRANT SELECT, INSERT, UPDATE ON $DB.* TO '$USER'@'127.0.0.1'";

exit
