#!/bin/sh
sudo apt update
sudo apt install -f -y
sudo apt --fix-broken install -y
sudo apt update --fix-missing -y
sudo apt update
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo dpkg --configure -a
sudo apt list --upgradable
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean
exit

