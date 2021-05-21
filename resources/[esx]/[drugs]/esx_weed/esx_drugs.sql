USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('weed', 'Weed', 1, 200, 0, 1),
	('weed_pooch', 'Sachet de Weed', 1, 50, 0, 1),
	('meth', 'Meth', 1, 150, 0, 1),
	('meth_pooch', 'Sachet de Meth', 1, 25, 0, 1),
	('coke', 'Cocaine', 1, 150, 0, 1),
	('coke_pooch', 'Sachet de Cocaine', 1, 25, 0, 1),
	('opium', 'Opium', 1, 150, 0, 1),
	('opium_pooch', 'Sachet d\'Opium', 1, 25, 0, 1)
;

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Licence de transformation de la weed')
;


