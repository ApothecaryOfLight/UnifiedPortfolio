#!/bin/bash
##Installs nginx and sets up ports.
sudo apt-get install nginx -y
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
sudo ufw allow ssh
sudo ufw enable