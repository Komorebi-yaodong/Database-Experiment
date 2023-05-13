ALTER TABLE BOOKS disable constraint FK_CLASSIFICATION;
ALTER TABLE BORROWS disable constraint FK_BORROWS_STUDENTS;
ALTER TABLE BORROWS disable constraint FK_BORROWS_BOOKS;
-- 管理员设置

-- Students
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('19376213','沈湛','7dabf5c198b0bab2eaa42bb03a113e55','13328725205',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373040','师鹏','1952a01898073d1e561b9b4f2e42cbd7','18335982126',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373941','李骁','8037ccea85006fee74f58f86edf1788e','18810891831',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373812','张银黎','3a79f9e97bb9c416ceefb40943001e5d','15139248140',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373108','张耀东','ba157d2ecdcaeac516b27cf02bf45e59','13349184119',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20370001','测试用户','098f6bcd4621d373cade4e832627b4f6','12345678912',0,0);

INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370002', '刘梦茹', '6f9247eb06cc4a7c1c762555945b1aaf', '15949942932', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370003', '赵诺翰', '65b724c98ac0e8e62ca33a7dab3edde5', '17504849876', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370004', '赵鹤茂', '5d8af9d97a8969e5fb05e5c1caa3b499', '18657264789', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370005', '严川皓', 'f3a8479fc706bdcaed56ca6d8d4bf613', '18099287261', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370006', '王辉栋', '4acf954119d5bf8c0ef5ce07f396defb', '15020422327', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370007', '杨星辰', '34475d2aa46910d5bd542237219fda71', '17613469634', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370008', '乐木霆', '593fa33952b888e342b6ea8797ade4b3', '17524893924', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370009', '孙致霖', 'ee19e453829326eb7192bf50037b4269', '18192386071', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370010', '隗思淼', '2e242b44ce0ebe39f93a9d810adfadca', '15011467027', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370011', '李明轩', 'dcc77169f507c60b9e778c37a2738560', '13327502754', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370012', '周诚文', '5af6814c150d71e4d9a2fa5d26c0f667', '13575849941', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370013', '烨璟天', 'b512f10c85f46d4e98a1631f5bf58690', '15545712344', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370014', '竹彦昌', 'a529a8a1b993705cfdf6f9b48b1baccd', '18869331415', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370015', '王宸君', '75d37c6cbf460947005c97e3f12906a9', '17594985398', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370016', '颜如玉', '937c02cd25af6c8c225d06b14876430b', '19846725976', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370017', '玉文翰', 'ed829cdb0ca01e47382ff8ab8c875119', '13224675553', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370018', '方君彦', '77a30c031136f1d47375631c0a9865bb', '18803386523', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370019', '白青枫', '3363bb006665e0a7efc8fd5be2c53bed', '13185019698', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370020', '徐长卿', '9738d61dcd0800b5c54f6eb5c46902e0', '15823754459', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370021', '晓星尘', '9cb19f353255a6b9b50253a1e6c9c870', '18749501773', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370022', '刘安旭', 'cef8605189c6f354b710d90610fcff74', '19853407665', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370023', '李昊明', '7d012fd69545d081459d8faac9291f21', '18447898786', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370024', '武影婕', '63cae6ca009ff0cbd69909c97f42d358', '15056655101', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370025', '孙仪香', 'af7b5ead3ea6e1abcbfea6f8c0a64f69', '17266389530', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370026', '柳钰婉', '6eb4f98d02c88add53d3758db8572664', '15195165664', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370027', '柳雅绚', '621baa35ab05dc1136101265d08509e5', '13286857844', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370028', '孙莹凝', 'd726760b0467b77803d6d1f3585deb6e', '15231269690', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370029', '张施芸', 'eb25d21e8a4d7dc52947b61ab26a2694', '18083991177', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370030', '刘荷怡', '7006786cf5928a706bb85a748c64cc88', '14767474179', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370031', '周婉沁', '47ccc82abac13739393a94ddb1abfce7', '17753676848', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370032', '王丹曼', 'da552355df18d706b1cb44aad2699661', '18296724063', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370033', '王漫菲', 'e45e98a6e628ad018d701e53dd696fb2', '13520982030', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370034', '王杉娜', '57d44312047f5f7be000f66286b02cd1', '13857701863', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370035', '潘盈漪', '93c0e7e698ed879ddb0b0926f376622f', '18007418373', 0, 0);
-- classification
INSERT INTO classifications (id, classification, location) VALUES
	(1, '马克思主义', 'A区');
