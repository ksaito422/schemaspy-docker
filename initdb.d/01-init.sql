CREATE TABLE `pokemon` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);
 
CREATE TABLE `type` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL
);
 
CREATE TABLE `waza` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `type_id` INT NOT NULL,
    FOREIGN KEY (`type_id`) REFERENCES `type`(`id`)
);
 
CREATE TABLE `pokemon_type` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `pokemon_id` INT NOT NULL,
    `type_id` INT NOT NULL,
    FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon`(`id`),
    FOREIGN KEY (`type_id`) REFERENCES `type`(`id`)
);
 
CREATE TABLE `pokemon_waza` (
    `id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `pokemon_id` INT NOT NULL,
    `waza_id` INT NOT NULL,
    FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon`(`id`),
    FOREIGN KEY (`waza_id`) REFERENCES `waza`(`id`)
);
