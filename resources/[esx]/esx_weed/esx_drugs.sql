USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('weed', 'Feuilles de weed', 0.01, 0, 1),
	('weed_pooch', 'Sachet de weed', 0.05, 0, 1),
;

INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Licence de transformation de la weed')
;
