

apt-get update

apt-get install -y apache2 apache2-doc apache2-utils mysql-server

apt-get install -y apache2 php5 php5-gd php5-mysql php5-curl php5-xsl php5-cli php-pear unzip

service apache2 restart

wget https://github.com/scorpio7x/php5.3/raw/master/info.php

sudo mv -fv info.php /var/www

apt-get install -y lame gcc make

wget https://github.com/scorpio7x/PHPMotion/raw/master/libogg-1.3.0.tar.gzip

tar -xvf libogg-1.3.0.tar.gzip

cd libogg-1.3.0

./configure

make

make install

cd ..

wget https://github.com/scorpio7x/PHPMotion/raw/master/libvorbis-1.3.3.tar.gzip

tar -xvf libvorbis-1.3.3.tar.gzip

cd libvorbis-1.3.3

./configure

make

make install

apt-get install -y mencoder ffmpeg flvtool2

wget https://github.com/scorpio7x/PHPMotion/raw/master/php.ini

sudo mv -fv php.ini /etc/php5/cli/

cd ..

service apache2 restart

wget https://github.com/scorpio7x/PHPMotion/raw/master/phpmotion.zip
	
unzip phpmotion.zip

mv -fv phpmotion /var/www/

cd /var/www/phpmotion/

chmod -Rf 755 cgi-bin/
chmod -R 777 addons
chmod -R 777 uploads
chmod -R 777 classes
chmod -R 777 logs
chmod -R 777 setup
chmod -R 777 pictures
chmod -R 777 temp

cd ..

wget https://github.com/scorpio7x/PHPMotion/raw/master/phpmotion.conf

sudo mv -fv phpmotion.conf /etc/apache2/sites-available/phpmotion.conf

ln -s /etc/apache2/sites-available/phpmotion.conf /etc/apache2/sites-enabled/phpmotion.conf

a2enmod rewrite

wget https://github.com/scorpio7x/PHPMotion/raw/master/ixed.5.3

sudo mv -fv ixed.5.3 /usr/lib/php5/20090626+lfs/

wget https://github.com/scorpio7x/PHPMotion/raw/master/ixed.5.3.ini

sudo mv -fv ixed.5.3.ini /etc/php5/conf.d/ixed.5.3.ini

service apache2 restart

chown www-data:www-data -R /var/www/phpmotion/

mysql_secure_installation

mysql -u root -p

	CREATE DATABASE phpmotiondb;
 	CREATE USER 'phpmotionuser'@'localhost' IDENTIFIED BY 'Pa$$worD';
 	GRANT ALL PRIVILEGES ON phpmotiondb.* TO 'phpmotionuser'@'localhost';
 	FLUSH PRIVILEGES;
 	EXIT;
	



























