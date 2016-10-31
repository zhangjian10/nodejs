/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : registration

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-10-31 15:52:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for expert
-- ----------------------------
DROP TABLE IF EXISTS `expert`;
CREATE TABLE `expert` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `commentScore` varchar(255) DEFAULT NULL,
  `orderCount` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `hospitalId` varchar(255) DEFAULT NULL,
  `featureHL` text CHARACTER SET utf8mb4,
  `photo` varchar(255) DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `officeId` varchar(255) DEFAULT NULL COMMENT '门诊ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of expert
-- ----------------------------
INSERT INTO `expert` VALUES ('00bdeecd-fb4a-437f-ab60-548d2f309d43000', '胡成平', '8.7', '3983', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '呼吸系统感染性疾病，肺部肿瘤及胸膜疾病', 'http://img.guahao.com/images/image140/bnu2591502.jpg?timestamp=1469498010496', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('0237c20e-3edd-40c3-9fee-12f623d33f5a000', '刘国珍', '8.9', '1118', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '乙型病毒性肝炎', 'http://img.guahao.com/images/image140/3aK2591147.jpg?timestamp=1469502986090', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('031198d2-20e2-4f9b-b690-55276c00017c000', '王锡阳', '8.2', '3386', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '脊柱畸形、脊柱损伤、脊柱结核、脊柱肿瘤、颈、腰椎间盘突出症的手术治疗', 'http://img.guahao.com/images/image140/8dA2604928.jpg?timestamp=1469502150859', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('05349f2b-390b-42e7-8bdd-0f927672ec6a000', '汤恢焕', '9.2', '713', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胆道外科、内镜外科、胰腺及血管外科', 'http://img.guahao.com/images/image140/JTv2673445.jpg', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('076ef6de-bc4a-4c15-af74-0eb785db4127000', '翦新春', '8.8', '713', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '1．唇腭裂II期畸形的诊断与治疗；2．口腔颌面部畸形与缺损的诊断与治疗；3．口腔癌的诊断与治疗；4．颅中窝底肿瘤的诊断与治疗；5．口腔颌面部癌前病变的诊断与治疗', 'http://img.guahao.com/images/image140/fIW2590903.jpg?timestamp=1469502139669', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('0c4a4fb6-4438-4dd4-a6c0-0d5b4a7178ff000', '段力平', '9.1', '3405', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '', 'http://img.guahao.com/images/image140/eyR2577490.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('0e54d13b-bf4a-44be-ac9f-ee8647d972b2000', '章蓓', '9.1', '537', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '癫痫，神经康复', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('0ebd685b-f4a4-4811-b9e4-abae90e353d9000', '张之炯', '8.2', '112', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '心血管疾病，心绞痛等诊断治疗', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('1321783b-5df2-444d-aad0-11944ba8f818000', '谢建萍', '9', '4972', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '病毒性肝炎，慢性肝炎肝纤维化；重症肝炎、晚期肝硬化、多器官功能衰竭等', 'http://img.guahao.com/images/image140/soZ2590806.jpg?timestamp=1469503021563', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('13eb50e5-45c3-4524-bb66-a35e34daf860000', '欧阳淑其', '9.4', '2088', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '擅长心血管疾病', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('174aa6d6-b68c-4358-ad2b-e3be9fa5446b000', '王志明', '9', '2132', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肝脏疾病，特别是肝脏肿瘤。温馨提示：肝脏疾病即预约肝脏外科，甲状腺疾病即预约甲状腺外科；如所预约专科与疾病不符合，医生将不会接诊。', 'http://img.guahao.com/images/image140/zYX2590534.jpg?timestamp=1469503243292', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('17e8a0d8-30b4-47cd-a7dd-5bf13e352f12000', '陈立平', '9.1', '5336', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肾小球疾病的诊断与治疗（包括肾小球肾炎、肾病综合症及糖尿病肾病等）', 'http://img.guahao.com/images/image140/T3D2592214.jpg?timestamp=1469502305360', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('182080a9-3d29-4c0c-ac74-f20dd18c924b000', '袁新志', '9.1', '3960', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '慢性肾功能衰竭、肾病综合征', 'http://img.guahao.com/images/image140/LQo2666003.jpg?timestamp=1469502242550', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('1bbaf1cf-0bde-416d-8eef-8af98ed2dc17000', '刘绛仙', '9', '318', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '围产医学', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('1c701c88-c3ec-4de7-a9b5-64c2a87cb22e000', '徐正谷', '9.1', '72', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '小儿营养及营养障碍性疾病、感染性疾病、神经肌肉系统疾病', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('1e1c436b-ed6f-4c9d-ad2a-3040e713ea98000', '刘冬娥', '8.9', '3905', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '生殖中心 妇科生殖内分泌，试管婴儿', 'http://img.guahao.com/images/image140/Vfr2590748.jpg?timestamp=1469496230403', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('1eacb584-3095-4484-a929-d45aae190f70000', '谢秀梅', '9.3', '419', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '高血压、冠心病', 'http://img.guahao.com/images/image140/MYt2591428.jpg?timestamp=1469503530473', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('1ff3be7f-947e-4ddc-9f79-8333f9049dfe000', '钟惠菊', '9.1', '7701', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '糖尿病及其慢性并发症、甲状腺病及相关眼病', 'http://img.guahao.com/images/image140/jSx2591017.jpg?timestamp=1469503949456', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('206ef6f6-37dd-4385-8590-0bf5441e0f95000', '刘景平', '8.5', '1565', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000,f3373bec-200f-44d2-8908-76c5813f8c23000', '脑干肿瘤手术、复杂性颅内动脉瘤手术、大型颅咽管瘤手术、三脑室肿瘤手术、高颈段髓内肿瘤 脑积水的治疗，儿童神经外科.', 'http://img.guahao.com/images/image140/26h2590656.jpg?timestamp=1469498240746', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('207690ff-75a6-46f5-b4cb-f68562072e3f000', '谢玉桃', '9.2', '3293', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '病毒性肝炎的防治；传染病和其它感染性疾病的预防、临床诊治、心理咨询', 'http://img.guahao.com/images/image140/1bb2592290.jpg?timestamp=1469502998392', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('2af42971-f9d3-430e-847a-0a7a0e961485000', '涂青松', '8.9', '1183', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '头颈肿瘤，胸部肿瘤的放射治疗，综合治疗', 'http://img.guahao.com/images/image140/DtZ2590572.jpg?timestamp=1469502542090', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('2afc6b38-9fda-4579-b187-a46b5430b2d6000', '唐举玉', '9.1', '1321', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '在各种难治性创面修复、骨缺损、骨坏死、骨不连等治疗方面均具有很深的造诣，他是我国率先将ILIZAROV技术融入显微重建领域的专家，联合应用显微外科技术和ILIZAROV技术治疗各种复杂创伤、畸形及难治性骨病取得了满意的临床效果；他是我国创伤骨科领域最早开展穿支皮瓣游离移植手术的专家，目前在创伤骨科领域所开展的穿支皮瓣移植术式种类、完成的病例数、成功率居世界领先水平。他在国内外首先提出了皮瓣外科的“微创与美学”新理念，首先提出了“特殊形式穿支皮瓣”的新概念，首先提出了“一级源动脉+穿支皮瓣”的穿支皮瓣命名法。', 'http://img.guahao.com/images/image140/vqz2678719.jpg?timestamp=1469501918716', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('2b9f9d05-b819-4fd3-89d6-4d5f2e5320b0000', '李人杰', '9', '7461', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '骨关节损伤、退行性骨关节病、人工关节置换、股骨头缺血坏死', 'http://img.guahao.com/images/image140/jtZ2591191.jpg?timestamp=1469501721808', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('2ed6bcae-3b69-4c74-85c4-c23a6cf773af000', '刘保安', '0', '113', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('2f20e87c-29c4-4288-9100-2ab322b4e328000', '韩秀云', '9.4', '2002', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '糖尿病，甲状腺病，肾上腺疾病，更年期综合症', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('30e179b5-917c-439b-9c44-0b03e251b5fd000', '陈明亮', '8.7', '1.1万', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '皮肤病理诊断、各种皮肤科疑难罕见病的诊断与治疗', 'http://img.guahao.com/images/image140/LDp2590474.jpg?timestamp=1469502320387', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('310e68a7-cf3f-4558-89bf-2381290ff990000', '杨连粤', '9.3', '198', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '大肝癌，胰十二指肠切除手术', 'http://img.guahao.com/images/image140/YtL2590888.jpg?timestamp=1469503164149', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('31c05452-3c54-4e4a-a3c2-4ca44677cb61000', '蒋先凤', '9.6', '1256', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '血管外科，甲状腺外科', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3496c88a-cacc-4dd8-9597-e1a67028a2da000', '谭达人', '8.5', '1527', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '原发性血小板减少性紫癜、白细胞减少症、再生障碍性贫血、肝炎及肝硬化', 'http://img.guahao.com/images/image140/JYd2578039.jpg?timestamp=1469502536042', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('34b35596-38a1-4d42-9ebb-d1b06373a4bc000', '夏晓波', '9.3', '3151', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '青光眼、角膜移植、白内障超声乳化术以及角膜屈光性手术', 'http://img.guahao.com/images/image140/mHu2590491.jpg?timestamp=1469501350124', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3512e186-11bf-4251-9f87-fc9e56ad51ea000', '唐利立', '9.3', '1040', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '主攻乳腺癌早期诊断和优化治疗', 'http://img.guahao.com/images/image140/kQy2605085.jpg?timestamp=1469497156535', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('367326f4-8fec-4008-b237-9c2179d6388c000', '周伯通', '9.7', '246', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '白血病、淋巴瘤、各种贫血性疾病、出血性疾病（如血小板减少、血友病）及血栓栓塞', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('36875b07-1b3d-4c39-b5f7-1513eb4de463000', '张春芳', '8.8', '1831', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '心胸外科的常见病、多发病、疑难病', 'http://img.guahao.com/images/image140/Zja2591092.jpg?timestamp=1469496468267', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('393bd0e6-d484-44de-8aef-b364881f45a1000', '宁建平', '9', '3183', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '血液净化领域及动静脉内瘘手术，糖尿病，肾病', 'http://img.guahao.com/images/image140/SvZ2590564.jpg?timestamp=1469502293954', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3a06ae83-21e1-4ec6-98d1-58aed646ee37000', '刘志雄', '9.3', '1634', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '垂体腺瘤的综合治疗，颅内肿瘤的微创手术治疗，脑外伤的治疗。', 'http://img.guahao.com/images/image140/gOy2590781.jpg?timestamp=1469499582967', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3a3def0c-fa3e-4000-aeeb-4719bf72cd4a000', '彭解英', '8.6', '4476', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '口腔溃疡性疾病，口腔黏膜纤维性变', 'http://img.guahao.com/images/image140/5JW2605124.jpg?timestamp=1469502126875', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3cf4c4c2-f550-4a2e-bfdb-e5a4faea60cf000', '王平宝', '9.3', '4843', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '青光眼的诊断与治疗、先天性青光眼及顽固性青光眼的手术治疗，角膜感染性疾病的治疗', 'http://img.guahao.com/images/image140/cFn2590905.jpg?timestamp=1469501391494', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3ec67fc8-82ba-4cd5-90f2-181e9d4592c8000', '许雪亮', '9', '2526', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '眼眶病、整形、泪道病', 'http://img.guahao.com/images/image140/YEp2591094.jpg?timestamp=1469501474238', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('3ff596dc-09ec-49ac-be63-aaa06fb24da3000', '曾文洁', '9.3', '241', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '围产医学', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('406cf718-7dd1-4a28-a0d8-04b4c6d219c5000', '邢之华', '9', '286', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '用中西医结合的方法治疗各种疑难病症，特别是心脑血管疾病、血液病、肿瘤、脑外伤、脑血管意外（中风）脊髓损伤', 'http://img.guahao.com/images/image140/8bW2591434.jpg?timestamp=1469503062008', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('442fa67c-2447-4486-a426-158a1af89b17000', '刘慧霞', '8.9', '1003', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '糖尿病及急慢性并发症的诊断及防治；甲状腺相关疾病的诊治；肾上腺疾病。', 'http://img.guahao.com/images/image140/fGo2590914.jpg?timestamp=1469503438836', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('475079da-e50b-4973-8788-8d1630125711000', '姜冰', '9.1', '1938', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '颅内肿瘤、脑血管病、脑外伤，前、后循环动脉瘤、各种颅内血管畸形、松果体区肿瘤、鞍区巨大肿瘤、桥小脑角区肿瘤、各部位脑膜瘤等多种复杂病例的手术治疗', 'http://img.guahao.com/images/image140/LsX2591139.jpg?timestamp=1469498294622', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('47d11efe-8d25-4353-baa6-c2eb32dbe84b000', '钱炳圭', '8.9', '223', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '对肝炎，出血热、颅内感染等治疗率高，善于灵活运用中、西医结合治疗。', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('49653189-618e-4564-a10b-7754bf711ba7000', '周巧玲', '9.2', '3707', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '尿毒症继发性甲旁亢手术治疗、AKI早期诊断生物学指标筛选、人工组合肾抢救多器官功能衰竭及新生儿心脏术后肾衰腹透治疗等', 'http://img.guahao.com/images/image140/nu72591571.jpg?timestamp=1469502267622', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('4a6a876b-b3f8-4816-b714-e880044f9275000', '钟美佐', '8.7', '2129', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '擅长淋巴瘤、肺癌、胃癌、鼻咽癌、口腔癌、食管癌、肝癌、结直肠癌、卵巢癌、软组织肉瘤等恶性肿瘤的综合治疗及化疗', 'http://img.guahao.com/images/image140/sqB2632896.jpg?timestamp=1469502522444', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('4bb0e25f-b0fd-4fe1-81c1-9d01534a27f7000', '曹励之', '9.1', '2842', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '小儿血液病、儿童生长发育', 'http://img.guahao.com/images/image140/QPe2592469.jpg?timestamp=1469495686535', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('4c27374a-e69b-4256-8550-4473937f877d000', '李年丰', '8.5', '954', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肝胆外科，腹腔镜胆道外科、肠道外科、 晚期肝脏肿瘤综合治疗', 'http://img.guahao.com/images/image140/ZUE2590850.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('4f25d59c-3e20-4d3a-bab1-838958e6c51e000', '黄晓元', '9.1', '354', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '创伤修复与功能重建和大面积创伤治疗及烧伤，整形，美容', 'http://img.guahao.com/images/image140/5Jn2591274.jpg?timestamp=1469496808999', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('4f9a548e-e46b-4438-8289-5497a9135929000', '张宏其', '8.1', '2807', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '脊柱侧弯、脊柱畸形、颈椎病、腰腿痛、脊柱结核、肿瘤、人工颈、腰椎间盘置换、微创手术', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('4fa994da-65c0-4b3d-9c96-252c87506dd6000', '周建华', '0', '62', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('50db48c9-b296-41c5-b0ec-3de97c61d72f000', '秦天森', '8.9', '185', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '颅内胶质瘤，脑外伤，脑积水', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('516812cb-9a00-465d-adf3-c1c096c585bf000', '谭浅', '9.1', '2554', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '白内障，青光眼', 'http://img.guahao.com/images/image140/G2i2591212.jpg?timestamp=1469501427943', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('522daac6-14fc-47ee-89bc-7d81d0fc844b000', '黄建华', '9.1', '2244', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '血管外科', 'http://img.guahao.com/images/image140/BfF2591519.jpg?timestamp=1469503121288', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('522f4084-965b-4024-9350-e9f71d0acf2d000', '张熙纯', '9.1', '1270', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胃肠疾病', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('5b3ac604-3504-4254-a326-eabb72b205a7000', '李炜', '8.6', '273', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '应用中医、中西医结合医及针灸等方法治疗多种疑难杂证：1、颈、肩、腰、腿痛；2、头痛、头晕及心脑血管疾病；3、咳嗽、哮喘等支气管疾患；4、风湿性、类风湿性关节炎及红斑狼疮；5、各种神经损伤、恶性肿瘤、皮肤病', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000', '陈胜喜', '9.4', '1690', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '瓣膜外科，先天性心脏病，肺癌，食管癌', 'http://img.guahao.com/images/image140/9HB2591615.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('5cac08aa-4a83-4d1f-b82b-35a46c7f279f000', '肖振军', '6.6', '164', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '老年慢性支气管炎，阻塞性肺气肿，肺源性心脏病及肺癌', 'http://img.guahao.com/images/image140/5Qp2591327.jpg?timestamp=1469503592020', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('5d25d923-9886-4ed2-b812-920096958012000', '左晓霞', '9.5', '1298', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '系统性红斑狼疮、类风湿关节炎、干燥综合征等多种自身免疫性疾病的诊疗；特别是对系统性红斑狼疮患者妊娠时机的把握有着丰富的临床经验', 'http://img.guahao.com/images/image140/t3u2644021.jpg?timestamp=1469502644241', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('5ea91ac9-9005-4b80-aa54-5a0f93f61616000', '张成裕', '9.3', '3491', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '长期从事普通外科临床工作，善长肝胆道和胃肠道外科疾患的诊治。', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('642e054b-134d-4ca6-af5a-a433af9f09aa000', '谭德明', '9', '3636', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肝炎，感染性疾病', 'http://img.guahao.com/images/image140/bIu2590955.jpg?timestamp=1469503011206', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('694d2020-7114-42e6-b34d-24d7f28db58c000', '伍招娣', '7.9', '8837', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '产科 围产，流产、早产、出生缺陷，危重孕产妇救治', 'http://img.guahao.com/images/image140/eOq2591209.jpg?timestamp=1469495956533', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('69ba3fb4-1fe0-49b9-83c2-603a67ad2958000', '刘双珍', '9.1', '5571', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '斜视、弱视、屈光不正、肿瘤整形，弱视规范化治疗，物理治疗及药物治疗相结合，并充分利用视觉网络系统开展弱视及高级视功能的电脑治疗', 'http://img.guahao.com/images/image140/LPT2591512.jpg?timestamp=1469501412913', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('7094cd2b-dd57-4675-b25b-e759fd70436b000', '裴海平', '9.1', '2894', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '外科常见病，多发病，疑难病尤其是胃肠道肿瘤临床综合治疗', 'http://img.guahao.com/images/image140/isA2590982.jpg?timestamp=1469503101808', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('71df6a15-68d9-4be4-8575-46fe050a5e92000', '李宜雄', '8.9', '659', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胰腺外科、胆道外科、腔镜外科相关疾病。', 'http://img.guahao.com/images/image140/Zfv2686580.jpg?timestamp=1469503653686', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('75d3b488-c6e1-4f2c-9582-41beb466399f000', '孙维佳', '9.6', '203', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胰腺外科，门静脉高压症外科', 'http://img.guahao.com/images/image140/VU42687029.jpg?timestamp=1469503080355', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('793a1893-8f41-483d-95f9-77cbe9c57e00000', '陈泽奇', '9', '655', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '消化系统疾病、糖尿病神经病变、精神心理疾病及常见皮肤疾病的中医辨证治疗', 'http://img.guahao.com/images/image140/K2h2590535.jpg?timestamp=1469502986855', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('7d6d575e-9353-4e9b-bd95-d971ff71fcc7000', '朱双罗', '7.9', '174', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '重性精神病，儿童精神病、器质性精神病、老年痴呆、神经症、精神心理障碍、失眠症', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('7e486f2a-a044-4788-a332-0ce5ac607956000', '申良方', '6.8', '153', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '恶性肿瘤的放射治疗及综合治疗', 'http://img.guahao.com/images/image140/dNR2589211.jpg?timestamp=1469502654700', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('7fdd72a8-159a-4ef4-b9ea-6ff53febb996000', '冯永', '8.7', '1164', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '咽喉头颈外科，耳科 耳科临床，耳显微手术，人工电子耳蜗，耳聋早期康复', 'http://img.guahao.com/images/image140/tlz2590987.jpg?timestamp=1469501681085', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('81fb4302-81e1-40df-a5eb-20268630a109000', '谢红付', '9', '2.4万', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '1.损容性皮肤病：痤疮、脂溢性皮炎、激素依赖性皮炎、酒渣鼻、白癜风等。2.皮肤美容：皮肤护理的指导及激光美容。3.湿疹、银屑病', 'http://img.guahao.com/images/image140/OSk2590477.jpg?timestamp=1469502305934', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('84ba935d-c849-4178-b471-a8fe99c7704d000', '张怡', '9.2', '2019', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '妇科 妇科子宫内膜异位症、子宫肌瘤、不孕症、妇科腔镜及妇科疑难病症', 'http://img.guahao.com/images/image140/cQB2591231.jpg?timestamp=1469496076381', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('8589e3a8-2c16-4f86-9bb6-8dc91328f7c8000', '杨湛', '9.3', '796', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '妇科各类疾病及良性、恶性肿瘤。主攻卵巢癌、宫颈癌、子宫内膜癌', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('86935ca8-d605-4619-93c1-65b4986d5c0e000', '杨天伦', '9.1', '1337', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '高血压病的基础、药物、临床及社区防治、冠心病的介入治疗（PCI）及心理治疗', 'http://img.guahao.com/images/image140/12S2590794.jpg?timestamp=1469495433689', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('898c77e4-af79-4ff8-9dfa-45c0da0007ae000', '邱元正', '0', '284', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '咽喉头颈外科 鼻咽癌为主的耳鼻咽喉头颈肿瘤', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('8a2a2068-950b-4af8-94c5-40baafb2827a000', '张卫社', '9.5', '5711', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '产科 在严重产科出血的手术治疗、危重孕产妇的救治、早产和难免流产的预测及综合诊治，新型早产药物的研发等方面有较深的造诣。', 'http://img.guahao.com/images/image140/JQ52592503.jpg?timestamp=1469495994756', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('8aad4eb1-c379-4c43-b4d3-f9add8fb8224000', '邓展生', '8.4', '4058', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '颈椎病、脊柱创伤、退行性疾病、肿瘤、结核、人工颈、腰椎间盘置换', 'http://img.guahao.com/images/image140/TQZ2590918.jpg?timestamp=1469502177095', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('8c452ab1-b789-43ea-ba40-a1b6b111ab36000', '肖健云', '8.5', '191', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '鼻咽癌为主的头颈肿瘤，颅颌肿瘤及鼻窦耳科疾病', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('8f9b6cf1-2319-49fe-ba01-6d50845c8730000', '岳少杰', '9.5', '885', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '新生儿危急重症的抢救，对于重度新生儿窒息、缺氧缺血性脑病、颅内出血、新生儿肺透明膜病、新生儿感染、重症新生儿溶血病、胆红素脑病、极早早产儿和极低出生体重儿', 'http://img.guahao.com/images/image140/ZRn2590499.jpg?timestamp=1469495712161', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('92421add-ddc8-4c75-94f0-8bb538fde52c000', '周江南', '9.2', '911', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '腰椎间盘突出、骨质疏松症，创伤、骨病、骨肿瘤和骨关节畸形', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('92ea4c9f-7ba5-44a1-9578-79677c53042c000', '饶汉珍', '8.4', '630', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '银屑病（牛皮癣），性病，血管瘤', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('93d89dd7-0dbd-4456-9d21-ab027b9c0e25000', '吴小影', '9.2', '3129', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '屈光、斜视及弱视。各类水平、垂直及复杂性斜视、先天性眼球震颤等眼肌疾病的临床治疗', 'http://img.guahao.com/images/image140/OPK2591255.jpg?timestamp=1469501456263', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('94530699-84fa-4c9a-abcc-189054e0c062000', '田湘娥', '9.3', '4798', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '耳科疾病，耳显微外科及听力重建', 'http://img.guahao.com/images/image140/nGY2690369.jpg?timestamp=1469501653218', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('97c704de-adfc-4266-86ab-465f8c504a3a000', '张桂英', '8.7', '2732', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胃肠疾病、消化道肿瘤的诊断与治疗、消化系统疑难杂症的诊断等', 'http://img.guahao.com/images/image140/7OK2590577.jpg?timestamp=1469501074771', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('9d9d28aa-5c67-4166-bd02-3fb36130a7cb000', '周宏研', '8.9', '484', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '心脏病包括冠心病、高血压、心肌炎、心衰、心律、心律不齐、心电图、心脏彩超', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('9e67dfcb-faf2-402e-a41f-371be2638bbf000', '金丽娟', '8.8', '1777', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '神经心理，痴呆', 'http://img.guahao.com/images/image140/fO02590571.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('9eb53db7-35ca-47fc-aede-0ad4f4a1cfd3000', '胡国龄', '9.6', '1058', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '急慢性和中型肝炎，肝纤维化的治疗，黄疸待查，发热待查的诊断和治疗', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a0928316-5e54-487b-916e-c40ee2785ffe000', '胡懿郃', '8.8', '2167', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '人工关节置换手术（髋膝关节骨关节炎、类风湿性关节炎、创伤性关节炎、股骨头缺血坏死、强直性脊柱炎致髋膝关节强直、成人髋关节发育不良（先天性髋关节脱位）、感染性关节后遗骨关节病、骨肿瘤等疾病），人工关节翻修手术（髋、膝关节无菌性松动和感染性松动）。', 'http://img.guahao.com/images/image140/Ce92604563.jpg?timestamp=1469501810853', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a0ffa584-d417-4730-8adc-9926e43717c8000', '龙剑虹', '8.7', '1066', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000,f3373bec-200f-44d2-8908-76c5813f8c23000', '烧伤，整形，美容康复治疗', 'http://img.guahao.com/images/image140/5O42696829.jpg?timestamp=1469497344788', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a1300fa6-366b-49e5-ab87-eb56ddef0de6000', '张亚平', '8.4', '2866', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '人工关节置换手术，骨关节创伤', 'http://img.guahao.com/images/image140/tRC2590956.jpg?timestamp=1469501786157', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a3e4912c-816d-43b9-92cc-13c414857de8000', '欧细平', '9', '5671', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '心脏B超，能用彩超诊断各种先心病', 'http://img.guahao.com/images/image140/5aL2591300.jpg?timestamp=1469495352593', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a4f78619-c936-48e9-a6b5-21e779344a24000', '廖前德', '8.4', '5755', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '骨关节疾病，人工关节，股骨头坏死', 'http://img.guahao.com/images/image140/79F2591503.jpg?timestamp=1469501749785', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a8e2ca7d-1f18-44e1-aae2-87d2274ff154000', '侯永宏', '8.3', '766', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '颅内肿瘤，脑外伤，立体定向和功能性神经外科（包括伽玛刀外科）', 'http://img.guahao.com/images/image140/djm2591207.jpg?timestamp=1469499608137', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('a8e961dd-cd4e-459a-9497-fdf21aadc605000', '姚若进', '8.8', '6286', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '妇科 妇科显微手术；妊娠合并内分泌疾病、免疫性疾病等多种疾病的诊治积', 'http://img.guahao.com/images/image140/Pof2591268.jpg?timestamp=1469496022161', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ae2bd301-e879-4a5f-b455-7829d7dbcbe8000', '陈蕾', '8.6', '1108', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000,98683bfe-c720-11e1-913c-5cf9dd2e7135000', '牙体缺损的修复，牙列缺损的固定修复，活动修复，牙列缺失修复', 'http://img.guahao.com/images/image140/1TT2580057.jpg?timestamp=1469502056170', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('afa213b0-b664-4c95-8bf3-b18d531b8786000', '吴彩玲', '9.2', '1056', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肾炎、肾病及风湿疾病相关的疾病。', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b0d76c1f-04e6-45e7-89e8-63a8d64a02a4000', '尹飞', '9.1', '4160', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '小儿呼吸，神经系统疾病', 'http://img.guahao.com/images/image140/jk52591250.jpg?timestamp=1469495594328', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b359a044-aa30-4bda-a0c4-51b0e6474251000', '杨家芬', '9.6', '368', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '急慢性肝病，各类传染性疾病', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b55cd0f8-b9b4-42e9-9251-2bf72c1ed3e1000', '杨期东', '8.9', '4280', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '神经系统疾病，脑血管病（中风），头痛，老年性痴呆和帕金森病等', 'http://img.guahao.com/images/image140/pvM2591636.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b6bff5d8-42c8-42c8-ae71-16c923b9acd4000', '王维鑫', '7.9', '268', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '泌尿系统肿瘤，男性病学的诊断治疗', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b7af0c47-9dc7-41d4-85e0-5fd26e88c5c5000', '梁清华', '9', '1939', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '中西医结合方法治疗各种风湿免疫病与骨关节病、脑血管病、重度脑损伤、恶性肿瘤、肾脏疾病、妇科疾病以及内科系统的疑难病种及危急病症', 'http://img.guahao.com/images/image140/2722591337.jpg?timestamp=1469503003778', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b847e4ba-67f4-499d-bf6c-04386b20873a000', '吴新华', '9.5', '7077', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '产科 围产医学及产前诊断', 'http://img.guahao.com/images/image140/3QO2590479.jpg?timestamp=1469495938798', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('b93c5af5-6968-4dc4-8591-d543a96158d3000', '顿金庚', '8.3', '6025', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '各式疑难泌尿外科手术处理，小儿泌尿、女性泌尿外科，以及各种先天性畸形的修复整形，如小儿先天性尿道上、下裂，隐匿阴茎矫正，隐睾下降固定，各式复杂尿瘘如膀胱阴道瘘、输尿管阴道瘘，尿道阴道瘘，尿道直肠瘘，膀胱腹壁瘘，膀胱全切原位膀胱术', 'http://img.guahao.com/images/image140/Pu42591290.jpg?timestamp=1469502540678', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ba1f41a0-8aa4-4497-bcae-adb1f62782bb000', '向前', '9.1', '2314', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000,f3373bec-200f-44d2-8908-76c5813f8c23000', '白内障、眼肿瘤整形，干眼症', 'http://img.guahao.com/images/image140/Vgl2590581.jpg?timestamp=1470013668862', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('bce3c7dc-d73d-4af2-b426-a758651b8a81000', '欧阳植庭', '8.6', '1003', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胃肠道疾病，胃癌，大肠癌及消化道疾病，血管外科', 'http://img.guahao.com/images/image140/smF2604744.jpg?timestamp=1469503482863', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('bd54749c-6efd-482c-bef1-1c8b989b541a000', '张海男', '8.9', '74', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '运用中西医结合方法治疗各种疑难杂症，尤其颅脑损伤、糖尿病、肾脏疾病、心脑血管疾病、眼病、抑郁症和肿瘤等', 'http://img.guahao.com/images/image140/CdG2591257.jpg?timestamp=1469503118625', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('c4c04957-32e0-4d3c-9eab-34f8be61763d000', '刘稚然', '8.2', '338', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '性病，皮肤癣菌病，色素斑', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('c4c33276-28fe-41c2-9d47-47979d50efec000', '刘惠宁', '8.7', '5546', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '妇科 妇产科疾病的诊治及手术治疗', 'http://img.guahao.com/images/image140/RqU2591638.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('c5fedefd-f428-44c7-8c2f-68d2330d50ee000', '范学工', '0', '39', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '病毒性肝炎、颅内感染、发热待查等传染病的诊治', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('c60744a5-e320-42a1-8f45-be79a8187982000', '肖水源', '9.5', '209', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '抑郁症、各类神经症、身心疾病和其它重性精神疾病的诊断、药物治疗和心理治疗。', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('c8549fca-a87a-443a-a1bf-b17dcaa41f19000', '罗万俊', '9.6', '909', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '心脏多瓣膜置换，心脏冠状动脉搭桥，大血管手术，复杂先天性心脏病修补', 'http://img.guahao.com/images/image140/hlv2604838.jpg?timestamp=1469496324854', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ca1b79fb-639b-4e2f-86be-34a7ca20d526000', '向选东', '8.7', '47', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '寄生虫病', 'http://img.guahao.com/images/image140/RMs2592289.jpg', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('cba4c7f3-129c-43ef-9eb1-6eb501fa9997000', '谢兆霞', '9', '199', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '血液系统恶性肿瘤', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('cd2236d4-f26b-450f-80b8-fb928fcfdcd6000', '李晓林', '9.2', '346', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '白血病的防治', 'http://img.guahao.com/images/image140/XyK2604835.jpg?timestamp=1469502428307', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('cda0ca04-e291-4262-b1e7-461264e3172c000', '罗百灵', '8.6', '4761', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肺部感染，慢性阻塞性肺疾病', 'http://img.guahao.com/images/image140/CUn2590582.jpg?timestamp=1469498048565', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('cdbc6240-d350-4493-a50b-11235750adb6000', '欧阳颗', '9.2', '255', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '急、慢性传染病与寄生虫病、发热、黄疸、腹泻及各型肝炎及肝硬化', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d04af632-982f-4bef-8e03-50114b6a73b6000', '黄福溥', '8.7', '286', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肠道在泌尿外科中的应用', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d12dc598-8f25-47f9-9a76-d0e14c2f95a2000', '阮景德', '0', '117', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肝胆、胃肠和老年外科疾病的治疗。', 'http://img.guahao.com/images/image140/saJ2590490.jpg?timestamp=1469503543234', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d3fa49f1-6d0d-409c-a97d-e6e8449efa41000', '李艳萍', '8.7', '4561', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '生殖中心 妇科卵巢储备能力低下，难治性薄型子宫内膜，反复胚胎着床失败。卵巢储备能力低下患者促排卵治疗的改良创新。', 'http://img.guahao.com/images/image140/jG82590640.jpg?timestamp=1469496044118', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d60aa1b3-7361-4e73-b311-b28440ca842a000', '梁昌华', '9.3', '213', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '心脏核医学，放射性核医学介入治疗', 'http://img.guahao.com/images/image140/nnw2590801.jpg?timestamp=1469502762976', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d6198f98-478e-4e2b-bb15-a17d0dc2c280000', '廖国庆', '8.9', '2180', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胃肠道外科疾病；胃癌；大肠癌；胃肠道遗传性肿瘤；肠道炎症性疾病；胃肠肿瘤', 'http://img.guahao.com/images/image140/tVH2590805.jpg?timestamp=1469503566942', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d6dfa25b-575e-4ede-bb9b-f318753bfbb8000', '石林阶', '8.5', '143', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '慢性肾炎，肾病综合症，恶性肿瘤，妇科炎症，月经不调及不孕，男性性功能障碍及不育，顽固性头痛，顽固性失眠，颈椎病，骨质增生症，风湿病，痛风，血液病，中疯后遗症，慢性支气管炎及各种疑难杂症的治疗', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d881bed8-50d1-4d1e-91c2-b8c9e18e478d000', '齐振华', '9.4', '1576', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '主攻慢性白血病、恶性淋巴瘤、多发性骨髓瘤、出血性疾病及贫血', 'http://img.guahao.com/images/image140/Oco2592170.jpg?timestamp=1469502549307', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('d8f453f4-c9bd-44e1-a7b4-b22d08d71c4b000', '熊声忠', '8.3', '1110', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '性病，真菌病，荨麻疹，大庖性皮肤病，白癜风', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('da07d6e0-686d-4bfb-879d-67d6eddb9631000', '赵素萍', '8.8', '6119', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '鼻颅底外科，咽喉头颈外科 鼻咽癌、喉癌、下咽癌、鼻腔鼻窦肿瘤、鼻颅底肿瘤及颈部肿块等的诊断和治疗', 'http://img.guahao.com/images/image140/JAV2590780.jpg?timestamp=1469501623170', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('dc232523-dcf7-44f7-b480-a3a0d0f4c111000', '方厂云', '9', '1464', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '牙髓炎', 'http://img.guahao.com/images/image140/l8t2592019.jpg?timestamp=1469502113785', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('e28b1f8b-1157-4a49-8f42-dd93f9c4a897000', '孙明', '9.6', '531', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '冠心病，风心病，心肌病，心肌炎，心衰，心律不齐，慢性肾炎，风湿性疾病，疑难重症的诊断和治疗', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('e319d652-547c-4105-81e6-1e344b1d5c37000', '黄俊辉', '9', '2591', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '乳腺癌、胃癌、食道癌、结直肠癌、肝癌、肺癌、鼻咽癌的化疗和免疫支持治疗', 'http://img.guahao.com/images/image140/5Or2591616.jpg?timestamp=1469502504983', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('e54a7840-ed05-4517-9751-e8e25da251d6000', '周佩芳', '8.7', '570', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '新生儿及神经系统疾病', 'http://img.guahao.com/images/image140/61B2590950.jpg?timestamp=1469495736048', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('e5702b9e-33f9-44c3-b3ce-8e7889fb1e52000', '胡建中', '9', '1254', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '颈椎病，颈椎间盘突出症等脊椎退行性疾病，颈椎畸形，脊椎骨折脱位，脊髓损伤，脊椎结核感染，脊椎肿瘤', 'http://img.guahao.com/images/image140/Ds12590872.jpg?timestamp=1469502216927', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('e9033d0b-ee75-45fc-8c73-6cc21b40155e000', '吴佳捷', '8', '4083', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '妇科 妇产科老年性疾病和生殖与免疫', 'http://img.guahao.com/images/image140/nmx2591256.jpg?timestamp=1469496134889', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('e963ca2b-c48e-4a51-a7dc-e2fd9f2e5cb3000', '刘遂心', '9.2', '400', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '危重病人的抢救，疑难心血管病诊断与治疗，心血管病的康复', 'http://img.guahao.com/images/image140/7iv2591432.jpg?timestamp=1469503333574', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ea259dd9-fba3-4d1d-91b7-7f8b4c353ef6000', '方加胜', '8.5', '1162', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '脑干区域肿瘤，颅内多发动脉瘤，脑胶质瘤，鞍区肿瘤，松果体区肿瘤', 'http://img.guahao.com/images/image140/CbR2590516.jpg?timestamp=1469498315081', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ea61dc89-873c-4d1c-8ed0-315bd9d1d36b000', '雷勇华', '9.3', '2501', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '青少年错牙合畸形矫治，唇腭裂患者的正畸治疗，MBT直丝弓矫治技术，自锁托槽矫治技术', 'http://img.guahao.com/images/image140/XeI2580025.jpg?timestamp=1469502089886', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ea76fa76-512d-4969-9e46-11047106a1c8000', '吕冰清', '8.9', '302', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '小儿神经病（弱智和脑瘫）', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('eae6f287-09c3-452e-a4d8-a0689f2ae27b000', '雷光华', '9', '492', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '①人工关节置换与翻修手术（全身各关节骨关节炎、创伤性关节炎、类风湿性关节炎、强直性脊柱炎关节病损、关节感染后遗畸形及髋关节发育畸形、股骨头坏死与股骨颈骨折不愈合、人工关节置换后感染或松动等的外科治疗）②关节镜手术（全身各关节伤病的微创治疗）', 'http://img.guahao.com/images/image140/9Eh2591565.jpg?timestamp=1469501880173', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ebb4c6b3-eefb-46a4-a296-0f18d02c5da4000', '胡随瑜', '8.9', '1146', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '抑郁障碍、神经症、睡眠障碍、更年期综合征、红斑狼疮、皮肤顽疾以及癌症康复期的中医药治疗', 'http://img.guahao.com/images/image140/S2L2591145.jpg?timestamp=1469503076625', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ec03c2b9-6c20-401b-8465-71301799e65b000', '袁君', '8.1', '764', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '头颈肿瘤、妇科肿瘤', 'http://img.guahao.com/images/image140/xwD2592106.jpg?timestamp=1469502637160', '女', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ec6b4eba-d35f-4518-ad09-661bf09a6e40000', '卢文能', '8.6', '178', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '消化道，肛肠，血管外科', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ed56f55f-d876-4a54-82a2-6778162b3551000', '毛杰', '8.4', '2150', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '乳腺癌的早期诊断、保乳治疗、前哨淋巴结探查、手术治疗和综合治疗', 'http://img.guahao.com/images/image140/8ai2590574.jpg?timestamp=1469497138881', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ed8892c8-ed22-4aa6-8a15-64848e81150d000', '张欣', '9', '2271', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '1、嗓音医学 2、咽喉肿瘤', 'http://img.guahao.com/images/image140/Sp42592411.jpg?timestamp=1469501667777', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('ef24d232-f9e6-4e75-b581-a126791fb082000', '齐范', '8.5', '7049', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '泌尿及男生殖系肿瘤、肾上腺外科、性分化异常性疾病、尿道外科、器官移植', 'http://img.guahao.com/images/image140/Ah82590948.jpg?timestamp=1469502608525', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('f0189067-5fa6-46b9-9b43-537222f0f9ea000', '李家邦', '8.8', '1159', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '中西医结合诊治消化系统及呼吸系统常见病，如胃十二指溃疡、慢性胃炎、消化不良、胃癌、慢性腹泻、结肠炎、结肠癌、支气管炎、肺炎、肺癌、支气管哮喘及失眠症、多汗症、乳腺癌术后等疾病', 'http://img.guahao.com/images/image140/pqu2591639.jpg?timestamp=1469503091452', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('f540d26c-58bc-4107-b3f5-529fef077bf7000', '陈琼', '0', '223', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '主要研究方向：肺肿瘤遗传易感性及早期诊治，肺癌转移与耐药，慢性阻塞性肺疾病与老年肺部感染。', 'http://img.guahao.com/images/image140/Bb42632699.jpg?timestamp=1469497977541', '男', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('f6fa34ee-c1e3-41a6-b4a1-81d8dbba7c29000', '陈子华', '8.9', '255', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '胃肠道疾病，胃癌，大肠癌，胃肠道其它疾病如顽固性便秘、肠瘘、肛周慢性疾病的诊治', 'http://img.guahao.com/images/image140/R7a2604745.jpg?timestamp=1469503666715', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('f9c964dc-7760-4085-a04e-d881a8749966000', '徐碧泉', '9.2', '290', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '妇科肿瘤', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('fb6d9c64-5102-4bd5-a32c-0162f9339912000', '罗学宏', '9.1', '1347', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肝胆肠及甲状腺外科', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('fccefc50-a90f-4775-b905-5aaa47e98417000', '龙文荣', '8.4', '278', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '颈椎病、腰腿痛、脊柱肿瘤、结核、人工颈、腰椎间盘置换', '//img.guahao.com/img/character/doc-unknow.png?_=20121223', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');
INSERT INTO `expert` VALUES ('fe8efa4c-324f-4062-9506-7063187447a7000', '肖奇明', '8.8', '6251', '448f9a19-8cd2-4ccf-a152-3930ec622d9f000', '肺，胸膜疾病及呼吸疾病急危重症', 'http://img.guahao.com/images/image140/8qc2591144.jpg?timestamp=1469498021123', '未知', '563cbb53-1294-4e46-a411-358dcff98f27000');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apm` int(1) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `expert_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3997 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('3726', '1', '2016-11-03', '70', '0237c20e-3edd-40c3-9fee-12f623d33f5a000');
INSERT INTO `schedule` VALUES ('3727', '1', '2016-11-10', '70', '0237c20e-3edd-40c3-9fee-12f623d33f5a000');
INSERT INTO `schedule` VALUES ('3728', '1', '2016-11-02', '202', '076ef6de-bc4a-4c15-af74-0eb785db4127000');
INSERT INTO `schedule` VALUES ('3729', '1', '2016-11-07', '202', '076ef6de-bc4a-4c15-af74-0eb785db4127000');
INSERT INTO `schedule` VALUES ('3730', '1', '2016-11-09', '202', '076ef6de-bc4a-4c15-af74-0eb785db4127000');
INSERT INTO `schedule` VALUES ('3731', '1', '2016-11-14', '202', '076ef6de-bc4a-4c15-af74-0eb785db4127000');
INSERT INTO `schedule` VALUES ('3732', '1', '2016-11-03', '70', '0c4a4fb6-4438-4dd4-a6c0-0d5b4a7178ff000');
INSERT INTO `schedule` VALUES ('3733', '1', '2016-11-01', '70', '0e54d13b-bf4a-44be-ac9f-ee8647d972b2000');
INSERT INTO `schedule` VALUES ('3734', '1', '2016-11-08', '70', '0e54d13b-bf4a-44be-ac9f-ee8647d972b2000');
INSERT INTO `schedule` VALUES ('3735', '1', '2016-11-01', '70', '1321783b-5df2-444d-aad0-11944ba8f818000');
INSERT INTO `schedule` VALUES ('3736', '1', '2016-11-08', '70', '1321783b-5df2-444d-aad0-11944ba8f818000');
INSERT INTO `schedule` VALUES ('3737', '1', '2016-11-01', '70', '13eb50e5-45c3-4524-bb66-a35e34daf860000');
INSERT INTO `schedule` VALUES ('3738', '1', '2016-11-02', '70', '13eb50e5-45c3-4524-bb66-a35e34daf860000');
INSERT INTO `schedule` VALUES ('3739', '1', '2016-11-08', '70', '13eb50e5-45c3-4524-bb66-a35e34daf860000');
INSERT INTO `schedule` VALUES ('3740', '1', '2016-11-09', '70', '13eb50e5-45c3-4524-bb66-a35e34daf860000');
INSERT INTO `schedule` VALUES ('3741', '1', '2016-11-03', '70', '17e8a0d8-30b4-47cd-a7dd-5bf13e352f12000');
INSERT INTO `schedule` VALUES ('3742', '1', '2016-11-01', '70', '182080a9-3d29-4c0c-ac74-f20dd18c924b000');
INSERT INTO `schedule` VALUES ('3743', '1', '2016-11-04', '70', '182080a9-3d29-4c0c-ac74-f20dd18c924b000');
INSERT INTO `schedule` VALUES ('3744', '1', '2016-11-08', '70', '182080a9-3d29-4c0c-ac74-f20dd18c924b000');
INSERT INTO `schedule` VALUES ('3745', '1', '2016-11-11', '70', '182080a9-3d29-4c0c-ac74-f20dd18c924b000');
INSERT INTO `schedule` VALUES ('3746', '1', '2016-11-02', '75', '1bbaf1cf-0bde-416d-8eef-8af98ed2dc17000');
INSERT INTO `schedule` VALUES ('3747', '1', '2016-11-09', '75', '1bbaf1cf-0bde-416d-8eef-8af98ed2dc17000');
INSERT INTO `schedule` VALUES ('3748', '1', '2016-11-01', '70', '1c701c88-c3ec-4de7-a9b5-64c2a87cb22e000');
INSERT INTO `schedule` VALUES ('3749', '1', '2016-11-07', '70', '1c701c88-c3ec-4de7-a9b5-64c2a87cb22e000');
INSERT INTO `schedule` VALUES ('3750', '1', '2016-11-08', '70', '1c701c88-c3ec-4de7-a9b5-64c2a87cb22e000');
INSERT INTO `schedule` VALUES ('3751', '1', '2016-11-14', '70', '1c701c88-c3ec-4de7-a9b5-64c2a87cb22e000');
INSERT INTO `schedule` VALUES ('3752', '1', '2016-11-10', '70', '1eacb584-3095-4484-a929-d45aae190f70000');
INSERT INTO `schedule` VALUES ('3753', '1', '2016-11-01', '70', '1ff3be7f-947e-4ddc-9f79-8333f9049dfe000');
INSERT INTO `schedule` VALUES ('3754', '1', '2016-11-08', '70', '1ff3be7f-947e-4ddc-9f79-8333f9049dfe000');
INSERT INTO `schedule` VALUES ('3755', '1', '2016-11-07', '70', '207690ff-75a6-46f5-b4cb-f68562072e3f000');
INSERT INTO `schedule` VALUES ('3756', '1', '2016-11-14', '70', '207690ff-75a6-46f5-b4cb-f68562072e3f000');
INSERT INTO `schedule` VALUES ('3757', '1', '2016-11-07', '70', '2af42971-f9d3-430e-847a-0a7a0e961485000');
INSERT INTO `schedule` VALUES ('3758', '1', '2016-11-14', '70', '2af42971-f9d3-430e-847a-0a7a0e961485000');
INSERT INTO `schedule` VALUES ('3759', '1', '2016-11-01', '70', '2ed6bcae-3b69-4c74-85c4-c23a6cf773af000');
INSERT INTO `schedule` VALUES ('3760', '1', '2016-11-08', '70', '2ed6bcae-3b69-4c74-85c4-c23a6cf773af000');
INSERT INTO `schedule` VALUES ('3761', '1', '2016-11-01', '70', '2f20e87c-29c4-4288-9100-2ab322b4e328000');
INSERT INTO `schedule` VALUES ('3762', '1', '2016-11-03', '70', '2f20e87c-29c4-4288-9100-2ab322b4e328000');
INSERT INTO `schedule` VALUES ('3763', '1', '2016-11-08', '70', '2f20e87c-29c4-4288-9100-2ab322b4e328000');
INSERT INTO `schedule` VALUES ('3764', '1', '2016-11-10', '70', '2f20e87c-29c4-4288-9100-2ab322b4e328000');
INSERT INTO `schedule` VALUES ('3765', '1', '2016-11-04', '70', '30e179b5-917c-439b-9c44-0b03e251b5fd000');
INSERT INTO `schedule` VALUES ('3766', '1', '2016-11-11', '70', '30e179b5-917c-439b-9c44-0b03e251b5fd000');
INSERT INTO `schedule` VALUES ('3767', '1', '2016-11-07', '200', '310e68a7-cf3f-4558-89bf-2381290ff990000');
INSERT INTO `schedule` VALUES ('3768', '1', '2016-11-14', '200', '310e68a7-cf3f-4558-89bf-2381290ff990000');
INSERT INTO `schedule` VALUES ('3769', '1', '2016-11-01', '70', '31c05452-3c54-4e4a-a3c2-4ca44677cb61000');
INSERT INTO `schedule` VALUES ('3770', '1', '2016-11-04', '70', '31c05452-3c54-4e4a-a3c2-4ca44677cb61000');
INSERT INTO `schedule` VALUES ('3771', '1', '2016-11-07', '70', '31c05452-3c54-4e4a-a3c2-4ca44677cb61000');
INSERT INTO `schedule` VALUES ('3772', '1', '2016-11-08', '70', '31c05452-3c54-4e4a-a3c2-4ca44677cb61000');
INSERT INTO `schedule` VALUES ('3773', '1', '2016-11-11', '70', '31c05452-3c54-4e4a-a3c2-4ca44677cb61000');
INSERT INTO `schedule` VALUES ('3774', '1', '2016-11-14', '70', '31c05452-3c54-4e4a-a3c2-4ca44677cb61000');
INSERT INTO `schedule` VALUES ('3775', '1', '2016-11-04', '70', '3496c88a-cacc-4dd8-9597-e1a67028a2da000');
INSERT INTO `schedule` VALUES ('3776', '1', '2016-11-11', '70', '3496c88a-cacc-4dd8-9597-e1a67028a2da000');
INSERT INTO `schedule` VALUES ('3777', '1', '2016-11-01', '200', '34b35596-38a1-4d42-9ebb-d1b06373a4bc000');
INSERT INTO `schedule` VALUES ('3778', '1', '2016-11-08', '200', '34b35596-38a1-4d42-9ebb-d1b06373a4bc000');
INSERT INTO `schedule` VALUES ('3779', '1', '2016-11-03', '70', '367326f4-8fec-4008-b237-9c2179d6388c000');
INSERT INTO `schedule` VALUES ('3780', '1', '2016-11-07', '70', '367326f4-8fec-4008-b237-9c2179d6388c000');
INSERT INTO `schedule` VALUES ('3781', '1', '2016-11-10', '70', '367326f4-8fec-4008-b237-9c2179d6388c000');
INSERT INTO `schedule` VALUES ('3782', '1', '2016-11-14', '70', '367326f4-8fec-4008-b237-9c2179d6388c000');
INSERT INTO `schedule` VALUES ('3783', '1', '2016-11-07', '70', '36875b07-1b3d-4c39-b5f7-1513eb4de463000');
INSERT INTO `schedule` VALUES ('3784', '1', '2016-11-14', '70', '36875b07-1b3d-4c39-b5f7-1513eb4de463000');
INSERT INTO `schedule` VALUES ('3785', '1', '2016-11-07', '70', '393bd0e6-d484-44de-8aef-b364881f45a1000');
INSERT INTO `schedule` VALUES ('3786', '1', '2016-11-14', '70', '393bd0e6-d484-44de-8aef-b364881f45a1000');
INSERT INTO `schedule` VALUES ('3787', '1', '2016-11-03', '70', '3a06ae83-21e1-4ec6-98d1-58aed646ee37000');
INSERT INTO `schedule` VALUES ('3788', '1', '2016-11-10', '70', '3a06ae83-21e1-4ec6-98d1-58aed646ee37000');
INSERT INTO `schedule` VALUES ('3789', '1', '2016-11-03', '72', '3a3def0c-fa3e-4000-aeeb-4719bf72cd4a000');
INSERT INTO `schedule` VALUES ('3790', '1', '2016-11-07', '72', '3a3def0c-fa3e-4000-aeeb-4719bf72cd4a000');
INSERT INTO `schedule` VALUES ('3791', '1', '2016-11-10', '72', '3a3def0c-fa3e-4000-aeeb-4719bf72cd4a000');
INSERT INTO `schedule` VALUES ('3792', '1', '2016-11-14', '72', '3a3def0c-fa3e-4000-aeeb-4719bf72cd4a000');
INSERT INTO `schedule` VALUES ('3793', '1', '2016-11-02', '200', '3ec67fc8-82ba-4cd5-90f2-181e9d4592c8000');
INSERT INTO `schedule` VALUES ('3794', '1', '2016-11-09', '200', '3ec67fc8-82ba-4cd5-90f2-181e9d4592c8000');
INSERT INTO `schedule` VALUES ('3795', '1', '2016-11-07', '75', '3ff596dc-09ec-49ac-be63-aaa06fb24da3000');
INSERT INTO `schedule` VALUES ('3796', '1', '2016-11-14', '75', '3ff596dc-09ec-49ac-be63-aaa06fb24da3000');
INSERT INTO `schedule` VALUES ('3797', '1', '2016-11-07', '70', '406cf718-7dd1-4a28-a0d8-04b4c6d219c5000');
INSERT INTO `schedule` VALUES ('3798', '1', '2016-11-14', '70', '406cf718-7dd1-4a28-a0d8-04b4c6d219c5000');
INSERT INTO `schedule` VALUES ('3799', '1', '2016-11-02', '70', '442fa67c-2447-4486-a426-158a1af89b17000');
INSERT INTO `schedule` VALUES ('3800', '1', '2016-11-09', '70', '442fa67c-2447-4486-a426-158a1af89b17000');
INSERT INTO `schedule` VALUES ('3801', '1', '2016-11-05', '70', '47d11efe-8d25-4353-baa6-c2eb32dbe84b000');
INSERT INTO `schedule` VALUES ('3802', '1', '2016-11-07', '70', '47d11efe-8d25-4353-baa6-c2eb32dbe84b000');
INSERT INTO `schedule` VALUES ('3803', '1', '2016-11-12', '70', '47d11efe-8d25-4353-baa6-c2eb32dbe84b000');
INSERT INTO `schedule` VALUES ('3804', '1', '2016-11-14', '70', '47d11efe-8d25-4353-baa6-c2eb32dbe84b000');
INSERT INTO `schedule` VALUES ('3805', '1', '2016-11-02', '70', '4a6a876b-b3f8-4816-b714-e880044f9275000');
INSERT INTO `schedule` VALUES ('3806', '1', '2016-11-09', '70', '4a6a876b-b3f8-4816-b714-e880044f9275000');
INSERT INTO `schedule` VALUES ('3807', '1', '2016-11-01', '70', '4c27374a-e69b-4256-8550-4473937f877d000');
INSERT INTO `schedule` VALUES ('3808', '1', '2016-11-08', '70', '4c27374a-e69b-4256-8550-4473937f877d000');
INSERT INTO `schedule` VALUES ('3809', '1', '2016-11-07', '200', '4f25d59c-3e20-4d3a-bab1-838958e6c51e000');
INSERT INTO `schedule` VALUES ('3810', '1', '2016-11-14', '200', '4f25d59c-3e20-4d3a-bab1-838958e6c51e000');
INSERT INTO `schedule` VALUES ('3811', '1', '2016-11-01', '70', '4f9a548e-e46b-4438-8289-5497a9135929000');
INSERT INTO `schedule` VALUES ('3812', '1', '2016-11-08', '70', '4f9a548e-e46b-4438-8289-5497a9135929000');
INSERT INTO `schedule` VALUES ('3813', '1', '2016-11-03', '70', '4fa994da-65c0-4b3d-9c96-252c87506dd6000');
INSERT INTO `schedule` VALUES ('3814', '1', '2016-11-10', '70', '4fa994da-65c0-4b3d-9c96-252c87506dd6000');
INSERT INTO `schedule` VALUES ('3815', '1', '2016-11-01', '70', '50db48c9-b296-41c5-b0ec-3de97c61d72f000');
INSERT INTO `schedule` VALUES ('3816', '1', '2016-11-07', '70', '50db48c9-b296-41c5-b0ec-3de97c61d72f000');
INSERT INTO `schedule` VALUES ('3817', '1', '2016-11-08', '70', '50db48c9-b296-41c5-b0ec-3de97c61d72f000');
INSERT INTO `schedule` VALUES ('3818', '1', '2016-11-14', '70', '50db48c9-b296-41c5-b0ec-3de97c61d72f000');
INSERT INTO `schedule` VALUES ('3819', '1', '2016-11-03', '70', '516812cb-9a00-465d-adf3-c1c096c585bf000');
INSERT INTO `schedule` VALUES ('3820', '1', '2016-11-10', '70', '516812cb-9a00-465d-adf3-c1c096c585bf000');
INSERT INTO `schedule` VALUES ('3821', '1', '2016-11-02', '70', '522f4084-965b-4024-9350-e9f71d0acf2d000');
INSERT INTO `schedule` VALUES ('3822', '1', '2016-11-03', '70', '522f4084-965b-4024-9350-e9f71d0acf2d000');
INSERT INTO `schedule` VALUES ('3823', '1', '2016-11-04', '70', '522f4084-965b-4024-9350-e9f71d0acf2d000');
INSERT INTO `schedule` VALUES ('3824', '1', '2016-11-09', '70', '522f4084-965b-4024-9350-e9f71d0acf2d000');
INSERT INTO `schedule` VALUES ('3825', '1', '2016-11-10', '70', '522f4084-965b-4024-9350-e9f71d0acf2d000');
INSERT INTO `schedule` VALUES ('3826', '1', '2016-11-11', '70', '522f4084-965b-4024-9350-e9f71d0acf2d000');
INSERT INTO `schedule` VALUES ('3827', '1', '2016-11-07', '203', '5b3ac604-3504-4254-a326-eabb72b205a7000');
INSERT INTO `schedule` VALUES ('3828', '1', '2016-11-14', '203', '5b3ac604-3504-4254-a326-eabb72b205a7000');
INSERT INTO `schedule` VALUES ('3829', '1', '2016-11-01', '70', '5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000');
INSERT INTO `schedule` VALUES ('3830', '1', '2016-11-02', '70', '5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000');
INSERT INTO `schedule` VALUES ('3831', '1', '2016-11-07', '70', '5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000');
INSERT INTO `schedule` VALUES ('3832', '1', '2016-11-08', '70', '5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000');
INSERT INTO `schedule` VALUES ('3833', '1', '2016-11-09', '70', '5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000');
INSERT INTO `schedule` VALUES ('3834', '1', '2016-11-14', '70', '5ba8496e-b6cc-48e2-8df8-4e0f415fe1a3000');
INSERT INTO `schedule` VALUES ('3835', '1', '2016-11-03', '70', '5cac08aa-4a83-4d1f-b82b-35a46c7f279f000');
INSERT INTO `schedule` VALUES ('3836', '1', '2016-11-10', '70', '5cac08aa-4a83-4d1f-b82b-35a46c7f279f000');
INSERT INTO `schedule` VALUES ('3837', '1', '2016-11-03', '70', '5ea91ac9-9005-4b80-aa54-5a0f93f61616000');
INSERT INTO `schedule` VALUES ('3838', '1', '2016-11-04', '70', '5ea91ac9-9005-4b80-aa54-5a0f93f61616000');
INSERT INTO `schedule` VALUES ('3839', '1', '2016-11-07', '70', '5ea91ac9-9005-4b80-aa54-5a0f93f61616000');
INSERT INTO `schedule` VALUES ('3840', '1', '2016-11-10', '70', '5ea91ac9-9005-4b80-aa54-5a0f93f61616000');
INSERT INTO `schedule` VALUES ('3841', '1', '2016-11-11', '70', '5ea91ac9-9005-4b80-aa54-5a0f93f61616000');
INSERT INTO `schedule` VALUES ('3842', '1', '2016-11-14', '70', '5ea91ac9-9005-4b80-aa54-5a0f93f61616000');
INSERT INTO `schedule` VALUES ('3843', '1', '2016-11-04', '200', '642e054b-134d-4ca6-af5a-a433af9f09aa000');
INSERT INTO `schedule` VALUES ('3844', '1', '2016-11-11', '200', '642e054b-134d-4ca6-af5a-a433af9f09aa000');
INSERT INTO `schedule` VALUES ('3845', '1', '2016-11-02', '70', '694d2020-7114-42e6-b34d-24d7f28db58c000');
INSERT INTO `schedule` VALUES ('3846', '1', '2016-11-03', '70', '694d2020-7114-42e6-b34d-24d7f28db58c000');
INSERT INTO `schedule` VALUES ('3847', '1', '2016-11-05', '70', '694d2020-7114-42e6-b34d-24d7f28db58c000');
INSERT INTO `schedule` VALUES ('3848', '1', '2016-11-09', '70', '694d2020-7114-42e6-b34d-24d7f28db58c000');
INSERT INTO `schedule` VALUES ('3849', '1', '2016-11-10', '70', '694d2020-7114-42e6-b34d-24d7f28db58c000');
INSERT INTO `schedule` VALUES ('3850', '1', '2016-11-12', '70', '694d2020-7114-42e6-b34d-24d7f28db58c000');
INSERT INTO `schedule` VALUES ('3851', '1', '2016-11-04', '70', '69ba3fb4-1fe0-49b9-83c2-603a67ad2958000');
INSERT INTO `schedule` VALUES ('3852', '1', '2016-11-07', '70', '69ba3fb4-1fe0-49b9-83c2-603a67ad2958000');
INSERT INTO `schedule` VALUES ('3853', '1', '2016-11-11', '70', '69ba3fb4-1fe0-49b9-83c2-603a67ad2958000');
INSERT INTO `schedule` VALUES ('3854', '1', '2016-11-14', '70', '69ba3fb4-1fe0-49b9-83c2-603a67ad2958000');
INSERT INTO `schedule` VALUES ('3855', '1', '2016-11-04', '70', '7094cd2b-dd57-4675-b25b-e759fd70436b000');
INSERT INTO `schedule` VALUES ('3856', '1', '2016-11-11', '70', '7094cd2b-dd57-4675-b25b-e759fd70436b000');
INSERT INTO `schedule` VALUES ('3857', '1', '2016-11-01', '200', '71df6a15-68d9-4be4-8575-46fe050a5e92000');
INSERT INTO `schedule` VALUES ('3858', '1', '2016-11-08', '200', '71df6a15-68d9-4be4-8575-46fe050a5e92000');
INSERT INTO `schedule` VALUES ('3859', '1', '2016-11-02', '70', '7d6d575e-9353-4e9b-bd95-d971ff71fcc7000');
INSERT INTO `schedule` VALUES ('3860', '1', '2016-11-04', '70', '7d6d575e-9353-4e9b-bd95-d971ff71fcc7000');
INSERT INTO `schedule` VALUES ('3861', '1', '2016-11-09', '70', '7d6d575e-9353-4e9b-bd95-d971ff71fcc7000');
INSERT INTO `schedule` VALUES ('3862', '1', '2016-11-11', '70', '7d6d575e-9353-4e9b-bd95-d971ff71fcc7000');
INSERT INTO `schedule` VALUES ('3863', '1', '2016-11-03', '200', '7e486f2a-a044-4788-a332-0ce5ac607956000');
INSERT INTO `schedule` VALUES ('3864', '1', '2016-11-10', '200', '7e486f2a-a044-4788-a332-0ce5ac607956000');
INSERT INTO `schedule` VALUES ('3865', '1', '2016-11-04', '202', '7fdd72a8-159a-4ef4-b9ea-6ff53febb996000');
INSERT INTO `schedule` VALUES ('3866', '1', '2016-11-11', '202', '7fdd72a8-159a-4ef4-b9ea-6ff53febb996000');
INSERT INTO `schedule` VALUES ('3867', '1', '2016-11-06', '70', '81fb4302-81e1-40df-a5eb-20268630a109000');
INSERT INTO `schedule` VALUES ('3868', '1', '2016-11-13', '70', '81fb4302-81e1-40df-a5eb-20268630a109000');
INSERT INTO `schedule` VALUES ('3869', '1', '2016-11-02', '72', '898c77e4-af79-4ff8-9dfa-45c0da0007ae000');
INSERT INTO `schedule` VALUES ('3870', '1', '2016-11-09', '72', '898c77e4-af79-4ff8-9dfa-45c0da0007ae000');
INSERT INTO `schedule` VALUES ('3871', '1', '2016-11-07', '70', '8a2a2068-950b-4af8-94c5-40baafb2827a000');
INSERT INTO `schedule` VALUES ('3872', '1', '2016-11-14', '70', '8a2a2068-950b-4af8-94c5-40baafb2827a000');
INSERT INTO `schedule` VALUES ('3873', '1', '2016-11-02', '70', '8aad4eb1-c379-4c43-b4d3-f9add8fb8224000');
INSERT INTO `schedule` VALUES ('3874', '1', '2016-11-09', '70', '8aad4eb1-c379-4c43-b4d3-f9add8fb8224000');
INSERT INTO `schedule` VALUES ('3875', '1', '2016-11-01', '202', '8c452ab1-b789-43ea-ba40-a1b6b111ab36000');
INSERT INTO `schedule` VALUES ('3876', '1', '2016-11-08', '202', '8c452ab1-b789-43ea-ba40-a1b6b111ab36000');
INSERT INTO `schedule` VALUES ('3877', '1', '2016-11-03', '70', '92421add-ddc8-4c75-94f0-8bb538fde52c000');
INSERT INTO `schedule` VALUES ('3878', '1', '2016-11-07', '70', '92421add-ddc8-4c75-94f0-8bb538fde52c000');
INSERT INTO `schedule` VALUES ('3879', '1', '2016-11-10', '70', '92421add-ddc8-4c75-94f0-8bb538fde52c000');
INSERT INTO `schedule` VALUES ('3880', '1', '2016-11-14', '70', '92421add-ddc8-4c75-94f0-8bb538fde52c000');
INSERT INTO `schedule` VALUES ('3881', '1', '2016-11-04', '70', '92ea4c9f-7ba5-44a1-9578-79677c53042c000');
INSERT INTO `schedule` VALUES ('3882', '1', '2016-11-07', '70', '92ea4c9f-7ba5-44a1-9578-79677c53042c000');
INSERT INTO `schedule` VALUES ('3883', '1', '2016-11-11', '70', '92ea4c9f-7ba5-44a1-9578-79677c53042c000');
INSERT INTO `schedule` VALUES ('3884', '1', '2016-11-14', '70', '92ea4c9f-7ba5-44a1-9578-79677c53042c000');
INSERT INTO `schedule` VALUES ('3885', '1', '2016-11-02', '70', '93d89dd7-0dbd-4456-9d21-ab027b9c0e25000');
INSERT INTO `schedule` VALUES ('3886', '1', '2016-11-09', '70', '93d89dd7-0dbd-4456-9d21-ab027b9c0e25000');
INSERT INTO `schedule` VALUES ('3887', '1', '2016-11-01', '200', '97c704de-adfc-4266-86ab-465f8c504a3a000');
INSERT INTO `schedule` VALUES ('3888', '1', '2016-11-07', '200', '97c704de-adfc-4266-86ab-465f8c504a3a000');
INSERT INTO `schedule` VALUES ('3889', '1', '2016-11-08', '200', '97c704de-adfc-4266-86ab-465f8c504a3a000');
INSERT INTO `schedule` VALUES ('3890', '1', '2016-11-14', '200', '97c704de-adfc-4266-86ab-465f8c504a3a000');
INSERT INTO `schedule` VALUES ('3891', '1', '2016-11-07', '70', '9d9d28aa-5c67-4166-bd02-3fb36130a7cb000');
INSERT INTO `schedule` VALUES ('3892', '1', '2016-11-14', '70', '9d9d28aa-5c67-4166-bd02-3fb36130a7cb000');
INSERT INTO `schedule` VALUES ('3893', '1', '2016-11-02', '70', '9e67dfcb-faf2-402e-a41f-371be2638bbf000');
INSERT INTO `schedule` VALUES ('3894', '1', '2016-11-04', '70', '9e67dfcb-faf2-402e-a41f-371be2638bbf000');
INSERT INTO `schedule` VALUES ('3895', '1', '2016-11-09', '70', '9e67dfcb-faf2-402e-a41f-371be2638bbf000');
INSERT INTO `schedule` VALUES ('3896', '1', '2016-11-11', '70', '9e67dfcb-faf2-402e-a41f-371be2638bbf000');
INSERT INTO `schedule` VALUES ('3897', '1', '2016-11-02', '70', '9eb53db7-35ca-47fc-aede-0ad4f4a1cfd3000');
INSERT INTO `schedule` VALUES ('3898', '1', '2016-11-09', '70', '9eb53db7-35ca-47fc-aede-0ad4f4a1cfd3000');
INSERT INTO `schedule` VALUES ('3899', '1', '2016-11-02', '200', 'a0ffa584-d417-4730-8adc-9926e43717c8000');
INSERT INTO `schedule` VALUES ('3900', '1', '2016-11-09', '200', 'a0ffa584-d417-4730-8adc-9926e43717c8000');
INSERT INTO `schedule` VALUES ('3901', '1', '2016-11-01', '70', 'a1300fa6-366b-49e5-ab87-eb56ddef0de6000');
INSERT INTO `schedule` VALUES ('3902', '1', '2016-11-08', '70', 'a1300fa6-366b-49e5-ab87-eb56ddef0de6000');
INSERT INTO `schedule` VALUES ('3903', '1', '2016-11-04', '70', 'a4f78619-c936-48e9-a6b5-21e779344a24000');
INSERT INTO `schedule` VALUES ('3904', '1', '2016-11-11', '70', 'a4f78619-c936-48e9-a6b5-21e779344a24000');
INSERT INTO `schedule` VALUES ('3905', '1', '2016-11-02', '70', 'afa213b0-b664-4c95-8bf3-b18d531b8786000');
INSERT INTO `schedule` VALUES ('3906', '1', '2016-11-07', '70', 'afa213b0-b664-4c95-8bf3-b18d531b8786000');
INSERT INTO `schedule` VALUES ('3907', '1', '2016-11-09', '70', 'afa213b0-b664-4c95-8bf3-b18d531b8786000');
INSERT INTO `schedule` VALUES ('3908', '1', '2016-11-14', '70', 'afa213b0-b664-4c95-8bf3-b18d531b8786000');
INSERT INTO `schedule` VALUES ('3909', '1', '2016-11-04', '70', 'b359a044-aa30-4bda-a0c4-51b0e6474251000');
INSERT INTO `schedule` VALUES ('3910', '1', '2016-11-11', '70', 'b359a044-aa30-4bda-a0c4-51b0e6474251000');
INSERT INTO `schedule` VALUES ('3911', '1', '2016-11-02', '70', 'b6bff5d8-42c8-42c8-ae71-16c923b9acd4000');
INSERT INTO `schedule` VALUES ('3912', '1', '2016-11-03', '70', 'b6bff5d8-42c8-42c8-ae71-16c923b9acd4000');
INSERT INTO `schedule` VALUES ('3913', '1', '2016-11-09', '70', 'b6bff5d8-42c8-42c8-ae71-16c923b9acd4000');
INSERT INTO `schedule` VALUES ('3914', '1', '2016-11-10', '70', 'b6bff5d8-42c8-42c8-ae71-16c923b9acd4000');
INSERT INTO `schedule` VALUES ('3915', '1', '2016-11-04', '203', 'b7af0c47-9dc7-41d4-85e0-5fd26e88c5c5000');
INSERT INTO `schedule` VALUES ('3916', '1', '2016-11-11', '203', 'b7af0c47-9dc7-41d4-85e0-5fd26e88c5c5000');
INSERT INTO `schedule` VALUES ('3917', '1', '2016-11-01', '70', 'b847e4ba-67f4-499d-bf6c-04386b20873a000');
INSERT INTO `schedule` VALUES ('3918', '1', '2016-11-08', '70', 'b847e4ba-67f4-499d-bf6c-04386b20873a000');
INSERT INTO `schedule` VALUES ('3919', '1', '2016-11-01', '70', 'bce3c7dc-d73d-4af2-b426-a758651b8a81000');
INSERT INTO `schedule` VALUES ('3920', '1', '2016-11-07', '70', 'bce3c7dc-d73d-4af2-b426-a758651b8a81000');
INSERT INTO `schedule` VALUES ('3921', '1', '2016-11-08', '70', 'bce3c7dc-d73d-4af2-b426-a758651b8a81000');
INSERT INTO `schedule` VALUES ('3922', '1', '2016-11-14', '70', 'bce3c7dc-d73d-4af2-b426-a758651b8a81000');
INSERT INTO `schedule` VALUES ('3923', '1', '2016-11-01', '70', 'c4c04957-32e0-4d3c-9eab-34f8be61763d000');
INSERT INTO `schedule` VALUES ('3924', '1', '2016-11-03', '70', 'c4c04957-32e0-4d3c-9eab-34f8be61763d000');
INSERT INTO `schedule` VALUES ('3925', '1', '2016-11-08', '70', 'c4c04957-32e0-4d3c-9eab-34f8be61763d000');
INSERT INTO `schedule` VALUES ('3926', '1', '2016-11-10', '70', 'c4c04957-32e0-4d3c-9eab-34f8be61763d000');
INSERT INTO `schedule` VALUES ('3927', '1', '2016-11-01', '75', 'c4c33276-28fe-41c2-9d47-47979d50efec000');
INSERT INTO `schedule` VALUES ('3928', '1', '2016-11-03', '75', 'c4c33276-28fe-41c2-9d47-47979d50efec000');
INSERT INTO `schedule` VALUES ('3929', '1', '2016-11-08', '75', 'c4c33276-28fe-41c2-9d47-47979d50efec000');
INSERT INTO `schedule` VALUES ('3930', '1', '2016-11-10', '75', 'c4c33276-28fe-41c2-9d47-47979d50efec000');
INSERT INTO `schedule` VALUES ('3931', '1', '2016-11-02', '200', 'c5fedefd-f428-44c7-8c2f-68d2330d50ee000');
INSERT INTO `schedule` VALUES ('3932', '1', '2016-11-09', '200', 'c5fedefd-f428-44c7-8c2f-68d2330d50ee000');
INSERT INTO `schedule` VALUES ('3933', '1', '2016-11-07', '200', 'c8549fca-a87a-443a-a1bf-b17dcaa41f19000');
INSERT INTO `schedule` VALUES ('3934', '1', '2016-11-14', '200', 'c8549fca-a87a-443a-a1bf-b17dcaa41f19000');
INSERT INTO `schedule` VALUES ('3935', '1', '2016-11-02', '70', 'ca1b79fb-639b-4e2f-86be-34a7ca20d526000');
INSERT INTO `schedule` VALUES ('3936', '1', '2016-11-09', '70', 'ca1b79fb-639b-4e2f-86be-34a7ca20d526000');
INSERT INTO `schedule` VALUES ('3937', '1', '2016-11-01', '200', 'cba4c7f3-129c-43ef-9eb1-6eb501fa9997000');
INSERT INTO `schedule` VALUES ('3938', '1', '2016-11-02', '200', 'cba4c7f3-129c-43ef-9eb1-6eb501fa9997000');
INSERT INTO `schedule` VALUES ('3939', '1', '2016-11-08', '200', 'cba4c7f3-129c-43ef-9eb1-6eb501fa9997000');
INSERT INTO `schedule` VALUES ('3940', '1', '2016-11-09', '200', 'cba4c7f3-129c-43ef-9eb1-6eb501fa9997000');
INSERT INTO `schedule` VALUES ('3941', '1', '2016-11-02', '70', 'cda0ca04-e291-4262-b1e7-461264e3172c000');
INSERT INTO `schedule` VALUES ('3942', '1', '2016-11-09', '70', 'cda0ca04-e291-4262-b1e7-461264e3172c000');
INSERT INTO `schedule` VALUES ('3943', '1', '2016-11-03', '70', 'cdbc6240-d350-4493-a50b-11235750adb6000');
INSERT INTO `schedule` VALUES ('3944', '1', '2016-11-10', '70', 'cdbc6240-d350-4493-a50b-11235750adb6000');
INSERT INTO `schedule` VALUES ('3945', '1', '2016-11-04', '70', 'd04af632-982f-4bef-8e03-50114b6a73b6000');
INSERT INTO `schedule` VALUES ('3946', '1', '2016-11-05', '70', 'd04af632-982f-4bef-8e03-50114b6a73b6000');
INSERT INTO `schedule` VALUES ('3947', '1', '2016-11-11', '70', 'd04af632-982f-4bef-8e03-50114b6a73b6000');
INSERT INTO `schedule` VALUES ('3948', '1', '2016-11-12', '70', 'd04af632-982f-4bef-8e03-50114b6a73b6000');
INSERT INTO `schedule` VALUES ('3949', '1', '2016-11-03', '70', 'd6198f98-478e-4e2b-bb15-a17d0dc2c280000');
INSERT INTO `schedule` VALUES ('3950', '1', '2016-11-10', '70', 'd6198f98-478e-4e2b-bb15-a17d0dc2c280000');
INSERT INTO `schedule` VALUES ('3951', '1', '2016-11-03', '203', 'd6dfa25b-575e-4ede-bb9b-f318753bfbb8000');
INSERT INTO `schedule` VALUES ('3952', '1', '2016-11-10', '203', 'd6dfa25b-575e-4ede-bb9b-f318753bfbb8000');
INSERT INTO `schedule` VALUES ('3953', '1', '2016-11-02', '70', 'd8f453f4-c9bd-44e1-a7b4-b22d08d71c4b000');
INSERT INTO `schedule` VALUES ('3954', '1', '2016-11-09', '70', 'd8f453f4-c9bd-44e1-a7b4-b22d08d71c4b000');
INSERT INTO `schedule` VALUES ('3955', '1', '2016-11-07', '202', 'da07d6e0-686d-4bfb-879d-67d6eddb9631000');
INSERT INTO `schedule` VALUES ('3956', '1', '2016-11-14', '202', 'da07d6e0-686d-4bfb-879d-67d6eddb9631000');
INSERT INTO `schedule` VALUES ('3957', '1', '2016-11-02', '72', 'dc232523-dcf7-44f7-b480-a3a0d0f4c111000');
INSERT INTO `schedule` VALUES ('3958', '1', '2016-11-09', '72', 'dc232523-dcf7-44f7-b480-a3a0d0f4c111000');
INSERT INTO `schedule` VALUES ('3959', '1', '2016-11-01', '70', 'e319d652-547c-4105-81e6-1e344b1d5c37000');
INSERT INTO `schedule` VALUES ('3960', '1', '2016-11-08', '70', 'e319d652-547c-4105-81e6-1e344b1d5c37000');
INSERT INTO `schedule` VALUES ('3961', '1', '2016-11-02', '70', 'e54a7840-ed05-4517-9751-e8e25da251d6000');
INSERT INTO `schedule` VALUES ('3962', '1', '2016-11-03', '70', 'e54a7840-ed05-4517-9751-e8e25da251d6000');
INSERT INTO `schedule` VALUES ('3963', '1', '2016-11-09', '70', 'e54a7840-ed05-4517-9751-e8e25da251d6000');
INSERT INTO `schedule` VALUES ('3964', '1', '2016-11-10', '70', 'e54a7840-ed05-4517-9751-e8e25da251d6000');
INSERT INTO `schedule` VALUES ('3965', '1', '2016-11-01', '75', 'e9033d0b-ee75-45fc-8c73-6cc21b40155e000');
INSERT INTO `schedule` VALUES ('3966', '1', '2016-11-04', '75', 'e9033d0b-ee75-45fc-8c73-6cc21b40155e000');
INSERT INTO `schedule` VALUES ('3967', '1', '2016-11-08', '75', 'e9033d0b-ee75-45fc-8c73-6cc21b40155e000');
INSERT INTO `schedule` VALUES ('3968', '1', '2016-11-11', '75', 'e9033d0b-ee75-45fc-8c73-6cc21b40155e000');
INSERT INTO `schedule` VALUES ('3969', '1', '2016-11-01', '70', 'e963ca2b-c48e-4a51-a7dc-e2fd9f2e5cb3000');
INSERT INTO `schedule` VALUES ('3970', '1', '2016-11-08', '70', 'e963ca2b-c48e-4a51-a7dc-e2fd9f2e5cb3000');
INSERT INTO `schedule` VALUES ('3971', '1', '2016-11-02', '72', 'ea61dc89-873c-4d1c-8ed0-315bd9d1d36b000');
INSERT INTO `schedule` VALUES ('3972', '1', '2016-11-04', '72', 'ea61dc89-873c-4d1c-8ed0-315bd9d1d36b000');
INSERT INTO `schedule` VALUES ('3973', '1', '2016-11-09', '72', 'ea61dc89-873c-4d1c-8ed0-315bd9d1d36b000');
INSERT INTO `schedule` VALUES ('3974', '1', '2016-11-11', '72', 'ea61dc89-873c-4d1c-8ed0-315bd9d1d36b000');
INSERT INTO `schedule` VALUES ('3975', '1', '2016-11-07', '70', 'ea76fa76-512d-4969-9e46-11047106a1c8000');
INSERT INTO `schedule` VALUES ('3976', '1', '2016-11-14', '70', 'ea76fa76-512d-4969-9e46-11047106a1c8000');
INSERT INTO `schedule` VALUES ('3977', '1', '2016-11-01', '73', 'ebb4c6b3-eefb-46a4-a296-0f18d02c5da4000');
INSERT INTO `schedule` VALUES ('3978', '1', '2016-11-08', '73', 'ebb4c6b3-eefb-46a4-a296-0f18d02c5da4000');
INSERT INTO `schedule` VALUES ('3979', '1', '2016-11-04', '70', 'ec03c2b9-6c20-401b-8465-71301799e65b000');
INSERT INTO `schedule` VALUES ('3980', '1', '2016-11-11', '70', 'ec03c2b9-6c20-401b-8465-71301799e65b000');
INSERT INTO `schedule` VALUES ('3981', '1', '2016-11-03', '70', 'ec6b4eba-d35f-4518-ad09-661bf09a6e40000');
INSERT INTO `schedule` VALUES ('3982', '1', '2016-11-10', '70', 'ec6b4eba-d35f-4518-ad09-661bf09a6e40000');
INSERT INTO `schedule` VALUES ('3983', '1', '2016-11-07', '70', 'ef24d232-f9e6-4e75-b581-a126791fb082000');
INSERT INTO `schedule` VALUES ('3984', '1', '2016-11-14', '70', 'ef24d232-f9e6-4e75-b581-a126791fb082000');
INSERT INTO `schedule` VALUES ('3985', '1', '2016-11-02', '203', 'f0189067-5fa6-46b9-9b43-537222f0f9ea000');
INSERT INTO `schedule` VALUES ('3986', '1', '2016-11-09', '203', 'f0189067-5fa6-46b9-9b43-537222f0f9ea000');
INSERT INTO `schedule` VALUES ('3987', '1', '2016-11-02', '200', 'f540d26c-58bc-4107-b3f5-529fef077bf7000');
INSERT INTO `schedule` VALUES ('3988', '1', '2016-11-09', '200', 'f540d26c-58bc-4107-b3f5-529fef077bf7000');
INSERT INTO `schedule` VALUES ('3989', '1', '2016-11-03', '75', 'f9c964dc-7760-4085-a04e-d881a8749966000');
INSERT INTO `schedule` VALUES ('3990', '1', '2016-11-04', '75', 'f9c964dc-7760-4085-a04e-d881a8749966000');
INSERT INTO `schedule` VALUES ('3991', '1', '2016-11-10', '75', 'f9c964dc-7760-4085-a04e-d881a8749966000');
INSERT INTO `schedule` VALUES ('3992', '1', '2016-11-11', '75', 'f9c964dc-7760-4085-a04e-d881a8749966000');
INSERT INTO `schedule` VALUES ('3993', '1', '2016-11-02', '70', 'fb6d9c64-5102-4bd5-a32c-0162f9339912000');
INSERT INTO `schedule` VALUES ('3994', '1', '2016-11-09', '70', 'fb6d9c64-5102-4bd5-a32c-0162f9339912000');
INSERT INTO `schedule` VALUES ('3995', '1', '2016-11-01', '70', 'fe8efa4c-324f-4062-9506-7063187447a7000');
INSERT INTO `schedule` VALUES ('3996', '1', '2016-11-08', '70', 'fe8efa4c-324f-4062-9506-7063187447a7000');
SET FOREIGN_KEY_CHECKS=1;
