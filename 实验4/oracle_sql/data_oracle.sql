ALTER TABLE BOOKS disable constraint FK_CLASSIFICATION;
ALTER TABLE BORROWS disable constraint FK_BORROWS_STUDENTS;
ALTER TABLE BORROWS disable constraint FK_BORROWS_BOOKS;
-- ����Ա����

-- Students
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('19376213','��տ','7dabf5c198b0bab2eaa42bb03a113e55','13328725205',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373040','ʦ��','1952a01898073d1e561b9b4f2e42cbd7','18335982126',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373941','����','8037ccea85006fee74f58f86edf1788e','18810891831',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373812','������','3a79f9e97bb9c416ceefb40943001e5d','15139248140',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20373108','��ҫ��','ba157d2ecdcaeac516b27cf02bf45e59','13349184119',0,1);
Insert INTO Students (Sno,name,password_hash,telephone,hold,ROLE) VALUES ('20370001','�����û�','098f6bcd4621d373cade4e832627b4f6','12345678912',0,0);

INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370002', '������', '6f9247eb06cc4a7c1c762555945b1aaf', '15949942932', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370003', '��ŵ��', '65b724c98ac0e8e62ca33a7dab3edde5', '17504849876', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370004', '�Ժ�ï', '5d8af9d97a8969e5fb05e5c1caa3b499', '18657264789', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370005', '�ϴ��', 'f3a8479fc706bdcaed56ca6d8d4bf613', '18099287261', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370006', '���Զ�', '4acf954119d5bf8c0ef5ce07f396defb', '15020422327', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370007', '���ǳ�', '34475d2aa46910d5bd542237219fda71', '17613469634', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370008', '��ľ��', '593fa33952b888e342b6ea8797ade4b3', '17524893924', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370009', '������', 'ee19e453829326eb7192bf50037b4269', '18192386071', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370010', '��˼�', '2e242b44ce0ebe39f93a9d810adfadca', '15011467027', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370011', '������', 'dcc77169f507c60b9e778c37a2738560', '13327502754', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370012', '�ܳ���', '5af6814c150d71e4d9a2fa5d26c0f667', '13575849941', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370013', '�ǭZ��', 'b512f10c85f46d4e98a1631f5bf58690', '15545712344', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370014', '�����', 'a529a8a1b993705cfdf6f9b48b1baccd', '18869331415', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370015', '��巾�', '75d37c6cbf460947005c97e3f12906a9', '17594985398', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370016', '������', '937c02cd25af6c8c225d06b14876430b', '19846725976', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370017', '���ĺ�', 'ed829cdb0ca01e47382ff8ab8c875119', '13224675553', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370018', '������', '77a30c031136f1d47375631c0a9865bb', '18803386523', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370019', '�����', '3363bb006665e0a7efc8fd5be2c53bed', '13185019698', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370020', '�쳤��', '9738d61dcd0800b5c54f6eb5c46902e0', '15823754459', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370021', '���ǳ�', '9cb19f353255a6b9b50253a1e6c9c870', '18749501773', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370022', '������', 'cef8605189c6f354b710d90610fcff74', '19853407665', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370023', '�����', '7d012fd69545d081459d8faac9291f21', '18447898786', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370024', '��Ӱ�', '63cae6ca009ff0cbd69909c97f42d358', '15056655101', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370025', '������', 'af7b5ead3ea6e1abcbfea6f8c0a64f69', '17266389530', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370026', '������', '6eb4f98d02c88add53d3758db8572664', '15195165664', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370027', '����Ѥ', '621baa35ab05dc1136101265d08509e5', '13286857844', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370028', '��Ө��', 'd726760b0467b77803d6d1f3585deb6e', '15231269690', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370029', '��ʩܿ', 'eb25d21e8a4d7dc52947b61ab26a2694', '18083991177', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370030', '������', '7006786cf5928a706bb85a748c64cc88', '14767474179', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370031', '������', '47ccc82abac13739393a94ddb1abfce7', '17753676848', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370032', '������', 'da552355df18d706b1cb44aad2699661', '18296724063', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370033', '������', 'e45e98a6e628ad018d701e53dd696fb2', '13520982030', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370034', '��ɼ��', '57d44312047f5f7be000f66286b02cd1', '13857701863', 0, 0);
INSERT INTO Students (Sno, name, password_hash, telephone, hold, ROLE) VALUES
	('20370035', '��ӯ��', '93c0e7e698ed879ddb0b0926f376622f', '18007418373', 0, 0);
