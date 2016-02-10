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
* Nodejs
* Gulp
    * gulp-autoprefixer
    * gulp-concat-css
    * gulp-cssnano
    * gulp-rename
    * gulp-sass
    * gulp-less
    * gulp-compass
    * gulp-stylus
    * gulp-coffee
    * gulp-jade
    * gulp-uncss
    * gulp-uglify
    * del
* Git, Subversion, screen, mc
* GoLang

## Installation
* Change box IP in Vagrantfile if necessary
* Add hostname devbox.vmdev.com to hosts file
* vagrant up
* Open devbox.vmdev.com in browser

