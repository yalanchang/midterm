CREATE DATABASE product;

USE `product`;

CREATE TABLE `products`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT,
    `name`  VARCHAR(100),
    `category_id`  INT NOT NULL,
    `description`  TEXT,
    `price` INT NOT NULL,
    `quantity` INT NOT NULL,
    `create_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_at`  DATETIME DEFAULT CURRENT_TIMESTAMP,
    `is_valid` TINYINT  DEFAULT 1,
    `style` VARCHAR(255),
    FOREIGN KEY (`user_id`) REFERENCES users(id),
    FOREIGN KEY (`category_id`) REFERENCES products_category(category_id)


)


CREATE TABLE `users`(
`id`  INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`name` VARCHAR(30),
`birthday` DATE,
`email`  VARCHAR(30),
`password`  VARCHAR(100),
`phone`  VARCHAR(30),
`postcode`  VARCHAR(10),
`city`  VARCHAR(255),
`area`  VARCHAR(255),
`address`  VARCHAR(50),
`level_id`  INT NOT NULL,
`created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
`total_spent` INT,
`is_valid` TINYINT NOT NULL DEFAULT 1,
`role_id` INT NOT NULL
);

INSERT INTO users (`id`, `level_id`,`role_id`) VALUES (1,1,99);


SET foreign_key_checks = 0;
SET foreign_key_checks = 1;

INSERT INTO users (`id`, `level_id`,`role_id`) VALUES (1,1,99);
INSERT INTO `products` (
  `id`,`user_id`, `name`, `category_id`, `description`,
  `price`, `quantity`, `create_at`, `update_at`,
  `is_valid`
) VALUES
  (1,1,'無印風化妝鏡','3', '木
  框圓鏡搭配小抽屜，簡約又兼具機能性。', 100, 10, NULL, NULL, 1),
  (2,2,'北歐風多功能茶几','1', '內藏抽屜與升降桌面，收納與實用性兼具。', 200, 20, NULL, NULL, 1);

CREATE TABLE `products_category`(
 `category_id`  INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 `category_name`  VARCHAR(30)
);

INSERT INTO products_category (category_name) VALUES
('客廳'),
('餐廳/廚房'),
('臥室'),
('兒童房'),
('辦公空間'),
('收納用品');

drop table `products`;

CREATE Table `product_img`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_id` INT NOT NULL,
    `img` VARCHAR(500),
    FOREIGN KEY (`product_id`) REFERENCES `products`(`id`))

SELECT * FROM `product_img`;
INSERT INTO `product_img` (`product_id`, `img`) VALUES
(1, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380105_PE961616_S4.jpg');
-- (2, 'https://www.ikea.com.tw/dairyfarm/tw/images/669/1366928_PE957217_S4.jpg'),
-- (3, 'https://www.ikea.com.tw/dairyfarm/tw/images/801/1380103_PE961614_S4.jpg'),
-- (4, 'https://www.ikea.com.tw/dairyfarm/tw/images/443/1144344_PE881791_S4.jpg'),
-- (5, 'https://www.ikea.com.tw/dairyfarm/tw/images/265/1326591_PE944300_S4.jpg'),
-- (6, 'https://www.ikea.com.tw/dairyfarm/tw/images/463/1146316_PE882984_S4.jpg'),
-- (7, 'https://www.ikea.com.tw/dairyfarm/tw/images/860/1386024_PE963590_S4.jpg'),
-- (8, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257458_PE925835_S4.jpg'),
-- (9, 'https://www.ikea.com.tw/dairyfarm/tw/images/574/1257459_PE925836_S4.jpg'),
-- (10, 'https://www.ikea.com.tw/dairyfarm/tw/images/457/1245761_PE921756_S4.jpg');




CREATE TABLE `style`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_id` INT NOT NULL,
    `des` VARCHAR(255),
     FOREIGN KEY (`product_id`) REFERENCES `products`(`id`)
)

INSERT INTO style (`product_id`, `des`) VALUES
(1, '北歐簡約風'),
(2, '現代極簡風'),
(3, '工業復古風'),
(4, '日式禪園風'),
(5, '美式鄉村風'),
(6, '法式優雅風'),
(7, '輕奢設計風'),
(8, '無印自然風');

DROP DATABASE `product`;
DESC `products`;
`
SELECT * FROM `products_category`;

DROP TABLE `products_category`

DELETE from `style`;
SELECT  * from `products`  WHERE `id` = 132;


SHOW TABLES;

SHOW TABLES LIKE 'products_category';
SELECT * FROM `products_category`;

SELECT * FROM `product_img`;
SELECT * FROM `products`;


SELECT * FROM `style`;

SELECT `products`.*, GROUP_CONCAT(`product_img`.`img` SEPARATOR ',') AS `imgs`
FROM `products`
LEFT JOIN `product_img` ON `products`.`id` = `product_img`.`product_id`
WHERE `products`.`id` = 132
GROUP BY `products`.`id`;



DESC `products`;
DESC `product_img`;

SELECT GROUP_CONCAT(`img` SEPARATOR ',') AS `imgs`
FROM `product_img`
WHERE `product_id` = 13;