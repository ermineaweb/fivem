ALTER TABLE `items` CHANGE COLUMN `weight` `weight` FLOAT NOT NULL DEFAULT 1;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('coke', 'Cocaine', 0.01, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('coke_pooch', 'Sachet de cocaine', 0.05, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('opium', 'Opium', 0.01, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('opium_pooch', 'Sachet d''opium', 0.05, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('weed', 'Weed', 0.01, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES ('weed_pooch', 'Sachet de weed', 0.05, 0, 1);