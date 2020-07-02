DROP DATABASE IF EXISTS xisag02jpasgn5h2;
CREATE DATABASE xisag02jpasgn5h2;
USE xisag02jpasgn5h2;

CREATE TABLE burgers (

 id Integer AUTO_INCREMENT NOT NULL, 
burger_name VARCHAR(225) NOT NULL, 
devoured BOOLEAN DEFAULT false,
PRIMARY KEY(id));