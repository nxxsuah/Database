# 날짜 : 2026/05/06
# 이름 : 남수아
# 내용 : 4장 SQL 고급 실습

# 실습 4-1. 
CREATE TABLE Employee(
	Empno 	INT PRIMARY KEY NOT NULL,
    name 	VARCHAR(10) NOT NULL,
    gender 	CHAR(1) NOT NULL,
    hp 		CHAR(13) UNIQUE,
    job 	VARCHAR(10) DEFAULT (NULL),
    depno 	INT DEFAULT (NULL),
    regdate DATE NOT NULL
    );
    
CREATE TABLE Dept (
	depno	INT NOT NULL PRIMARY KEY,
    dname	VARCHAR (10) NOT NULL,
    tel		VARCHAR (12) NOT NULL
    );
    
CREATE TABLE Sale (
	no 		INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    empno 	INT NOT NULL,
    year 	YEAR NOT NULL,
    month	TINYINT NOT NULL,
    price	INT NOT NULL DEFAULT 0
    );
    
  
# 실습 4-2. 
 UPDATE Employee SET hp = '010-1234-1001'WHERE name ='김유신';
 
 INSERT INTO Employee VALUES (1001,'김유신','M','010-1234-1001','부장',101,'2026-11-19');
 INSERT INTO Employee VALUES (1002,'김춘추','M','010-1234-1002','차장',104,'2026-11-19');
 INSERT INTO Employee VALUES (1003,'장보고','M','010-1234-1003','사원',NULL,'2026-11-19');
 INSERT INTO Employee VALUES (1004,'강감잔','M','010-1234-1004','대리',102,'2026-11-19');
 INSERT INTO Employee VALUES (1005,'신사임당','F','010-1234-1005','과장',102,'2026-11-19');
 INSERT INTO Employee VALUES (1006,'이황','M','010-1234-1006','차장',103,'2026-11-19');
 INSERT INTO Employee VALUES (1007,'이이','M','010-1234-1007','사원',105,'2026-11-19');
 INSERT INTO Employee VALUES (1008,'이순신','M','010-1234-1008',NULL,NULL,'2026-11-19');
 INSERT INTO Employee VALUES (1009,'허난설현','F','010-1234-1009','사원',104,'2026-11-19');
 INSERT INTO Employee VALUES (1010,'정약용','M','010-1234-1010','대리',104,'2026-11-19');
 
 
SELECT * FROM Employee;
    

 INSERT INTO Dept VALUES (101, '경영지원부', '051-512-1001');
 INSERT INTO Dept VALUES (102, '영업부', '051-512-1002');
 INSERT INTO Dept VALUES (103, '개발부', '051-512-1003');
 INSERT INTO Dept VALUES (104, '인사부', '051-512-1004');
 INSERT INTO Dept VALUES (105, '기획부', '051-512-1005');

SELECT * FROM Dept;

 INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2018, '1', '98100');
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2018, '1', '136000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2018, '1', '80000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2018, '1', '78000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2018, '1', '93000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2018, '2', '24000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2018, '2', '126000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2018, '2', '19000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2018, '2', '19000'); 
 INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2018, '2', '53000');
 
 INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2019, '1', '24000'); 
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2019, '1', '109000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2019, '1', '101000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2019, '1', '53000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2019, '1', '24000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2019, '2', '160000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2019, '2', '101000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2019, '2', '43000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2019, '2', '24000'); 
 INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2019, '2', '109000');
 
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2020, '1', '201000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2020, '1', '63000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2020, '1', '74000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2020, '1', '122000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2020, '1', '111000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2020, '2', '120000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2020, '2', '93000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2020, '2', '84000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2020, '2', '180000'); 
 INSERT INTO Sale (empno, year, month, price) VALUES (1008, 2020, '2', '76000');
 
 INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2021, '1', '56000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2021, '1', '123000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2021, '1', '91000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2021, '1', '78000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2021, '2', '32000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2021, '2', '148000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2021, '2', '106000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2021, '2', '112000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2021, '3', '47000');
 INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2021, '3', '36000');


SELECT * FROM Sale;
-- -------------------------------------------------------------------------------

# 실습 4-3. 조회 연산자
SELECT * FROM Employee WHERE name != '김춘추'; 				# NOT
SELECT * FROM Employee WHERE name <> '김춘추'; 				# NOT
SELECT * FROM Employee WHERE job IN ('사원','대리'); 			# IN = 같은 사원 또는 대리인 사람
SELECT * FROM Employee WHERE job = '사원' OR job = '대리';	# 사원 또는 대리인 사람
SELECT * FROM Employee WHERE name LIKE '김%';				# % :와일드카드 - 김으로 시작하는 문자열
SELECT * FROM Employee WHERE name LIKE '%신';				# % 
SELECT * FROM Employee WHERE name LIKE '이_';				# 이로 시작하고 문자열 개수가 2개인 항목
SELECT * FROM Employee WHERE name LIKE '이__';				# 이로 시작하고 문자열 개수가 3개인 항목
SELECT * FROM Employee WHERE name LIKE '_순%';				# 가운대 글자가 순인 항목
SELECT * FROM Employee WHERE name LIKE '%순%';
SELECT * FROM Employee WHERE hp LIKE '010-%';
SELECT * FROM Employee WHERE job is NULL;
SELECT * FROM Employee WHERE job is NOT NULL;
SELECT * FROM Employee WHERE depno is NULL;
SELECT * FROM Employee WHERE depno is NOT NULL;
SELECT * FROM Employee WHERE empno >= 1005;
SELECT * FROM Dept WHERE depno = 10;
SELECT * FROM Dept WHERE dname = '개발부';
SELECT * FROM dept WHERE TEL LIKE '%30%';
SELECT * FROM dept WHERE depno IN (101,103);
SELECT * FROM Sale WHERE Price > 50000;
SELECT * FROM Sale WHERE price >=50000 AND Price < 100000 AND month =1;
SELECT * FROM Sale WHERE Price BETWEEN 50000 AND 100000;
SELECT * FROM Sale WHERE year = 2024;
SELECT * FROM Sale WHERE Year = 2024 and month = 2;
SELect * From Sale WHERE MONTH IN (1,2);



# 실습 4-4. 
# 실습 4-5. 
# 실습 4-6. 
# 실습 4-7. 
# 실습 4-8. 
# 실습 4-9. 
# 실습 4-10. 
# 실습 4-11. 
# 실습 4-12. 
# 실습 4-13. 
# 실습 4-14. 
# 실습 4-15. 
# 실습 4-16.  
# 실습 4-17.