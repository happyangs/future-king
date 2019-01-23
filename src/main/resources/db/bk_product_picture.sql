DROP TABLE IF EXISTS bk_product_picture;
CREATE TABLE `bk_product_picture` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `product_id` int(8) NOT NULL DEFAULT '0' COMMENT '商品编码',
  `picture_type` int(8) NOT NULL DEFAULT '0' COMMENT '图片类型 1-首页 2-内容',
  `picture_size` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '图片尺寸',
  `picture_path` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '图片链接',
  `remark` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` int(4) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`) USING BTREE COMMENT '商品编码索引',
  KEY `idx_picture_type` (`picture_type`) USING BTREE COMMENT '商品类型索引',
  KEY `idx_update_time` (`update_time`) USING BTREE COMMENT '更新时间索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='商品图片';

INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1001,1,'https://s2.ax1x.com/2019/01/23/kEpk59.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1002,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1003,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/85/82/Cii-slqiV-CIHQjJAAD8yJ4nLtIAAEDVQBM-xMAAPzg656.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1004,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/58/22/Cii-slszozaIcoxFAAXQI_1e-28AAJO-wP26K0ABdA7130.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1005,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/94/EB/Cii-tFqwfU-IM1HiAAD4uzdwzjwAAEekwGkYjQAAPjT584.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1006,3,'http://m.tuniucdn.com/fb2/t1/G1/M00/7A/B4/Cii9EFie4xyITCeHAAXAYvy52coAAHcKwDeGk0ABcB6854.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1007,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/7B/Cii-s1t9O92IaBUqAAKnW1Zu4FwAAMfCgPYpHgAAqdz753.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1008,3,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/A3/Cii-TlhbPECIVqH-AATNQUyDKoMAAF3IQPLy5MABM1Z171.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1009,3,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/9E/Cii-T1hbO0mIWkc5AAYNaRqxdT8AAF3HAP1wI8ABg2B475.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1010,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1011,3,'http://m.tuniucdn.com/fb2/t1/G3/M00/67/19/Cii_Lll_CvqIfSulAASEdmokMEAAAFyQgPk750ABISO779.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1012,3,'http://m.tuniucdn.com/fb2/t1/G2/M00/C4/DA/Cii-TFh4u8mILpkuAACogGWYTyIAAGv8AP5lykAAKiY879.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1013,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/FF/48/Cii-tFuM9TeICdVYAAQutkJqbdwAANHngFcaPUABC7O988.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1014,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/1A/D0/Cii-s1o7RBWIY7GBAAEoBqzawHAAABF0QP94lMAASge709.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1015,3,'http://m.tuniucdn.com/fb2/t1/G4/M00/92/6E/Cii_J1nfD7eIPU_lAAI63nRzTBsAACGPAHZS18AAjr2032.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1016,3,'http://m.tuniucdn.com/fb2/t1/G3/M00/12/61/Cii_LllMrgSIFfXlAAPtBGHah_IAABWcwP1yA0AA-0c422.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1017,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1018,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1019,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/2D/F1/Cii-s1pNkpyIS_D1AAMYLlUccqcAABpPwCFcPYAAxhG336.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1020,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/20/C7/Cii-tFpArvaIdbSmAABr0SusiGkAABTswDUL7wAAGvp786.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1021,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1022,3,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');

INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1008,1,'http://m.tuniucdn.com/fb2/t1/G2/M00/C0/33/Cii-Tlh3JjCIIrMtAALHIDfYXmwAAGr8wOk8x8AAsc4488.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1007,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1006,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/85/82/Cii-slqiV-CIHQjJAAD8yJ4nLtIAAEDVQBM-xMAAPzg656.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1005,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/58/22/Cii-slszozaIcoxFAAXQI_1e-28AAJO-wP26K0ABdA7130.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1004,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/94/EB/Cii-tFqwfU-IM1HiAAD4uzdwzjwAAEekwGkYjQAAPjT584.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1003,1,'http://m.tuniucdn.com/fb2/t1/G1/M00/7A/B4/Cii9EFie4xyITCeHAAXAYvy52coAAHcKwDeGk0ABcB6854.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1002,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/7B/Cii-s1t9O92IaBUqAAKnW1Zu4FwAAMfCgPYpHgAAqdz753.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1001,1,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/A3/Cii-TlhbPECIVqH-AATNQUyDKoMAAF3IQPLy5MABM1Z171.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1009,1,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/9E/Cii-T1hbO0mIWkc5AAYNaRqxdT8AAF3HAP1wI8ABg2B475.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1019,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1018,1,'http://m.tuniucdn.com/fb2/t1/G3/M00/67/19/Cii_Lll_CvqIfSulAASEdmokMEAAAFyQgPk750ABISO779.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1017,1,'http://m.tuniucdn.com/fb2/t1/G2/M00/C4/DA/Cii-TFh4u8mILpkuAACogGWYTyIAAGv8AP5lykAAKiY879.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1016,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/FF/48/Cii-tFuM9TeICdVYAAQutkJqbdwAANHngFcaPUABC7O988.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1015,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/1A/D0/Cii-s1o7RBWIY7GBAAEoBqzawHAAABF0QP94lMAASge709.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1014,1,'http://m.tuniucdn.com/fb2/t1/G4/M00/92/6E/Cii_J1nfD7eIPU_lAAI63nRzTBsAACGPAHZS18AAjr2032.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1013,1,'http://m.tuniucdn.com/fb2/t1/G3/M00/12/61/Cii_LllMrgSIFfXlAAPtBGHah_IAABWcwP1yA0AA-0c422.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1012,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1011,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1010,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/2D/F1/Cii-s1pNkpyIS_D1AAMYLlUccqcAABpPwCFcPYAAxhG336.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1021,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/20/C7/Cii-tFpArvaIdbSmAABr0SusiGkAABTswDUL7wAAGvp786.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1022,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1020,1,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');

INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1001,2,'http://m.tuniucdn.com/fb2/t1/G2/M00/C0/33/Cii-Tlh3JjCIIrMtAALHIDfYXmwAAGr8wOk8x8AAsc4488.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1002,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1003,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/85/82/Cii-slqiV-CIHQjJAAD8yJ4nLtIAAEDVQBM-xMAAPzg656.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1004,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/58/22/Cii-slszozaIcoxFAAXQI_1e-28AAJO-wP26K0ABdA7130.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1005,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/94/EB/Cii-tFqwfU-IM1HiAAD4uzdwzjwAAEekwGkYjQAAPjT584.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1006,2,'http://m.tuniucdn.com/fb2/t1/G1/M00/7A/B4/Cii9EFie4xyITCeHAAXAYvy52coAAHcKwDeGk0ABcB6854.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1007,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/7B/Cii-s1t9O92IaBUqAAKnW1Zu4FwAAMfCgPYpHgAAqdz753.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1015,2,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/A3/Cii-TlhbPECIVqH-AATNQUyDKoMAAF3IQPLy5MABM1Z171.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1009,2,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/9E/Cii-T1hbO0mIWkc5AAYNaRqxdT8AAF3HAP1wI8ABg2B475.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1010,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1011,2,'http://m.tuniucdn.com/fb2/t1/G3/M00/67/19/Cii_Lll_CvqIfSulAASEdmokMEAAAFyQgPk750ABISO779.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1012,2,'http://m.tuniucdn.com/fb2/t1/G2/M00/C4/DA/Cii-TFh4u8mILpkuAACogGWYTyIAAGv8AP5lykAAKiY879.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1013,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/FF/48/Cii-tFuM9TeICdVYAAQutkJqbdwAANHngFcaPUABC7O988.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1014,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/1A/D0/Cii-s1o7RBWIY7GBAAEoBqzawHAAABF0QP94lMAASge709.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1008,2,'http://m.tuniucdn.com/fb2/t1/G4/M00/92/6E/Cii_J1nfD7eIPU_lAAI63nRzTBsAACGPAHZS18AAjr2032.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1016,2,'http://m.tuniucdn.com/fb2/t1/G3/M00/12/61/Cii_LllMrgSIFfXlAAPtBGHah_IAABWcwP1yA0AA-0c422.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1017,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1018,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1019,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/2D/F1/Cii-s1pNkpyIS_D1AAMYLlUccqcAABpPwCFcPYAAxhG336.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1020,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/20/C7/Cii-tFpArvaIdbSmAABr0SusiGkAABTswDUL7wAAGvp786.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1021,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1022,2,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');

INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1001,0,'http://m.tuniucdn.com/fb2/t1/G2/M00/C0/33/Cii-Tlh3JjCIIrMtAALHIDfYXmwAAGr8wOk8x8AAsc4488.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1002,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1003,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/85/82/Cii-slqiV-CIHQjJAAD8yJ4nLtIAAEDVQBM-xMAAPzg656.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1004,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/58/22/Cii-slszozaIcoxFAAXQI_1e-28AAJO-wP26K0ABdA7130.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1012,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/94/EB/Cii-tFqwfU-IM1HiAAD4uzdwzjwAAEekwGkYjQAAPjT584.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1006,0,'http://m.tuniucdn.com/fb2/t1/G1/M00/7A/B4/Cii9EFie4xyITCeHAAXAYvy52coAAHcKwDeGk0ABcB6854.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1007,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/7B/Cii-s1t9O92IaBUqAAKnW1Zu4FwAAMfCgPYpHgAAqdz753.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1008,0,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/A3/Cii-TlhbPECIVqH-AATNQUyDKoMAAF3IQPLy5MABM1Z171.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1009,0,'http://m.tuniucdn.com/fb2/t1/G2/M00/73/9E/Cii-T1hbO0mIWkc5AAYNaRqxdT8AAF3HAP1wI8ABg2B475.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1017,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/E6/78/Cii-slt9Oo-IQMf_AAIfKdXQ55UAAMfBgDg02wAAh9B121.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1011,0,'http://m.tuniucdn.com/fb2/t1/G3/M00/67/19/Cii_Lll_CvqIfSulAASEdmokMEAAAFyQgPk750ABISO779.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1005,0,'http://m.tuniucdn.com/fb2/t1/G2/M00/C4/DA/Cii-TFh4u8mILpkuAACogGWYTyIAAGv8AP5lykAAKiY879.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1013,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/FF/48/Cii-tFuM9TeICdVYAAQutkJqbdwAANHngFcaPUABC7O988.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1014,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/1A/D0/Cii-s1o7RBWIY7GBAAEoBqzawHAAABF0QP94lMAASge709.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1015,0,'http://m.tuniucdn.com/fb2/t1/G4/M00/92/6E/Cii_J1nfD7eIPU_lAAI63nRzTBsAACGPAHZS18AAjr2032.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1016,0,'http://m.tuniucdn.com/fb2/t1/G3/M00/12/61/Cii_LllMrgSIFfXlAAPtBGHah_IAABWcwP1yA0AA-0c422.png');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1010,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1018,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1019,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/2D/F1/Cii-s1pNkpyIS_D1AAMYLlUccqcAABpPwCFcPYAAxhG336.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1020,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/20/C7/Cii-tFpArvaIdbSmAABr0SusiGkAABTswDUL7wAAGvp786.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1021,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/78/C8/Cii-tFvX6KGIGRbBAAQ4y_R1jEkAAP02wFbNzAABDjj514.jpg');
INSERT INTO bk_product_picture(product_id,picture_type,picture_path) VALUES (1022,0,'http://m.tuniucdn.com/fb2/t1/G5/M00/07/70/Cii-sluSCv2IDCdhAAHMUoaHkosAANUogEgcsAAAcxq857.jpg');