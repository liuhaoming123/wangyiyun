SET NAMES UTF8;
-- 0.创建时先丢弃数据库以防万一
DROP  DATABASE  IF  EXISTS Ldb;
-- 1.创建数据库
CREATE  DATABASE Ldb CHARSET=UTF8;
-- 2.进入数据库
USE Ldb;
-- 3.创建表
CREATE TABLE Lz_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);
-- 4.添加数据测试
INSERT INTO Lz_login VALUES(null,'liuhaoming',md5('1684732435'));
INSERT INTO Lz_login VALUES(null,'chengyuxing',md5('2857047663'));

CREATE TABLE Soda(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,
  lname VARCHAR(255)
);
INSERT INTO Soda VALUES(null,1,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,2,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,3,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,4,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,5,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,6,"热门音乐:一曲敲动你的心");
INSERT INTO Soda VALUES(null,7,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,8,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,9,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,10,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,11,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,12,"热门音乐:一曲敲动你的心");INSERT INTO Soda VALUES(null,1,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,13,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,14,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,15,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,16,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,17,"热门音乐:一曲敲动你的心");INSERT INTO Soda VALUES(null,1,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,18,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,19,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,20,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,21,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,22,"热门音乐:一曲敲动你的心");INSERT INTO Soda VALUES(null,1,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,23,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,24,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,25,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,26,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,27,"热门音乐:一曲敲动你的心");INSERT INTO Soda VALUES(null,1,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,28,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,30,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,31,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,32,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,33,"热门音乐:一曲敲动你的心");
INSERT INTO Soda VALUES(null,34,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,35,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,36,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,37,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,38,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,39,"热门音乐:一曲敲动你的心");
INSERT INTO Soda VALUES(null,40,"最火英文歌(流行更新)");
INSERT INTO Soda VALUES(null,41,"死亡BGM:死亡降临");
INSERT INTO Soda VALUES(null,42,"抖音最火歌曲2020");
INSERT INTO Soda VALUES(null,43,"BGM:等我电音响起,带你一路超凡");
INSERT INTO Soda VALUES(null,44,"欧美音乐:开口就脆,优美旋律");
INSERT INTO Soda VALUES(null,45,"热门音乐:一曲敲动你的心");

CREATE TABLE Sona(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lname VARCHAR(255)
);
INSERT INTO Sona VALUES(null,"冬眠");
INSERT INTO Sona VALUES(null,"那时我们");
INSERT INTO Sona VALUES(null,"我仍在");
INSERT INTO Sona VALUES(null,"还是分开");
INSERT INTO Sona VALUES(null,"相遇");
INSERT INTO Sona VALUES(null,"说谎");
INSERT INTO Sona VALUES(null,"感谢有你");
INSERT INTO Sona VALUES(null,"嗜好");
INSERT INTO Sona VALUES(null,"山海");
INSERT INTO Sona VALUES(null,"冬眠");
INSERT INTO Sona VALUES(null,"那时我们");
INSERT INTO Sona VALUES(null,"我仍在");
INSERT INTO Sona VALUES(null,"还是分开");
INSERT INTO Sona VALUES(null,"相遇");
INSERT INTO Sona VALUES(null,"说谎");
INSERT INTO Sona VALUES(null,"感谢有你");
INSERT INTO Sona VALUES(null,"嗜好");
INSERT INTO Sona VALUES(null,"山海");
INSERT INTO Sona VALUES(null,"冬眠");
INSERT INTO Sona VALUES(null,"那时我们");
INSERT INTO Sona VALUES(null,"我仍在");
INSERT INTO Sona VALUES(null,"还是分开");
INSERT INTO Sona VALUES(null,"相遇");
INSERT INTO Sona VALUES(null,"说谎");
INSERT INTO Sona VALUES(null,"感谢有你");
INSERT INTO Sona VALUES(null,"嗜好");
INSERT INTO Sona VALUES(null,"山海");
INSERT INTO Sona VALUES(null,"冬眠");
INSERT INTO Sona VALUES(null,"那时我们");
INSERT INTO Sona VALUES(null,"我仍在");
INSERT INTO Sona VALUES(null,"还是分开");
INSERT INTO Sona VALUES(null,"相遇");
INSERT INTO Sona VALUES(null,"说谎");
INSERT INTO Sona VALUES(null,"感谢有你");
INSERT INTO Sona VALUES(null,"嗜好");
INSERT INTO Sona VALUES(null,"山海");
INSERT INTO Sona VALUES(null,"冬眠");
INSERT INTO Sona VALUES(null,"那时我们");
INSERT INTO Sona VALUES(null,"我仍在");
INSERT INTO Sona VALUES(null,"还是分开");
INSERT INTO Sona VALUES(null,"相遇");
INSERT INTO Sona VALUES(null,"说谎");
INSERT INTO Sona VALUES(null,"感谢有你");
INSERT INTO Sona VALUES(null,"嗜好");
INSERT INTO Sona VALUES(null,"山海");

