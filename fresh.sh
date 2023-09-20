#!/bin/bash
sudo apt update
sudo apt-get dist-upgrade
sudo apt list --upgradable
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean
clear
echo "Ready to go!"
echo "No social media"
exit
