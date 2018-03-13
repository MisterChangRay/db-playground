# DBPlayground
数据库练习,可生成百万或者千万级别数据提供练习

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
   sex tinyint,
   phone varchar(100)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```


#### 文件描述：
- dataGenerater.js //数据生成器
- Mtils.amd.cmd.umd.js //依赖包
- user-info.sql //已经生成好的示例文件

#### 数据生成步骤：
- 数据生成器由nodejs编写需要安装node.js环境
- 编辑dataGenerater.js，修改生成条数和生成路径
- 打开控制台，然后等待运行结束即可；
- 将生成的sql文件导入数据库，即可开始上手练习


#### 一般生成100万条数据需要20分钟左右,约180MB；



