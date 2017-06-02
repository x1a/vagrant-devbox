# My Vagrant config for web development

* Box: ubuntu/xenial64
* Provisioner: SHELL

Installed software:

* PHP-7.0
    * curl
    * intl
    * mbstring
    * mcrypt
    * imagick
    * apcu
    * xdebug
* Nginx
* Mysql
* Nodejs-6.X, NPM
* Git, Subversion, screen, mc
* GoLang

## Installation
* Change box IP in Vagrantfile if necessary
* Add hostname devbox.vmdev.com to your hosts file
* vagrant up
* Open devbox.vmdev.com in browser

## More options
You can add more stuff before first vagrant up to setup your environment (executed once)
* Put bash executable scripts to vagrant/files/shell to prepare your environment
* Put SQL scripts to vagrant/files/mysql to create users, databases, etc.
(they will be run as mysql < /vagrant/files/mysql/anyscript.sql)
* Put SQL scripts for databases to vagrant/files/mysql/<dbname>
(they will be run as mysql <dbname> < /vagrant/files/mysql/<dbname>/anyscript.sql, use it e.g. for importing databases)
* Put additional configs for nginx virtual hosts to vagrant/files/nginx
* Put configs for additional PHP-FPM pools to vagrant/files/php/pool.d

## Requirements
Tested on Vagrant-1.9.5, Virtualbox-5.1.22

