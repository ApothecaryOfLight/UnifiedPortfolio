#!/bin/bash
sudo apt install mysql-server -y
sudo mysql_secure_installation
sudo ufw allow 8989
