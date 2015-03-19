CREATE DATABASE `kohana`;

USE kohana;

CREATE TABLE Image
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
createdAt timestamp NULL DEFAULT NULL COMMENT 'When was created',
updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
title VARCHAR(64) NOT NULL DEFAULT 'image title' COMMENT 'Image title',
name VARCHAR(128) NOT NULL COMMENT 'Link at this page'
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Single images';

CREATE TABLE Page
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
createdAt timestamp NULL DEFAULT NULL COMMENT 'When was created',
updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
title VARCHAR(64) NOT NULL DEFAULT 'page header' COMMENT 'Page header',
description VARCHAR(128) NULL COMMENT 'Small description after header',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page'
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Type of page with header and small description';

CREATE TABLE News
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
createdAt timestamp NULL DEFAULT NULL COMMENT 'When was created',
updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
title VARCHAR(64) NOT NULL DEFAULT 'news header' COMMENT 'News header',
description VARCHAR(128) NULL COMMENT 'Small description after header',
content TEXT NOT NULL COMMENT 'News content',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COMMENT 'Status. For example: publish/draft',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images'
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'News content';

CREATE TABLE Gallery
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
createdAt timestamp NULL DEFAULT NULL COMMENT 'When was created',
updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
title VARCHAR(64) NOT NULL DEFAULT 'gallery name' COMMENT 'Gallery name',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COMMENT 'Status. For example: publish/draft',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images'
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Images collected in proups';

CREATE TABLE Post
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
createdAt timestamp NULL DEFAULT NULL COMMENT 'When was created',
updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
content TEXT NOT NULL COMMENT 'Post content',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COMMENT 'Status. For example: publish/draft',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images'
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Post';

CREATE TABLE Product
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
createdAt timestamp NULL DEFAULT NULL COMMENT 'When was created',
updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
title VARCHAR(64) NOT NULL DEFAULT 'product name' COMMENT 'Product name',
description VARCHAR(128) NULL COMMENT 'Small description after header',
content TEXT NOT NULL COMMENT 'About product',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COMMENT 'Status. For example: publish/draft',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images'
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Product';