# DBPlayground
数据库练习,可生成百万级别数据提供练习

### 数据库此数据建表语句如下，此表模拟普通系统用户注册表；数据库建议采用Mysql

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


### 数据生成器由nodejs编写需要node环境，打开dataGenerater.js，修改生成条数和生成路径，然后运行等待即可；

### 注意：打开dataGenerater.js引用了Mtils.js所以也需要下载Mtils.js;建议下载Mtils.js后把dataGenerater.js放入其中

### 一般生成100万条数据需要20分钟左右,约180MB；


将生成的sql文件导入数据库，即可开始上手练习
