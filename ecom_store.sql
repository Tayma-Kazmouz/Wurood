/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100418
 Source Host           : localhost:3306
 Source Schema         : ecom_store

 Target Server Type    : MySQL
 Target Server Version : 100418
 File Encoding         : 65001

 Date: 22/05/2021 16:25:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about_us
-- ----------------------------
DROP TABLE IF EXISTS `about_us`;
CREATE TABLE `about_us`  (
  `about_id` int NOT NULL AUTO_INCREMENT,
  `about_heading` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `about_short_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `about_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`about_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of about_us
-- ----------------------------
INSERT INTO `about_us` VALUES (1, 'Our Story', '\r\n\r\nSuccess is not final, failure is not fatal: it is the courage to continue that counts. - Winston Churchill\r\n', '\r\nWurood is proud to serve Istanbul with its special floral arrangments. We are a one-location, friend-owned (Besiktas). We are dedicated to providing only the best floral arrangements and gifts, as well as polite and timely service. Our knowledgeable staff is committed to making your experience a good one and all of our customers are valuable to us. That is why we still go above and beyond.\r\n');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `p_id` int NOT NULL,
  `ip_add` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `qty` int NOT NULL,
  `p_price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `size` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_top` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cat_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (2, 'Roses', 'no', '');
INSERT INTO `categories` VALUES (3, 'Orchids', 'no', '');
INSERT INTO `categories` VALUES (4, 'Violets', 'no', '');
INSERT INTO `categories` VALUES (5, 'Carnations', 'no', '');
INSERT INTO `categories` VALUES (6, 'Tulips', 'no', '');
INSERT INTO `categories` VALUES (7, 'Sunflowers', 'no', '');
INSERT INTO `categories` VALUES (8, 'Daisies', 'no', '');

-- ----------------------------
-- Table structure for contact_us
-- ----------------------------
DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE `contact_us`  (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `contact_email` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `contact_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`contact_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of contact_us
-- ----------------------------
INSERT INTO `contact_us` VALUES (1, 'whatever@anything.com', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `coupon_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `coupon_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_price` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `coupon_limit` int NOT NULL,
  `coupon_used` int NOT NULL,
  PRIMARY KEY (`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (1, 8, 'sunflowers', '10', '333444  ', 5, 1);
INSERT INTO `coupons` VALUES (2, 6, 'carnations', '20', '694200', 5, 1);

-- ----------------------------
-- Table structure for customer_orders
-- ----------------------------
DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE `customer_orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `due_amount` int NOT NULL,
  `invoice_no` int NOT NULL,
  `qty` int NOT NULL,
  `size` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer_orders
-- ----------------------------
INSERT INTO `customer_orders` VALUES (16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 11:21:42', 'pending');
INSERT INTO `customer_orders` VALUES (17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 11:21:42', 'pending');
INSERT INTO `customer_orders` VALUES (18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 11:21:42', 'pending');
INSERT INTO `customer_orders` VALUES (19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 11:26:47', 'pending');
INSERT INTO `customer_orders` VALUES (20, 2, 288, 909940689, 3, 'Large', '2017-02-27 14:06:32', 'complete');
INSERT INTO `customer_orders` VALUES (21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 14:06:37', 'complete');
INSERT INTO `customer_orders` VALUES (22, 6, 60, 999310984, 1, 'Small (3 pieces)', '2021-05-14 04:20:15', 'Complete');
INSERT INTO `customer_orders` VALUES (23, 7, 10, 334642094, 1, 'Small (3 pieces)', '2021-05-20 23:39:06', 'Complete');
INSERT INTO `customer_orders` VALUES (24, 7, 40, 724100346, 1, 'Small (3 pieces)', '2021-05-16 05:23:26', 'Complete');
INSERT INTO `customer_orders` VALUES (25, 7, 50, 1708867829, 1, 'Small (3 pieces)', '2021-05-20 16:30:04', 'pending');
INSERT INTO `customer_orders` VALUES (26, 11, 120, 124055521, 3, 'Small (3 pieces)', '2021-05-22 16:16:05', 'Complete');

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_country` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_city` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_contact` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `customer_ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `customer_confirm_code` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (11, 'User1', 'user1email@gmail.com', 'user1pass!', 'Saudi Arabia', 'Jeddah', '012346789', 'Jeddah', 'user1.png', '::1', '1902102211');

-- ----------------------------
-- Table structure for enquiry_types
-- ----------------------------
DROP TABLE IF EXISTS `enquiry_types`;
CREATE TABLE `enquiry_types`  (
  `enquiry_id` int NOT NULL AUTO_INCREMENT,
  `enquiry_title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`enquiry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of enquiry_types
-- ----------------------------
INSERT INTO `enquiry_types` VALUES (1, 'Order and Delivery Support');
INSERT INTO `enquiry_types` VALUES (2, 'Technical Support');
INSERT INTO `enquiry_types` VALUES (3, 'Price Concern');

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers`  (
  `manufacturer_id` int NOT NULL AUTO_INCREMENT,
  `manufacturer_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `manufacturer_top` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `manufacturer_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`manufacturer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
INSERT INTO `manufacturers` VALUES (2, 'Orchids Supplier', 'no', '');
INSERT INTO `manufacturers` VALUES (3, 'Roses Supplier', 'no', '');
INSERT INTO `manufacturers` VALUES (4, 'Violets Supplier', 'no', '');
INSERT INTO `manufacturers` VALUES (5, 'Tulips Supplier', 'no', '');
INSERT INTO `manufacturers` VALUES (6, 'Sunflowers Supplier', 'no', '');
INSERT INTO `manufacturers` VALUES (7, 'Coronations Supplier', 'no', '');
INSERT INTO `manufacturers` VALUES (8, 'Daisies Supplier', 'no', '');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `invoice_no` int NOT NULL,
  `amount` int NOT NULL,
  `payment_mode` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ref_no` int NOT NULL,
  `code` int NOT NULL,
  `payment_date` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO `payments` VALUES (4, 999310984, 70, 'Bank Code', 1541654654, 21651564, '10245');
INSERT INTO `payments` VALUES (5, 724100346, 50, 'Western Union', 126453, 14654, '12/1/2021');
INSERT INTO `payments` VALUES (6, 999310984, 70, 'Bank Code', 341655151, 12105246, '12/1/2021');
INSERT INTO `payments` VALUES (7, 124055521, 0, 'Bank Code', 123456789, 2456, '22-May-21');

-- ----------------------------
-- Table structure for pending_orders
-- ----------------------------
DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE `pending_orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `invoice_no` int NOT NULL,
  `product_id` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `qty` int NOT NULL,
  `size` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_status` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pending_orders
-- ----------------------------
INSERT INTO `pending_orders` VALUES (16, 2, 1715523401, '2', 3, 'Small', 'pending');
INSERT INTO `pending_orders` VALUES (17, 2, 1715523401, '9', 2, 'Large', 'pending');
INSERT INTO `pending_orders` VALUES (18, 2, 1715523401, '11', 1, 'Medium', 'pending');
INSERT INTO `pending_orders` VALUES (19, 2, 1068059025, '7', 1, 'Medium', 'pending');
INSERT INTO `pending_orders` VALUES (20, 2, 909940689, '6', 3, 'Large', 'complete');
INSERT INTO `pending_orders` VALUES (21, 2, 909940689, '11', 2, 'Meduim', 'complete');
INSERT INTO `pending_orders` VALUES (23, 7, 334642094, '8', 1, 'Small (3 pieces)', 'Complete');
INSERT INTO `pending_orders` VALUES (24, 7, 724100346, '8', 1, 'Small (3 pieces)', 'Complete');
INSERT INTO `pending_orders` VALUES (25, 7, 1708867829, '7', 1, 'Small (3 pieces)', 'pending');
INSERT INTO `pending_orders` VALUES (26, 11, 124055521, '8', 3, 'Small (3 pieces)', 'Complete');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `p_cat_id` int NOT NULL AUTO_INCREMENT,
  `p_cat_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `p_cat_top` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `p_cat_image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`p_cat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES (4, 'Weddings', 'no', '');
INSERT INTO `product_categories` VALUES (5, 'Funerals', 'no', '');
INSERT INTO `product_categories` VALUES (6, 'Graduations', 'no', '');
INSERT INTO `product_categories` VALUES (7, 'Valentines', 'no', '');
INSERT INTO `product_categories` VALUES (8, 'Birthdays', 'no', '');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `p_cat_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `manufacturer_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_img1` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_img2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_img3` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_price` int NOT NULL,
  `product_psp_price` int NOT NULL,
  `product_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_keywords` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `product_label` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (2, 4, 3, 2, '2021-05-16 02:11:02', 'Pink Orchids', 'pink-orchids', '23.jpg', '31.jpg', '24.jpg', 69, 0, '\r\n\r\nDid you know that orchids are one of the oldest flower plants known to man?\r\nOrchids are associated with fertility, virility, and sexuality. \r\nThese associations, coupled with their exotic appearance, have given them a long history of being associated with love, fertility and elegance throughout various cultures and time periods.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'weddings', 'Weddings', 'product');
INSERT INTO `products` VALUES (3, 5, 3, 2, '2021-05-07 00:39:45', 'White Orchids', 'white-orchids', '4.jpg', '2.jpg', '3.jpg', 50, 0, '\r\nOrchids for funeral is not just for beauty! ... At a funeral, an orchid plant symbolizes your everlasting love for the deceased. If you are giving an orchid plant to someone to express your condolences, it is recommended that you choose a white or pink orchid since these symbolize sympathy.\r\n', 'funeral', 'Funeral', 'product');
INSERT INTO `products` VALUES (4, 7, 2, 3, '2021-05-07 00:40:32', 'Red Rose', 'red-rose', '19.jpg', '18.jpg', '17.jpg', 100, 69, '\r\nRoses are most commonly associated with love and romance and are the perfect Valentine’s Day rose..\r\nWhat are you waiting for shop these classic flowers for your loved ones!\r\n', 'valentine', 'Valentine', 'product');
INSERT INTO `products` VALUES (5, 7, 6, 5, '2021-05-07 00:41:23', 'Pink Tulips', 'pink-tulips', '22.jpg', '21.jpg', '20.jpg', 150, 100, '\r\n\r\n\r\n\r\nPink tulips are known for meaning affection, caring, good wishes, and love. Perfect for a valentine!\r\n\r\n\r\n', 'valentine', 'Valentine', 'product');
INSERT INTO `products` VALUES (6, 6, 5, 7, '2021-05-07 00:42:10', 'Carnations', 'carnations', '30.jpg', '29.jpg', '28.jpg', 80, 50, '\r\nLight red carnations symbolize admiration and it shows how much you admire the hard work of these promising graduates!\r\n', 'graduations', 'Sale', 'product');
INSERT INTO `products` VALUES (7, 8, 4, 4, '2021-05-07 00:42:58', 'Violets', 'violets', '8.jpg', '7.jpg', '1.jpg', 100, 50, '\r\nViolets symbolize faith, spirituality, mysticism and remembrance.\r\nIt stimulates the imagination and inspires high ideals. In terms of color, violet represents the future, imagination, dreams.\r\n\r\n', 'birthdays', 'Gift', 'product');
INSERT INTO `products` VALUES (8, 8, 7, 6, '2021-05-07 00:43:35', 'Sunflowers', 'sunflowers', '11.jpg', '10.jpg', '9.jpg', 60, 40, '\r\nSunflowers are one of the most popular flower types and are best known for their dazzling yellow color and large size. \r\nSunflowers generally symbolize adoration, loyalty and longevity in flower language.\r\n\r\n\r\n\r\n', 'birthdays', 'Sale', 'product');
INSERT INTO `products` VALUES (9, 7, 8, 8, '2021-05-07 00:44:19', 'Daisies', 'daisies', '25.jpg', '26.jpg', '27.jpg', 60, 0, '\r\nDaisies symbolize innocence and purity. \r\nDaisy’s are composite flowers, meaning that they actually consist of two flowers combined into one.\r\nBecause daisies are composed of two flowers that blend together so well, they also symbolize true love.\r\n\r\n\r\n\r\n', 'valentine', 'New', 'product');

-- ----------------------------
-- Table structure for terms
-- ----------------------------
DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms`  (
  `term_id` int NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `term_link` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `term_desc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`term_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of terms
-- ----------------------------
INSERT INTO `terms` VALUES (1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>');
INSERT INTO `terms` VALUES (2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');
INSERT INTO `terms` VALUES (3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `wishlist_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`wishlist_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES (2, 2, 8);
INSERT INTO `wishlist` VALUES (5, 7, 6);
INSERT INTO `wishlist` VALUES (6, 7, 9);
INSERT INTO `wishlist` VALUES (8, 11, 7);

SET FOREIGN_KEY_CHECKS = 1;
