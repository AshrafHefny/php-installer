#!/bin/bash

echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│                  PHP Installer                     │ "
echo " #	│                                                    │ "
echo " #	│                  Ahmed Ashraf                      │ "
echo " #	│                                                    │ "
echo " #	│           @ahmedash95 | ahmedash95.com             │ "
echo " #	│                                                    │ "
echo " #	│  Install Your PHP Environment With Only One Script │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "

##############
#update Distro
##############

echo " "
echo "#####################################"
echo "At first i need to update your DISTRO"
echo "#####################################"
echo " "

sudo apt-get update -y


echo " "
echo "########################"
echo "INSTALLING Git          "
echo "########################"
echo " "
sudo apt-get install git

echo " "
echo "########################"
echo "INSTALLING APACHE SERVER"
echo "########################"
echo " "

sudo apt-get install apache2 -y 


echo " "
echo "##############"
echo "INSTALLING PHP"
echo "##############"
echo " "
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2

echo " "
echo "##############"
echo "INSTALLING PHP Important Extensions"
echo "##############"
echo " "

sudo apt-get install php7.2-mcrypt
sudo apt-get install php7.2-curl
sudo apt-get install php7.2-zip
sudo apt-get install php7.2-dom
sudo apt-get install php7.2-gd
sudo apt-get install php7.2-intl
sudo apt-get install php7.2-mbstring


echo " "
echo "#########################"
echo "INSTALLING MYSQL DATABASE"
echo "#########################"
echo " "
sudo apt-get install mysql-server libapache2-mod-auth-mysql -y

sudo sudo apt-get install php7.2-mysql -y

sudo mysql_install_db

sudo /usr/bin/mysql_secure_installation

echo " "
echo "#####################"
echo "INSTALLING PHPMYADMIN"
echo "#####################"
echo " "

sudo apt-get install phpmyadmin apache2-utils -y
#echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf
git clone https://github.com/phpmyadmin/phpmyadmin /var/www/html/phpmyadmin

echo " "
echo "###########################"
echo "Enable Apache Rewrite Mode"
echo "###########################"
echo " "

sudo a2enmod rewrite


echo " "
echo "#################"
echo "RESTARTING APACHE"
echo "#################"
echo " "

sudo service apache2 restart



echo " "
echo "########################"
echo "INSTALL CURL & COMPOSER"
echo "########################"
echo " "


sudo apt-get install curl -y

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer


echo " "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " #	│                                                    │ "
echo " #	│          Done ................                     │ "
echo " #	│                                                    │ "
echo " #	│▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒│ "
echo " "
