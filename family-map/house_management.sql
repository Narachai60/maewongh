/*
 Navicat Premium Data Transfer

 Source Server         : mdcheck
 Source Server Type    : MySQL
 Source Server Version : 80042 (8.0.42-0ubuntu0.24.04.1)
 Source Host           : 192.168.1.43:3306
 Source Schema         : house_management

 Target Server Type    : MySQL
 Target Server Version : 80042 (8.0.42-0ubuntu0.24.04.1)
 File Encoding         : 65001

 Date: 13/06/2025 17:36:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for family_members
-- ----------------------------
DROP TABLE IF EXISTS `family_members`;
CREATE TABLE `family_members`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `house_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NULL DEFAULT NULL,
  `relation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disease` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_family_house_id`(`house_id` ASC) USING BTREE,
  INDEX `idx_family_name`(`name` ASC) USING BTREE,
  CONSTRAINT `family_members_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(10, 8) NOT NULL,
  `longitude` decimal(11, 8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_house_coordinates`(`latitude` ASC, `longitude` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 750 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

SET FOREIGN_KEY_CHECKS = 1;
