CREATE DATABASE `kohana`;

USE kohana;

CREATE TABLE IF NOT EXISTS `Image`
(
`id` INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
`title` VARCHAR(64) NULL DEFAULT NULL COMMENT 'Image title',
`filename` VARCHAR(128) NOT NULL COMMENT 'File name',
`created_at` TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY `pk_id` (`id`),
INDEX `i_created_at` (`created_at`),
INDEX `i_updated_at` (`updated_at`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Single images';

CREATE TABLE IF NOT EXISTS `Page`
(
`id` INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
`title` VARCHAR(64) NOT NULL COMMENT 'Page header',
`description` VARCHAR(128) NULL DEFAULT NULL COMMENT 'Small description after header',
`alias` VARCHAR(128) NOT NULL COMMENT 'Link at this page',
`status` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
`created_at` TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY `pk_id` (`id`),
UNIQUE INDEX `ui_alias` (`alias`),
INDEX `i_status` (`status`),
INDEX `i_created_at` (`created_at`),
INDEX `i_updated_at` (`updated_at`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Type of page with header and small description';

CREATE TABLE IF NOT EXISTS `News`
(
`id` INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
`image_id` INT(11) NULL DEFAULT NULL COMMENT 'Foreign key for table Image. Image id from Images',
`title` VARCHAR(64) NOT NULL COMMENT 'News header',
`description` VARCHAR(128) NULL DEFAULT NULL COMMENT 'Small description after header',
`content` TEXT NOT NULL COMMENT 'News content',
`alias` VARCHAR(128) NOT NULL COMMENT 'Link at this page',
`status` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
`created_at` TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
`updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY `pk_id` (`id`),
UNIQUE INDEX `ui_alias` (`alias`),
INDEX `i_image_id` (`image_id`),
INDEX `i_created_at` (`created_at`),
INDEX `i_updated_at` (`updated_at`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'News content';

CREATE TABLE IF NOT EXISTS `Gallery`
(
id INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Foreign key for table Image. Image id from Images',
title VARCHAR(64) NOT NULL COMMENT 'Gallery name',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY `pk_id` (`id`),
UNIQUE INDEX `ui_alias` (`alias`),
INDEX `i_image_id` (`image_id`),
INDEX `i_status` (`status`),
INDEX `i_created_at` (`created_at`),
INDEX `i_updated_at` (`updated_at`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Images collected in proups';

CREATE TABLE IF NOT EXISTS `Post`
(
id INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Foreign key for table Image. Image id from Images',
content TEXT NOT NULL COMMENT 'Post content',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY `pk_id` (`id`),
UNIQUE INDEX `ui_alias` (`alias`),
INDEX `i_image_id` (`image_id`),
INDEX `i_status` (`status`),
INDEX `i_created_at` (`created_at`),
INDEX `i_updated_at` (`updated_at`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Post';

CREATE TABLE IF NOT EXISTS `Product`
(
id INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
image_id INT(11) NULL DEFAULT NULL COMMENT 'Foreign key for table Image. Image id from Images',
title VARCHAR(64) NOT NULL COMMENT 'Product name',
description VARCHAR(128) NULL DEFAULT NULL COMMENT 'Small description after header',
content TEXT NOT NULL COMMENT 'About product',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY `pk_id` (`id`),
UNIQUE INDEX `ui_alias` (`alias`),
INDEX `i_image_id` (`image_id`),
INDEX `i_status` (`status`),
INDEX `i_created_at` (`created_at`),
INDEX `i_updated_at` (`updated_at`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Product';

CREATE TABLE  IF NOT EXISTS `PageRelations`
(
id INT(11) NOT NULL UNSIGNED AUTO_INCREMENT COMMENT 'Primary key',
page_id INT(11) NOT NULL COMMENT 'Page id',
relation_id INT(11) NOT NULL COMMENT 'Relations id',
type TINYINT(1) UNSIGNED NOT NULL COMMENT 'Type of page. See Enum_Relations',
PRIMARY KEY `pk_id` (`id`),
UNIQUE INDEX `ui_page_relations` (`page_id`, `relation_id`, `type`)
) DEFAULT CHARSET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Page relation';