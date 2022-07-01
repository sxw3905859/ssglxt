/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : ssglxt

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 01/07/2022 21:50:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_building_information
-- ----------------------------
DROP TABLE IF EXISTS `ad_building_information`;
CREATE TABLE `ad_building_information`  (
  `building_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `buliding_max` int(0) NULL DEFAULT NULL,
  `building_now` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`building_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ad_manager_information
-- ----------------------------
DROP TABLE IF EXISTS `ad_manager_information`;
CREATE TABLE `ad_manager_information`  (
  `manager_num` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manager_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_national` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_building` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`manager_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sg_dormitory_information
-- ----------------------------
DROP TABLE IF EXISTS `sg_dormitory_information`;
CREATE TABLE `sg_dormitory_information`  (
  `dormitory_number` int(0) NOT NULL,
  `dormitory_max` int(0) NULL DEFAULT NULL,
  `dormitory_now` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`dormitory_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sg_leaving_application
-- ----------------------------
DROP TABLE IF EXISTS `sg_leaving_application`;
CREATE TABLE `sg_leaving_application`  (
  `student_num` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `finish_time` datetime(0) NULL DEFAULT NULL,
  `dormitory_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sg_report_information
-- ----------------------------
DROP TABLE IF EXISTS `sg_report_information`;
CREATE TABLE `sg_report_information`  (
  `notice_num` int(0) NOT NULL,
  `notice_date` date NULL DEFAULT NULL,
  `notice_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`notice_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sg_temperature_record
-- ----------------------------
DROP TABLE IF EXISTS `sg_temperature_record`;
CREATE TABLE `sg_temperature_record`  (
  `dormitory_number` int(0) NOT NULL,
  `temperature_now` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dormitory_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sg_visiting_records
-- ----------------------------
DROP TABLE IF EXISTS `sg_visiting_records`;
CREATE TABLE `sg_visiting_records`  (
  `tourist_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tourist_id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visiting_dormitory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visiting_course` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_qx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abc', '654321', '3');
INSERT INTO `users` VALUES (2, 'admin', '000000', '1');
INSERT INTO `users` VALUES (3, 'no4', '6666', '3');
INSERT INTO `users` VALUES (4, '诶嘿', '111', '1');

-- ----------------------------
-- Table structure for xs_arrange_today
-- ----------------------------
DROP TABLE IF EXISTS `xs_arrange_today`;
CREATE TABLE `xs_arrange_today`  (
  `today_data` datetime(0) NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schema_do` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schema_otherthing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xs_leaving_application
-- ----------------------------
DROP TABLE IF EXISTS `xs_leaving_application`;
CREATE TABLE `xs_leaving_application`  (
  `student_num` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dormitory_number` int(0) NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `finish_time` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xs_student_information
-- ----------------------------
DROP TABLE IF EXISTS `xs_student_information`;
CREATE TABLE `xs_student_information`  (
  `student_id` int(0) NOT NULL AUTO_INCREMENT,
  `student_num` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_national` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xs_student_information
-- ----------------------------
INSERT INTO `xs_student_information` VALUES (1, '222019321062093', '宋欣蔚', '女', '计算机与信息科学学院', '2019级软件工程4班', '13019459903');
INSERT INTO `xs_student_information` VALUES (2, '222020321062000', '毛俐玲', '男', '计算机与信息科学学院', '2020级网络工程1班', '15523373121');
INSERT INTO `xs_student_information` VALUES (3, '222018561087130', '张三', '女', '历史文化学院', '2018级历史教育1班', '15805603616');

SET FOREIGN_KEY_CHECKS = 1;
