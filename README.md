# DBPlayground
数据库练习;虚拟用户信息生成器,可生成百万级别数据提供练习优化

#### 数据库建表语句如下，此表模拟普通系统用户注册表；数据库建议采用Mysql

```sql

 create database playground character set 'utf8'; 

 use playground;

 drop table user_info;
 create table user_info (
   id int unsigned  primary key AUTO_INCREMENT,
   username varchar(100),
   password varchar(100),
   idcard varchar(100),
   email varchar(100),
   name varchar(100),
   address varchar(500),
   -- sex 1男0女
   sex tinyint,
   phone varchar(100)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```


#### 文件描述：
- dataGenerater.js 数据生成器
- Mtils.amd.cmd.umd.js 依赖包
- user-info.sql 已经生成好的示例文件

#### 数据生成步骤：
- 数据生成器由nodejs编写需要安装node.js环境
- 编辑dataGenerater.js，修改生成条数和生成路径
- 打开控制台，然后等待运行结束即可；结束时有数据生成完毕；耗时：XXX的提示；
- 将生成的sql文件导入数据库，即可开始上手练习


#### 一般生成100万条数据需要19分钟左右,约170MB；插入需要50分钟；本人机器奔腾双核；


### 示例数据(更多数据参考项目下`user-info.sql`文件)
```sql
insert into user_info values
(null, 'binianer', 'f3d866e70213583e290d607cd2cb67c0', '530181201009218304', 'binianer_bgi@live.com', '毕念儿', '云南省西双版纳傣族自治州勐腊县', '0', '13771701654'),
(null, 'yuzuiping', '0ff2b59c0e20952fa483b6bc4fefb309', '452124200903145808', 'yuzuiping_cywfv@0355.net', '余醉萍', '四川省攀枝花市东区', '0', '13392232896'),
(null, 'douanbai', '7f45ecd81bda9719457c706819f82546', '532932198604164527', 'douanbai_cwzen@msn.com', '窦安白', '福建省漳州市东山县', '0', '13532845493'),
(null, 'yangyiran', '2e935275ef5b98d690c22729adc59c64', '429001200102248998', 'yangyiran_wg@163.net', '杨益冉', '山东省济南市平阴县', '1', '18954603561'),
(null, 'liujiayi', 'c764f79980cfa0dc62bd640a4fc3b8fc', '500243199501256638', 'liujiayi_mb@163.com', '柳嘉怡', '河北省保定市雄县', '1', '17197352519'),
(null, 'zhushishan', '12889c2db0b7f018270671c9935b4952', '41142319820315406X', 'zhushishan_l@3721.net', '朱诗珊', '湖南省益阳市资阳区', '0', '18943645822'),
(null, 'gexiafu', 'b29ae399c23ae186f9a4a16bf098c149', '630121200809210143', 'gexiafu_yjp@aol.com', '葛夏芙', '山西省临汾地区蒲县', '0', '13399657330'),
(null, 'lexixia', '331c0226ce71a97026d8ab0f20f92a8b', '210781198607187804', 'lexixia_zdf@yeah.com', '乐惜夏', '甘肃省甘南藏族自治州碌曲县', '0', '13370306616'),
```


