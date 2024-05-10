-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'posts'
-- 
-- ---

DROP TABLE IF EXISTS `posts`;
		
CREATE TABLE `posts` (
  `id` INT NOT NULL AUTO_INCREMENT DEFAULT NOT NULL,
  `id_users` INT NOT NULL DEFAULT NULL,
  `comments` VARCHAR(2000) NOT NULL DEFAULT 'NULL',
  `title` VARCHAR(500) NULL DEFAULT NULL,
  `images` VARCHAR NOT NULL DEFAULT 'NULL',
  `videos` VARCHAR NULL DEFAULT NULL,
  `links` VARCHAR(400) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `first_name` VARCHAR(100) NOT NULL DEFAULT 'NOT NULL',
  `surname` VARCHAR(100) NOT NULL DEFAULT 'NULL',
  `email` VARCHAR(200) NOT NULL DEFAULT 'NOT NULL',
  `password_register` VARCHAR(10) NOT NULL DEFAULT 'NULL',
  `phone` INT NOT NULL DEFAULT NULL,
  `date of birth` TIMESTAMP NULL DEFAULT NULL,
  `tastes` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'OSC's'
-- 
-- ---

DROP TABLE IF EXISTS `OSC's`;
		
CREATE TABLE `OSC's` (
  `id` INT NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(100) NOT NULL DEFAULT 'NULL',
  `area` VARCHAR(100) NOT NULL DEFAULT 'NULL',
  `market` VARCHAR NOT NULL DEFAULT 'NULL',
  `goals` VARCHAR(100) NULL DEFAULT NULL,
  `cnpj` INT NOT NULL DEFAULT NULL,
  `site` VARCHAR(500) NULL DEFAULT NULL,
  `contact_number` INT NULL DEFAULT NULL,
  `id_users` INT NOT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'opportunities '
-- 
-- ---

DROP TABLE IF EXISTS `opportunities `;
		
CREATE TABLE `opportunities ` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `title` VARCHAR(500) NOT NULL DEFAULT 'NULL',
  `description` VARCHAR(1000) NOT NULL DEFAULT 'NULL',
  `interest_area` VARCHAR(100) NOT NULL DEFAULT 'NULL',
  `number_vacancies` INT NOT NULL DEFAULT NULL,
  `date_post` DATETIME NOT NULL DEFAULT 'NULL',
  `videos` INTEGER NULL DEFAULT NULL,
  `images` INTEGER NULL DEFAULT NULL,
  `links` VARCHAR(500) NULL DEFAULT NULL,
  `id_users` INT NOT NULL DEFAULT NULL,
  `id_OSC's` INT NOT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'registration_opportunities '
-- 
-- ---

DROP TABLE IF EXISTS `registration_opportunities `;
		
CREATE TABLE `registration_opportunities ` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `links` VARCHAR(500) NULL DEFAULT NULL,
  `goals` VARCHAR(500) NULL DEFAULT NULL,
  `id_users` INT NOT NULL DEFAULT NULL,
  `id_OSC's` INT NOT NULL DEFAULT NULL,
  `id_opportunities ` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `posts` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `OSC's` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `opportunities ` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `opportunities ` ADD FOREIGN KEY (id_OSC's) REFERENCES `OSC's` (`id`);
ALTER TABLE `registration_opportunities ` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `registration_opportunities ` ADD FOREIGN KEY (id_opportunities ) REFERENCES `opportunities ` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `posts` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `OSC's` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `opportunities ` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `registration_opportunities ` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `posts` (`id`,`id_users`,`comments`,`title`,`images`,`videos`,`links`) VALUES
-- ('','','','','','','');
-- INSERT INTO `users` (`id`,`first_name`,`surname`,`email`,`password_register`,`phone`,`date of birth`,`tastes`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `OSC's` (`id`,`name`,`area`,`market`,`goals`,`cnpj`,`site`,`contact_number`,`id_users`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `opportunities ` (`id`,`title`,`description`,`interest_area`,`number_vacancies`,`date_post`,`videos`,`images`,`links`,`id_users`,`id_OSC's`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO `registration_opportunities ` (`id`,`links`,`goals`,`id_users`,`id_OSC's`,`id_opportunities `) VALUES
-- ('','','','','','');