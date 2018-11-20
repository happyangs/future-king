DROP TABLE IF EXISTS bk_product;
CREATE TABLE `bk_product` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `product_id` int(8) NOT NULL DEFAULT '0' COMMENT '商品编码',
  `product_name` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品名称',
  `price` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `product_desc` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '商品描述',
  `product_synopsis` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '详情简介',
  `remark` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` int(4) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`) USING BTREE COMMENT '商品编码索引',
  KEY `idx_product_name` (`product_name`) USING BTREE COMMENT '商品名称索引',
  KEY `idx_price` (`price`) USING BTREE COMMENT '商品价格索引',
  KEY `idx_update_time` (`update_time`) USING BTREE COMMENT '更新时间索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='商品表';

INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1001,'亮黑手机壳01','10.01','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1002,'亮黑手机壳02','20.02','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1003,'亮黑手机壳03','30.03','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1004,'亮黑手机壳04','40.04','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1005,'亮黑手机壳05','50.05','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1006,'亮黑手机壳06','60.06','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1007,'亮黑手机壳07','70.07','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1008,'亮黑手机壳08','80.08','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1009,'亮黑手机壳09','90.09','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1010,'亮黑手机壳10','10.10','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1011,'亮黑手机壳11','10.11','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1012,'亮黑手机壳12','20.12','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1013,'亮黑手机壳13','30.13','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1014,'亮黑手机壳14','40.14','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1015,'亮黑手机壳15','50.15','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1016,'亮黑手机壳16','60.16','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1017,'亮黑手机壳17','70.17','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1018,'亮黑手机壳18','80.18','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1019,'亮黑手机壳19','90.19','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1020,'亮黑手机壳20','20.20','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1021,'亮黑手机壳21','10.21','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');
INSERT INTO bk_product (product_id,product_name,price,product_desc,product_synopsis) VALUES (1022,'亮黑手机壳22','20.22','[体育]适用于iphoneX','东南亚风格的家居物品多用实木、竹、藤、麻等材料打造,这些材质会使居室显得自然古朴，彷佛沐浴着阳光雨露般舒畅');