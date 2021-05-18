USE `es_extended`;
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_crips', 'Crips', 1)
;
INSERT INTO `datastore` (name, label, shared) VALUES
	('society_crips', 'Crips', 1)
;
INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_crips', 'Crips', 1)
;
INSERT INTO `jobs` (name, label) VALUES
	('crips', 'Crips')
;
INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('crips',0,'prospect','Prospect',200,'{}','{}'),
	('crips',1,'enforcer','Enforcer',400,'{}','{}'),
	('crips',2,'lieutenant','Lieuteant',600,'{}','{}'),
	('crips',3,'vicepresident','Vice President',800,'{}','{}'),
	('crips',4,'boss','President',1000,'{}','{}')
;
