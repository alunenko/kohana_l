CREATE DATABASE `kohana` /*!40100 COLLATE 'utf8_general_ci' */;

USE kohana;

CREATE TABLE Page
(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64),
description VARCHAR(128),
alias VARCHAR(128)
);

CREATE TABLE News
(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64),
description VARCHAR(128),
content TEXT,
alias VARCHAR(128),
status VARCHAR(32),
image_id INT(6)
);

CREATE TABLE Gallery
(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64),
alias VARCHAR(128),
status VARCHAR(32),
image_id INT(6)
);

CREATE TABLE Image
(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64),
name VARCHAR(128)
);

CREATE TABLE Post
(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content TEXT,
alias VARCHAR(128),
status VARCHAR(32),
image_id INT(6)
);

CREATE TABLE Product
(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64),
description VARCHAR(128),
content TEXT,
alias VARCHAR(128),
status VARCHAR(32),
image_id INT(6)
);