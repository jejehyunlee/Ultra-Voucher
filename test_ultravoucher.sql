/*
 Navicat Premium Data Transfer

 Source Server         : ENIGMA
 Source Server Type    : MySQL
 Source Server Version : 100425 (10.4.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : test_ultravoucher

 Target Server Type    : MySQL
 Target Server Version : 100425 (10.4.25-MariaDB)
 File Encoding         : 65001

 Date: 18/10/2023 17:09:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mst_parent
-- ----------------------------
DROP TABLE IF EXISTS `mst_parent`;
CREATE TABLE `mst_parent`  (
  `id` int NOT NULL,
  `parent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_parent
-- ----------------------------
INSERT INTO `mst_parent` VALUES (1, 'Zaki');
INSERT INTO `mst_parent` VALUES (2, 'Ilham');
INSERT INTO `mst_parent` VALUES (3, 'Irwan');
INSERT INTO `mst_parent` VALUES (4, 'Irwan');

-- ----------------------------
-- Table structure for mst_user
-- ----------------------------
DROP TABLE IF EXISTS `mst_user`;
CREATE TABLE `mst_user`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_parent`(`parent_id` ASC) USING BTREE,
  CONSTRAINT `FK_parent` FOREIGN KEY (`parent_id`) REFERENCES `mst_parent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mst_user
-- ----------------------------
INSERT INTO `mst_user` VALUES (1, 'Zaki', 2);
INSERT INTO `mst_user` VALUES (2, 'Ilham', NULL);
INSERT INTO `mst_user` VALUES (3, 'Irwan', 2);
INSERT INTO `mst_user` VALUES (4, 'Arka', 3);

SET FOREIGN_KEY_CHECKS = 1;



/* Query Test Ultra Voucher  */

Select mst_user.id, name, parent_name from mstuser
left join mst_parent on mst_parent.id = mst_user.id
