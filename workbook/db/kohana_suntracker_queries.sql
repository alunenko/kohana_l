CREATE DATABASE `kohana`;

USE kohana;

CREATE TABLE Image
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64) NOT NULL DEFAULT 'image title' COLLATE 'utf8_general_ci' COMMENT 'Image title',
name VARCHAR(128) NOT NULL DEFAULT '/path/to/img' COLLATE 'utf8_general_ci' COMMENT 'Link at this page'
) DEFAULT CHARACTER SET utf8 DEFAULT COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Single images';

CREATE TABLE Page
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64) NOT NULL DEFAULT 'page header' COLLATE 'utf8_general_ci' COMMENT 'Page header',
description VARCHAR(128) NULL COLLATE 'utf8_general_ci' COMMENT 'Small description after header',
alias VARCHAR(128) NOT NULL DEFAULT '/link/to/page/' COLLATE 'utf8_general_ci' COMMENT 'Link at this page'
) DEFAULT CHARACTER SET utf8 DEFAULT COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Type of page with header and small description';

CREATE TABLE News
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64) NOT NULL DEFAULT 'news header' COLLATE 'utf8_general_ci' COMMENT 'News header',
description VARCHAR(128) NULL COLLATE 'utf8_general_ci' COMMENT 'Small description after header',
content TEXT NOT NULL COLLATE 'utf8_general_ci' COMMENT 'News content',
alias VARCHAR(128) NOT NULL DEFAULT '/link/to/page/' COLLATE 'utf8_general_ci' COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COLLATE 'utf8_general_ci' COMMENT 'Status. For example: publish/draft',
image_id INT(11)
) DEFAULT CHARACTER SET utf8 DEFAULT COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'News content';

CREATE TABLE Gallery
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64) NOT NULL DEFAULT 'gallery name' COLLATE 'utf8_general_ci' COMMENT 'Gallery name',
alias VARCHAR(128) NOT NULL DEFAULT '/link/to/page/' COLLATE 'utf8_general_ci' COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COLLATE 'utf8_general_ci' COMMENT 'Status. For example: publish/draft',
image_id INT(11)
) CHARACTER SET utf8 DEFAULT COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Images collected in proups';

CREATE TABLE Post
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content TEXT NOT NULL COMMENT 'Post content',
alias VARCHAR(128) NOT NULL DEFAULT '/link/to/page/' COLLATE 'utf8_general_ci' COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COLLATE 'utf8_general_ci' COMMENT 'Status. For example: publish/draft',
image_id INT(11)
) DEFAULT CHARACTER SET utf8 DEFAULT COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Post';

CREATE TABLE Product
(
id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64) NOT NULL DEFAULT 'product name' COLLATE 'utf8_general_ci' COMMENT 'Product name',
description VARCHAR(128) NULL COLLATE 'utf8_general_ci' COMMENT 'Small description after header',
content TEXT NOT NULL COLLATE 'utf8_general_ci' COMMENT 'About product',
alias VARCHAR(128) NOT NULL DEFAULT '/link/to/page/' COLLATE 'utf8_general_ci' COMMENT 'Link at this page',
status VARCHAR(32) NOT NULL DEFAULT 'draft' COLLATE 'utf8_general_ci' COMMENT 'Status. For example: publish/draft',
image_id INT(11)
) DEFAULT CHARACTER SET utf8 DEFAULT COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Product';