INSERT INTO classifications (id, classification, location) VALUES
	(2, '哲学', 'B区');
INSERT INTO classifications (id, classification, location) VALUES
	(3, '社会科学总论', 'C区');
INSERT INTO classifications (id, classification, location) VALUES
	(4, '政法', 'D区');
INSERT INTO classifications (id, classification, location) VALUES
	(5, '军事', 'E区');
INSERT INTO classifications (id, classification, location) VALUES
	(6, '经济', 'F区');
INSERT INTO classifications (id, classification, location) VALUES
	(7, '文化', 'G区');
INSERT INTO classifications (id, classification, location) VALUES
	(8, '语言', 'H区');
INSERT INTO classifications (id, classification, location) VALUES
	(9, '文学', 'I区');
INSERT INTO classifications (id, classification, location) VALUES
	(10, '艺术', 'J区');
INSERT INTO classifications (id, classification, location) VALUES
	(11, '历史', 'K区');
INSERT INTO classifications (id, classification, location) VALUES
	(12, '自然科学总论', 'N区');
INSERT INTO classifications (id, classification, location) VALUES
	(13, '数理科学和化学', 'O区');
INSERT INTO classifications (id, classification, location) VALUES
	(14, '天文学', 'P区');
INSERT INTO classifications (id, classification, location) VALUES
	(15, '生物科学', 'Q区');
INSERT INTO classifications (id, classification, location) VALUES
	(16, '医药', 'R区');
INSERT INTO classifications (id, classification, location) VALUES
	(17, '农业科学', 'S区');
INSERT INTO classifications (id, classification, location) VALUES
	(18, '工业技术', 'T区');
INSERT INTO classifications (id, classification, location) VALUES
	(19, '交通运输', 'U区');
INSERT INTO classifications (id, classification, location) VALUES
	(20, '航空航天', 'V区');
INSERT INTO classifications (id, classification, location) VALUES
	(21, '安全科学', 'X区');
INSERT INTO classifications (id, classification, location) VALUES
	(22, '综合性图书', 'Z区');

