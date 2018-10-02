
CREATE DATABASE testdb;
CREATE USER `vagrant`@`localhost` IDENTIFIED BY 'secret';
GRANT ALL ON testdb.* TO `vagrant`@`localhost`;

CREATE USER `root`@`%`;
GRANT ALL ON *.* TO `root`@`%`;

UPDATE `mysql`.`user` SET plugin = 'mysql_native_password' WHERE `User` = 'root';