CREATE TABLE Singer(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lname VARCHAR(255)
);
INSERT INTO Singer VALUES(null,"司马");
INSERT INTO Singer VALUES(null,"袭爵开");
INSERT INTO Singer VALUES(null,"张杰");
INSERT INTO Singer VALUES(null,"笑了");
INSERT INTO Singer VALUES(null,"张掖");
INSERT INTO Singer VALUES(null,"程静");
INSERT INTO Singer VALUES(null,"马涛");
INSERT INTO Singer VALUES(null,"徐海");
INSERT INTO Singer VALUES(null,"邓婕");
INSERT INTO Singer VALUES(null,"冯配琳");
INSERT INTO Singer VALUES(null,"王舒雨");
INSERT INTO Singer VALUES(null,"司马");
INSERT INTO Singer VALUES(null,"袭爵开");
INSERT INTO Singer VALUES(null,"张杰");
INSERT INTO Singer VALUES(null,"笑了");
INSERT INTO Singer VALUES(null,"张掖");
INSERT INTO Singer VALUES(null,"程静");
INSERT INTO Singer VALUES(null,"马涛");
INSERT INTO Singer VALUES(null,"徐海");
INSERT INTO Singer VALUES(null,"邓婕");
INSERT INTO Singer VALUES(null,"冯配琳");
INSERT INTO Singer VALUES(null,"王舒雨");
INSERT INTO Singer VALUES(null,"司马");
INSERT INTO Singer VALUES(null,"袭爵开");
INSERT INTO Singer VALUES(null,"张杰");
INSERT INTO Singer VALUES(null,"笑了");
INSERT INTO Singer VALUES(null,"张掖");
INSERT INTO Singer VALUES(null,"程静");
INSERT INTO Singer VALUES(null,"马涛");
INSERT INTO Singer VALUES(null,"徐海");
INSERT INTO Singer VALUES(null,"邓婕");
INSERT INTO Singer VALUES(null,"冯配琳");
INSERT INTO Singer VALUES(null,"王舒雨");
INSERT INTO Singer VALUES(null,"司马");
INSERT INTO Singer VALUES(null,"袭爵开");
INSERT INTO Singer VALUES(null,"张杰");
INSERT INTO Singer VALUES(null,"笑了");
INSERT INTO Singer VALUES(null,"张掖");
INSERT INTO Singer VALUES(null,"程静");
INSERT INTO Singer VALUES(null,"马涛");
INSERT INTO Singer VALUES(null,"徐海");
INSERT INTO Singer VALUES(null,"邓婕");
INSERT INTO Singer VALUES(null,"冯配琳");
INSERT INTO Singer VALUES(null,"王舒雨");
INSERT INTO Singer VALUES(null,"司马");
INSERT INTO Singer VALUES(null,"袭爵开");
INSERT INTO Singer VALUES(null,"张杰");
INSERT INTO Singer VALUES(null,"笑了");
INSERT INTO Singer VALUES(null,"张掖");
INSERT INTO Singer VALUES(null,"程静");
INSERT INTO Singer VALUES(null,"马涛");
INSERT INTO Singer VALUES(null,"徐海");
INSERT INTO Singer VALUES(null,"邓婕");
INSERT INTO Singer VALUES(null,"冯配琳");
INSERT INTO Singer VALUES(null,"王舒雨");

