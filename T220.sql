/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t220`;
CREATE DATABASE IF NOT EXISTS `t220` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t220`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xinwenzixunxitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xinwenzixunxitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xinwenzixunxitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-29 02:04:42'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-29 02:04:42'),
	(3, 'shiyong_types', '使用类型', 1, '使用', NULL, NULL, '2022-03-29 02:04:42'),
	(4, 'shiyong_types', '使用类型', 2, '禁用', NULL, NULL, '2022-03-29 02:04:42'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-29 02:04:42'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-29 02:04:42'),
	(7, 'wenzhang_types', '频道类型', 1, '频道类型1', NULL, NULL, '2022-03-29 02:04:42'),
	(8, 'wenzhang_types', '频道类型', 2, '频道类型2', NULL, NULL, '2022-03-29 02:04:42'),
	(9, 'wenzhang_erji_types', '文章类型', 1, '文章类型3', 1, NULL, '2022-03-29 02:04:42'),
	(10, 'wenzhang_erji_types', '文章类型', 2, '文章类型4', 1, NULL, '2022-03-29 02:04:42'),
	(11, 'wenzhang_erji_types', '文章类型', 3, '文章类型3', 2, NULL, '2022-03-29 02:04:42'),
	(12, 'wenzhang_erji_types', '文章类型', 4, '文章类型4', 2, NULL, '2022-03-29 02:04:42'),
	(13, 'wenzhang_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-29 02:04:42'),
	(14, 'wenzhang_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-29 02:04:42'),
	(15, 'wenzhang_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-29 02:04:42'),
	(16, 'wenzhang_erji_types', '文章类型', 5, '文章类型6', 2, '', '2022-03-29 03:03:02');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'djuv1kpn1g9ttarq6u8vgb418v3kpbkp', '2022-03-29 02:48:25', '2024-06-09 12:01:03'),
	(2, 1, 'a1', 'zimeitiren', '自媒体人', '65dtn9dcj6r154cvveomsqsqll8xdah0', '2022-03-29 02:48:35', '2024-06-09 12:00:36'),
	(3, 6, 'admin', 'users', '管理员', 'qkftge55ukyd9ekaxhb9ya4xgc8vnp5x', '2022-03-29 03:02:45', '2024-06-09 11:59:47'),
	(4, 2, 'a2', 'zimeitiren', '自媒体人', 'du7kwxt7strwb7v6g3ey2qscm4em83zo', '2022-03-29 03:03:37', '2022-03-29 04:03:38'),
	(5, 3, 'a3', 'zimeitiren', '自媒体人', '4y1mf7ei09ajfwbquhxfiqx6bxr965c1', '2022-03-29 03:03:49', '2022-03-29 04:03:50');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `wenzhang`;
CREATE TABLE IF NOT EXISTS `wenzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zimeitiren_id` int DEFAULT NULL COMMENT '自媒体人',
  `wenzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '文章编号  Search111 ',
  `wenzhang_name` varchar(200) DEFAULT NULL COMMENT '文章名称  Search111 ',
  `wenzhang_photo` varchar(200) DEFAULT NULL COMMENT '文章照片',
  `wenzhang_types` int DEFAULT NULL COMMENT '频道类型 Search111',
  `wenzhang_erji_types` int DEFAULT NULL COMMENT '文章类型 Search111',
  `wenzhang_clicknum` int DEFAULT NULL COMMENT '热度 ',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `wenzhang_content` text COMMENT '文章详情 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `wenzhang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='文章';

