DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers (

 id Integer AUTO_INCREMENT NOT NULL, 
burger_name VARCHAR(225) NOT NULL, 
devoured BOOLEAN,
PRIMARY KEY(id));