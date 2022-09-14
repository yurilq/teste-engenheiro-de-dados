CREATE DATABASE IF NOT EXISTS teste;
USE teste;

CREATE TABLE IF NOT EXISTS products (
id INT(5) AUTO_INCREMENT PRIMARY KEY,
nome varchar(255),
price decimal(10,2)
)ENGINE=MyISAM;


insert into products value(0, "Curso Front-end", 2500);
insert into products value(0, "Curso JS Fullstack", 900);
