use hms;
set foreign_key_checks = 0;
truncate 员工;
truncate 用户;
truncate 客房类型;
truncate 客房;
truncate 住客;
truncate 订单;
truncate 客房_订单;
truncate 住客_订单;
truncate 预定中订单;
truncate 交易中订单;
truncate 已完成订单;
set foreign_key_checks = 1;

insert into 员工
values('0001', 'ray', '经理', '123123','男', null),
('1002', 'aaa', '前台', '123123', '男', null),
('1003', 'bbb', '前台', '123123', '男', null),
('1004', 'ccc', '前台', '123123', '男', null),
('1005', 'ddd', '前台', '123123', '男', null);

insert into 用户
values
('11111', '111', 'xiaoming1', '男', 20, null),
('22222', '222', 'xiaoming2', '男', 20, null),
('33333', '333', 'xiaoming3', '男', 20, null),
('44444', '444', 'xiaoming4', '男', 20, null),
('55555', '555', 'xiaoming5', '男', 20, null),
('66666', '666', 'xiaoming6', '男', 20, null),
('77777', '777', 'xiaoming7', '男', 20, null);

insert into 客房类型 
values('总统套房', 1, 3, 1000,'超豪华的尊贵体验'),
('单人间', 1, 30, 100,'舒适温馨');

insert into 客房 
values('0101','总统套房',0,'北','111'),
('0102','总统套房',0,'南','222'),
('0103','总统套房',0,'南','333'),
('0104','单人间',0,'南','444'),
('0105','单人间',0,'南','555'),
('0106','单人间',1,'南','666'),
('0107','单人间',1,'南','777'),
('0108','单人间',1,'南','888');

insert into 住客 
values
('11111', 'xiaoming1', '男', 18, '138326'),
('22222', 'xiaoming2', '男', 18, '138326'),
('33333', 'xiaoming3', '男', 18, '138326'),
('44444', 'xiaoming4', '男', 18, '138326'),
('55555', 'xiaoming5', '男', 18, '138326'),
('66666', 'xiaoming6', '男', 18, '138326');

insert into 订单
values('1', 1, '2017-1-1', '2017-1-2', 100, '138654', '5', 'good', '预定中'),
('2', 1, '2017-1-12', '2017-1-22', 100, '138654', '5', 'good', '预定中'),
('3', 1, '2017-12-30', '2017-12-31', 100, '138654', '5', 'good', '交易中'),
('4', 1, '2017-12-25', '2017-12-31', 100, '138654', '5', 'good', '交易中'),
('5', 1, '2017-11-11', '2017-11-12', 100, '138654', '5', 'good', '已完成'),
('6', 1, '2017-11-11', '2017-11-12', 100, '138654', '5', 'good', '已完成');

insert into 预定中订单 values('1'),('2');
insert into 交易中订单 values('3'),('4');
insert into 已完成订单 values('5'),('6');
insert into 住客_订单 
values(null,'11111','1'),
(null,'22222','2'),
(null,'33333','3'),
(null,'44444','4'),
(null,'55555','5'),
(null,'66666','6');

insert into 客房_订单 
values(null,'0101','1'),
(null,'0102','2'),
(null,'0103','3'),
(null,'0104','4'),
(null,'0105','5'),
(null,'0106','6');