-- classification
INSERT INTO classifications (id, classification, location) VALUES
	(1, '���˼����', 'A��');
INSERT INTO classifications (id, classification, location) VALUES
	(2, '��ѧ', 'B��');
INSERT INTO classifications (id, classification, location) VALUES
	(3, '����ѧ����', 'C��');
INSERT INTO classifications (id, classification, location) VALUES
	(4, '����', 'D��');
INSERT INTO classifications (id, classification, location) VALUES
	(5, '����', 'E��');
INSERT INTO classifications (id, classification, location) VALUES
	(6, '����', 'F��');
INSERT INTO classifications (id, classification, location) VALUES
	(7, '�Ļ�', 'G��');
INSERT INTO classifications (id, classification, location) VALUES
	(8, '����', 'H��');
INSERT INTO classifications (id, classification, location) VALUES
	(9, '��ѧ', 'I��');
INSERT INTO classifications (id, classification, location) VALUES
	(10, '����', 'J��');
INSERT INTO classifications (id, classification, location) VALUES
	(11, '��ʷ', 'K��');
INSERT INTO classifications (id, classification, location) VALUES
	(12, '��Ȼ��ѧ����', 'N��');
INSERT INTO classifications (id, classification, location) VALUES
	(13, '�����ѧ�ͻ�ѧ', 'O��');
INSERT INTO classifications (id, classification, location) VALUES
	(14, '����ѧ', 'P��');
INSERT INTO classifications (id, classification, location) VALUES
	(15, '�����ѧ', 'Q��');
INSERT INTO classifications (id, classification, location) VALUES
	(16, 'ҽҩ', 'R��');
INSERT INTO classifications (id, classification, location) VALUES
	(17, 'ũҵ��ѧ', 'S��');
INSERT INTO classifications (id, classification, location) VALUES
	(18, '��ҵ����', 'T��');
INSERT INTO classifications (id, classification, location) VALUES
	(19, '��ͨ����', 'U��');
INSERT INTO classifications (id, classification, location) VALUES
	(20, '���պ���', 'V��');
INSERT INTO classifications (id, classification, location) VALUES
	(21, '��ȫ��ѧ', 'X��');
INSERT INTO classifications (id, classification, location) VALUES
	(22, '�ۺ���ͼ��', 'Z��');

