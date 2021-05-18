USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_moneyfirst', 'Money First', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_moneyfirst', 'Money First', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_moneyfirst', 'Money First', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('moneyfirst', 'Money First')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('moneyfirst',0,'prospect','Prospect',200,'{}','{}'),
	('moneyfirst',1,'enforcer','Enforcer',400,'{}','{}'),
	('moneyfirst',2,'lieutenant','Lieuteant',600,'{}','{}'),
	('moneyfirst',3,'vicepresident','Vice President',800,'{}','{}'),
	('moneyfirst',4,'boss','President',1000,'{}','{}')
;
