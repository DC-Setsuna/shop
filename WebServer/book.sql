-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 2017-10-15 06:22:11
-- 服务器版本： 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ibook`
--

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `book_title` varchar(50) DEFAULT '',
  `book_author` varchar(50) DEFAULT NULL,
  `book_price` decimal(6,2) DEFAULT NULL,
  `book_class` varchar(10) DEFAULT NULL,
  `book_rate` decimal(2,1) DEFAULT NULL,
  `sales_count` int(8) DEFAULT '0',
  `img_url` mediumtext,
  `introduce` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`id`, `book_title`, `book_author`, `book_price`, `book_class`, `book_rate`, `sales_count`, `img_url`, `introduce`) VALUES
(0000000001, '芳华', '严歌苓', '30.00', '小说', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/515Gb0FbIZL._AA218_.jpg', '《芳华》内容简介： 上世纪七十年代，一些有文艺才能的少年男女从大江南北挑选出来，进入某部队文工团，担负军队文艺宣传的特殊使命。 郝淑雯、林丁丁、何小曼、萧穗子在这个团队里朝夕相处，她们才艺不同、性情各异，碰撞出不乏黑色幽默的情境。严格的军纪和单调的训练中，青春以独有的姿态绽放芳华。 小说用四十余年的跨度，展开她们命运的流转变迁，是为了讲述男兵刘峰的谦卑、平凡及背后值得永远探究的意义。 '),
(0000000002, '我不', '大冰', '29.00', '小说', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51bdHbt8Q9L._AA218_.jpg', '《我不》——百万级畅销书作家大冰2017年新书。书中的每一个故事都可以叫《我不》： \n十年如一日坚守藏地、为藏民基础教育尽一己之力的书店老板；亦正亦邪浪荡洒脱，散尽家财救助灾区、带重病母亲游历世界的东北浪子；木讷寡言对绝症女友不离不弃的流浪歌手；心系31年前阵亡战友、不愿偷生于世、为古城安危置生死于度外的不死老兵……书中的每一个有情众生，都在对命运说：我不！ \n\n玩命拼命不认命，我命由我不由天。 \n不服，不要，不怕，不羁、不二、不懈，不屈不挠，不破不立，不卑不亢…… \n他们因不，而不同。 \n乃至不凡。 '),
(0000000003, '平凡的世界', '路遥', '74.50', '小说', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41kEM9N09ML._AA218_.jpg', '这是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人公面对困境艰苦奋斗的精神，对今天的大学生朋友仍有启迪。这是一部全景式地表现中国当代城乡社会生活的长篇小说，本书共三部。作者在近十年问广阔背景上，通过复杂的矛盾纠葛，刻划了社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。 '),
(0000000004, '活着', '余华', '27.60', '小说', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41Pkb-fg7+L._AA218_.jpg', '《活着》是当代作家余华的代表作，讲述了一个人历尽世间沧桑和磨难的一生，亦将中国大半个世纪的社会变迁凝缩其间。《活着》还讲述了眼泪的宽广和丰富；讲述了绝望的不存在；讲述了人是为了活着本身而活着的，而不是为了活着之外的任何事物而活着。 \n《活着》出版25年来打动了无数读者，经过时间的沉淀，已成为20世纪中国文学当之无愧的经典之作。到今天，已被译介至英、法、德、意、日、韩、俄等30多个国家和地区，获得国内外多个文学大奖，余华也凭借这部作品于2004年获得法兰西艺术和骑士文化勋章。 '),
(0000000009, '我在未来等你', '刘同', '28.60', '小说', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/414F7Wq2fHL._AA218_.jpg', '你会不会偶尔产生那种“如果能回到那一年就好了”的念头？觉得回到那一年，以我们当下的见识和心态，很多事都能被改变。 \n36岁的大学老师郝回归人生不尽如人意，一眼看得到终点。他很想回到自己的17岁，回到那个阳光而天真的时代，重新来过。 \n一次偶然，他真的回去了。只不过，他并没有重新来过的机会。他依然36岁。他成了高三实习班主任。班级里，他遇见了17岁的自己——一塌糊涂的刘大志。郝回归知道刘大志的未来，也知道他的幸与不幸。他想改变他。 \n然而，当36岁的世故遇见17岁的热血，一切远没有这么简单…… '),
(0000000010, '遥远的救世主', '豆豆', '22.70', '小说', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41fvZ5qmpAL._AA218_.jpg', '《遥远的救世主》内容简介：丁元英，这位传统文化的叛逆者在柏林私募基金分红会议上突然宣布私募基金解散，结束了他在法律真空地带利用文化密码对中国股市屠杀性掠取，孑孓一人回到中国某古城隐居下来。芮小丹，一位从小在法兰克福长大的中国女子，侨居异国的边缘感使她对主流社会充满了天然的渴求，刑警的职业使她与丁元英不期而遇……俩人从音响发烧友变成爱情发烧友，直到迎接那冲天的光焰……'),
(0000000011, '红岩', '罗广斌', '16.20', '小说', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41mMWMcLp1L._AA218_.jpg', '《红岩》内容简介：以解放前夕“重庆中美合作所集中营”敌我斗争为主线，展开了对当时国统区阶级斗争全貌的描写。全书通过三条斗争线索（集中营的狱中斗争、重庆城内的学生运动和地下工作、农村根据地的武装斗争）、联系广阔的社会背景，形成纷繁的斗争场面；同时又用川东地下党机关报《挺进报》的斗争情节把这三条斗争线索联结起来，汇聚到狱中斗争上，集中描写革命者为迎接全国解放，挫败敌人垂死挣扎而进行的最后决战。作者以一定的广度和深度再现了国民党统治行将覆灭、解放战争走向全国胜利的斗争形势和时代风貌，成功地塑造了许云峰、江姐、成岗和华子良等为代表的共产党人的英雄形象，光彩照人，感人至深；同时对反面人物的形象塑造也很有特色，既揭示了他们的反动本质，又不流于脸谱化。作品结构错综复杂又富于变化，善于刻画人物心理活动和烘托气氛，语言朴实，笔调悲壮，被誉为“革命的教科书”。作品一经面世，立即引起轰动，先后被改编成电影《烈火中永生》和豫剧《江姐》等，从1961年出版至今51次再版，发行800多万册，是发行量的小说；同时，被译成多国文字发行。该书被中宣部、文化部、团中央命名为百部爱国主义教科书。'),
(0000000012, '好吗好的', '大冰', '25.90', '小说', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51IunuJgnCL._AA218_.jpg', '善良是一种天性，善意是一种选择。 \n善意能消戾，善意能得缘，善意能带业往生，善意能回头是岸。 \n善意能够帮人捕捉并建立起独特的幸福感。 \n好吗好的，是一句自度度人的自问自答，也是一份坦然随缘的善意。 \n《好吗好的》——百万级销量作家大冰2016年新书。“在*冷的地方，写就暖心的、真实的、善意的、舍不得读完的江湖故事”。 \n《好吗好的》中的江湖故事，铺满牵引你踏上归程的乡愁、给你盔甲也给你软肋的爱意，有回头是岸的浪子，有深沉执着的兄弟，有既做事又做梦还做自己的男人和兰之猗猗、幽幽其香、五“毒”俱全的美少女壮士。'),
(0000000013, '故事生灵', '贾平凹', '30.90', '小说', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51j4s5KD8YL._AA218_.jpg', '《故事生灵》书中皆是生活里的普通人。他们身份平凡，内心丰富，在他们的生命故事中，有着所有的人欲，以及由此而生的躁动、恐惧、孤独、邪恶、忧伤和欢喜。他们曾因人欲而堕入无明，内心脆弱而阴暗，也因欲望而洞悉人性，重拾智慧和良善。 \n\n受童年创伤驱使而连环杀人的少年、热爱剪纸和自然生灵却不得不应对烂俗生活的山女、身怀绝技却深藏心理负担而流落四方的游侠……他们原本赤诚，想要为自己的未来找到新的可能。生活唤醒他们内心不同的生命原型，变化出不同的故事生灵，撰写不同的生命故事，那便是他们的命运。即便他们不喜欢自己命运的结局，也会欣慰那些在生命故事中曾经绽放过的人性之美。这，正是贾平凹想要展现的力量：用心理意象，寻回现代人内心流失的珍贵。 '),
(0000000014, '搜神记', '冯唐', '30.10', '小说', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51KGvSBZh-L._AA218_.jpg', '《搜神记》是冯唐的野心之作，用冯唐自己的话说，他想做的是，“借助神力，面对AI”。 \n《搜神记》里面的所有故事，描述的都是“我眼有神，我手有鬼”的人，这些用兽性、人性、神性来对抗这个日趋异化的信息时代的人。 \n搜神记：搜，搜寻，找寻，探寻，挖一挖人性中最深的无尽藏；神，神奇，神圣，神经，神秘，那些有一些非普通人类特质的人，那些似乎不容易被机器取代的人，那些或许可以代表人类战胜阿法狗的人；记，穿着大裤衩子、就着酒把搜罗的神力写下来。 \n这一次，冯唐视野放至全宇宙，不再孤军奋战，而与众人觥筹交错。他和他认为的这些神交手斗法再幻化成小说，这个过程犹若太极，化虚为实，虚实相生，密不透风，疏可走马。'),
(0000000015, '人间词话', '王国维', '42.00', '人文社科', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51ZGg1L3QUL._AA218_.jpg', '这是百年来公认极具影响力的美学入门经典。王国维以深入浅出的条分缕析，首次开创性梳理出词的脉络、规律；他用短短64则笔记，讲透词之美学核心，让人豁然开朗，叹为观止。 “亚马逊图书总榜销量冠军”《浮生六记》译注者周公度倾心译注，随书赠送惊艳杭州G20峰会的水墨画《清荷》复制画作。翻开本书，古文零基础，也能轻松读懂。本书译注依据光绪三十四年（1908 年）王国维手定稿，参校民国十五年（1926 年）朴社定本。未刊稿与删稿，依据中国国家图书馆特藏王国维手稿影印版。'),
(0000000016, '这么慢，那么美', '罗敷', '25.10', '人文社科', '3.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/510im9j53mL._AA218_.jpg', '《这么慢，那么美》以慢博快，以简博繁，有舍方得的生活。 \n\n幸福永远得来不易！ \n许多人将全球幸福指数归结于北欧制度、福利、资源等因素，但真的仅仅是这样吗？ \n幸福是什么？物质很重要，但仅仅是“够用”就可以了。北欧人的幸福感，更多来源于简约、自然、宁静的心态，以及家庭的温暖、个人努力，而这些是我们可以学会，可以身体力行的，也是我们自古传统一直倡导的。 \n幸福是一种选择，我们不必去远方适应别人的生活，不必为了他人的价值观而将自己累得喘不过气，跟着罗敷，一个在北欧生活了10年的MM，体会那些真正能获得幸福的自信心态、简约的生活方式、生生不息的自强精神和温馨治愈的家庭观念。 '),
(0000000017, '诗经', '王秀梅', '43.40', '人文社科', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51aIRWBdmdL._AA218_.jpg', '《中华经典名著全本全注全译丛书:诗经(套装共2册)》包括：《诗经（上）》、《诗经（下）》共2册。《中华经典名著全本全注全译丛书:诗经(套装共2册)》编者以十三经注疏本《诗经》为底本，约请专家注释疑难词句及典故名物，并进行了全诗翻译。评析部分从文学、历史、哲学、民俗、语言、文化学等多个角度对诗篇文本进行解读。在校对文字、注释及作品辨伪、评析方面尽可能汲取先贤时彦的最新研究成果。'),
(0000000022, '基因社会', '以太·亚奈', '27.30', '人文社科', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51cbQVc9vzL._AA218_.jpg', '《基因社会》内容简介：你的基因如何控制你的身体和生活？ \n大约40年前，理查德•道金斯出版了《自私的基因》，提出：人生来自私，跟其他生物一样，不过是基因的生存工具。然而，人类仍不清楚这些自私的基因是如何协作以构建生物体的。《基因社会》以丰富的新的研究为基础，为理解基因如何为了生存而合作及竞争提供了一种解释。 '),
(0000000023, '刑法一本通', '李立众', '38.00', '人文社科', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/514RCkhSm+L._AA218_.jpg', '本次修订增补了第12版以（至2017年8月14日之前）的所有刑法司法解释与刑法指导案例。增补了最高人民法院、最高人民检察院新发布的刑法司法解释、规范性文件与指导案例共18件，新增了不易收集的最高人民法院及其研究室、最高人民检察院及其法律政策研究室发布的刑法规范性文件17件、公安部发布的刑法规范性文件2件，同时更正了第12版的细微失误。\n修订后的《刑法一本通》能够反映我国刑法法规及其解释的最新全貌。此外，为了控制篇幅，本次修订删除了第12版前言、第12版附录中的刑法立法•立法解释总名录以及刑法司法解释总名录（可在公众号“刑法一本通”阅读这些内容）。 '),
(0000000024, '中国通史', '吕思勉', '26.50', '人文社科', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51D4JBQ4pqL._AA218_.jpg', '《中国通史》分上编下编，上编为十八章，以中国文化史为题，体论述自古以来中国社会的各个层面的发展，文化现象，内容包括婚姻、族制、政体、阶级、财产、官制、选举、赋税、兵制、刑法、实业、货币、衣食、住行、教育、语文、学术、宗教等十八类，囊括社会经济、政治体制、学术文化等各个方面；下编以中国政治史为题，下编为三十五章，则按照历史顺序串联，叙述了中国历代王朝的变迁，中国政治的变革。 \n上编的论述囊括下编的现象，上下编对照参考翻看，从而加深对该现象的理解，《中国通史》内容简明扼要，语言通俗易懂，值得读者青睐的历史巨著。 '),
(0000000025, '中国哲学简史', '冯友兰', '25.00', '人文社科', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51S95E67CQL._AA218_.jpg', '冯友兰编著的《中国哲学简史》打通了古今中外的相关知识，以宏观开阔的视野对中国哲学进行了深入浅出、融会贯通的讲解。在有限的篇幅里融入了冯友兰对中国哲学的理解，是史与思的结晶，充满了人生的睿智与哲人的洞见，寄托着对现实的人文关怀。《中国哲学简史》在世界各地有多种译本，拥有众多的读者，是许多大学中国哲学的通用教材，同样，它也是广大读者学习中国古典文化、借鉴中国传统智慧、启迪现实人生的入门书。它是一部名副其实的可以影响大众一生的文化经典。'),
(0000000026, '万历十五年', '黄仁宇', '12.00', '人文社科', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41OLMvg0b+L._AA218_.jpg', '《万历十五年(增订本)》故事讲述的是在万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，表面看来虽似末端小节，但实质上却是以前发生大事的症结，也是将在以后掀起波澜的机缘。在历史学家黄仁宇的眼中，其间的关系因果，恰为历史的重点，而我们的大历史之旅，也自此开始……'),
(0000000027, '半小时漫画中国史', '二混子', '29.10', '人文社科', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/61J-nDF-jmL._AA218_.jpg', '《半小时漫画中国史》（修订版）内容简介：看半小时漫画，通三千年历史，脉络无比清晰，看完就能倒背。仅仅通过手绘和段子，二混子就捋出清晰的历史大脉络：春秋战国像个班级、大秦过把瘾就死、三国就三大战役、魏晋乱世多奇葩、南北朝盛产败家子、大唐酷炫民族风……掀开纷繁复杂的正历史表象，略去无关紧要的细枝末节，每一页都有历史段子，每三秒让你笑翻一次，而二混子手绘的帝王将相则是又贱又蠢萌：秦皇、汉武、唐宗、宋祖、曹操、孙权，全都和你我一样，有优点和缺陷，有朋友和敌人，他们在历史关键节点迸发出的惊人能量铸就了三千年的精彩中国史。而你在笑出腹肌的同时，不知不觉已经通晓了历史。'),
(0000000028, '中国历代政治得失', '钱穆', '16.00', '人文社科', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41TI2rGdefL._AA218_.jpg', '《中国历代政治得失(新校本)》内容简介：1952年春，钱穆先生应有关方面之邀，以“中国历代政治得失”为题进行了五次讲演。《中国历代政治得失(新校本)》即是先生根据讲义整理而成，分别从“政府的组织”、“考试和选举”、“赋税制度”、“国防与兵役制度”四个方面，对汉、唐、宋、明、清五个朝代的政治得失作出分析评说，是研究中国传统政治及传统文化的一本必读书。'),
(0000000029, '为你自己读书', '肖卫', '16.67', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/512AoVDxV5L._AA218_.jpg', '《为你自己读书:一本改变千万青少年人生命运的书》内容简介：没有今天的优秀学业，何来明天的成功事业？没有今天的辛勤耕耘，何来明天的丰收硕果？没有今天的品德修行，何来明天的崇高声誉？没有今天的执著追求，何来明天的掌声鲜花？读书学习不仅能帮助一个人开拓前程，而且能帮助一个人成就事业。读书学习能使人聪明、智慧，并且能使人谦虚、自信，有耐心和机智，而这些都是未来成功必须要有的要素。日积月累的读书生活，是明天事业成功的关键。没有今天的勤奋读书作为人生的保证，何来将来的辉煌业绩？ '),
(0000000030, '大学之路', '吴军', '49.30', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51LwpbjmNFL._AA218_.jpg', '在《大学之路（套装上下册）》中，作者阐述了英美著名教育家的教育理念，系统地介绍了英美名校的特色和差异，比较了中美两国在教育上的差异，并且结合自己的亲身体会，对年轻人给出了自我发展的建议。作者与美国许多大学有着密切联系，还介绍了美国名牌大学在招生中许多不为人知的细节，并重点解析了其中一些潜规则的历史成因和申请者可能有必要采取的对策。 \n作为一名事业有成者，作者详细阐述了教育在人生中的重要性，并特别强调人生是一场马拉松，教育乃终身学习，而并非以获得一个名牌大学学位为终结。对大学教育这一严肃话题，作者以一种轻松自在的方式娓娓道来。上册主要介绍了英美大学的教育方法、办学理念和招生特点。下册作者则以半游记的形式，带领读者走访十多所英美名校，既让人如身临其境，又通过一个个实例帮助读者了解各个名校的特点。本书对教育工作者、家长和学生以及留学机构都有一定的借鉴和参考价值。'),
(0000000031, '爱的五种语言', '查普曼', '24.60', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41WNNnrwzlL._AA218_.jpg', '《爱的五种语言(新版)》内容简介：每个人都有爱与被爱的需要，都有一个情绪的爱箱，但不同的人却使用不同的语言来表达和接收爱，以致这个爱箱常常不能被填满。查普曼博士发现人们基本上有五种爱的语言：肯定的言词、精心的时刻、接受礼物、服务的行动、身体的接触。 \n两性间许多误解、隔阂和争吵都是由于不了解或忽略对方的主要爱语造成的。当夫妻双方主动选择使用对方的主要爱语时，就能很好地发展彼此的亲密关系，并积极地处理婚姻中的冲突和失败。 \n《爱的五种语言(新版)》将带领读者跨越两性沟通的迷思与阻隔，填满自己和伴侣的爱箱，进行一场婚姻的内在变革。 '),
(0000000032, '谁拿走了孩子的幸福', '李跃儿', '23.90', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51xPSza5MYL._AA218_.jpg', '《谁拿走了孩子的幸福(全面升华版)》内容简介：与其说这是一部关于教育的书籍，不如说这是一部用心血凝成的关于爱育的宣言。教育与爱育的差别在于：教育往往是居高临下的，而爱育则是平等自由的。居高临下通常会带来压抑、束缚，甚至会扼杀孩子的创造力；而平等自由却能大大发挥孩子生命中巨大的原创潜能。 \n李跃儿，这位由酷爱艺术的女画家，到有心将自己的常识传授给下一代的老师和母亲，在经历了太多传统教育的失败之后，终于大彻大悟；终于从高于孩子的“教育宝座”，回到了自己也曾拥有过的蓝天乐土；终于以平等的姿态，来看待孩子的成长；终于开始享受孩子们创造的多彩世界……'),
(0000000033, '职业教育要义', '姜大源', '35.80', '教育', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41PpUx5X80L._AA218_.jpg', '《职业教育要义》内容简介：理念是先导，规律是提升，内涵是完善，本质是深化。这就是说，“观、论、说、辨”之间存在着精微的、层层深入的逻辑关系的搭建，是作者匠心独运的一种结构设计和铺排。“观、论、说、辨”既独立成篇，又交相辉映；既是理念引领，又是实践指南；既具国际视野，又是国内典型经验升华；是妙笔墨香、精思融会成就的大著，是我国职业教育原创理论的跨越！览阅这本书，我们能够深切地感受到一位研究者对中国职业教育的爱之笃、情之切、思之深、论之美！'),
(0000000034, '比较思想政治教育', '陈立思', '49.10', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51tsHiZTc+L._AA218_.jpg', '《比较思想政治教育》内容简介：高等教育质量工程是新世纪高等教育发展的生命工程。我国要在新世纪里建设学习型社会，跻身创新型国家行列，实现全面小康，进而基本实现现代化，作为基础和支撑、作为各领域专门人才的摇篮的高等教育便一定要注重质量。高等教育注重质量，就要坚持以本科为本，如果没有本科教育的质量保障，便不可能为社会主义现代化事业提供合格的人才，也不可能为研究生教育提供优质的生源。目前，全国高校有思想政治教育专业本科点280多个，由于该专业的特殊重要性，又由于它是文科中招生人数最多的专业之一，注重和提高思想政治教育专业建设质量便有着特殊的战略意义。'),
(0000000035, '幸福与教育', '诺丁斯', '36.00', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41zBWLqWYQL._AA218_.jpg', '当父母们被问道：他们对孩子有什么愿望呢？父母们经常会说：他们希望自己的孩子幸福。然而，为什么幸福很少被作为教育目的来论及呢？《幸福与教育》对“将幸福作为一种教育目的的话，我们会如何去教学”这一主题进行了探讨。《幸福与教育》首先追问了什么是幸福。其次，又讨论了我们怎样才能帮助孩子们去理解幸福。作者认为，要获得真正的幸福，我们必须培养对于不幸福的容忍能力以及一种减轻他人痛苦的意愿。在对当代这个几乎只看重以经济指标衡量幸福和快乐的社会进行批判的同时，《幸福与教育》谈到了持家、为人父母、珍爱住所、培养品格、人际关系的发展、找到自己所喜欢的工作和参与民主生活方式等对于幸福的意义。最后，《幸福与教育》还对如何将学校和教室变成幸福的场所这一问题进行了探讨。'),
(0000000036, '教育心理学', '陈琦', '48.90', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/61yNEp2CbWL._AA218_.jpg', '《教育心理学(第2版)》为普通高等教育“十一五”***规划教材，是2005年8月出版的《教育心理学》的第2版。《教育心理学(第2版)》内容由绪论、学生心理、学习理论、学习心理、教学心理与教师心理六部分组成，共十六章，以丰富多彩的体例形式系统介绍了教育心理学的基本知识和最新研究成果，并结合大量案例阐释了这些知识在教学实践中的应用。本次修订，在第1版的基础上，进一步吸纳教育心理学最新的研究成果，根据我国教育教学中的焦点问题来编排思考问题、议题和案例，在图书体例安排上满足师生的教学和学习活动需要，在学术性的基础上体现实践性和操作性。 \n　　《教育心理学(第2版)》可作为心理学、应用心理学、教育学、公共事业管理等专业本科生和研究生教材，可作为各级各类教师培训学校、研究生课程班的教材，可作为教育科研人员的参考资料，还可作为各种考试(如研究生入学考试、教师资格证考试等)的参考用书。'),
(0000000037, '班主任工作漫谈', '魏书生', '25.50', '教育', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/519hxsmkXQL._AA218_.jpg', '30多年前，中国教育界的传奇人物魏书生以严整、科学、极具前瞻性的教育理念，新颖的互动教育方式，引导学生自主学习的教学方式，民主科学的管理指导思想，引领了新一轮教育改革的方向。本书即他的经典著作，以班主任工作为主题，涵盖了全方位教育、教学、管理的策略和实施方法。包括班主任的自身定位，学生综合素质的培养，班级管理的人性化、自主化、个性化、特色化，高效的学习方法等，从指导思想到管理措施，再到工作细节，完美展现了作者扎实的理论功底、丰富的实践经验和独具一格的工作作风。 \n本书内容丰富，情感厚重，风格平实。大量生动感人的事例让人身临其境，富于故事性、趣味性、启发性和可操作性。深刻的思考闪烁着师者的智慧光芒，具有引人入胜的魅力和震撼人心的力量，被广大教师尊为必读教科书。很多学校、教育局、教委将本书作为培训教材。 '),
(0000000038, '做一个老练的新班主任', '熊华生', '26.10', '教育', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51RvOJ0dRIL._AA218_.jpg', '《做一个老练的新班主任》稿内容丰富，对新班主任如何进行心理调适、尽快进入角色提供了切实的指导，用典型案例详细说明新班主任可以如何接班、可以如何培养班干部、可以如何对班级进行日常管理、可以如何进入班风建设等；此外，书稿还对新班主任如何进行职业规划、如何加快专业成长提供了解决方案。'),
(0000000039, '时间简史', '史蒂芬·霍金', '34.30', '科技', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51ewBewBwIL._AA218_.jpg', '《时间简史(插图本)》尽管霍金教授的著述极为清晰而机智，有些读者仍然觉得难以掌握复杂的概念。为了使读者加深理解，《时间简史》还增加了240多幅彩色插图，包括卫星图像和照片。这些都应归功于诸如哈勃空间望远镜和电脑三维和四维实体成像等技术进步之赐。详细的插图说明使读者能体验到星系际太空的广漠、黑洞的奇妙性质以及物质和反物质碰撞的粒子物理的微观世界。作为一本飨以读者宇宙学的最新理解的经典著作，《时间简史》插图本是探索时间和空间核心秘密的引人入胜的故事。 '),
(0000000040, '智能时代：大数据与智能革命重新定义未来', '吴军', '54.40', '科技', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51w6JIUSGAL._AA218_.jpg', '《智能时代：大数据与智能革命重新定义未来》大数据和人工智能迅猛发展，对社会和商业的影响日益深刻，从学术界到企业界，智能化浪潮的来临，已经成为共识。可以比肩于大航海时期和工业革命的此次变革浪潮，必然会对我们的技术发展、商业和社会都会产生重大的影响。作者吴军在《智能时代：大数据与智能革命重新定义未来》中指出，首先，我们在过去被认为非常难以解决的问题，会因为大数据和机器智能的使用而迎刃而解，比如解决癌症个性化治疗的难题。同时，大数据和机器智能还会彻底改变未来时代的商业模式，很多传统的行业都将采用智能技术实现升级换代，同时改变原有的商业模式。大数据和机器智能对于未来社会的影响是全方位的。另一方面，智能化也会对整个社会带来巨大的冲击，尤其是在智能革命的初期。因此，在智能时代开始的时候，我们需要未雨绸缪，力争做控制世界的2%人，而不是被智能化浪潮淘汰。 '),
(0000000041, '设计中的设计', '原研哉', '35.50', '科技', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41mwxg7p1NL._AA218_.jpg', '《设计中的设计》自二00三年出版以来，在日本先后加印十七次，二O0四年荣获由SUNTORY财团颁发的第二十六届文学艺术大奖，二00五年，在台湾出版后，迅速登上诚品书店、金石堂艺术类图书排行榜，蝉联多期，畅销至今。当你们因为读完这本观念设计书而感到越来越不懂没计时，这并不意味着你对于设计的认识倒退了，而是证明你在设计的世界里又更往深处迈进了一步。'),
(0000000042, '长物志', '文震亨', '33.10', '科技', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/416z6vkwb6L._AA218_.jpg', '《长物志（中华雅文化经典）》明末名士文震亨的传世之作，也是中国古代设计园林宅居、品鉴收藏雅玩的百科全书，与《园冶》同为我国古代园林艺术的双璧。 \n《长物志（中华雅文化经典）》共十二卷，其中讲述居家陈设的有室庐、几榻、器物、位置四卷，与造景布局相关密切的有花木、水石、禽鱼三卷，与文人雅趣直接关联的有书画、香茗两卷，集中谈论日常生活的有衣饰、舟车、蔬果三卷。 \n《长物志（中华雅文化经典）》作者文震亨，出生书香门第、官宦世家，崇尚清雅，遵法自然，借品鉴长物而标举人格，完美呈现簪缨世族的清雅生活格调，明代江南书香世家的高洁风致。 \n《四库全书》收录《长物志》，评其“惟震亨世以书画擅名，耳濡目染，与众本殊，故所言收藏赏鉴诸法，亦具有条理”。为后世营造生态家居、鉴藏文物雅玩提供了理论框架以及可供模仿的范本，是中产阶级提升美学素养、提高生活格调的必读之书。 '),
(0000000043, '氢能与制氢技术', '吴素芳', '27.40', '科技', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51IbEq727rL._AA160_.jpg', '《氢能与制氢技术》主要介绍氢能的应用领域以及各种现有工业制氢方法和研究发展中的制氢方法。全书共分十章：第一、二章主要介绍氢能及应用领域。第三至第七章主要介绍各种现有工业制氢方法，包括电解水制氢，天然气制氢，煤制氢，甲醇制氢以及工业副产气体提纯制氢等。第八章介绍工业制氢方法的发展，第九章介绍生物质制氢方法，第十章介绍太阳能制氢。'),
(0000000044, '微纳尺度传热', '张卓敏', '55.00', '科技', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41NFhoiinKL._AA218_.jpg', '《微纳尺度传热》的主要内容包括：宏观热力学、传热学和流体力学的基础理论；理想气体的热性质及量子力学的简明介绍；玻耳兹曼输运方程，从连续流到自由分子流的热传递和微观流动区域；经典和量子尺寸效应对比热容和热导率的影响；固态理论；纳米结构中瞬态和非稳态的能量传输过程；从电磁波的基本知识及宏观热辐射入手，介绍了各种材料的电介质性质以及具有特异性能的超材料；薄膜和多层膜的干涉效应、光子晶体的能带结构、光栅的衍射、粗糙表面的散射，以及这些现象对于热辐射的影响；近场能量传递中的衰逝波和耦合现象，并总结了纳米光子学和纳米尺度辐射热传递的最新进展。'),
(0000000045, '中国火药史', '潘吉星', '487.10', '科技', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51YGO1NUPKL._AA218_.jpg', '全书分三篇。一、绪论篇。第一章谈火药出现前中外火攻中使用的古代纵火剂和纵火武器。第二章论有关火药的一般概念，包括火药的定义、古今火药燃烧理论。第三章论火药和火器的起源，论证为什么其起源地是中国，而非其他地区或国家。二、历代发展篇。分别叙述历代火药和各种火器技术发展情况及其历史背景。三、外传及国际影响篇。分别叙述中国火药及火器技术在世界各地传播以及论火药、火器使用后产生的世界影响。'),
(0000000046, '导弹制导系统原理', '葛志磊', '38.80', '科技', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51ChcoBKLxL._AA218_.jpg', '《导弹制导系统原理》共分五篇，详细介绍了导弹制导系统与导引头的基本结构、红外／可见光／激光等光学制导系统的工作原理及组成、雷达制导系统的工作原理及组成、捷联导引头及多模复合导引头的工作原理及信息处理技术、常见导引头的半实物仿真技术等内容。全书涵盖内容系统全面、深度适中，也吸收了部分近期制导系统技术发展的新成果，具有新颖性，能使读者全面系统地了解当今精确制导武器制导系统的原理和相关技术以及实验方法等。每章后均有思考题，帮助读者掌握内容重点。'),
(0000000047, '图解汽车原理与构造', '张金柱', '56.90', '科技', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/61CQZmKEvBL._AA218_.jpg', '本书采用图解的方式，系统地介绍汽车的结构与原理，并突出了新知识、新技术。全书主要内容由五部分组成，第一部分主要介绍汽车的总体结构；第二部分描述汽车发动机，包括曲柄连杆机构、配气机构、燃料供给系统、冷却系统、润滑系统和电动汽车等；第三部分详细介绍汽车的底盘，包括离合器、手动变速器、自动变速器、悬架、转向系统和制动系统等；第四部分介绍汽车车身；第五部分介绍汽车电器，包括启动系统、充电系统、点火系统、汽车空调和安全气囊等。除传统汽车结构外，本书还增加了许多汽车新结构和新技术等，如混合动力汽车、燃料电池汽车、CVT变速器、双离合器变速器等内容。 '),
(0000000048, '电动与拖动基础及MATLAB仿真', '陈亚爱', '37.00', '科技', '3.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/515rjVCvsYL._AA218_.jpg', '《电机与拖动基础及MATLAB仿真》系统论述了电机与拖动基础方面的基本理论和实验技术。主要内容包括变压器、交流电机、直流电机、微控电机等的基本结构、工作原理、不同运行状态下的电磁物理过程和能量关系、电力拖动基础知识，以及电机与拖动系统的MATLAB仿真技术。《电机与拖动基础及MATLAB仿真》内容丰富、新颖，每章均有与生产实际结合密切的典型实例或实际工程应用的设计方法，章后附有思考题与习题，在绪论、变压器、交直流电机与拖动这几章中均有相应的MATLAB仿真实例。《电机与拖动基础及MATLAB仿真》在附录中还给出了部分变压器、交直流电动机等主要技术数据，供工程技术人员选择时参考。 '),
(0000000049, '世界美术名作二十讲', '傅雷', '42.40', '艺术', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51cbfcp3aiL._AA218_.jpg', '《世界美术名作二十讲》围绕文艺复兴以来西方近二十位艺术大师及其名作展开讨论，着重介绍了文艺复兴初期自乔托以来，经过“三杰”（达•芬奇、米开朗基罗、拉斐尔），十七世纪的伦勃朗、鲁本斯，到十八、十九世纪的近二十位画坛巨匠及其名作。讲解其艺术特点、绘画技巧，又辅以大师生平、时代思潮等内容，从艺术风格延至人格操守，行文生动洗练，深入浅出，形象解读，娓娓道来，紧扣每讲内容，或全貌，或局部，或对比，形象解读，感情表达，易于领悟，融文学、音乐、哲学、社会、时代于一体，给人以丰富而优美的精神享受。'),
(0000000050, '小顾聊绘画', '顾爷', '39.60', '艺术', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51lYxGczulL._AA218_.jpg', '《小顾聊绘画：文艺复兴》内容简介：艺术普及达人顾爷全新作品，讲述他最向往也最欣赏的艺术时代——文艺复兴。一生未娶的痴情人—波提切利 ，脾气暴躁的肌肉控—米开朗琪罗 ，德艺双馨的实干派—提香，异想天开的梦想家—达芬奇，画如其人的小鲜肉—拉斐尔…… \n9位骨灰级艺术大咖，9段奇妙的艺术故事，一个需要巨人而且产生巨人的时代，一场“人”代替“神”的艺术轰趴一触即发？ \n顾爷麻辣点评—— \n文艺复兴时期的艺术家，和我们想象中的文艺青年形象基本没什么关系。他们更像是梁山好汉，平时逛街也随身带着刀，一言不合就拔刀互砍。 \n这其实是和当时的社会现状分不开的，老百姓并不受警察和法律的保护，被人欺负了也没地方报警。实在遇到什么连环杀人狂了，才可能会有当地族长或者权威人士带着村民举着火把去围捕，抓住以后也不会移交有关部门处理，直接用私刑了断就算了。 \n作为一个生活在文艺复兴时期的老百姓，你好的生存方式就是学会自卫。那些艺术家不光会带着刀、穿着盔甲上街，还会自己研发武器（火药、火枪）。贵族们更是把城堡打造得密不透风，美第奇家族的那条“瓦萨里长廊”就是为了避免暗杀而造的。 '),
(0000000051, '小顾聊神话', '顾爷', '33.00', '艺术', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51uT+kEIA3L._AA218_.jpg', '《小顾聊神话》内容简介:超人气艺术普及作家顾爷！带你走进西方古典艺术的源头——希腊神话！艺术入门必备指南！360度紧致提拉你的艺术逼格!开启全民艺术狂欢! \n拜伦说：如果我是一个诗人，是希腊的空气造就了我。 \n雪莱说：我们全都是希腊人。我们的法律、我们的文学、我们的宗教，根源皆在希腊。 \n顾爷说：希腊神话就是一部包含了血腥、暴力、乱伦、钩心斗角和同性恋的情景剧！ \n希腊神话，因其脑洞大开的丰富想象力和充满伦理拷问的故事情节成为古典艺术家、文学家、音乐家们宠爱的题材，古往今来以它作为灵感的艺术作品层出不穷。在享受古典艺术之旅的盘山小道上，能不能快乐地开辟出一条不硌脚的路，很大程度上都仰赖于对于希腊神话的了解。 \n此次，顾爷用清爽接地气的语言、一针见血的点评，通过平易近人的叙述方式，将希腊神话这出剪不断理还乱的家庭伦理狗血大戏，理出一个头绪来，让艺术不再高冷，让神话妙趣横生。 '),
(0000000052, '声律启蒙', '车万育', '60.90', '艺术', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41bYjqzCSQL._AA218_.jpg', '经典国学诵读佳作，为训练儿童作诗对句、掌握声韵格律的启蒙读物。 \n以音韵分编，包罗万象。虚实结合，应对自如，读来琅琅上口，妙不可言。文学性不输古代诗词歌赋，独具一格，流行于世。 \n“云对雨，雪对风，晚照对晴空。 \n三尺剑，六钧弓，岭北对江东。 '),
(0000000053, '大都会艺术博物馆指南', '美国大都会艺术博物馆', '98.60', '艺术', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51D9Du90UAL._AA218_.jpg', '这本三十年来首次重新编撰的《大都会艺术博物馆指南》介绍了博物馆最具代表性的六百件精华藏品，呈现了世界各地六千年的视觉文化。全书由十七个展览部门的全体策展人通力完成，馆长托马斯•P•坎贝尔亲自撰写导言。每件艺术品都配以精美的图片和最新的说明文字，既可作为参观手册，也可当作艺术类读物。 '),
(0000000054, '蒋勋破解莫奈之美', '蒋勋', '33.40', '艺术', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51ofiGkRjVL._AA218_.jpg', '莫奈的一张画诞生了一个画派。他在破晓的河口边架起画架，从黑夜的尽头开始等待黎明，等待水面上日出之光，画下了《日出印象》。这幅当年饱受嘲讽的画作，后来不仅成为划时代的伟大巨作，他留下的光，更继续照亮这个世界。 \n在莫奈的世界里，没有单纯的颜色，他的颜色都是一种光。因为光，所有的色彩都泛着一种瞬息万变的明度。莫奈引领我们开启了另一种视网膜上的感觉，像是要拯救我们观看的方式。我们感受到黎明破晓的晨雾浮游于水面，一朵莲花静静绽放，我们感受到雨后垂柳上的水滴，滴入水池，荡漾起一圈一圈涟漪，我们感受到夕阳的光的倒影，一片沉静的金黄，像是无限委屈，要诉说什么，却终究沉默逝去。 \n美学大师蒋勋亲自执笔，解读印象派大师莫奈伟大而迷人的艺术生命。莫奈的美学是光的信仰，也是生命的信仰。 '),
(0000000055, '西方绘画大师经典佳作：莫奈', '牛雪彤', '77.60', '艺术', '4.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/611pMMTGhrL._AA218_.jpg', '克洛德·莫奈既是印象主义画派的代表人物及创始人之一，也是法国历史上最重要的画家之一。他不关心造型、轮廓和阴影，而是把重心放在了笔触上，以此力图对色彩和自然光线进行细腻而完美的表达。 \n《西方绘画大师经典佳作 莫奈（高清细节版）》图文并茂地叙述了莫奈的生平与艺术创作经历，共收录莫奈超过100幅 代表性的作品。这些作品的创作贯穿了他的一生，从初露锋芒的青年时期，到迷恋印象派的中年时期，再到后来艺术升华的中老年时期，以及后花园世界的晚年时期，包括其永垂不朽的《睡莲》、《日本桥》等系列作品。 \n《西方绘画大师经典佳作 莫奈（高清细节版）》对莫奈及其作品进行了系统性的介绍，阅读本书读者可以领略莫奈画作的无限魅力。书中的图片极其精美，极具观赏性，对读者来说是一场难得的视觉盛宴。本书适合艺术爱好者及各大院校艺术相关专业的学生阅读。'),
(0000000056, '神在人间的时光', '陈嘉辉', '40.90', '艺术', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51pFLxQnzVL._AA218_.jpg', '《神在人间的时光》内容简介：“那里夜夜都有月光”，希腊神话是一个充满魅力的令人神往的世界。诗人们称颂“我爱回忆那毫无掩饰的时代”、“今夜的天空很希腊”，甚至无产阶级的伟大导师马克思也说希腊神话“能够给我们以艺术享受，而且就某方面说还是一种规范和高不可及的范本。” \n希腊神话作为西方文化的源头之一，同时对西方的文化与生活影响深远。了解西方社会，希腊神话是必备的文化修养。 '),
(0000000057, '图说中国绘画史', '高居翰', '66.60', '艺术', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51CcDqQ6wTL._AA218_.jpg', '本书是1958年由瑞士人史基拉策划的一套亚洲艺术丛书之一，以编入他当时已获盛名的欧洲艺术丛书。经喜龙仁推荐，当时正在攻读博士学位的高居翰获得了写作本书的机会，完成一部精简、创新、又具可读性的艺术通史。 \n\n高居翰的这部中国绘画通史著作，图文并貌，以一个外国人的眼 光，来欣赏中国名画，由100幅作品串起对画史的解说，是雅俗共赏的艺术读物。 '),
(0000000058, '气势撼人', '高居翰', '38.60', '艺术', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41TnAI5gKwL._AA218_.jpg', '《气势撼人》讲述了：高居翰（James Cahill），1926年出生于美国加州，曾长期担任加州大学伯克利分校艺术史和研究生院的教授，以及华盛顿弗利尔美术馆中国书画部顾问，他的著作多由在各大学授课时的讲稿修订，或充分利用博物馆资源编纂而成，皆是通过风格分析研究中国绘画史的经典书籍，享有世界范围的学术声誉。 \n1978至1979年间，高居翰教授应哈佛大学最负盛名的诺顿（Charles Eliot Norton）讲座之邀，发表系列演讲，《气势撼人》所收录即当时演讲的内容。 '),
(0000000059, '江岸送别', '高居翰', '42.70', '艺术', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/41fRM9OcnzL._AA218_.jpg', '《江岸送别》是作者关于中国晚期绘画史写作计划的第二种，探讨明代初期与中期的绘画。朱元璋推翻蒙元政权，建立明朝以后，却也带来了一段腥风血雨的统治，许多文人画家都落得身首异处的凄惨下场，形成了明初画坛的空白时期。《江岸送别》除了讨论明代画家如何赓续元代的绘画成就，寻求创新之外，也探讨了宫廷绘画与浙、吴（苏州）、南京等地方画派的表现及其发展。书中对于画家的社会、经济地位与其绘画风格的关系，也有着精彩透辟的讨论。高居翰（James Cahm），1926年出生于美国加州，曾长期担任加州大学伯克利分校艺术史和研究生院的教授，以及华盛顿弗利尔美术馆中国书画部顾问，他的著作多由在各大学授课时的讲稿修订，或充分利用博物馆资源编纂而成，皆是通过风格分析研究中国绘画史的经典书籍，享有世界范围的学术声誉。'),
(0000000060, '知日·东京就是日本', '茶乌龙', '44.80', '生活', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51qUSElIzpL._AA218_.jpg', '专门关注日系内容的超人气品牌「知日 ZHIJAPAN」 推出《知日》特集第46弹 《知日・东京就是日本！》特集！ \n\n如果你想了解现在的日本，东京就是你看日本的好窗口。 \n《知日》“城市特集”第１弹，超级都市东京完全指南！ \n东京是日本的中心，拥有1300多万人口，在2016年世界都市综合力排名(GPCI)中位居第三。这座超级都市，却有着罕见的强大文化融合力，是一个丰富、多元的混合体。历史与现代、喧闹与宁静、经典与前沿。在东京，可以体验到日本文化的诸多侧面，从某种程度上来说，东京就代表了日本。 '),
(0000000061, '崔玉涛：宝贝健康公开课', '崔玉涛', '31.20', '生活', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/510igx8vshL._AA218_.jpg', '《崔玉涛:宝贝健康公开课》是超人气儿科医生崔玉涛大夫在《父母必读》杂志写作专栏《崔大夫诊室》10年的集大成之作。《崔玉涛:宝贝健康公开课》的内容分为宝宝的营养、常见病和护理三大部分。通过一个个诊室真实案例的分析，细致入微、深入浅出地将养育的要点娓娓道来，同时传播国际最前沿的养育知识，帮助家长建立正确的养育观。'),
(0000000062, '定本·育儿百科', '松田道雄', '28.90', '生活', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51MS5r45O2L._AA218_.jpg', '《定本·育儿百科》内容简介：《育儿百科》，把新的育儿经验和育儿理念不断地注入《定本·育儿百科》，尤其是他对东方民族的生理特点和风俗习惯的深入研究；对现代职业女性育儿方面遇到的问题所作的精辟分析；对传统育儿方法与现代育儿意识冲突的得当处理；对常见小儿疾病的处理方法通俗准确的讲述，使我一边读一边感叹：如果初为人母时，有这本《定本·育儿百科》该多好啊！那会少遭受多少担惊受怕的折磨呀！孩子会少受多少不该受的委屈呀！…… '),
(0000000063, '中国居民膳食指南', '中国营养学会', '49.50', '生活', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/515jPlxPGvL._AA218_.jpg', '《中国居民膳食指南(2016)》由一般人群膳食指南、特定人群膳食指南和中国居民平衡膳食实践组成。一般人群膳食指南面对健康人群，共有6条核心推荐条目，在每个核心条目下设有提要、关键推荐、实践应用、科学依据、知识链接5个部分。提要是对条目中心内容、关键推荐和关键事实进行总结；关键推荐是对实现核心条目建议的具体化操作要点；科学依据总结和分析了1997—2014年对同一问题的科学研究的系统综述和荟萃分析，集中了科学界的主流观点和共识，关键事实是对科学依据内容的提炼和总结；知识链接介绍与本条目有关的一些信息资料。指南特别结合我国居民的营养现况问题，推荐了解决方案和建议。特定人群膳食指南是根据不同年龄阶段人群的生理和行为特点，在一般人群膳食指南基础上进行了补充。特定人群包括孕妇乳母膳食指南、婴幼儿膳食指南（0～24月）、儿童少年（2～6岁、7～17岁）膳食指南、老年人群膳食指南（≥65岁）和素食人群膳食指南。为了更好地传播和实践膳食指南的主要内容和思想，修订了2007版的中国居民平衡膳食宝塔、新增了中国居民平衡营养餐盘和儿童平衡膳食算盘，以突出可视性和操作性。'),
(0000000064, '回家吃饭的智慧', '陈允斌', '75.90', '生活', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/61mizqEu6VL._AA218_.jpg', '关于《回家吃法的智慧》（上、中、下）：值得终生阅读的饮食营养之书！“生活圈”节目特邀“健康营养师”“中国简易食疗推广者”；四代中医传人陈允斌，重现食疗健康经典。 \n让食物变成你的药物，不要让药物变成你的食物。 \n人一生中，需要吃的东西那么多，但很多人都搞不懂“什么环境应该吃什么，什么季节应该吃什么，什么人应该吃什么，怎么吃，什么时间吃，吃多少合适，什么 症状应该吃什么……”这些问题，可能，大家都觉得不需要搞懂这些也能活得好好的，但是，为什么现在食物极大丰富，人们却越来越容易得病？并且，一经发现就 是无法治愈，且只能终生靠药物控制的常见病，甚至绝症。 \n实际上，很多病都是在日常生活中被一口口吃出来的，吃出来之后，我们大多数人只能把健康交给医院与药物控制，听天由命。 \n西方医学之父希波克拉底说过一句名言：“要让食物变成你的药物，不要让药物变成你的食物。”但是，我们中国人往往做反了。 \n只有健康了，我们才能随心所欲，才能掌控自己的命运，如何把健康掌握在自己手中，时光不饶人，只需要我们掌握回家吃饭的智慧，就能保自己和他人平安无虞！ '),
(0000000065, '向红丁：糖尿病饮食宜忌', '向红丁', '27.80', '生活', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/514rfzOGxxL._AA218_.jpg', '北京协和医院内分泌权威专家向红丁教授通过此书向广大糖尿病患者进行了一次饮食知识普及，从多角度详细介绍了糖尿病患者日常的饮食宜忌，包括营养素宜忌、日常饮食宜忌、保健品宜忌、中药宜忌、糖尿病并发症饮食宜忌、膳食宜忌等内容。书中为糖尿病患者推荐了数十种适合食用的食材，也介绍了多种糖尿病患者日常要尽量避免的饮食，此书可以作为患者日常的一本饮食工具书随时翻阅。 \n   本书为全彩印刷，图片精美，版式简介，条目清晰。附赠：《中医理疗调养糖尿病》彩色拉页。'),
(0000000066, '肠子的小心思', '恩德斯', '26.10', '生活', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51T1mjHWuHL._AA218_.jpg', '《肠子的小心思》是德国图书界的黑马，口嫌体正直的德国人，一面对粑粑说着“不要不要”，一面看得好污好欢乐。原来，德国人觉得理所当然的马桶竟是痔疮的罪魁祸首；如此现代化的今天，蹲坑这种看似原始的行为竟然还在全世界一半以上的地区保留着，而且这才是大便的正确解锁方式；跟肠子相关的事，不仅有趣，还密切关系到人体的健康状况，一个感觉不好的肠道会让我们感到沮丧，而一个健康的、营养良好的肠道会大大地改善我们的情绪……谁能想到这些奇葩欢乐的内容，竟是一位软萌妹子所写，还一举俘获36个国家和地区读者的心。让我们跟着这本新鲜出炉带着屎味的书，一起开启神奇的消化道之旅吧。 '),
(0000000067, '救命之方', '罗大伦', '27.40', '生活', '4.5', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51FmDWvNXRL._AA218_.jpg', '本书里的25个经方和验方，全部来源于《神农本草经》《伤寒论》等中医经典和历代中医大家的临床实践，是每一个中国人安身立命、代代传承、救济天下病苦的瑰宝。现在，这些经典方剂经著名中医博士罗大伦筛选梳理并详细讲解，古方今用，不仅能从根上防止那些突发的、经久难愈的心脑血管病、咳喘、鼻炎、痛风等疾病，还能有效地调治皮肤病、痔疮等难言之隐。其中，本书部分方子由罗博士在北京电视台《养生堂》栏目分享后，已让广大观众受益。 \n本书介绍的每一个方子都有非常对症的具体调治思路和方法，所推荐的每一个药食同源的药都能在正规中药房买到。 '),
(0000000068, '求医不如求己', '中里巴人', '48.20', '生活', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/51bToSGzGRL._AA218_.jpg', '《求已不如求已》全新多媒体健康书，有图有视频，中里巴人老师亲自出镜示范经络穴位养生方法。随书赠送：标准经穴部位图和标准足部反射区图全彩拉页。著名中医文化学者曲黎敏、著名心理创伤治疗与压力管理专家海蓝博士倾情作序！ \n这是一套读后马上想去做，做后就能对自己的身体充满自信，还可以帮助家人摆脱痛苦的健康经典读本。 \n历经10年的身体力行，作者中里巴人先生对10年前的心血之著《求医不如求己（1、2、3、4）》内容大道至简地删减组合，浓缩精华，使其更有针对性、更简单、更有效，其终极目的就是要让人人都能使自己的身心变得强大起来…… '),
(0000000069, '时光知味', '陈允斌', '108.10', '生活', '5.0', 0, 'https://images-cn.ssl-images-amazon.com/images/I/511tNXuAspL._AA218_.jpg', '四季并不是简单的循环重复。每一年都有它独特的天时地利和气候，对人体的健康也有不同的影响。这本《时光知味》24节气养生速查速用日历，作者不仅按照2018年养生重点给出24节气家传防病养生食方，还选出375首与24节气时令、饮食、起居相关的纯美五言古诗，再配以近400幅美轮美奂的经典本草图谱，每天带您认识一味可以入味的植物。让您从身到心地享受按照节气来过日子的美妙。翻开日历新的一页，都能把每一天过成一个节日。得天之助，不负光阴。 ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_title` (`book_title`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;