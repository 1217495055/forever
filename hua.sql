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


/**用户登录表(customer_login)**/

CREATE TABLE customer_login(
  customer_id INT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '用户ID',
  login_name VARCHAR(20) NOT NULL COMMENT '用户名',
  password CHAR(32) NOT NULL COMMENT '密码',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_customerid(customer_id)
) ENGINE = innodb COMMENT '用户登录表'


/**用户地址表(customer_addr)**/
CREATE TABLE customer_addr(
  customer_addr_id INT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '自增主键ID',
  customer_id INT UNSIGNED NOT NULL COMMENT 'customer_login表的自增ID',
  province SMALLINT NOT NULL COMMENT '地区表中省份的ID',
  city SMALLINT NOT NULL COMMENT '地区表中城市的ID',
  district SMALLINT NOT NULL COMMENT '地区表中的区ID',
  address VARCHAR(200) NOT NULL COMMENT '具体的地址门牌号',
  is_default TINYINT NOT NULL COMMENT '是否默认',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_customeraddid(customer_addr_id)
) ENGINE = innodb COMMENT '用户地址表';

/**品牌信息表（brand_info）**/
CREATE TABLE brand_info(
  brand_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '品牌ID',
  brand_name VARCHAR(50) NOT NULL COMMENT '品牌名称',
  brand_logo VARCHAR(100) COMMENT '品牌logo URL',
  brand_desc VARCHAR(150) COMMENT '品牌描述',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_brandid (brand_id)
)ENGINE=innodb COMMENT '品牌信息表';


/**分类信息表(product_category)**/

CREATE TABLE product_category(
  category_id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '分类ID',
  category_name VARCHAR(10) NOT NULL COMMENT '分类名称',
  category_code VARCHAR(10) NOT NULL COMMENT '分类编码',
  parent_id SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '父分类ID',
  category_level TINYINT NOT NULL DEFAULT 1 COMMENT '分类层级',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT  '最后修改时间',
  PRIMARY KEY pk_categoryid(category_id)
)ENGINE=innodb COMMENT '商品分类表'



/**商品信息表(product_info)**/


CREATE TABLE product_info(
  product_id INT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '商品ID',
  product_core CHAR(16) NOT NULL COMMENT '商品编码',
  product_name VARCHAR(20) NOT NULL COMMENT '商品名称',
  brand_id INT UNSIGNED NOT NULL COMMENT '品牌表的ID',
  one_category_id SMALLINT UNSIGNED NOT NULL COMMENT '一级分类ID',
  two_category_id SMALLINT UNSIGNED NOT NULL COMMENT '二级分类ID',
  three_category_id SMALLINT UNSIGNED NOT NULL COMMENT '三级分类ID',
  price DECIMAL(8,2) NOT NULL COMMENT '商品销售价格',
  weight FLOAT COMMENT '商品重量',
  length FLOAT COMMENT '商品长度',
  height FLOAT COMMENT '商品高度',
  width FLOAT COMMENT '商品宽度',
  shelf_life INT NOT NULL COMMENT '商品有效期',
  descript TEXT NOT NULL COMMENT '商品描述',
  indate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '商品录入时间',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_productid(product_id)
) ENGINE = innodb COMMENT '商品信息表';

/**商品图片表(productpicinfo)**/
CREATE TABLE product_pic_info(
  product_pic_id INT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '商品图片ID',
  product_id INT UNSIGNED NOT NULL COMMENT '商品ID',
  pic_desc VARCHAR(50) COMMENT '图片描述',
  pic_url VARCHAR(200) NOT NULL COMMENT '图片URL',
  is_master TINYINT NOT NULL DEFAULT 0 COMMENT '是否主图：0.非主图1.主图',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT  '最后修改时间',
  PRIMARY KEY pk_picid(product_pic_id)
)ENGINE=innodb COMMENT '商品图片信息表';

/**商品评论表（product_comment）**/

CREATE TABLE product_comment(
  comment_id INT UNSIGNED AUTO_INCREMENT NOT NULL COMMENT '评论ID',
  product_id INT UNSIGNED NOT NULL COMMENT '商品ID',
  order_id BIGINT UNSIGNED NOT NULL COMMENT '订单ID',
  customer_id INT UNSIGNED NOT NULL COMMENT '用户ID',
  title VARCHAR(50) NOT NULL COMMENT '评论标题',
  content VARCHAR(300) NOT NULL COMMENT '评论内容',
  audit_time TIMESTAMP NOT NULL COMMENT '评论时间',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_commentid(comment_id)
) ENGINE = innodb COMMENT '商品评论表';


/**订单主表（order_master）**/
CREATE TABLE order_master(
  order_id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  order_sn BIGINT UNSIGNED NOT NULL COMMENT '订单编号 yyyymmddnnnnnnnn',
  customer_id INT UNSIGNED NOT NULL COMMENT '下单人ID',
  shipping_user VARCHAR(10) NOT NULL COMMENT '收货人姓名',
  province SMALLINT NOT NULL COMMENT '省',
  city SMALLINT NOT NULL COMMENT '市',
  district SMALLINT NOT NULL COMMENT '区',
  address VARCHAR(100) NOT NULL COMMENT '地址',
  payment_method TINYINT NOT NULL COMMENT '支付方式：1现金，2余额，3网银，4支付宝，5微信',
  order_money DECIMAL(8,2) NOT NULL COMMENT '订单金额',
  shipping_comp_name VARCHAR(10) COMMENT '快递公司名称',
  shipping_sn VARCHAR(50) COMMENT '快递单号',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  shipping_time DATETIME COMMENT '发货时间',
  pay_time DATETIME COMMENT '支付时间',
  receive_time DATETIME COMMENT '收货时间',
  order_status TINYINT NOT NULL DEFAULT 0 COMMENT '订单状态',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_orderid(order_id)
)ENGINE = innodb COMMENT '订单主表';

/**订单详情表（order_detail）**/

CREATE TABLE order_detail(
  order_detail_id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单详情表ID',
  order_id INT UNSIGNED NOT NULL COMMENT '订单表ID',
  product_id INT UNSIGNED NOT NULL COMMENT '订单商品ID',
  product_name VARCHAR(50) NOT NULL COMMENT '商品名称',
  product_cnt INT NOT NULL DEFAULT 1 COMMENT '购买商品数量',
  product_price DECIMAL(8,2) NOT NULL COMMENT '购买商品单价',
  weight FLOAT COMMENT '商品重量',
  fee_money DECIMAL(8,2) NOT NULL DEFAULT 0.00 COMMENT '支付金额',
    modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_orderdetailid(order_detail_id)
)ENGINE = innodb COMMENT '订单详情表'


/**购物车表（order_cart）**/
CREATE TABLE order_cart(
  cart_id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '购物车ID',
  customer_id INT UNSIGNED NOT NULL COMMENT '用户ID',
  product_id INT UNSIGNED NOT NULL COMMENT '商品ID',
  product_amount INT NOT NULL COMMENT '加入购物车商品数量',
  price DECIMAL(8,2) NOT NULL COMMENT '商品价格',
  add_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '加入购物车时间',
      modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_cartid(cart_id)
) ENGINE = innodb COMMENT '购物车表';

/**商品库存表（warehouse_product）**/
CREATE TABLE warehouse_product(
  wp_id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品库存ID',
  product_id INT UNSIGNED NOT NULL COMMENT '商品ID',
  current_cnt INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前商品数量',
  modified_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  PRIMARY KEY pk_wpid(wp_id)
)ENGINE = innodb COMMENT '商品库存表'



