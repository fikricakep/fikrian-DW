SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `category_id` int(11) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`, `name`, `category_id`) VALUES
(1, 'Shampoo', 1),
(2, 'Sikat Gigi', 1),
(3, 'Indomie', 2),
(4, 'Mie Sedap', 3),
(5, 'Nugget', 3),

-- --------------------------------------------------------

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `product_categories` (`id`, `name`) VALUES
(1, 'Peralatan Mandi'),
(2, 'Mie'),
(3, 'Olahan Daging');
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`);
COMMIT;