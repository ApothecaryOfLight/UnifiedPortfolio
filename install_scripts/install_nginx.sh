#!/bin/bash
##Installs nginx and sets up ports.
sudo apt-get install nginx -y
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
sudo ufw allow ssh
sudo ufw enable

sudo cp nginx_default_conf /etc/nginx/sites-available/default

sudo cp nginx_configs/abesportfolio.com.config /etc/nginx/sites-available/default/abesportfolio.com.config
sudo cp nginx_configs/cineflix.video.config /etc/nginx/sites-available/default/cineflix.video.config
sudo cp nginx_configs/oinker.xyz.config /etc/nginx/sites-available/default/oinker.xyz.config
sudo cp nginx_configs/triviacards.net.config /etc/nginx/sites-available/default/triviacards.net.config