CREATE TABLE Live(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lname VARCHAR(255)
);
INSERT INTO Live VALUES(null,"耳朵里的安眠药");
INSERT INTO Live VALUES(null,"治愈系御姐");
INSERT INTO Live VALUES(null,"这个晚上很温柔");
INSERT INTO Live VALUES(null,"请你爱上我");
INSERT INTO Live VALUES(null,"向阳而生,光之所向");
INSERT INTO Live VALUES(null,"是的,爱就见人心");
INSERT INTO Live VALUES(null,"闲来无事,尬聊也是聊");
INSERT INTO Live VALUES(null,"全网最甜小姐姐");
INSERT INTO Live VALUES(null,"耳朵里的安眠药");
INSERT INTO Live VALUES(null,"治愈系御姐");
INSERT INTO Live VALUES(null,"这个晚上很温柔");
INSERT INTO Live VALUES(null,"请你爱上我");
INSERT INTO Live VALUES(null,"向阳而生,光之所向");
INSERT INTO Live VALUES(null,"是的,爱就见人心");
INSERT INTO Live VALUES(null,"闲来无事,尬聊也是聊");
INSERT INTO Live VALUES(null,"全网最甜小姐姐");
INSERT INTO Live VALUES(null,"耳朵里的安眠药");
INSERT INTO Live VALUES(null,"治愈系御姐");
INSERT INTO Live VALUES(null,"这个晚上很温柔");
INSERT INTO Live VALUES(null,"请你爱上我");
INSERT INTO Live VALUES(null,"向阳而生,光之所向");
INSERT INTO Live VALUES(null,"是的,爱就见人心");
INSERT INTO Live VALUES(null,"闲来无事,尬聊也是聊");
INSERT INTO Live VALUES(null,"全网最甜小姐姐");
INSERT INTO Live VALUES(null,"耳朵里的安眠药");
INSERT INTO Live VALUES(null,"治愈系御姐");
INSERT INTO Live VALUES(null,"这个晚上很温柔");
INSERT INTO Live VALUES(null,"请你爱上我");
INSERT INTO Live VALUES(null,"向阳而生,光之所向");
INSERT INTO Live VALUES(null,"是的,爱就见人心");
INSERT INTO Live VALUES(null,"闲来无事,尬聊也是聊");
INSERT INTO Live VALUES(null,"全网最甜小姐姐");
INSERT INTO Live VALUES(null,"耳朵里的安眠药");
INSERT INTO Live VALUES(null,"治愈系御姐");
INSERT INTO Live VALUES(null,"这个晚上很温柔");
INSERT INTO Live VALUES(null,"请你爱上我");
INSERT INTO Live VALUES(null,"向阳而生,光之所向");
INSERT INTO Live VALUES(null,"是的,爱就见人心");
INSERT INTO Live VALUES(null,"闲来无事,尬聊也是聊");
INSERT INTO Live VALUES(null,"全网最甜小姐姐");
INSERT INTO Live VALUES(null,"耳朵里的安眠药");
INSERT INTO Live VALUES(null,"治愈系御姐");
INSERT INTO Live VALUES(null,"这个晚上很温柔");
INSERT INTO Live VALUES(null,"请你爱上我");
INSERT INTO Live VALUES(null,"向阳而生,光之所向");
INSERT INTO Live VALUES(null,"是的,爱就见人心");
INSERT INTO Live VALUES(null,"闲来无事,尬聊也是聊");
INSERT INTO Live VALUES(null,"全网最甜小姐姐");