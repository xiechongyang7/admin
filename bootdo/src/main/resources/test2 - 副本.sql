/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : test2

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-03-07 18:52:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('6', '0', '研发部', '1', '1');
INSERT INTO `sys_dept` VALUES ('7', '6', '研發一部', '1', '1');
INSERT INTO `sys_dept` VALUES ('8', '6', '研发二部', '2', '1');
INSERT INTO `sys_dept` VALUES ('9', '0', '销售部', '2', '1');
INSERT INTO `sys_dept` VALUES ('10', '9', '销售一部', '1', '1');
INSERT INTO `sys_dept` VALUES ('11', '0', '产品部', '3', '1');
INSERT INTO `sys_dept` VALUES ('12', '11', '产品一部', '1', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '1', 'admin', '登录', '436', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-02-14 17:58:04');
INSERT INTO `sys_log` VALUES ('2', '1', 'admin', '请求访问主页', '132', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 17:58:04');
INSERT INTO `sys_log` VALUES ('3', '1', 'admin', '请求访问主页', '8', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 18:00:03');
INSERT INTO `sys_log` VALUES ('4', '1', 'admin', '登录', '386', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-02-14 18:11:00');
INSERT INTO `sys_log` VALUES ('5', '1', 'admin', '请求访问主页', '87', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 18:11:00');
INSERT INTO `sys_log` VALUES ('6', '1', 'admin', '添加菜单', '12', 'com.bootdo.system.controller.MenuController.add()', null, '127.0.0.1', '2019-02-14 18:11:15');
INSERT INTO `sys_log` VALUES ('7', '1', 'admin', '编辑菜单', '12', 'com.bootdo.system.controller.MenuController.edit()', null, '127.0.0.1', '2019-02-14 18:11:31');
INSERT INTO `sys_log` VALUES ('8', '1', 'admin', '添加菜单', '7', 'com.bootdo.system.controller.MenuController.add()', null, '127.0.0.1', '2019-02-14 18:11:51');
INSERT INTO `sys_log` VALUES ('9', '1', 'admin', '保存菜单', '13', 'com.bootdo.system.controller.MenuController.save()', null, '127.0.0.1', '2019-02-14 18:12:47');
INSERT INTO `sys_log` VALUES ('10', '1', 'admin', '请求访问主页', '10', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 18:12:49');
INSERT INTO `sys_log` VALUES ('11', '1', 'admin', '编辑角色', '5', 'com.bootdo.system.controller.RoleController.edit()', null, '127.0.0.1', '2019-02-14 18:12:57');
INSERT INTO `sys_log` VALUES ('12', '1', 'admin', '登录', '6', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-02-14 18:13:17');
INSERT INTO `sys_log` VALUES ('13', '1', 'admin', '请求访问主页', '8', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 18:13:17');
INSERT INTO `sys_log` VALUES ('14', '1', 'admin', '编辑菜单', '12', 'com.bootdo.system.controller.MenuController.edit()', null, '127.0.0.1', '2019-02-14 18:13:28');
INSERT INTO `sys_log` VALUES ('15', '1', 'admin', '删除菜单', '14', 'com.bootdo.system.controller.MenuController.remove()', null, '127.0.0.1', '2019-02-14 18:13:36');
INSERT INTO `sys_log` VALUES ('16', '1', 'admin', '添加菜单', '7', 'com.bootdo.system.controller.MenuController.add()', null, '127.0.0.1', '2019-02-14 18:13:40');
INSERT INTO `sys_log` VALUES ('17', '1', 'admin', '保存菜单', '7', 'com.bootdo.system.controller.MenuController.save()', null, '127.0.0.1', '2019-02-14 18:14:05');
INSERT INTO `sys_log` VALUES ('18', '1', 'admin', '请求访问主页', '11', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 18:14:09');
INSERT INTO `sys_log` VALUES ('19', '1', 'admin', 'error', null, 'http://localhost/system/qw/list', 'org.apache.ibatis.binding.BindingException: Invalid bound statement (not found): com.bootdo.system.dao.QwDao.list', null, '2019-02-14 18:14:12');
INSERT INTO `sys_log` VALUES ('20', '1', 'admin', '请求访问主页', '9', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-02-14 18:14:30');
INSERT INTO `sys_log` VALUES ('21', '1', 'admin', 'error', null, 'http://localhost/system/qw/list', 'org.apache.ibatis.binding.BindingException: Invalid bound statement (not found): com.bootdo.system.dao.QwDao.list', null, '2019-02-14 18:14:35');
INSERT INTO `sys_log` VALUES ('22', '1', 'admin', 'error', null, 'http://localhost/system/qw/list', 'org.apache.ibatis.binding.BindingException: Invalid bound statement (not found): com.bootdo.system.dao.QwDao.list', null, '2019-02-14 18:14:43');
INSERT INTO `sys_log` VALUES ('23', '1', 'admin', '添加菜单', '5', 'com.bootdo.system.controller.MenuController.add()', null, '127.0.0.1', '2019-02-14 18:14:51');
INSERT INTO `sys_log` VALUES ('24', '1', 'admin', '登录', '381', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 10:32:35');
INSERT INTO `sys_log` VALUES ('25', '1', 'admin', '请求访问主页', '129', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 10:32:35');
INSERT INTO `sys_log` VALUES ('26', '1', 'admin', '请求更改用户密码', '1', 'com.bootdo.system.controller.UserController.resetPwd()', null, '127.0.0.1', '2019-03-01 10:35:05');
INSERT INTO `sys_log` VALUES ('27', '1', 'admin', '添加角色', '0', 'com.bootdo.system.controller.RoleController.add()', null, '127.0.0.1', '2019-03-01 10:35:10');
INSERT INTO `sys_log` VALUES ('28', '1', 'admin', '登录', '333', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 11:52:02');
INSERT INTO `sys_log` VALUES ('29', '1', 'admin', '请求访问主页', '95', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 11:52:02');
INSERT INTO `sys_log` VALUES ('30', '1', 'admin', '登录', '361', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 11:54:27');
INSERT INTO `sys_log` VALUES ('31', '1', 'admin', '请求访问主页', '88', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 11:54:27');
INSERT INTO `sys_log` VALUES ('32', '1', 'admin', '登录', '286', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 11:56:17');
INSERT INTO `sys_log` VALUES ('33', '1', 'admin', '请求访问主页', '94', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 11:56:18');
INSERT INTO `sys_log` VALUES ('34', '1', 'admin', '删除菜单', '16', 'com.bootdo.system.controller.MenuController.remove()', null, '127.0.0.1', '2019-03-01 11:56:31');
INSERT INTO `sys_log` VALUES ('35', '1', 'admin', '请求访问主页', '8', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 11:56:36');
INSERT INTO `sys_log` VALUES ('36', '1', 'admin', '添加用户', '18', 'com.bootdo.system.controller.UserController.add()', null, '127.0.0.1', '2019-03-01 11:57:52');
INSERT INTO `sys_log` VALUES ('37', '1', 'admin', '删除用户', '16', 'com.bootdo.system.controller.UserController.remove()', null, '127.0.0.1', '2019-03-01 11:58:42');
INSERT INTO `sys_log` VALUES ('38', '1', 'admin', '登录', '4', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 11:59:49');
INSERT INTO `sys_log` VALUES ('39', '1', 'admin', '请求访问主页', '6', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 11:59:49');
INSERT INTO `sys_log` VALUES ('40', '1', 'admin', '登录', '386', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 15:07:33');
INSERT INTO `sys_log` VALUES ('41', '1', 'admin', '请求访问主页', '79', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 15:07:33');
INSERT INTO `sys_log` VALUES ('42', '1', 'admin', '登录', '6', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 15:09:49');
INSERT INTO `sys_log` VALUES ('43', '1', 'admin', '请求访问主页', '11', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 15:09:49');
INSERT INTO `sys_log` VALUES ('44', '1', 'admin', '请求访问主页', '16', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 15:10:14');
INSERT INTO `sys_log` VALUES ('45', '1', 'admin', '登录', '509', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-01 18:02:05');
INSERT INTO `sys_log` VALUES ('46', '1', 'admin', '请求访问主页', '106', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-01 18:02:05');
INSERT INTO `sys_log` VALUES ('47', '1', 'admin', '登录', '324', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-04 11:27:42');
INSERT INTO `sys_log` VALUES ('48', '1', 'admin', '请求访问主页', '96', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-04 11:27:42');
INSERT INTO `sys_log` VALUES ('49', '1', 'admin', '登录', '380', 'com.bootdo.system.controller.LoginController.ajaxLogin()', null, '127.0.0.1', '2019-03-04 11:30:00');
INSERT INTO `sys_log` VALUES ('50', '1', 'admin', '请求访问主页', '76', 'com.bootdo.system.controller.LoginController.index()', null, '127.0.0.1', '2019-03-04 11:30:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('2', '3', '系统菜单', 'sys/menu/', 'sys:menu:menu', '1', 'fa fa-th-list', '2', '2017-08-09 22:55:15', null);
INSERT INTO `sys_menu` VALUES ('3', '0', '系统管理', null, null, '0', 'fa fa-desktop', '1', '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `sys_menu` VALUES ('6', '3', '用户管理', 'sys/user/', 'sys:user:user', '1', 'fa fa-user', '0', '2017-08-10 14:12:11', null);
INSERT INTO `sys_menu` VALUES ('7', '3', '角色管理', 'sys/role', 'sys:role:role', '1', 'fa fa-paw', '1', '2017-08-10 14:13:19', null);
INSERT INTO `sys_menu` VALUES ('12', '6', '新增', '', 'sys:user:add', '2', '', '0', '2017-08-14 10:51:35', null);
INSERT INTO `sys_menu` VALUES ('13', '6', '编辑', '', 'sys:user:edit', '2', '', '0', '2017-08-14 10:52:06', null);
INSERT INTO `sys_menu` VALUES ('14', '6', '删除', null, 'sys:user:remove', '2', null, '0', '2017-08-14 10:52:24', null);
INSERT INTO `sys_menu` VALUES ('15', '7', '新增', '', 'sys:role:add', '2', '', '0', '2017-08-14 10:56:37', null);
INSERT INTO `sys_menu` VALUES ('20', '2', '新增', '', 'sys:menu:add', '2', '', '0', '2017-08-14 10:59:32', null);
INSERT INTO `sys_menu` VALUES ('21', '2', '编辑', '', 'sys:menu:edit', '2', '', '0', '2017-08-14 10:59:56', null);
INSERT INTO `sys_menu` VALUES ('22', '2', '删除', '', 'sys:menu:remove', '2', '', '0', '2017-08-14 11:00:26', null);
INSERT INTO `sys_menu` VALUES ('24', '6', '批量删除', '', 'sys:user:batchRemove', '2', '', '0', '2017-08-14 17:27:18', null);
INSERT INTO `sys_menu` VALUES ('25', '6', '停用', null, 'sys:user:disable', '2', null, '0', '2017-08-14 17:27:43', null);
INSERT INTO `sys_menu` VALUES ('26', '6', '重置密码', '', 'sys:user:resetPwd', '2', '', '0', '2017-08-14 17:28:34', null);
INSERT INTO `sys_menu` VALUES ('27', '91', '系统日志', 'common/log', 'common:log', '1', 'fa fa-warning', '0', '2017-08-14 22:11:53', null);
INSERT INTO `sys_menu` VALUES ('28', '27', '刷新', null, 'sys:log:list', '2', null, '0', '2017-08-14 22:30:22', null);
INSERT INTO `sys_menu` VALUES ('29', '27', '删除', null, 'sys:log:remove', '2', null, '0', '2017-08-14 22:30:43', null);
INSERT INTO `sys_menu` VALUES ('30', '27', '清空', null, 'sys:log:clear', '2', null, '0', '2017-08-14 22:31:02', null);
INSERT INTO `sys_menu` VALUES ('48', '77', '代码生成', 'common/generator', 'common:generator', '1', 'fa fa-code', '3', null, null);
INSERT INTO `sys_menu` VALUES ('55', '7', '编辑', '', 'sys:role:edit', '2', '', null, null, null);
INSERT INTO `sys_menu` VALUES ('56', '7', '删除', '', 'sys:role:remove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('57', '91', '运行监控', '/druid/index.html', '', '1', 'fa fa-caret-square-o-right', '1', null, null);
INSERT INTO `sys_menu` VALUES ('61', '2', '批量删除', '', 'sys:menu:batchRemove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('62', '7', '批量删除', '', 'sys:role:batchRemove', '2', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('73', '3', '部门管理', '/system/sysDept', 'system:sysDept:sysDept', '1', 'fa fa-users', '3', null, null);
INSERT INTO `sys_menu` VALUES ('74', '73', '增加', '/system/sysDept/add', 'system:sysDept:add', '2', null, '1', null, null);
INSERT INTO `sys_menu` VALUES ('75', '73', '刪除', 'system/sysDept/remove', 'system:sysDept:remove', '2', null, '2', null, null);
INSERT INTO `sys_menu` VALUES ('76', '73', '编辑', '/system/sysDept/edit', 'system:sysDept:edit', '2', null, '3', null, null);
INSERT INTO `sys_menu` VALUES ('77', '0', '系统工具', '', '', '0', 'fa fa-gear', '4', null, null);
INSERT INTO `sys_menu` VALUES ('91', '0', '系统监控', '', '', '0', 'fa fa-video-camera', '5', null, null);
INSERT INTO `sys_menu` VALUES ('92', '91', '在线用户', 'sys/online', '', '1', 'fa fa-user', null, null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级用户角色', 'admin', '拥有最高权限', '2', '2017-08-12 00:43:52', '2017-08-12 19:14:59');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2988 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('367', '44', '1');
INSERT INTO `sys_role_menu` VALUES ('368', '44', '32');
INSERT INTO `sys_role_menu` VALUES ('369', '44', '33');
INSERT INTO `sys_role_menu` VALUES ('370', '44', '34');
INSERT INTO `sys_role_menu` VALUES ('371', '44', '35');
INSERT INTO `sys_role_menu` VALUES ('372', '44', '28');
INSERT INTO `sys_role_menu` VALUES ('373', '44', '29');
INSERT INTO `sys_role_menu` VALUES ('374', '44', '30');
INSERT INTO `sys_role_menu` VALUES ('375', '44', '38');
INSERT INTO `sys_role_menu` VALUES ('376', '44', '4');
INSERT INTO `sys_role_menu` VALUES ('377', '44', '27');
INSERT INTO `sys_role_menu` VALUES ('378', '45', '38');
INSERT INTO `sys_role_menu` VALUES ('379', '46', '3');
INSERT INTO `sys_role_menu` VALUES ('380', '46', '20');
INSERT INTO `sys_role_menu` VALUES ('381', '46', '21');
INSERT INTO `sys_role_menu` VALUES ('382', '46', '22');
INSERT INTO `sys_role_menu` VALUES ('383', '46', '23');
INSERT INTO `sys_role_menu` VALUES ('384', '46', '11');
INSERT INTO `sys_role_menu` VALUES ('385', '46', '12');
INSERT INTO `sys_role_menu` VALUES ('386', '46', '13');
INSERT INTO `sys_role_menu` VALUES ('387', '46', '14');
INSERT INTO `sys_role_menu` VALUES ('388', '46', '24');
INSERT INTO `sys_role_menu` VALUES ('389', '46', '25');
INSERT INTO `sys_role_menu` VALUES ('390', '46', '26');
INSERT INTO `sys_role_menu` VALUES ('391', '46', '15');
INSERT INTO `sys_role_menu` VALUES ('392', '46', '2');
INSERT INTO `sys_role_menu` VALUES ('393', '46', '6');
INSERT INTO `sys_role_menu` VALUES ('394', '46', '7');
INSERT INTO `sys_role_menu` VALUES ('598', '50', '38');
INSERT INTO `sys_role_menu` VALUES ('632', '38', '42');
INSERT INTO `sys_role_menu` VALUES ('737', '51', '38');
INSERT INTO `sys_role_menu` VALUES ('738', '51', '39');
INSERT INTO `sys_role_menu` VALUES ('739', '51', '40');
INSERT INTO `sys_role_menu` VALUES ('740', '51', '41');
INSERT INTO `sys_role_menu` VALUES ('741', '51', '4');
INSERT INTO `sys_role_menu` VALUES ('742', '51', '32');
INSERT INTO `sys_role_menu` VALUES ('743', '51', '33');
INSERT INTO `sys_role_menu` VALUES ('744', '51', '34');
INSERT INTO `sys_role_menu` VALUES ('745', '51', '35');
INSERT INTO `sys_role_menu` VALUES ('746', '51', '27');
INSERT INTO `sys_role_menu` VALUES ('747', '51', '28');
INSERT INTO `sys_role_menu` VALUES ('748', '51', '29');
INSERT INTO `sys_role_menu` VALUES ('749', '51', '30');
INSERT INTO `sys_role_menu` VALUES ('750', '51', '1');
INSERT INTO `sys_role_menu` VALUES ('1064', '54', '53');
INSERT INTO `sys_role_menu` VALUES ('1095', '55', '2');
INSERT INTO `sys_role_menu` VALUES ('1096', '55', '6');
INSERT INTO `sys_role_menu` VALUES ('1097', '55', '7');
INSERT INTO `sys_role_menu` VALUES ('1098', '55', '3');
INSERT INTO `sys_role_menu` VALUES ('1099', '55', '50');
INSERT INTO `sys_role_menu` VALUES ('1100', '55', '49');
INSERT INTO `sys_role_menu` VALUES ('1101', '55', '1');
INSERT INTO `sys_role_menu` VALUES ('1856', '53', '28');
INSERT INTO `sys_role_menu` VALUES ('1857', '53', '29');
INSERT INTO `sys_role_menu` VALUES ('1858', '53', '30');
INSERT INTO `sys_role_menu` VALUES ('1859', '53', '27');
INSERT INTO `sys_role_menu` VALUES ('1860', '53', '57');
INSERT INTO `sys_role_menu` VALUES ('1861', '53', '71');
INSERT INTO `sys_role_menu` VALUES ('1862', '53', '48');
INSERT INTO `sys_role_menu` VALUES ('1863', '53', '72');
INSERT INTO `sys_role_menu` VALUES ('1864', '53', '1');
INSERT INTO `sys_role_menu` VALUES ('1865', '53', '7');
INSERT INTO `sys_role_menu` VALUES ('1866', '53', '55');
INSERT INTO `sys_role_menu` VALUES ('1867', '53', '56');
INSERT INTO `sys_role_menu` VALUES ('1868', '53', '62');
INSERT INTO `sys_role_menu` VALUES ('1869', '53', '15');
INSERT INTO `sys_role_menu` VALUES ('1870', '53', '2');
INSERT INTO `sys_role_menu` VALUES ('1871', '53', '61');
INSERT INTO `sys_role_menu` VALUES ('1872', '53', '20');
INSERT INTO `sys_role_menu` VALUES ('1873', '53', '21');
INSERT INTO `sys_role_menu` VALUES ('1874', '53', '22');
INSERT INTO `sys_role_menu` VALUES ('2084', '56', '68');
INSERT INTO `sys_role_menu` VALUES ('2085', '56', '60');
INSERT INTO `sys_role_menu` VALUES ('2086', '56', '59');
INSERT INTO `sys_role_menu` VALUES ('2087', '56', '58');
INSERT INTO `sys_role_menu` VALUES ('2088', '56', '51');
INSERT INTO `sys_role_menu` VALUES ('2089', '56', '50');
INSERT INTO `sys_role_menu` VALUES ('2090', '56', '49');
INSERT INTO `sys_role_menu` VALUES ('2243', '48', '72');
INSERT INTO `sys_role_menu` VALUES ('2247', '63', '-1');
INSERT INTO `sys_role_menu` VALUES ('2248', '63', '84');
INSERT INTO `sys_role_menu` VALUES ('2249', '63', '85');
INSERT INTO `sys_role_menu` VALUES ('2250', '63', '88');
INSERT INTO `sys_role_menu` VALUES ('2251', '63', '87');
INSERT INTO `sys_role_menu` VALUES ('2252', '64', '84');
INSERT INTO `sys_role_menu` VALUES ('2253', '64', '89');
INSERT INTO `sys_role_menu` VALUES ('2254', '64', '88');
INSERT INTO `sys_role_menu` VALUES ('2255', '64', '87');
INSERT INTO `sys_role_menu` VALUES ('2256', '64', '86');
INSERT INTO `sys_role_menu` VALUES ('2257', '64', '85');
INSERT INTO `sys_role_menu` VALUES ('2258', '65', '89');
INSERT INTO `sys_role_menu` VALUES ('2259', '65', '88');
INSERT INTO `sys_role_menu` VALUES ('2260', '65', '86');
INSERT INTO `sys_role_menu` VALUES ('2262', '67', '48');
INSERT INTO `sys_role_menu` VALUES ('2263', '68', '88');
INSERT INTO `sys_role_menu` VALUES ('2264', '68', '87');
INSERT INTO `sys_role_menu` VALUES ('2265', '69', '89');
INSERT INTO `sys_role_menu` VALUES ('2266', '69', '88');
INSERT INTO `sys_role_menu` VALUES ('2267', '69', '86');
INSERT INTO `sys_role_menu` VALUES ('2268', '69', '87');
INSERT INTO `sys_role_menu` VALUES ('2269', '69', '85');
INSERT INTO `sys_role_menu` VALUES ('2270', '69', '84');
INSERT INTO `sys_role_menu` VALUES ('2271', '70', '85');
INSERT INTO `sys_role_menu` VALUES ('2272', '70', '89');
INSERT INTO `sys_role_menu` VALUES ('2273', '70', '88');
INSERT INTO `sys_role_menu` VALUES ('2274', '70', '87');
INSERT INTO `sys_role_menu` VALUES ('2275', '70', '86');
INSERT INTO `sys_role_menu` VALUES ('2276', '70', '84');
INSERT INTO `sys_role_menu` VALUES ('2277', '71', '87');
INSERT INTO `sys_role_menu` VALUES ('2278', '72', '59');
INSERT INTO `sys_role_menu` VALUES ('2279', '73', '48');
INSERT INTO `sys_role_menu` VALUES ('2280', '74', '88');
INSERT INTO `sys_role_menu` VALUES ('2281', '74', '87');
INSERT INTO `sys_role_menu` VALUES ('2282', '75', '88');
INSERT INTO `sys_role_menu` VALUES ('2283', '75', '87');
INSERT INTO `sys_role_menu` VALUES ('2284', '76', '85');
INSERT INTO `sys_role_menu` VALUES ('2285', '76', '89');
INSERT INTO `sys_role_menu` VALUES ('2286', '76', '88');
INSERT INTO `sys_role_menu` VALUES ('2287', '76', '87');
INSERT INTO `sys_role_menu` VALUES ('2288', '76', '86');
INSERT INTO `sys_role_menu` VALUES ('2289', '76', '84');
INSERT INTO `sys_role_menu` VALUES ('2292', '78', '88');
INSERT INTO `sys_role_menu` VALUES ('2293', '78', '87');
INSERT INTO `sys_role_menu` VALUES ('2294', '78', null);
INSERT INTO `sys_role_menu` VALUES ('2295', '78', null);
INSERT INTO `sys_role_menu` VALUES ('2296', '78', null);
INSERT INTO `sys_role_menu` VALUES ('2308', '80', '87');
INSERT INTO `sys_role_menu` VALUES ('2309', '80', '86');
INSERT INTO `sys_role_menu` VALUES ('2310', '80', '-1');
INSERT INTO `sys_role_menu` VALUES ('2311', '80', '84');
INSERT INTO `sys_role_menu` VALUES ('2312', '80', '85');
INSERT INTO `sys_role_menu` VALUES ('2328', '79', '72');
INSERT INTO `sys_role_menu` VALUES ('2329', '79', '48');
INSERT INTO `sys_role_menu` VALUES ('2330', '79', '77');
INSERT INTO `sys_role_menu` VALUES ('2331', '79', '84');
INSERT INTO `sys_role_menu` VALUES ('2332', '79', '89');
INSERT INTO `sys_role_menu` VALUES ('2333', '79', '88');
INSERT INTO `sys_role_menu` VALUES ('2334', '79', '87');
INSERT INTO `sys_role_menu` VALUES ('2335', '79', '86');
INSERT INTO `sys_role_menu` VALUES ('2336', '79', '85');
INSERT INTO `sys_role_menu` VALUES ('2337', '79', '-1');
INSERT INTO `sys_role_menu` VALUES ('2338', '77', '89');
INSERT INTO `sys_role_menu` VALUES ('2339', '77', '88');
INSERT INTO `sys_role_menu` VALUES ('2340', '77', '87');
INSERT INTO `sys_role_menu` VALUES ('2341', '77', '86');
INSERT INTO `sys_role_menu` VALUES ('2342', '77', '85');
INSERT INTO `sys_role_menu` VALUES ('2343', '77', '84');
INSERT INTO `sys_role_menu` VALUES ('2344', '77', '72');
INSERT INTO `sys_role_menu` VALUES ('2345', '77', '-1');
INSERT INTO `sys_role_menu` VALUES ('2346', '77', '77');
INSERT INTO `sys_role_menu` VALUES ('2911', '1', '98');
INSERT INTO `sys_role_menu` VALUES ('2912', '1', '100');
INSERT INTO `sys_role_menu` VALUES ('2913', '1', '99');
INSERT INTO `sys_role_menu` VALUES ('2914', '1', '95');
INSERT INTO `sys_role_menu` VALUES ('2915', '1', '92');
INSERT INTO `sys_role_menu` VALUES ('2916', '1', '57');
INSERT INTO `sys_role_menu` VALUES ('2917', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('2918', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('2919', '1', '28');
INSERT INTO `sys_role_menu` VALUES ('2920', '1', '90');
INSERT INTO `sys_role_menu` VALUES ('2921', '1', '89');
INSERT INTO `sys_role_menu` VALUES ('2922', '1', '88');
INSERT INTO `sys_role_menu` VALUES ('2923', '1', '87');
INSERT INTO `sys_role_menu` VALUES ('2924', '1', '86');
INSERT INTO `sys_role_menu` VALUES ('2925', '1', '72');
INSERT INTO `sys_role_menu` VALUES ('2926', '1', '48');
INSERT INTO `sys_role_menu` VALUES ('2927', '1', '68');
INSERT INTO `sys_role_menu` VALUES ('2928', '1', '60');
INSERT INTO `sys_role_menu` VALUES ('2929', '1', '59');
INSERT INTO `sys_role_menu` VALUES ('2930', '1', '58');
INSERT INTO `sys_role_menu` VALUES ('2931', '1', '51');
INSERT INTO `sys_role_menu` VALUES ('2932', '1', '76');
INSERT INTO `sys_role_menu` VALUES ('2933', '1', '75');
INSERT INTO `sys_role_menu` VALUES ('2934', '1', '74');
INSERT INTO `sys_role_menu` VALUES ('2935', '1', '62');
INSERT INTO `sys_role_menu` VALUES ('2936', '1', '56');
INSERT INTO `sys_role_menu` VALUES ('2937', '1', '55');
INSERT INTO `sys_role_menu` VALUES ('2938', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('2939', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('2940', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('2941', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('2942', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('2943', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('2944', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('2945', '1', '61');
INSERT INTO `sys_role_menu` VALUES ('2946', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('2947', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('2948', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('2949', '1', '83');
INSERT INTO `sys_role_menu` VALUES ('2950', '1', '81');
INSERT INTO `sys_role_menu` VALUES ('2951', '1', '80');
INSERT INTO `sys_role_menu` VALUES ('2952', '1', '79');
INSERT INTO `sys_role_menu` VALUES ('2953', '1', '71');
INSERT INTO `sys_role_menu` VALUES ('2954', '1', '97');
INSERT INTO `sys_role_menu` VALUES ('2955', '1', '96');
INSERT INTO `sys_role_menu` VALUES ('2956', '1', '94');
INSERT INTO `sys_role_menu` VALUES ('2957', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('2958', '1', '91');
INSERT INTO `sys_role_menu` VALUES ('2959', '1', '85');
INSERT INTO `sys_role_menu` VALUES ('2960', '1', '84');
INSERT INTO `sys_role_menu` VALUES ('2961', '1', '77');
INSERT INTO `sys_role_menu` VALUES ('2962', '1', '50');
INSERT INTO `sys_role_menu` VALUES ('2963', '1', '49');
INSERT INTO `sys_role_menu` VALUES ('2964', '1', '73');
INSERT INTO `sys_role_menu` VALUES ('2965', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('2966', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('2967', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('2968', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('2969', '1', '78');
INSERT INTO `sys_role_menu` VALUES ('2970', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('2971', '1', '101');
INSERT INTO `sys_role_menu` VALUES ('2972', '1', '93');
INSERT INTO `sys_role_menu` VALUES ('2973', '1', '-1');
INSERT INTO `sys_role_menu` VALUES ('2974', '57', '93');
INSERT INTO `sys_role_menu` VALUES ('2975', '57', '99');
INSERT INTO `sys_role_menu` VALUES ('2976', '57', '95');
INSERT INTO `sys_role_menu` VALUES ('2977', '57', '101');
INSERT INTO `sys_role_menu` VALUES ('2978', '57', '96');
INSERT INTO `sys_role_menu` VALUES ('2979', '57', '94');
INSERT INTO `sys_role_menu` VALUES ('2980', '57', '-1');
INSERT INTO `sys_role_menu` VALUES ('2981', '58', '93');
INSERT INTO `sys_role_menu` VALUES ('2982', '58', '99');
INSERT INTO `sys_role_menu` VALUES ('2983', '58', '95');
INSERT INTO `sys_role_menu` VALUES ('2984', '58', '101');
INSERT INTO `sys_role_menu` VALUES ('2985', '58', '96');
INSERT INTO `sys_role_menu` VALUES ('2986', '58', '94');
INSERT INTO `sys_role_menu` VALUES ('2987', '58', '-1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `sex` bigint(32) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出身日期',
  `pic_id` bigint(32) DEFAULT NULL,
  `live_address` varchar(500) DEFAULT NULL COMMENT '现居住地',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '所在城市',
  `district` varchar(255) DEFAULT NULL COMMENT '所在地区',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '超级管理员', '27bd386e70f280e24c2f4f2a549b82cf', '6', 'admin@example.com', '17699999999', '1', '1', '2017-08-15 21:40:39', '2017-08-15 21:41:00', '96', '2017-12-14 00:00:00', '138', 'ccc', '121;', '北京市', '北京市市辖区', '东城区');
INSERT INTO `sys_user` VALUES ('2', 'test', '临时用户', '6cf3bb3deba2aadbd41ec9a22511084e', '6', 'test@bootdo.com', null, '1', '1', '2017-08-14 13:43:05', '2017-08-14 21:15:36', null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('36', 'ldh', '刘德华', 'bfd9394475754fbe45866eba97738c36', '7', 'ldh@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('123', 'zxy', '张学友', '35174ba93f5fe7267f1fb3c1bf903781', '6', 'zxy@bootdo', null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('124', 'wyf', '吴亦凡', 'e179e6f687bbd57b9d7efc4746c8090a', '6', 'wyf@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('130', 'lh', '鹿晗', '7924710cd673f68967cde70e188bb097', '9', 'lh@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('131', 'lhc', '令狐冲', 'd515538e17ecb570ba40344b5618f5d4', '6', 'lhc@bootdo.com', null, '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('134', 'lyh', '李彦宏', 'dc26092b3244d9d432863f2738180e19', '8', 'lyh@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('135', 'wjl', '王健林', '3967697dfced162cf6a34080259b83aa', '6', 'wjl@bootod.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('136', 'gdg', '郭德纲', '3bb1bda86bc02bf6478cd91e42135d2f', '9', 'gdg@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('137', 'test2', '测试用户2', '649169898e69272c0e5bc899baf1e904', '12', 'test2@bootdo.com', null, '1', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('73', '30', '48');
INSERT INTO `sys_user_role` VALUES ('74', '30', '49');
INSERT INTO `sys_user_role` VALUES ('75', '30', '50');
INSERT INTO `sys_user_role` VALUES ('76', '31', '48');
INSERT INTO `sys_user_role` VALUES ('77', '31', '49');
INSERT INTO `sys_user_role` VALUES ('78', '31', '52');
INSERT INTO `sys_user_role` VALUES ('79', '32', '48');
INSERT INTO `sys_user_role` VALUES ('80', '32', '49');
INSERT INTO `sys_user_role` VALUES ('81', '32', '50');
INSERT INTO `sys_user_role` VALUES ('82', '32', '51');
INSERT INTO `sys_user_role` VALUES ('83', '32', '52');
INSERT INTO `sys_user_role` VALUES ('84', '33', '38');
INSERT INTO `sys_user_role` VALUES ('85', '33', '49');
INSERT INTO `sys_user_role` VALUES ('86', '33', '52');
INSERT INTO `sys_user_role` VALUES ('87', '34', '50');
INSERT INTO `sys_user_role` VALUES ('88', '34', '51');
INSERT INTO `sys_user_role` VALUES ('89', '34', '52');
INSERT INTO `sys_user_role` VALUES ('106', '124', '1');
INSERT INTO `sys_user_role` VALUES ('110', '1', '1');
INSERT INTO `sys_user_role` VALUES ('111', '2', '1');
INSERT INTO `sys_user_role` VALUES ('113', '131', '48');
INSERT INTO `sys_user_role` VALUES ('117', '135', '1');
INSERT INTO `sys_user_role` VALUES ('120', '134', '1');
INSERT INTO `sys_user_role` VALUES ('121', '134', '48');
INSERT INTO `sys_user_role` VALUES ('123', '130', '1');
INSERT INTO `sys_user_role` VALUES ('124', null, '48');
INSERT INTO `sys_user_role` VALUES ('127', '123', '48');
INSERT INTO `sys_user_role` VALUES ('132', '36', '48');
INSERT INTO `sys_user_role` VALUES ('133', '137', '56');
