# My Vagrant config for web development

* Box: ubuntu/xenial64
* Provisioner: SHELL

Installed software:

* PHP-7.2
    * curl
    * intl
    * mbstring
    * imagick
    * apcu
    * xdebug
* Nginx
* Mysql
* Nodejs-9.X, NPM
* Git, Subversion, mc
* GoLang

## Installation
* Change your box IP in Vagrantfile if necessary
* Add hostname devbox.vmdev.com to your hosts file
* vagrant up
* vagrant reload
* Open devbox.vmdev.com in a browser

## More options
You can add more stuff before first vagrant up to setup your environment (executed once)
* Put bash executable scripts to vagrant/files/shell to prepare your environment
* Put SQL scripts to vagrant/files/mysql to create users, databases, etc.
(they will be run as mysql < /vagrant/files/mysql/anyscript.sql)
* Put SQL scripts for databases to vagrant/files/mysql/&lt;dbname&gt;
(they will be run as mysql <dbname> < /vagrant/files/mysql/&lt;dbname&gt;/anyscript.sql, use it e.g. for importing databases)
* Put additional configs for nginx virtual hosts to vagrant/files/nginx
* Put configs for additional PHP-FPM pools to vagrant/files/php/pool.d

## Requirements
Tested on Vagrant-2.0.1, Virtualbox-5.1.30

