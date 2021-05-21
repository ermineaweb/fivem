USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `weight`, `limit`, `rare`, `can_remove`) VALUES
	('weed', 'Feuilles de weed', 1, 200, 0, 1),
	('weed_pooch', 'Sachet de weed', 1, 50, 0, 1),
;

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Licence de transformation de la weed')
;