-- Books
INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES
	('9787010104782', '《敦煌南朝写本书法研究》', 175, 175, '王菡薇', 8);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787010105017', '《邓小平南方谈话真情实录-记录人的记述》', 40, 40, '吴松营', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787100017565', '新书--汉译名--理想国', 74, 74, '柏拉图', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787100085533', '《中国近百年史》', 180, 180, '陈恭禄', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787106030780', '《敞开的门-中美现代电影剧作理论与技巧》', 160, 160, '许还山/罗雪莹', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108050434', '俗世奇人-贰', 113, 113, '冯骥才', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108052872', '津味儿', 168, 168, '赵永强', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108053565', '《永恒的日记-每一天的音乐》', 245, 245, '[英] 诺曼·莱布雷希特 著，盛韵 译', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108054401', '长篇小说:青年', 212, 212, '[日] 森鸥外 著，许时嘉 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787200106626', '《世界美术名作二十讲》', 210, 210, '傅雷', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787200109603', '《大家小书-大家写给大家看的书:民族文话》', 220, 220, '郑振铎', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787213069666', '《季羡林谈人生-唯一亲定自选集-精装珍藏版》', 235, 235, '季羡林', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787213075537', '《沉雪》', 20, 20, '李晶/李盈', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787213097577', '《李欣频的文案课》', 100, 100, '李欣频著', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220102370', '《On Liberty-论自由-英文》', 290, 290, '约翰.斯图亚特.密尔', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220102783', '司母戊鼎还有多少待解之谜', 109, 109, '李维明 ', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220103803', '《解除限速》', 120, 120, '[美] 劳伦斯·布洛克 著，张明 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220104466', '许地山小全集:落花生', 179, 179, '许地山', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220104541', '别让拖延毁了你的人生', 300, 300, '张乐', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787221083906', '中国历代名全译丛书(修订版):人物志全译', 158, 158, '[魏] 刘劭 ，马骏骐，朱建华 注', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787221083920', '中国历代名全译丛书(修订版):六朝文絜全译', 165, 165, '[清] 许梿 选编， 骆礼刚 译', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787229065416', '《纽伦堡来信:爱与正义的亲密档案》', 140, 140, '[美] 克里斯多夫·多德 等著， 周楠/李静 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787229125172', '《上锁的房间》', 60, 60, '劳拉.金', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787305078095', '《徐渭》', 170, 170, '丁家桐', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787305111341', '《爱情是一盘自制卡带》', 200, 200, '[美]谢菲尔德 著，冯倩珠 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787305154249', '《东鸣西应记》', 225, 225, '王鼎钧', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787506384209', '户外生存系列:野外攀爬游走技能', 157, 157, '艾米', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787506385831', '《老人与海》', 240, 240, '海明威', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787507546095', '《瞧.这个人-尼采自传》', 55, 55, '[德]弗里德里希.威廉.尼采 著,黄敬甫/李柳明 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787507831542', '《中国古代生物学》', 165, 165, '汪子春', 15);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787510047169', '《怅望山河》', 115, 115, '朱幼棣', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787510463433', '我们内心的冲突', 102, 102, '(美)卡伦·霍妮', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511018106', '《拉封丹寓言》', 205, 205, '[法] 拉·封丹 著，[法] 布特·德·蒙维 绘', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511023414', '男女有别', 102, 102, '渡边淳一', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511023421', '1984', 91, 91, '(英)乔治·奥威尔著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511024282', '阿Q正传', 80, 80, '鲁迅', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511360557', '《寂静的春天》', 255, 255, '蕾切尔.卡森', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511373021', '《社会学:原来这么有趣有用》', 150, 150, '宿文渊', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511378989', '《我这一辈子:老舍中短篇小说集》', 95, 95, '老舍', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787512714007', '《奇妙的人体》', 45, 45, '[美] 雪莉·阿姆瑟尔 著，刘晓晨 译', 15);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787513324069', '《家在海的那一边》', 265, 265, '蒋晓云', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787513917483', '鲁迅作品--野草', 172, 172, '鲁迅', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787513926508', '《自卑与超越》', 155, 155, '[奥] 阿尔弗雷德·阿德勒 著，陈玢 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514350159', '三遂平妖传.归莲梦', 201, 201, '罗贯中', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514364262', '庐隐文学精品选-现代文学精品集', 151, 151, '庐隐', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514612813', '《托尼诺成长记》', 75, 75, '[意大利] 法比奥·通巴利 著，王干卿 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514613346', '古典推理文库:菲尔博士率众前来', 223, 223, '卡尔　著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787516831953', '《一种人生观》', 135, 135, '冯友兰', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787516909447', '拿破仑传', 25, 25, '埃米尔.路德维希', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787519018603', '《人间词话》', 260, 260, '王国维', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532147434', '《克雷洛夫寓言-世界文学名著青少版.经典名著-99》', 195, 195, '（俄）克雷洛夫　著，王梅　改写', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532162765', '金链汉子之歌', 46, 46, '曹寇', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532164615', '禅宗故事', 186, 186, '易中天', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532954742', '岛屿之书', 60, 60, '[英] 艾米·利普特罗特 ，高天航 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787533949037', '他们眼望上苍', 53, 53, '佐拉.尼尔.赫斯顿', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787534050893', '中国异闻录:2:2', 245, 245, '桐木著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787535494184', '《远行.与异文明的初恋-冯骥才欧游手札-欧游手札.全彩图文版》', 275, 275, '冯骥才', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787536070554', '远大前程-全译本', 58, 58, '[英国] 查尔斯·狄更斯 著，金长蔚 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787536070615', '说史记-新史记', 69, 69, '杨早', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787538455601', '《动物世界-我的第一套百科全书》', 185, 185, '青少科普编委会', 21);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787538751062', '《城南旧事》', 85, 85, '林海音', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787539289380', '名家.名译 神曲', 234, 234, '但丁', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787539296456', '洞察人性', 289, 289, '(美)阿尔弗雷德·阿德勒著', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787539655062', '猎人笔记', 179, 179, '(俄)屠格涅夫著', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787540245368', '《罗生门》', 30, 30, '[日] 芥川龙之介 著，高慧勤 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787540772086', '城堡-全译本', 47, 47, '[奥地利] 弗朗茨·卡夫卡 著，邹文华 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787541143670', '菩提花', 95, 95, '[德] 赫尔曼·黑塞 ，张佩芬 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787542858580', '交通工具-它们是如何工作的', 32, 32, '斯科特.麦克尼尔', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787544291170', '百年孤独', 88, 88, '[哥伦比亚]加西亚·马尔克斯 ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545144086', '屠格涅夫中短篇小说选', 36, 36, '[俄] 屠格涅夫 著，沈念驹 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545526868', '我爱干净', 137, 137, '文心', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545526899', '我不哭', 123, 123, '文心', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545526929', '我不怕', 130, 130, '文心', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545527223', '《狼烟北平》', 270, 270, '都梁', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545527674', '《林徽因传:水墨清华,刹那芳华》', 285, 285, '苏尹', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787546368573', '培根随笔', 256, 256, '[英] 培根 著，张璘 译', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787547237939', '经典国学读本:论语(附圣迹图)', 278, 278, '[春秋]孔丘', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787548444145', '《小王子》', 65, 65, '[法] 安托万·德·圣埃克苏佩里 著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550021822', '宫中记-北落师门', 39, 39, '侧侧轻寒', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550022034', '《两个她的奇幻之旅》', 280, 280, '[英]菲德拉.帕特里克 著，吴超 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550241077', '云南味道', 124, 124, '张家荣', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550246256', '《乌合之众:大众心理研究》', 90, 90, '[法]古斯塔夫.勒庞 著，陈竹兰 译', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550277014', '《WHAT IF那些古怪又让人忧心的问题(珍藏版)》', 250, 250, '[美] 兰道尔·门罗 著，朱君玺 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550291720', '《随园食单》', 125, 125, '(清)袁枚著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787553443751', '世界文学名著典藏·全译本:爱丽丝漫游奇境', 267, 267, '[英] 刘易斯·卡罗尔 著，吴钧陶 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787553791463', '《人间失格（全新修订版）》', 25, 25, '[日]太宰治 著,烨伊 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787555227137', '刚果之行', 190, 190, '(法)安德烈·纪德著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787555229032', '鬼吹灯8巫峡棺山', 146, 146, '天下霸唱', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787555254966', '留白', 81, 81, '渡边淳一', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787556824601', '迦陵论词绝句五十首', 116, 116, '叶嘉莹', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559604132', '今生要云的100个中国5A景区', 67, 67, '郝娟菡', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559610058', '《瓦尔登湖》', 145, 145, '[美]亨利·戴维·梭罗著，肖箴 译', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559612656', '《夏日走过山间》', 35, 35, '[美] 约翰·缪尔 著，林如海/李绒 译', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559618573', '《挂枝儿.山歌.夹竹桃:民歌三种》', 80, 80, '[明]冯梦龙', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559640895', '《于丹:汉字之美》', 130, 130, '于丹', 8);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787560576145', '《变形记》', 230, 230, '(奥)卡夫卡著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787569915822', '《官墙里:一个人的乡村与都市》', 50, 50, '阎海军', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787569919110', '呼兰河传', 193, 193, '萧红', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787802567368', '睡蛇的伤口', 135, 135, '徐小斌 著', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787807368472', '《唐摭言》', 110, 110, '[五代]王定保 著，黄寿成 点校', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787807414391', '《老舍小说精汇－断魂枪集》', 105, 105, '老舍', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787807680567', '《我愿意改变》', 215, 215, '克里斯托夫.安德烈', 9);

