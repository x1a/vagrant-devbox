
CREATE DATABASE testdb;
CREATE DATABASE vagrant;
CREATE USER `vagrant`@`localhost` IDENTIFIED BY 'secret';
GRANT ALL ON vagrant.* TO `vagrant`@`localhost`;

UPDATE `mysql`.`user` SET plugin = 'mysql_native_password' WHERE `User` = 'root';
