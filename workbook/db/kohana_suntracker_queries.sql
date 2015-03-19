CREATE DATABASE `kohana`;

USE kohana;

CREATE TABLE Image
(
id INT(11) UNSIGNED AUTO_INCREMENT,
title VARCHAR(64) NULL DEFAULT NULL COMMENT 'Image title',
file_name VARCHAR(128) NOT NULL COMMENT 'Filename',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
INDEX 'i_created_at' ('created_at'),
INDEX 'i_updated_at' ('updated_at')
PRIMARY KEY 'pk_id' ('id')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Single images';

CREATE TABLE Page
(
id INT(11) UNSIGNED AUTO_INCREMENT,
title VARCHAR(64) NOT NULL COMMENT 'Page header',
description VARCHAR(128) NULL DEFAULT NULL COMMENT 'Small description after header',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY 'pk_id' ('id'),
UNIQUE INDEX 'ui_alias' ('alias'),
INDEX 'i_status' ('status'),
INDEX 'i_created_at' ('created_at'),
INDEX 'i_updated_at' ('updated_at')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Type of page with header and small description';

CREATE TABLE News
(
id INT(11) UNSIGNED AUTO_INCREMENT,
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images',
title VARCHAR(64) NOT NULL COMMENT 'News header',
description VARCHAR(128) NULL DEFAULT NULL COMMENT 'Small description after header',
content TEXT NOT NULL COMMENT 'News content',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY 'pk_id' ('id'),
UNIQUE INDEX 'ui_alias' ('alias'),
INDEX 'i_image_id' ('image_id'),
INDEX 'i_created_at' ('created_at'),
INDEX 'i_updated_at' ('updated_at')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'News content';

CREATE TABLE Gallery
(
id INT(11) UNSIGNED AUTO_INCREMENT,
image_id INT(11) NOT NULL COMMENT 'Image id from Images',
title VARCHAR(64) NOT NULL COMMENT 'Gallery name',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY 'pk_id' ('id'),
UNIQUE INDEX 'ui_alias' ('alias'),
INDEX 'i_image_id' ('image_id'),
INDEX 'i_status' ('status'),
INDEX 'i_created_at' ('created_at'),
INDEX 'i_updated_at' ('updated_at')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Images collected in proups';

CREATE TABLE Post
(
id INT(11) UNSIGNED AUTO_INCREMENT,
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images',
content TEXT NOT NULL COMMENT 'Post content',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY 'pk_id' ('id'),
UNIQUE INDEX 'ui_alias' ('alias'),
INDEX 'i_image_id' ('image_id'),
INDEX 'i_status' ('status'),
INDEX 'i_created_at' ('created_at'),
INDEX 'i_updated_at' ('updated_at')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Post';

CREATE TABLE Product
(
id INT(11) UNSIGNED AUTO_INCREMENT,
image_id INT(11) NULL DEFAULT NULL COMMENT 'Image id from Images',
title VARCHAR(64) NOT NULL COMMENT 'Product name',
description VARCHAR(128) NULL DEFAULT NULL COMMENT 'Small description after header',
content TEXT NOT NULL COMMENT 'About product',
alias VARCHAR(128) NOT NULL COMMENT 'Link at this page',
status TINYINT(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Status. See Enum_Status',
created_at TIMESTAMP NULL DEFAULT NULL COMMENT 'When was created',
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was changed',
PRIMARY KEY 'pk_id' ('id'),
UNIQUE INDEX 'ui_alias' ('alias'),
INDEX 'i_image_id' ('image_id'),
INDEX 'i_status' ('status'),
INDEX 'i_created_at' ('created_at'),
INDEX 'i_updated_at' ('updated_at')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Product';

CREATE TABLE Page Relations
(
id INT(11) UNSIGNED AUTO_INCREMENT,
page_id INT(11) NOT NULL COMMENT 'Page id',
relation_id INT(11) NOT NULL COMMENT 'Relations id',
type TINYINT(1) UNSIGNED NOT NULL COMMENT 'Type of page. See Enum_Relations',
PRIMARY KEY 'pk_id' ('id'),
UNIQUE INDEX 'ui_page_relations' ('page_id', 'relation_id', 'type')
) CHARASET='utf8' COLLATE='utf8_general_ci' ENGINE=InnoDB COMMENT 'Page relation';