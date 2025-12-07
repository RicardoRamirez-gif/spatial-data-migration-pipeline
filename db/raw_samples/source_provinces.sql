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

 Date: 07/09/2025 15:13:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ipm_e_provincia
-- ----------------------------
DROP TABLE IF EXISTS `ipm_e_provincia`;
CREATE TABLE `ipm_e_provincia`  (
  `cod_reg` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cod_prv` varchar(12) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nom_prv` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `nom_sernageomin` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `observaciones` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cod_reg`, `cod_prv`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ipm_e_provincia
-- ----------------------------
INSERT INTO `ipm_e_provincia` VALUES ('01', '011', 'IQUIQUE', 'IQUIQUE', 'Codigo antiguo');
INSERT INTO `ipm_e_provincia` VALUES ('01', '012', 'IQUIQUE', 'IQUIQUE', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('01', '013', 'PARINACOTA', 'PARINACOTA', 'Codigo antiguo');
INSERT INTO `ipm_e_provincia` VALUES ('01', '014', 'TAMARUGAL', 'TAMARUGAL', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('02', '021', 'TOCOPILLA', 'TOCOPILLA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('02', '022', 'ANTOFAGASTA', 'ANTOFAGASTA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('02', '023', 'EL LOA', 'EL LOA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('03', '031', 'CHAÑARAL', 'CHANARAL', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('03', '032', 'COPIAPÓ', 'COPIAPO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('03', '033', 'HUASCO', 'HUASCO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('04', '041', 'ELQUI', 'ELQUI', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('04', '042', 'LIMARÍ', 'LIMARI', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('04', '043', 'CHOAPA', 'CHOAPA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '051', 'ISLA DE PASCUA', 'ISLA DE PASCUA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '052', 'PETORCA', 'PETORCA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '053', 'VALPARAÍSO', 'VALPARAISO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '054', 'SAN ANTONIO', 'SAN ANTONIO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '055', 'QUILLOTA', 'QUILLOTA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '056', 'SAN FELIPE DE ACONCAGUA', 'SAN FELIPE DE AC', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '057', 'LOS ANDES', 'LOS ANDES', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('05', '058', 'MARGA MARGA', 'MARGA MARGA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('06', '061', 'CACHAPOAL', 'CACHAPOAL', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('06', '062', 'COLCHAGUA', 'COLCHAGUA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('06', '063', 'CARDENAL CARO', 'CARDENAL CARO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('07', '071', 'CURICÓ', 'CURICO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('07', '072', 'TALCA', 'TALCA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('07', '073', 'LINARES', 'LINARES', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('07', '074', 'CAUQUENES', 'CAUQUENES', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('08', '081', 'ÑUBLE', 'NUBLE', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('08', '082', 'CONCEPCIÓN', 'CONCEPCION', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('08', '083', 'ARAUCO', 'ARAUCO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('08', '084', 'BIOBÍO', 'BIO-BIO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('09', '091', 'MALLECO', 'MALLECO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('09', '092', 'CAUTÍN', 'CAUTIN', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('10', '102', 'OSORNO', 'OSORNO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('10', '103', 'LLANQUIHUE', 'LLANQUIHUE', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('10', '104', 'CHILOÉ', 'CHILOE', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('10', '105', 'PALENA', 'PALENA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('11', '111', 'AYSÉN', 'AYSEN', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('11', '112', 'GENERAL CARRERA', 'GENERAL CARRERA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('11', '113', 'CAPITÁN PRAT', 'CAPITAN PRAT', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('11', '114', 'COIHAIQUE', 'COYHAIQUE', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('12', '121', 'ÚLTIMA ESPERANZA', 'ULTIMA ESPERANZA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('12', '122', 'MAGALLANES', 'MAGALLANES', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('12', '123', 'TIERRA DEL FUEGO', 'TIERRA DEL FUEGO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('12', '124', 'ANTARTICA CHILENA', 'ANTARTICA CHILENA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('13', '131', 'SANTIAGO', 'SANTIAGO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('13', '132', 'CHACABUCO', 'CHACABUCO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('13', '133', 'CORDILLERA', 'CORDILLERA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('13', '134', 'MAIPO', 'MAIPO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('13', '135', 'TALAGANTE', 'TALAGANTE', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('13', '136', 'MELIPILLA', 'MELIPILLA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('14', '141', 'VALDIVIA', 'VALDIVIA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('14', '142', 'RANCO', 'RANCO', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('15', '151', 'ARICA', 'ARICA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('15', '152', 'PARINACOTA', 'PARINACOTA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('16', '161', 'DIGUILLÍN', 'DIGUILLIN', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('16', '162', 'ITATA', 'ITATA', NULL);
INSERT INTO `ipm_e_provincia` VALUES ('16', '163', 'PUNILLA', 'PUNILLA', NULL);

SET FOREIGN_KEY_CHECKS = 1;
