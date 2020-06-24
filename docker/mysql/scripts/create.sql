USE DEMO;

DROP TABLE IF EXISTS `foo`;

CREATE TABLE `foo` (
	`id` INT(11) NOT NULL,
	`name` VARCHAR(255) NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE
)
ENGINE=InnoDB  DEFAULT CHARSET=utf8;