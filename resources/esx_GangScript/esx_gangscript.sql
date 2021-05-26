INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_ballas', 'Ballas', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_ballas', 'Gang', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_ballas', 'Gang', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ballas', 'Gang des ballas', 1);

-- make sure to add it for each gang :P 
INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('ballas', 0, 'rank1', 'Recrue', 1500, '{}', '{}'),
('ballas', 1, 'rank2', 'Membre', 1800, '{}', '{}'),
('ballas', 2, 'rank3', 'Bras droit', 2100, '{}', '{}'),
('ballas', 3, 'rank4', 'Boss', 2700, '{}', '{}');