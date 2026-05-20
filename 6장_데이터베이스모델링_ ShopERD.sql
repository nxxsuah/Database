# 날짜 : 2026/05/20
# 이름 : 남수아
# 내용 : Shop ERD 실습

#실습 6-2
INSERT INTO Customer VALUES ('c101', '김유신', '010-1234-1001','경남 김해시', '2023-01-01');
INSERT INTO Customer VALUES ('c102', '김춘추', '010-1234-1002','경남 경주시', '2023-01-02');
INSERT INTO Customer VALUES ('c103', '장보고', '010-1234-1003','전남 완도군', '2023-01-03');
INSERT INTO Customer VALUES ('c104', '강감찬', '010-1234-1004','서울시 관악구', '2023-01-04');
INSERT INTO Customer VALUES ('c105', '이순신', '010-1234-1005','부산시 금정구', '2023-01-05');

INSERT INTO Product VALUES (1, '새우깡', '5000','1500','농심');
INSERT INTO Product VALUES (2, '초코파이', '2500','2500','오리온');
INSERT INTO Product VALUES (3, '포카칩', '3600','1700','오리온');
INSERT INTO Product VALUES (4, '양파링', '1250','1800','농심');
INSERT INTO Product VALUES (5, '죠리퐁', '2200',NULL,'크라운');

INSERT INTO `Order` (orderId, orderProduct, orderCount,orderDate) VALUES ('c102', 3, 2, NOW());
INSERT INTO `Order` (orderId, orderProduct, orderCount,orderDate) VALUES ('c101', 4, 1, NOW());
INSERT INTO `Order` (orderId, orderProduct, orderCount,orderDate) VALUES ('c102', 1, 1, NOW());
INSERT INTO `Order` (orderId, orderProduct, orderCount,orderDate) VALUES ('c103', 5, 5, NOW());
INSERT INTO `Order` (orderId, orderProduct, orderCount,orderDate) VALUES ('c105', 2, 1, NOW());

#실습 6-3
SELECT 
o.orderNo,
c.name,
p.prodName,
o.orderCount,
o.orderDate 
FROM `Order`AS o
JOIN `customer` AS c ON o.orderID = c.custId
JOIN `product` AS p ON o.orderProduct = p.prodNo;

SELECT 

FROM `order` AS o
;

SELECT SUM(Price * orderCount) as `총 주문금액`
FROM `Order` AS o
JOIN `Product` AS p ON o.orderProduct = p.prodNo;

#실습 6-4
#실습 6-5
#실습 6-6