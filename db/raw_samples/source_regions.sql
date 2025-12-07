/*
 Navicat MySQL Data Transfer

 Source Server         : GoogleCloud3
 Source Server Type    : MySQL
 Source Server Version : 50742 (5.7.42)
 Source Host           : localhost:3306
Source Schema          : legacy_mining_db

 Target Server Type    : MySQL
 Target Server Version : 50742 (5.7.42)
 File Encoding         : 65001

 Date: 07/09/2025 15:13:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ipm_e_region
-- ----------------------------
DROP TABLE IF EXISTS `ipm_e_region`;
CREATE TABLE `ipm_e_region`  (
  `cod_reg` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nom_reg` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cod_reg`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ipm_e_region
-- ----------------------------
INSERT INTO `ipm_e_region` VALUES ('01', 'TARAPACA');
INSERT INTO `ipm_e_region` VALUES ('02', 'ANTOFAGASTA');
INSERT INTO `ipm_e_region` VALUES ('03', 'ATACAMA');
INSERT INTO `ipm_e_region` VALUES ('04', 'COQUIMBO');
INSERT INTO `ipm_e_region` VALUES ('05', 'VALPARAISO');
INSERT INTO `ipm_e_region` VALUES ('06', 'O\'HIGGINS');
INSERT INTO `ipm_e_region` VALUES ('07', 'MAULE');
INSERT INTO `ipm_e_region` VALUES ('08', 'BIOBIO');
INSERT INTO `ipm_e_region` VALUES ('09', 'ARAUCANIA');
INSERT INTO `ipm_e_region` VALUES ('10', 'LOS LAGOS');
INSERT INTO `ipm_e_region` VALUES ('11', 'AYSEN');
INSERT INTO `ipm_e_region` VALUES ('12', 'MAGALLANES');
INSERT INTO `ipm_e_region` VALUES ('13', 'METROPOLITANA');
INSERT INTO `ipm_e_region` VALUES ('14', 'DE LOS RIOS');
INSERT INTO `ipm_e_region` VALUES ('15', 'ARICA Y PARINACOTA');
INSERT INTO `ipm_e_region` VALUES ('16', 'ÑUBLE');

SET FOREIGN_KEY_CHECKS = 1;
