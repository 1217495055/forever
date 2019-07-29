SET NAMES UTF8;
DROP DATABASE IF EXISTS hua;
CREATE DATABASE hua CHARSET=UTF8;

USE hua;


/**轮播图**/
CREATE TABLE hua_lunbotu(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(32),
  zhaiyao VARCHAR(120),
  click int,
  img_url VARCHAR(240),
  add_time timestamp DEFAULT CURRENT_TIMESTAMP
);


/*******************/
/******数据导入******/
/*******************/
/**轮播图**/
INSERT INTO hua_lunbotu VALUES
(1,'11','实付购活动页任意蛋糕，享40元加价购套餐（随机口味切块蛋糕*2，原味可颂*2',1,'../img/轮播图1.jpg',null),
(2,'22','实付购活动页任意蛋糕，享40元加价购套餐（随机口味切块蛋糕*2，原味可颂*2',1,'../img/轮播图2.jpg',null),
(3,'33','实付购活动页任意蛋糕，享40元加价购套餐（随机口味切块蛋糕*2，原味可颂*2',1,'../img/轮播图3.jpg',null),
(4,'44','实付购活动页任意蛋糕，享40元加价购套餐（随机口味切块蛋糕*2，原味可颂*2',1,'../img/轮播图4.jpg',null);



