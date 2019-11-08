
CREATE  TABLE IF NOT EXISTS `candidates` (
   candidate_id INT AUTO_INCREMENT NOT NULL,
 `candidate_name` VARCHAR(50) NULL DEFAULT NULL,
	`center_id` INT UNSIGNED,
	`category_id` INT UNSIGNED,
  PRIMARY KEY (`candidate_id`) )
ENGINE = InnoDB


INSERT INTO `candidates` (`candidate_id`, `candidate_name`, `center_id`, `category_id`) VALUES
	(1, 'lekan', 1, 1),
	(2, 'luqman', 2, 2),
	(4, 'kunle', 2, 2),
	(5, 'wale', 2, 2),
	(3, 'tosin', 2, 2),
	(6, 'zeer', 6, 8),
	(8, 'amheed', 8, 3),
	(9, 'shade', 9, 3),
	(10, 'shy', 19, 3),
	(7, 'zercom', 7, 3);


CREATE  TABLE IF NOT EXISTS `subjects` (
   subject_id INT AUTO_INCREMENT NOT NULL,
 `subject_name` VARCHAR(50) NULL DEFAULT NULL,
	`category_id` INT UNSIGNED,
  PRIMARY KEY (`subject_id`) )
ENGINE = InnoDB

INSERT INTO `subjects` (`categories_id`, `category_name`, `category_id`) VALUES
	(2, 'English', 1),
	(4, 'OGG',3),
	(5, 'Kim', 4),
	(3, 'Chemisty',4),
	(6, 'Lake',5),
	(7, 'Geo',6),
	(8, 'Phy',4),
	(9, 'Zer',3),
	(1, 'Maths',2),
	(11, 'Bio',1),
	(12, 'FMaths',1),
	(13, 'Computer',1),
	(14, 'IntroTech',2),
	(15, 'Vscode',2),
	(15, 'PHP',1),
	(17, 'Javascript',1),
	(18, 'Java',1),
	(19, 'Objc',2),
	(20, 'Code',2),
	(10, 'Acct',2);



CREATE  TABLE IF NOT EXISTS `centers` (
   center_id INT AUTO_INCREMENT NOT NULL,
 `center_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`center_id`) )
ENGINE = InnoDB

INSERT INTO `centers` (`center_id`, `center_name`) VALUES
	(1, 'Lagos'),
	(3, 'Kaduna'),
	(4, 'Kebbi'),
	(2, 'Kano');


CREATE  TABLE IF NOT EXISTS `categories` (
   center_id INT AUTO_INCREMENT NOT NULL,
 `category_name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`category_name`) )
ENGINE = InnoDB


INSERT INTO `categories` (`center_id`, `category_name`) VALUES
	(1, 'Science'),
	(2, 'Art'),
	(3, 'Commercial'),
	