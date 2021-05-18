USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_londonkings', 'London Kings', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_londonkings', 'London Kings', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_londonkings', 'London Kings', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('londonkings', 'London Kings')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('londonkings',0,'prospect','Prospect',200,'{}','{}'),
	('londonkings',1,'enforcer','Enforcer',400,'{}','{}'),
	('londonkings',2,'lieutenant','Lieuteant',600,'{}','{}'),
	('londonkings',3,'vicepresident','Vice President',800,'{}','{}'),
	('londonkings',4,'boss','President',1000,'{}','{}')
;
