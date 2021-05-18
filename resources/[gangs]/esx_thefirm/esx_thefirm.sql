USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_thefirm', 'The Firm', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_thefirm', 'The Firm', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_thefirm', 'The Firm', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('thefirm', 'The Firm')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('thefirm',0,'prospect','Prospect',200,'{}','{}'),
	('thefirm',1,'enforcer','Enforcer',400,'{}','{}'),
	('thefirm',2,'lieutenant','Lieuteant',600,'{}','{}'),
	('thefirm',3,'vicepresident','Vice President',800,'{}','{}'),
	('thefirm',4,'boss','President',1000,'{}','{}')
;