-- Books
INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES
	('9787010104782', '���ػ��ϳ�д���鷨�о���', 175, 175, '����ޱ', 8);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787010105017', '����Сƽ�Ϸ�̸������ʵ¼-��¼�˵ļ�����', 40, 40, '����Ӫ', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787100017565', '����--������--�����', 74, 74, '����ͼ', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787100085533', '���й�������ʷ��', 180, 180, '�¹�»', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787106030780', '����������-�����ִ���Ӱ���������뼼�ɡ�', 160, 160, '��ɽ/��ѩӨ', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108050434', '��������-��', 113, 113, '������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108052872', '��ζ��', 168, 168, '����ǿ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108053565', '��������ռ�-ÿһ������֡�', 245, 245, '[Ӣ] ŵ����������ϣ�� ����ʢ�� ��', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787108054401', '��ƪС˵:����', 212, 212, '[��] ɭŸ�� ������ʱ�� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787200106626', '����������������ʮ����', 210, 210, '����', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787200109603', '�����С��-���д����ҿ�����:�����Ļ���', 220, 220, '֣����', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787213069666', '��������̸����-Ψһ�׶���ѡ��-��װ��ذ桷', 235, 235, '������', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787213075537', '����ѩ��', 20, 20, '�/��ӯ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787213097577', '������Ƶ���İ��Ρ�', 100, 100, '����Ƶ��', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220102370', '��On Liberty-������-Ӣ�ġ�', 290, 290, 'Լ��.˹ͼ����.�ܶ�', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220102783', '˾ĸ�춦���ж��ٴ���֮��', 109, 109, '��ά�� ', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220103803', '��������١�', 120, 120, '[��] ����˹������� �������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220104466', '���ɽСȫ��:�仨��', 179, 179, '���ɽ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787220104541', '�������ӻ����������', 300, 300, '����', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787221083906', '�й�������ȫ�����(�޶���):����־ȫ��', 158, 158, '[κ] ��ۿ �����룬�콨�� ע', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787221083920', '�й�������ȫ�����(�޶���):�����Ľeȫ��', 165, 165, '[��] �헆 ѡ�࣬ ����� ��', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787229065416', '��Ŧ�ױ�����:������������ܵ�����', 140, 140, '[��] ����˹��򡤶�� ������ ���/� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787229125172', '�������ķ��䡷', 60, 60, '����.��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787305078095', '����μ��', 170, 170, '����ͩ', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787305111341', '��������һ�����ƿ�����', 200, 200, '[��]л�ƶ��� ������ٻ�� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787305154249', '��������Ӧ�ǡ�', 225, 225, '������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787506384209', '��������ϵ��:Ұ���������߼���', 157, 157, '����', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787506385831', '�������뺣��', 240, 240, '������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787507546095', '����.�����-����Դ���', 55, 55, '[��]�������ϣ.����.��� ��,�ƾ���/������ ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787507831542', '���й��Ŵ�����ѧ��', 165, 165, '���Ӵ�', 15);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787510047169', '������ɽ�ӡ�', 115, 115, '�����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787510463433', '�������ĵĳ�ͻ', 102, 102, '(��)���ס�����', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511018106', '�����ⵤԢ�ԡ�', 205, 205, '[��] �����ⵤ ����[��] ���ء��¡���ά ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511023414', '��Ů�б�', 102, 102, '�ɱߴ�һ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511023421', '1984', 91, 91, '(Ӣ)���Ρ���������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511024282', '��Q����', 80, 80, '³Ѹ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511360557', '���ž��Ĵ��졷', 255, 255, '���ж�.��ɭ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511373021', '�����ѧ:ԭ����ô��Ȥ���á�', 150, 150, '����Ԩ', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787511378989', '������һ����:�����ж�ƪС˵����', 95, 95, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787512714007', '����������塷', 45, 45, '[��] ѩ�򡤰�ķɪ�� ���������� ��', 15);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787513324069', '�����ں�����һ�ߡ�', 265, 265, '������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787513917483', '³Ѹ��Ʒ--Ұ��', 172, 172, '³Ѹ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787513926508', '���Ա��볬Խ��', 155, 155, '[��] �������׵¡������� �������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514350159', '����ƽ����.������', 201, 201, '�޹���', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514364262', '®����ѧ��Ʒѡ-�ִ���ѧ��Ʒ��', 151, 151, '®��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514612813', '������ŵ�ɳ��ǡ�', 75, 75, '[�����] ���Ȱ¡�ͨ���� ���������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787514613346', '�ŵ������Ŀ�:�ƶ���ʿ����ǰ��', 223, 223, '��������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787516831953', '��һ�������ۡ�', 135, 135, '������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787516909447', '�����ش�', 25, 25, '���׶�.·��άϣ', 11);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787519018603', '���˼�ʻ���', 260, 260, '����ά', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532147434', '���������Ԣ��-������ѧ�������ٰ�.��������-99��', 195, 195, '�����������������÷����д', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532162765', '��������֮��', 46, 46, '�ܿ�', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532164615', '���ڹ���', 186, 186, '������', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787532954742', '����֮��', 60, 60, '[Ӣ] ���ס����������� �����캽 ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787533949037', '���������ϲ�', 53, 53, '����.���.��˹��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787534050893', '�й�����¼:2:2', 245, 245, 'ͩľ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787535494184', '��Զ��.���������ĳ���-������ŷ������-ŷ������.ȫ��ͼ�İ桷', 275, 275, '������', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787536070554', 'Զ��ǰ��-ȫ�뱾', 58, 58, '[Ӣ��] ���˹���Ҹ�˹ ������ε ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787536070615', '˵ʷ��-��ʷ��', 69, 69, '����', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787538455601', '����������-�ҵĵ�һ�װٿ�ȫ�顷', 185, 185, '���ٿ��ձ�ί��', 21);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787538751062', '�����Ͼ��¡�', 85, 85, '�ֺ���', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787539289380', '����.���� ����', 234, 234, '����', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787539296456', '��������', 289, 289, '(��)�������׵¡���������', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787539655062', '���˱ʼ�', 179, 179, '(��)����������', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787540245368', '�������š�', 30, 30, '[��] �洨��֮�� �����߻��� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787540772086', '�Ǳ�-ȫ�뱾', 47, 47, '[�µ���] ���ʴġ����� �������Ļ� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787541143670', '���Ứ', 95, 95, '[��] �ն��������� ������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787542858580', '��ͨ����-��������ι�����', 32, 32, '˹����.������', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787544291170', '����¶�', 88, 88, '[���ױ���]�����ǡ������˹ ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545144086', '���������ж�ƪС˵ѡ', 36, 36, '[��] �������� ��������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545526868', '�Ұ��ɾ�', 137, 137, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545526899', '�Ҳ���', 123, 123, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545526929', '�Ҳ���', 130, 130, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545527223', '�����̱�ƽ��', 270, 270, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787545527674', '���ֻ���:ˮī�廪,ɲ�Ƿ�����', 285, 285, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787546368573', '������', 256, 256, '[Ӣ] ��� �����ŭU ��', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787547237939', '�����ѧ����:����(��ʥ��ͼ)', 278, 278, '[����]����', 7);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787548444145', '��С���ӡ�', 65, 65, '[��] �����򡤵¡�ʥ���������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550021822', '���м�-����ʦ��', 39, 39, '����Ắ', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550022034', '�������������֮�á�', 280, 280, '[Ӣ]�Ƶ���.������� �����ⳬ ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550241077', '����ζ��', 124, 124, '�ż���', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550246256', '���ں�֮��:���������о���', 90, 90, '[��]��˹����.���� ���������� ��', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550277014', '��WHAT IF��Щ�Ź����������ĵ�����(��ذ�)��', 250, 250, '[��] ������������ ��������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787550291720', '����԰ʳ����', 125, 125, '(��)Ԭö��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787553443751', '������ѧ������ء�ȫ�뱾:����˿�����澳', 267, 267, '[Ӣ] ����˹�����޶� ��������� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787553791463', '���˼�ʧ��ȫ���޶��棩��', 25, 25, '[��]̫���� ��,���� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787555227137', '�չ�֮��', 190, 190, '(��)�����ҡ��͵���', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787555229032', '����8��Ͽ��ɽ', 146, 146, '���°Գ�', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787555254966', '����', 81, 81, '�ɱߴ�һ', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787556824601', '�����۴ʾ�����ʮ��', 116, 116, 'Ҷ��Ө', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559604132', '����Ҫ�Ƶ�100���й�5A����', 67, 67, '�¾���', 3);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559610058', '���߶��Ǻ���', 145, 145, '[��]��������ά����������Ф�� ��', 2);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559612656', '�������߹�ɽ�䡷', 35, 35, '[��] Լ�����Ѷ� �������纣/���� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559618573', '����֦��.ɽ��.������:������֡�', 80, 80, '[��]������', 10);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787559640895', '���ڵ�:����֮����', 130, 130, '�ڵ�', 8);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787560576145', '�����μǡ�', 230, 230, '(��)������', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787569915822', '����ǽ��:һ���˵�����붼�С�', 50, 50, '�ֺ���', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787569919110', '�����Ӵ�', 193, 193, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787802567368', '˯�ߵ��˿�', 135, 135, '��С�� ��', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787807368472', '�������ԡ�', 110, 110, '[���]������ �������ٳ� ��У', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787807414391', '������С˵���㣭�ϻ�ǹ����', 105, 105, '����', 9);
	INSERT INTO books (ISBN, book_name, total, "current", author_name, classification_id) VALUES('9787807680567', '����Ը��ı䡷', 215, 215, '����˹�з�.������', 9);

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