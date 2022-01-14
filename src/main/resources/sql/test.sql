/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-07-08 13:22:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad_banner
-- ----------------------------
DROP TABLE IF EXISTS `ad_banner`;
CREATE TABLE `ad_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ad_banner
-- ----------------------------
INSERT INTO `ad_banner` VALUES ('1', '布达佩斯大饭店', 'https://img1.doubanio.com/view/photo/m/public/p2154445388.webp');
INSERT INTO `ad_banner` VALUES ('2', '请以你的名字呼唤我', 'https://img2.doubanio.com/view/photo/m/public/p2501423122.webp');
INSERT INTO `ad_banner` VALUES ('3', 'Her', 'https://img3.doubanio.com/view/photo/m/public/p2077584490.webp');

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of favorite
-- ----------------------------
INSERT INTO `favorite` VALUES ('38', '6', '12');
INSERT INTO `favorite` VALUES ('39', '7', '5');
INSERT INTO `favorite` VALUES ('41', '11', '2');
INSERT INTO `favorite` VALUES ('52', '2', '19');
INSERT INTO `favorite` VALUES ('53', '2', '21');
INSERT INTO `favorite` VALUES ('54', '2', '10');

-- ----------------------------
-- Table structure for movie_info
-- ----------------------------
DROP TABLE IF EXISTS `movie_info`;
CREATE TABLE `movie_info` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1 剧情\r\n2 喜剧\r\n3 爱情\r\n4 科幻\r\n5 动画 ',
  `movie_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_cover` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_intro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `director` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of movie_info
-- ----------------------------
INSERT INTO `movie_info` VALUES ('1', '少年的你', 'https://img1.doubanio.com/view/photo/m/public/p2546068467.webp', '周冬雨 易烊千玺', '2019', '中国', '剧情', 'https://vt1.doubanio.com/202106261349/cc62b23d9c87ed586458317205ab7ebe/view/movie/M/402470194.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2572166063.webp', '陈念（周冬雨 饰）是一名即将参加高考的高三学生，同校女生胡晓蝶（张艺凡 饰）的跳楼自杀让她的生活陷入了困顿之中。胡晓蝶死后，陈念遭到了以魏莱（周也 饰）为首的三人组的霸凌，魏莱虽然表面上看来是乖巧的优等生，实际上却心思毒辣，胡晓蝶的死和她有着千丝万缕的联系。', '曾国祥');
INSERT INTO `movie_info` VALUES ('2', '悬崖之上', 'https://img2.doubanio.com/view/photo/m/public/p2640318853.webp', '张译 于和伟', '2021', '中国', '剧情', 'https://vt1.doubanio.com/202106261350/642c981af61ca0602c9fb83d493bf431/view/movie/M/402740957.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2641614433.webp', '上世纪三十年代，四位曾在苏联接受特训的共产党特工组成任务小队，回国执行代号为“乌特拉”的秘密行动。由于叛徒的出卖，他们从跳伞降落的第一刻起， 就已置身于敌人布下的罗网之中。同志能否脱身，任务能否完成，雪一直下，立于“悬崖之上”的行动小组面临严峻考验。', '张艺谋');
INSERT INTO `movie_info` VALUES ('3', '绿皮书', 'https://img9.doubanio.com/view/photo/m/public/p2542144434.webp', '维果·莫腾森  马赫沙拉·阿里', '2018', '美国', '剧情', 'https://vt1.doubanio.com/202106261343/4a2a03035bc4591b9dee0cbc38f8dd90/view/movie/M/402400372.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2549177902.webp', '托尼（维果·莫腾森 Viggo Mortensen 饰）是一个吊儿郎当游手好闲的混混，在一家夜总会做侍者。这间夜总会因故要停业几个月，可托尼所要支付的房租和生活费不会因此取消，所以他的当务之急是去寻找另一份工作来填补这几个月的空缺。在这个节骨眼上，一位名叫唐雪莉（马赫沙拉·阿里 Mahershala Ali 饰）的黑人钢琴家提出雇佣托尼。', '彼得·法雷里');
INSERT INTO `movie_info` VALUES ('4', '楚门的世界', 'https://img9.doubanio.com/view/photo/m/public/p2614740716.webp', ' 金·凯瑞 ', '1998', '美国', '剧情', 'https://vt1.doubanio.com/202106261348/00cbba3c00232e8cb2daf335a87f7281/view/movie/M/301200999.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p479682972.webp', '楚门（金•凯瑞 Jim Carrey 饰）是一个平凡得不能再平凡的人，除了一些有些稀奇的经历之外——初恋女友突然失踪、溺水身亡的父亲忽然似乎又出现在眼前，他和绝大多数30多岁的美国男人绝无异样。这令他倍感失落。他也曾试过离开自己生活了多年的地方，但总因种种理由而不能成行。', '彼得·威尔');
INSERT INTO `movie_info` VALUES ('5', '功夫', 'https://img2.doubanio.com/view/photo/m/public/p2002210743.webp', '周星驰 元秋', '2004', '中国', '喜剧', 'https://vt1.doubanio.com/202106261343/839fda71c340826b714f2f5e97e8d2f4/view/movie/M/301680295.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.webp', '1940年代的上海，自小受尽欺辱的街头混混阿星（周星驰）为了能出人头地，可谓窥见机会的缝隙就往里钻，今次他盯上行动日益猖獗的黑道势力“斧头帮”，想借之大名成就大业。阿星假冒“斧头帮”成员试图在一个叫“猪笼城寨”的地方对居民敲诈，不想引来真的“斧头帮”与“猪笼城寨”居民的恩怨。“猪笼城寨”原是藏龙卧虎之处，居民中有许多身怀绝技者（元华、梁小龙等），他们隐藏于此本是为远离江湖恩怨，不想麻烦自动上身，躲都躲不及。而在观战正邪两派的斗争中，阿星逐渐领悟功夫的真谛。', '周星驰');
INSERT INTO `movie_info` VALUES ('6', '让子弹飞', 'https://img1.doubanio.com/view/photo/m/public/p762860788.webp', '姜文 葛优', '2010', '中国', '喜剧', 'https://vt1.doubanio.com/202106261348/b88860f3ee75ab0e294d5efe2ab44512/view/movie/M/301070520.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1512562287.webp', '民国年间，花钱捐得县长的马邦德（葛优 饰）携妻（刘嘉玲 饰）及随从走马上任。途经南国某地，遭劫匪张麻子（姜文 饰）一伙伏击，随从尽死，只夫妻二人侥幸活命。马为保命，谎称自己是县长的汤 师爷。为汤师爷许下的财富所动，张麻子摇身一变化身县长，带着手下赶赴鹅城上任。有道是天高皇帝远，鹅城地处偏僻，一方霸主黄四郎（周润发 饰）只手遮天，全然不将这个新来的县长放在眼里。', '姜文');
INSERT INTO `movie_info` VALUES ('7', '低俗小说', 'https://img9.doubanio.com/view/photo/m/public/p1568037244.webp', '约翰·特拉沃尔塔 乌玛·瑟曼 ', '1994', '美国', '喜剧', 'https://vt1.doubanio.com/202106261341/749dfa92dfbc889c8ab48f9b8dfa4533/view/movie/M/301010375-1.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p1910902213.webp', '《低俗小说》由“文森特和马沙的妻子”、“金表”、“邦妮的处境”三个故事以及影片首尾的序幕和尾声五个部分组成。看似独立的小故事里面，却又有环环相扣的人和事。', '昆汀·塔伦蒂诺');
INSERT INTO `movie_info` VALUES ('8', '第十一回', 'https://img1.doubanio.com/view/photo/m/public/p2639358458.webp', '陈建斌 周迅', '2019', '中国', '剧情', 'https://vt1.doubanio.com/202106261345/902ab26cf52ee6ec0dfdf419ab96ffd5/view/movie/M/402450908.mp4', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2637603645.webp', '30年前一桩杀人案，被市话剧团拿来改编成舞台剧，马福礼（陈建斌 饰）作为杀人案的当事人，旧事重提让他的生活再起波澜。马福礼一边忙着和话剧团导演胡昆汀（大鹏 饰）纠缠掰理，一边找律师翻案寻求真相还自己清白，还要忙着调和妻子金财铃（周迅 饰）和女儿金多多（窦靖童 饰）剑拔弩张的关系，生活给了他多记重锤……时隔多年，马福礼能否重新翻案？真相到底有几个？人生如戏，请君入席。', '陈建斌 ');
INSERT INTO `movie_info` VALUES ('9', '纽约的一个雨天', 'https://img9.doubanio.com/view/photo/m/public/p2576394706.webp', '蒂莫西·柴勒梅德 ', '2019', '美国', '浪漫', 'https://vt1.doubanio.com/202106261352/cb0cbbdf3fe79b4c9b678f783f119aca/view/movie/M/402580171.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2641734447.webp', '盖茨比（提莫西·查拉梅 Timothée Chalamet 饰）和阿什利（艾丽·范宁 Elle Fanning 饰）是一对年轻的情侣，盖茨比浑身散发着文艺气息，对浪漫有着无限的向往和幻想，阿什利则野心勃勃，一心想要在影视界里打拼出一片属于自己的天地。', '伍迪·艾伦');
INSERT INTO `movie_info` VALUES ('10', '怦然心动', 'https://img2.doubanio.com/view/photo/m/public/p2533778442.webp', '玛德琳·卡罗尔 卡兰·麦克奥利菲', '2010', '美国', '浪漫', 'https://vt1.doubanio.com/202106261358/c6331af85216c220fd9a5e309b2f6fab/view/movie/M/301210020.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p501177648.webp', '布莱斯（卡兰•麦克奥利菲 Callan McAuliffe 饰）全家搬到小镇，邻家女孩朱丽（玛德琳•卡罗尔 Madeline Carroll 饰）前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。', '罗伯·莱纳');
INSERT INTO `movie_info` VALUES ('11', '星际穿越', 'https://img1.doubanio.com/view/photo/m/public/p2212236077.webp', '马修·麦康纳 安妮·海瑟薇', '2014', '美国', '科幻', 'https://vt1.doubanio.com/202106261404/c6e282057676c06a1c9b2e7cba962a5b/view/movie/M/301640612.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2614988097.webp', '近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。', '克里斯托弗·诺兰');
INSERT INTO `movie_info` VALUES ('12', 'E.T', 'https://img2.doubanio.com/view/photo/m/public/p443384363.webp', '亨利·托马斯  迪·沃伦斯 ', '1982', '美国', '科幻', 'https://vt1.doubanio.com/202106261425/64b15e229ed93a5792672bd3a6a98013/view/movie/M/402310954.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p984732992.webp', '小埃利奥特（亨利托马斯）发现一个意外走失的小外星人，他悄悄的收留了小外星人，并把他介绍给自己的哥哥和妹妹。孩子们与外星人友好的相处，给他吃巧克力，带他去郊外寻找家人留下的痕迹，并为小外星人的种种特异功能兴奋不已。渐渐的埃利奥特与外星人之间形成了某种奇妙的联系，跨越了言语沟通的障碍。', '史蒂文·斯皮尔伯格');
INSERT INTO `movie_info` VALUES ('13', '千与千寻', 'https://img9.doubanio.com/view/photo/m/public/p2512322574.webp', '柊瑠美  入野自由', '2001', '日本', '动画', 'https://vt1.doubanio.com/202106261428/b4602859a6a5c966c1745725ebbda1ce/view/movie/M/402470585.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.webp', '千寻和爸爸妈妈一同驱车前往新家，在郊外的小路上不慎进入了神秘的隧道——他们去到了另外一个诡异世界—一个中世纪的小镇。远处飘来食物的香味，爸爸妈妈大快朵颐，孰料之后变成了猪！这时小镇上渐渐来了许多样子古怪、半透明的人。', '宫崎骏');
INSERT INTO `movie_info` VALUES ('14', '寻梦环游记', 'https://img2.doubanio.com/view/photo/m/public/p2505708063.webp', ' 安东尼·冈萨雷斯 ', '2017', '美国', '动画', 'https://vt1.doubanio.com/202106261429/540c10ff3550a6f60597843beef66f43/view/movie/M/302230405.mp4', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2614500706.webp', '热爱音乐的米格尔（安东尼·冈萨雷兹 Anthony Gonzalez 配音）不幸地出生在一个视音乐为洪水猛兽的大家庭之中，一家人只盼着米格尔快快长大，好继承家里传承了数代的制鞋产业。一年一度的亡灵节即将来临，每逢这一天，去世的亲人们的魂魄便可凭借着摆在祭坛上的照片返回现世和生者团圆。', ' 李·昂克里奇 / 阿德里安·莫利纳');
INSERT INTO `movie_info` VALUES ('15', '犬之岛', 'https://img2.doubanio.com/view/photo/m/public/p2578519353.webp', '布莱恩·科兰斯顿 爱德华·诺顿 ', '2018', '美国', '动画', 'https://vt1.doubanio.com/202106261433/65e1de214025d6d6165c0c6bd0c82579/view/movie/M/402290590.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2499734013.webp', '故事发生在未来的时空之中，犬流感的肆虐让市长（野村训市 配音）颁布的狗狗流放法案，将城市里的所有犬类都投放到了“垃圾岛”之上，任它们自生自灭，市长家的护卫犬点点（列维·施瑞博尔 Liev Schreiber 饰）首当其冲。就这样，本来被养在家中锦衣玉食的狗狗们，都成为了要在垃圾堆里找食物吃的流浪狗。', '韦斯·安德森');
INSERT INTO `movie_info` VALUES ('16', '食神', 'https://img9.doubanio.com/view/photo/m/public/p1983881464.webp', '周星驰 莫文蔚', '1996', '中国', '喜剧', 'https://img3.doubanio.com/img/trailer/medium/2154511100.jpg?', 'https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2354353804.webp', '史提芬周（周星驰 饰）在饮食界是享誉盛名的食神，但一直骄傲自大，惟利是图。被身边得力助手陷害，一夜间一无所有。他在庙街认识了早已对他倾心的大姐大火鸡（莫文蔚 饰）及一众老大，靠着史提芬周的商业头脑，他们决定推出“爆浆癞尿牛丸”，史提芬周重出江湖的道路也越来越顺利。为了重新夺得食神的位置，他回到大陆寻找“中国厨艺学院”受训。火鸡一路跟着他想对他表白，史提芬被对手追杀，火鸡不顾生命为他档了一枪，生死未卜。', '李力持 周星驰');
INSERT INTO `movie_info` VALUES ('17', '濑户内海', 'https://img9.doubanio.com/view/photo/m/public/p2370854876.webp', '菅田将晖 池松壮亮', '2016', '日本', '喜剧', 'https://vt1.doubanio.com/202107012331/9cf7b0c59b1e2e74cea780d3d39d7a00/view/movie/M/301940530.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2318231103.webp', '在这个故事里，濑户内海并非地名，而是大阪某男子高中二年级两个男生的名字。濑户小吉（菅田将晖 饰）身形瘦弱高挑，他曾是足球部的一员，但因和前辈关系不睦而退出社团。内海想（池松壮亮 饰）文质彬彬，沉默寡言，却也并非只知道读书的书呆子。不知为何，这两个看起来完全没有交集的“回家部”成了朋友。每当下午放学后，他们便相约来到河边坐下。在内海去补习班前的这段时间里，两个人便海阔天空地闲聊起来。他们的话题无所不包，却又无聊空洞。当那个妖精一般的女孩樫村一期（中条彩未 饰）出现时，不经意间在木讷的大男孩心间激起波澜……', '大森立嗣');
INSERT INTO `movie_info` VALUES ('18', '盗梦空间', 'https://img2.doubanio.com/view/photo/m/public/p616902142.webp', '莱昂纳多·迪卡普里奥', '2010', '美国', '悬疑', 'https://vt1.doubanio.com/202107020019/890f329db5c2dbc8b9d22d399b3158bc/view/movie/M/402640451.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2616355133.webp', '道姆·柯布（莱昂纳多·迪卡普里奥 Leonardo DiCaprio 饰）与同事阿瑟（约瑟夫·戈登-莱维特 Joseph Gordon-Levitt 饰）和纳什（卢卡斯·哈斯 Lukas Haas 饰）在一次针对日本能源大亨齐藤（渡边谦 饰）的盗梦行动中失败，反被齐藤利用。齐藤威逼利诱因遭通缉而流亡海外的柯布帮他拆分他竞争对手的公司，采取极端措施在其唯一继承人罗伯特·费希尔（希里安·墨菲 Cillian Murphy 饰）的深层潜意识中种下放弃家族公司、自立门户的想法...', '克里斯托弗·诺兰');
INSERT INTO `movie_info` VALUES ('19', '她 Her', 'https://img2.doubanio.com/view/photo/m/public/p2161272123.webp', '华金·菲尼克斯', '2013', '美国', '浪漫', 'https://vt1.doubanio.com/202107041950/dadc68356baf3491de199bd329988bed/view/movie/M/301470407.mp4', 'https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2166850749.webp', '《她》是讲述在不远的未来人与人工智能相爱的科幻爱情电影。主人公西奥多（杰昆·菲尼克斯 Joaquin Phoenix 饰）是一位信件撰写人，心思细腻而深邃，能写出最感人肺腑的信件。他刚结束与妻子凯瑟琳（鲁妮·玛拉 Rooney Mara 饰）的婚姻，还没走出心碎的阴影。一次偶然机会让他接触到最新的人工智能系统OS1，它的化身萨曼莎（斯嘉丽·约翰逊 Scarlett Johansson 声）拥有迷人的声线，温柔体贴而又幽默风趣。', '斯派克·琼斯');
INSERT INTO `movie_info` VALUES ('20', '请以你的名字呼唤我', 'https://img1.doubanio.com/view/photo/m/public/p2497615189.webp', '艾米·汉莫 蒂莫西·柴勒梅德', '2017', '美国', '剧情', 'https://vt1.doubanio.com/202107061452/265f4ae989ca4a81643b2463d960e121/view/movie/M/302240957.mp4', 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2505525050.webp', '故事发生在八十年代的意大利里维埃拉，每年夏天，十七岁的少年艾力奥（提莫西·查拉梅 Timothée Chalamet 饰）都会跟家人一起来此地度假。今年，和他们共享假日时光的，还有来自美国的奥利弗（艾米·汉莫 Armie Hammer 饰），高大英俊热情开朗的奥利弗很快就获得了艾力奥一家人的喜爱。', '卢卡·瓜达尼诺');
INSERT INTO `movie_info` VALUES ('21', '布达佩斯大饭店', 'https://img9.doubanio.com/view/photo/m/public/p2157396694.webp', ' 雷夫·费因斯', '2014', '美国', '喜剧', 'https://vt1.doubanio.com/202107041955/776c40f60cb8ab5ae696946eece252d1/view/movie/M/301530722.mp4', 'https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2178872593.webp', '故事要从一位无名作家（裘德·洛 Jude Law 饰）说起，为了专心创作，他来到了名为“布达佩斯”的饭店，在这里，作家遇见了饭店的主人穆斯塔法（F·莫里·亚伯拉罕 F. Murray Abraham 饰），穆斯塔法邀请作家共进晚餐，席间，他向作家讲述了这座饱经风雨的大饭店的前世今生。', '韦斯·安德森');

-- ----------------------------
-- Table structure for play_history
-- ----------------------------
DROP TABLE IF EXISTS `play_history`;
CREATE TABLE `play_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of play_history
-- ----------------------------
INSERT INTO `play_history` VALUES ('4', '11', '2');
INSERT INTO `play_history` VALUES ('37', '2', '21');
INSERT INTO `play_history` VALUES ('38', '2', '10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '未设置',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '普通会员',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '未设置',
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '未设置',
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yanling', '88888888', '3080898447@qq.com', '普通会员', '女', '这条街最靓的崽');
INSERT INTO `user` VALUES ('2', '1', '1', '1111@qq.com', '普通会员', '女', 'boss');
INSERT INTO `user` VALUES ('3', 'root', 'root', '未设置', '普通会员', '保密', '未设置');
INSERT INTO `user` VALUES ('4', '养猪散户', '666', '3080898447@qq.com', '普通会员', '未设置', '未设置');
INSERT INTO `user` VALUES ('5', '11', '1', '未设置', '普通会员', '未设置', '未设置');
INSERT INTO `user` VALUES ('6', '瑜宝', '888', '未设置', '普通会员', '未设置', '未设置');
INSERT INTO `user` VALUES ('7', 'yytz', 'yytz', '未设置', '普通会员', '未设置', '未设置');
INSERT INTO `user` VALUES ('11', 'xixi', '000000', '528689020@qq.com', '普通会员', '保密', '我是学生仔');
INSERT INTO `user` VALUES ('14', '2', '2', '未设置', '普通会员', '未设置', '未设置');
INSERT INTO `user` VALUES ('15', '22', '22', '未设置', '普通会员', '未设置', '未设置');
