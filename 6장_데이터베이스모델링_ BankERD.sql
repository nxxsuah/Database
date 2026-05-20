#실습 6-4
-- Bank ERD 실습하기

USE BankERD;

#실습 6-5
insert into `bank_customer` values ('730423-1000001', '김유신', 1, '010-1234-1001', '경남 김해시');
insert into `bank_customer` values ('730423-1000002', '김춘추', 1, '010-1234-1002', '경남 경주시');
insert into `bank_customer` values ('750423-1000003', '장보고', 1, '010-1234-1003', '전남 완도군');
insert into `bank_customer` values ('102-12-51094', '(주)정보산업', 2, '051-500-1004', '부산시 부산진구');
insert into `bank_customer` values ('930423-1000005', '이순신', 1, '010-1234-1005', '서울 종로구');
select * from `bank_customer`;

insert into `bank_account` values ('101-11-1001', 'S1', '자유저축예금', '730423-1000001', 1550000, '2011-04-11');
insert into `bank_account` values ('101-11-1002', 'S1', '자유저축예금', '930423-1000005', 260000, '2011-05-12');
insert into `bank_account` values ('101-11-1003', 'S1', '자유저축예금', '750423-1000003', 75000, '2011-06-13');
insert into `bank_account` values ('101-12-1001', 'S2', '기업저축예금', '102-12-51094', 15000000, '2011-07-14');
insert into `bank_account` values ('101-13-1001', 'S3', '정기저축예금', '730423-1000002', 1200000, '2011-08-15');
select * from `bank_account`;

insert into `bank_transaction` set `t_a_no`='101-11-1001', `t_dist`=1, `t_amount`=50000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-12-1001', `t_dist`=2, `t_amount`=1000000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1002', `t_dist`=3, `t_amount`=260000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1002', `t_dist`=2, `t_amount`=100000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1003', `t_dist`=3, `t_amount`=750000, `t_datetime`=NOW();
insert into `bank_transaction` set `t_a_no`='101-11-1001', `t_dist`=1, `t_amount`=150000, `t_datetime`=NOW();
select * from `bank_transaction`;

#실습 6-6
SELECT * FROM bank_customer c, bank_account a WHERE c.c_no = a.a_c_no;

SELECT * FROM bank_transaction 
	WHERE t_a_no = (SELECT a_no FROM bank_account 
							WHERE a_c_no = (SELECT c_no FROM bank_customer 
														WHERE c_name = '이순신'));

SELECT * 
	FROM bank_customer AS c
    JOIN bank_account AS a ON c.c_no = a.a_c_no
    WHERE c_dist = 1
    ORDER BY a_balance DESC
    LIMIT 1;