DELETE FROM `wenzhang`;
INSERT INTO `wenzhang` (`id`, `zimeitiren_id`, `wenzhang_uuid_number`, `wenzhang_name`, `wenzhang_photo`, `wenzhang_types`, `wenzhang_erji_types`, `wenzhang_clicknum`, `zan_number`, `cai_number`, `wenzhang_content`, `shangxia_types`, `wenzhang_delete`, `create_time`) VALUES
	(1, 2, '16485195829792', '文章名称1', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu1.jpg', 1, 1, 374, 444, 340, '文章详情1', 1, 1, '2022-03-29 02:06:22'),
	(2, 1, '164851958297910', '文章名称2', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu2.jpg', 1, 2, 174, 172, 340, '<p>文章详情2</p>', 1, 1, '2022-03-29 02:06:22'),
	(3, 3, '16485195829799', '文章名称3', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu1.jpg', 1, 2, 477, 85, 489, '文章详情3', 1, 1, '2022-03-29 02:06:22'),
	(4, 3, '16485195829794', '文章名称4', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu2.jpg', 2, 3, 306, 99, 370, '文章详情4', 1, 1, '2022-03-29 02:06:22'),
	(5, 3, '164851958297915', '文章名称5', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu3.jpg', 2, 3, 86, 423, 391, '文章详情5', 1, 1, '2022-03-29 02:06:22'),
	(6, 1, '1648522302869', '阿达', 'http://localhost:8080/xinwenzixunxitong/upload/1648522312661.jpg', 2, 4, 1, 0, 0, '<p>撒嘎嘎</p>', 2, 1, '2022-03-29 02:51:55'),
	(7, 1, '1648523069464', '1111', 'http://localhost:8080/xinwenzixunxitong/upload/1648523077711.jpg', 1, 2, 1, 0, 0, '<p>asgaqgh</p>', 1, 1, '2022-03-29 03:04:39');

DROP TABLE IF EXISTS `wenzhang_collection`;
CREATE TABLE IF NOT EXISTS `wenzhang_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_id` int DEFAULT NULL COMMENT '文章',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wenzhang_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='文章收藏';

DELETE FROM `wenzhang_collection`;
INSERT INTO `wenzhang_collection` (`id`, `wenzhang_id`, `yonghu_id`, `wenzhang_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(3, 3, 2, 1, '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(4, 4, 2, 1, '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(5, 5, 3, 1, '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(6, 5, 1, 2, '2022-03-29 02:58:45', '2022-03-29 02:58:45'),
	(7, 4, 1, 2, '2022-03-29 02:59:48', '2022-03-29 02:59:48'),
	(8, 3, 1, 3, '2022-03-29 02:59:55', '2022-03-29 02:59:55'),
	(9, 4, 1, 1, '2022-03-29 03:00:13', '2022-03-29 03:00:13'),
	(10, 1, 1, 1, '2024-06-09 11:01:17', '2024-06-09 11:01:17');

DROP TABLE IF EXISTS `wenzhang_liuyan`;
CREATE TABLE IF NOT EXISTS `wenzhang_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenzhang_id` int DEFAULT NULL COMMENT '文章',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wenzhang_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='文章留言';

DELETE FROM `wenzhang_liuyan`;
INSERT INTO `wenzhang_liuyan` (`id`, `wenzhang_id`, `yonghu_id`, `wenzhang_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2022-03-29 02:06:22', '回复信息1', '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(2, 2, 1, '留言内容2', '2022-03-29 02:06:22', '回复信息2', '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(3, 3, 2, '留言内容3', '2022-03-29 02:06:22', '回复信息3', '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(4, 4, 3, '留言内容4', '2022-03-29 02:06:22', '回复信息4', '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(5, 5, 1, '留言内容5', '2022-03-29 02:06:22', '回复信息5', '2022-03-29 02:06:22', '2022-03-29 02:06:22'),
	(6, 4, 1, '你好', '2022-03-29 03:00:22', '222222', '2022-03-29 03:03:55', '2022-03-29 03:00:22');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `shiyong_types` int DEFAULT NULL COMMENT '是否使用',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `shiyong_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu1.jpg', 1, 1, '1@qq.com', '2022-03-29 02:06:22'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu2.jpg', 1, 2, '2@qq.com', '2022-03-29 02:06:22'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/xinwenzixunxitong/upload/yonghu3.jpg', 2, 2, '3@qq.com', '2022-03-29 02:06:22');

DROP TABLE IF EXISTS `zimeitiren`;
CREATE TABLE IF NOT EXISTS `zimeitiren` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zimeitiren_name` varchar(200) DEFAULT NULL COMMENT '自媒体人姓名 Search111 ',
  `zimeitiren_phone` varchar(200) DEFAULT NULL COMMENT '自媒体人手机号',
  `zimeitiren_photo` varchar(200) DEFAULT NULL COMMENT '自媒体人头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `zimeitiren_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='自媒体人';

DELETE FROM `zimeitiren`;
INSERT INTO `zimeitiren` (`id`, `username`, `password`, `zimeitiren_name`, `zimeitiren_phone`, `zimeitiren_photo`, `sex_types`, `zimeitiren_email`, `create_time`) VALUES
	(1, '自媒体人1', '123456', '自媒体人姓名1', '17703786901', 'http://localhost:8080/xinwenzixunxitong/upload/zimeitiren1.jpg', 1, '1@qq.com', '2022-03-29 02:06:22'),
	(2, '自媒体人2', '123456', '自媒体人姓名2', '17703786902', 'http://localhost:8080/xinwenzixunxitong/upload/zimeitiren2.jpg', 2, '2@qq.com', '2022-03-29 02:06:22'),
	(3, '自媒体人3', '123456', '自媒体人姓名3', '17703786903', 'http://localhost:8080/xinwenzixunxitong/upload/zimeitiren3.jpg', 2, '3@qq.com', '2022-03-29 02:06:22');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
