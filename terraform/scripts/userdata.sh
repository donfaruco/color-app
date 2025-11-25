#!/bin/bash

#Run all latest updates
sudo apt update -y

#Install Apache
sudo apt install -y apache2

#Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

#Get App and deploy
sudo git clone https://github.com/donfaruco/demo-for-cicd.git /opt/staging/myapp
sudo cp /opt/staging/myapp/index.html /var/www/html/index.html
