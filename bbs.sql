-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2022-01-10 13:20:48
-- 服务器版本： 5.6.50-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- 表的结构 `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL COMMENT '子板块id',
  `title` varchar(100) NOT NULL COMMENT '帖子标题',
  `content` text NOT NULL COMMENT '帖子内容',
  `time` datetime NOT NULL COMMENT '发帖时间',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览次数'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `content`
--

INSERT INTO `content` (`id`, `module_id`, `title`, `content`, `time`, `member_id`, `times`) VALUES
(11, 12, '最近有什么比赛吗', '想看看比赛了', '2022-01-09 09:57:57', 1, 1),
(3, 3, '为什么在山大ipv6站不能下东西呢？', '每次都弹出“无法复制 文件：无法读取源文件和磁盘”\r\n谁懂来帮一下忙啊', '2021-12-25 22:07:48', 2, 9),
(4, 4, '如果人碰到N-二甲基亚硝胺会怎么样', '如果人碰到N-二甲基亚硝胺会怎么样', '2021-12-26 17:19:39', 4, 14),
(5, 11, '新设置了一个头像，快来看看吧', '~', '2021-12-26 17:22:06', 1, 9),
(6, 14, '山东大学海洋传感器研究中心招2020推免和考研硕士！', '山东大学海洋研究院简介\r\n   山东大学海洋研究院以国家重大需求为导向，以国际海洋科技前沿为引领，以“陆海统筹”、微观与宏观结合、理科与工科交叉为特色，积极发展整合海洋学科相关的5个一级学科博士点，建立微生物海洋学优势学科，建设国际领先的大型海洋实验设施与平台，形成以微生物海洋学为主，包含电子科学与技术、海洋装备与信息工程、海洋化学、海洋环境的优势海洋学科。\r\n海洋传感器研究中心简介\r\n    研究中心将基于先进材料技术、光电集成和信息技术开发国际领先的海洋传感器系统芯片，推动海洋高端装备的国产化。主要研究方向包括：（1）基于光电子学的海洋环境原位探测技术；（2）基于激光全息、机器深度学习的海洋微生物原位探测技术；（3）紫外/深紫外光电技术与海洋化学传感器；（4）激光雷达与3d流体场测量技术。与美国、加拿大知名传感器研发单位建立了合作关系。\r\n 导师简介\r\n   吴锜教授，山东大学海洋研究院首席科学家、海洋传感器研究中心负责人，特聘教授，博导，在加拿大多伦多大学电子与计算机工程系取得博士学位。曾先后在美国加州大学电子与计算机工程系作为访问学者，加州理工学院喷气推进实验室作为高级科学家，北电网络公司（nortel networks）先进技术实验室作为高级科学家和项目经理，长期从事光电集成传感芯片技术的研究，及其在光通讯、航空航天、海洋探测的应用。曾创立过两家高科技公司，实现了科研成果的产业化。\r\n\r\n\r\n招生需求： \r\n类型：申请具备保研资格硕士生\r\n名额：3名\r\n要求：理想候选人为电子科学与技术专业、光学工程、半导体专业的优秀本科毕业生，拥有对科学的强烈好奇心，具有挑战工程难题的自我驱动精神。\r\n申请方式以及需准备的材料：\r\n具体要求见山东大学研究生招生网站\r\nhttp://www.yz.sdu.edu.cn/\r\n报名方式\r\n按照招生简章要求，将个人材料发送至邮箱：sj2008818@qq.com\r\n若有疑问，请联系苏老师，电话：13853170512\r\n\r\n另外欢迎报考山东大学海洋研究院海洋传感器团队 \r\n报考信息：071海洋研究院 080900电子科学与技术，研究方向：01 光电子学。考试科目：\r\n①101思想□□理论\r\n②201英语一\r\n③301数学一\r\n④830半导体物理或907光学\r\n学习地点：\r\n山东大学青岛校区', '2021-12-26 20:03:22', 1, 19),
(7, 16, '好热啊~', '热死了热死了热死了', '2021-12-26 20:31:21', 1, 5),
(8, 7, '求助帖啊。。。。。。关于电脑的。。。', '我是WIN7家庭普通版，今天开机的时候修复了一下系统，说有可能会删除最近安装的程序，我也没在意，后来打开后却发现桌面上的快捷方式都变成了白纸一样的图标，双击打不开，在开始菜单中也是这样，删除图标又重新发送到桌面还是不行，纠结啊。。。有木有人懂啊？或者谁能告诉我能去哪重装一遍系统啊，我没带盘过来。。。。我是南新校区的。。。', '2021-12-27 00:05:16', 5, 5),
(12, 3, '测试标题', '测试内容：输入对应的标题和内容后，数据成功插入数据库，并且显示在对应的板块内。', '2022-01-10 11:15:49', 6, 0),
(10, 14, '标题', '内容', '2021-12-27 19:02:07', 1, 4),
(13, 14, '<div style="color:red;font-size:20px;" test </div>', '<div style="color:red;font-size:20px;" test </div>', '2022-01-10 12:51:35', 6, 0);

-- --------------------------------------------------------

--
-- 表的结构 `father_module`
--

CREATE TABLE IF NOT EXISTS `father_module` (
  `id` int(10) unsigned NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='父板块信息表';

--
-- 转存表中的数据 `father_module`
--

INSERT INTO `father_module` (`id`, `module_name`, `sort`) VALUES
(20, '娱乐天地', 3),
(19, '活动信息', 2),
(18, '菁菁校园', 1),
(21, '学习资讯', 4),
(22, '心情文字', 5),
(23, '社区站务', 6);

-- --------------------------------------------------------

--
-- 表的结构 `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问量'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `info`
--

