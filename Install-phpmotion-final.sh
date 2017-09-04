#!/bin/bash

sudo apt-get update

sudo apt-get install -y apache2 php5 mysql-server

sudo apt-get install -y ffmpeg flvtool2 mencoder lame libogg0 php5-ffmpeg php5-curl curl libapache2-mod-php5 php5-mysql lynx-cur libapache2-mod-speedycgi

sudo wget https://github.com/scorpio7x/PHPMotion/raw/master/phpmotion.zip

sudo unzip phpmotion.zip

sudo mv -fv phpmotion /var/www/

cd /var/www/phpmotion/

sudo chmod -Rf 744 *
sudo chmod -Rf 775 cgi-bin/
sudo chmod -R 777 addons
sudo chmod -R 777 uploads
sudo chmod -R 777 classes
sudo chmod -R 777 logs
sudo chmod -R 777 setup
sudo chmod -R 777 pictures
sudo chmod -R 777 temp
sudo chmod -R 775 siteadmin

cd ..

sudo wget https://github.com/scorpio7x/PHPMotion/raw/master/phpmotion.conf

sudo mv -fv phpmotion.conf /etc/apache2/sites-available/phpmotion.conf

sudo ln -s /etc/apache2/sites-available/phpmotion.conf /etc/apache2/sites-enabled/phpmotion.conf

sudo a2enmod rewrite

sudo wget https://github.com/scorpio7x/PHPMotion/raw/master/ixed.5.3

sudo mv -fv ixed.5.3 /usr/lib/php5/20090626+lfs/

sudo wget https://github.com/scorpio7x/PHPMotion/raw/master/ixed.5.3.ini

sudo mv -fv ixed.5.3.ini /etc/php5/conf.d/ixed.5.3.ini

sudo chown www-data:www-data -Rf /var/www/phpmotion/

sudo service apache2 restart