-- Borrows
INSERT INTO Borrows (sno,isbn,borrow_date,return_date) VALUES('20370001','9787569919110',TO_DATE('2022-02-15 08:00:00','yyyy-mm-dd HH24:MI:SS'),NULL);
INSERT INTO Borrows (sno,isbn,borrow_date,return_date) VALUES('20370001','9787559610058',TO_DATE('2022-02-15 09:00:00','yyyy-mm-dd HH24:MI:SS'),NULL);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370001','9787559604132',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date,return_date) VALUES('20370018','9787569915822',sysdate,sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date,return_date) VALUES('20370011','9787807414391',sysdate,sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370023','9787550277014',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370005','9787544291170',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370021','9787555254966',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370031','9787533949037',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370035','9787807680567',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370008','9787807414391',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date,return_date) VALUES('20370004','9787519018603',sysdate,sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370016','9787513926508',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date,return_date) VALUES('20370009','9787802567368',sysdate,sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370017','9787100085533',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370014','9787213075537',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370023','9787514612813',sysdate);
INSERT INTO Borrows (sno,isbn,borrow_date) VALUES('20370030','9787555227137',sysdate);

ALTER TABLE BOOKS enable constraint FK_CLASSIFICATION;
ALTER TABLE BORROWS enable constraint FK_BORROWS_STUDENTS;
ALTER TABLE BORROWS enable constraint FK_BORROWS_BOOKS;