INSERT INTO `info` (`id`, `title`, `keywords`, `description`, `views`) VALUES
(1, '山东大学bbs', '山东大学bbs', '山东大学bbs', 849);

-- --------------------------------------------------------

--
-- 表的结构 `manage`
--

CREATE TABLE IF NOT EXISTS `manage` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `create_time` datetime NOT NULL,
  `level` tinyint(4) NOT NULL COMMENT '管理员权限'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `manage`
--

INSERT INTO `manage` (`id`, `name`, `pw`, `create_time`, `level`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2021-12-23 20:24:11', 0),
(3, 'admin01', '96e79218965eb72c92a549dd5a330112', '2021-12-26 16:07:23', 1);

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '用户名',
  `pw` varchar(32) NOT NULL COMMENT '密码',
  `photo` varchar(255) NOT NULL DEFAULT '#' COMMENT '保存头像的url地址',
  `register_time` datetime NOT NULL COMMENT '注册时间',
  `last_time` datetime NOT NULL COMMENT '最后一次登录时间'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `name`, `pw`, `photo`, `register_time`, `last_time`) VALUES
(1, 'fxy', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/2022/01/09/85785561da37b977e91858105155.jpg', '2021-12-24 21:41:17', '2022-01-09 09:33:28'),
(2, '改个名字好了', 'e10adc3949ba59abbe56e057f20f883e', '', '2021-12-25 21:30:13', '2021-12-27 00:58:03'),
(0, '', '', '#', '2021-12-26 16:54:27', '2021-12-26 16:54:27'),
(4, '咕咕咕', '25f9e794323b453885f5181f1b624d0b', '', '2021-12-26 17:18:55', '2021-12-26 17:18:55'),
(5, '明月天涯', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/2021/12/27/28046361c894038da62201831091.jpg', '2021-12-27 00:04:53', '2021-12-27 00:53:23'),
(6, '测试用户', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/2022/01/10/17835361dba635e0e70766106572.jpg', '2022-01-09 11:13:23', '2022-01-09 11:18:14');

-- --------------------------------------------------------

--
-- 表的结构 `reply`
--

CREATE TABLE IF NOT EXISTS `reply` (
  `id` int(10) unsigned NOT NULL,
  `content_id` int(10) unsigned NOT NULL COMMENT '回复的贴子id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '引用某条回复',
  `content` text NOT NULL,
  `time` datetime NOT NULL,
  `member_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reply`
--

INSERT INTO `reply` (`id`, `content_id`, `quote_id`, `content`, `time`, `member_id`) VALUES
(1, 1, 0, '大家好，这是我第一次回复帖子，请大家多多指教！\r\n', '2021-12-25 21:33:09', 2),
(2, 4, 0, '会死掉', '2021-12-26 17:21:03', 1),
(3, 2, 0, '你好！', '2021-12-26 17:22:22', 4),
(4, 4, 0, '1', '2021-12-26 17:26:25', 1),
(5, 5, 0, '耶', '2021-12-26 17:38:18', 4),
(6, 4, 2, '测试引用', '2021-12-26 22:38:30', 1),
(7, 6, 0, '', '2022-01-09 09:16:51', 1);

-- --------------------------------------------------------

--
-- 表的结构 `son_module`
--

CREATE TABLE IF NOT EXISTS `son_module` (
  `id` int(10) unsigned NOT NULL,
  `father_module_id` int(10) unsigned NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `info` varchar(255) NOT NULL COMMENT '子版块简介',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版主id',
  `sort` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `son_module`
--

INSERT INTO `son_module` (`id`, `father_module_id`, `module_name`, `info`, `member_id`, `sort`) VALUES
(10, 19, '活动专区', '发布活动信息的地方', 2, 3),
(3, 18, '洪楼一梦', '洪家楼校区同学的聚集地', 0, 1),
(4, 18, '趵突胜境', '', 1, 2),
(5, 18, '千佛山麓', '千佛山校区同学的聚集地', 0, 3),
(6, 18, '兴隆山庄', '兴隆山校区同学聚集地', 2, 4),
(7, 18, '软件园区', '', 1, 5),
(9, 19, '跳蚤市场', '交易的地方', 0, 2),
(11, 20, '煮酒论今', '', 0, 1),
(12, 20, '绿茵场上', '', 0, 2),
(13, 20, '影音动漫', '', 1, 3),
(14, 18, '青岛校风', '嗖嗖嗖~冷死了', 4, 6),
(15, 21, '考试考研', '', 1, 1),
(16, 20, '这里很暖和', '呼呼呼~', 4, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `father_module`
--
ALTER TABLE `father_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `son_module`
--
ALTER TABLE `son_module`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `father_module`
--
ALTER TABLE `father_module`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `manage`
--
ALTER TABLE `manage`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `son_module`
--
ALTER TABLE `son_module`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
