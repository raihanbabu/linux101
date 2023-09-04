#!/bin/bash

sudo apt update
sudo apt list --upgradable
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean
exit
