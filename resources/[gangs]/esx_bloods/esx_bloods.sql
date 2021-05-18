USE `es_extended`;
INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_bloods', 'Bloods', 1)
;
INSERT INTO `datastore` (name, label, shared) VALUES
	('society_bloods', 'Bloods', 1)
;
INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_bloods', 'Bloods', 1)
;
INSERT INTO `jobs` (name, label) VALUES
	('bloods', 'Bloods')
;
INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('bloods',0,'prospect','Prospect',200,'{}','{}'),
	('bloods',1,'enforcer','Enforcer',400,'{}','{}'),
	('bloods',2,'lieutenant','Lieuteant',600,'{}','{}'),
	('bloods',3,'vicepresident','Vice President',800,'{}','{}'),
	('bloods',4,'boss','President',1000,'{}','{}')
;
