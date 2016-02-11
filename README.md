# My Vagrant config for web development

* Box: ubuntu/wily64
* Provisioner: SHELL

Installed software:

* PHP-5.6
    * mysqlnd
    * curl
    * intl
    * imagick
    * mcrypt
    * apcu
    * xdebug
* Nginx
* Mysql
* Nodejs-4.X, NPM
* Git, Subversion, screen, mc
* GoLang

## Installation
* Change box IP in Vagrantfile if necessary
* Add hostname devbox.vmdev.com to hosts file
* vagrant up
* Open devbox.vmdev.com in browser

