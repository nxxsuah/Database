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
SELECT * FROM sale ORDER BY price; -- 오름차순
SELECT * FROM sale ORDER BY price DESC; -- 내림차순
SELECT * FROM sale 
	WHERE price > 50000 
    ORDER BY year DESC, month, price DESC; -- 5만원 이상, 년도가 큰거부터,  금액이 큰거부터
SELECT * FROM employee ORDER BY name;
SELECT * FROM Employee ORDER BY name DESC;
SELECT * FROM Employee ORDER BY regdate ASC; -- 날짜가 빠른 순서
SELECT * FROM Sale WHERE price > 50000 ORDER BY price DESC;

 
# 실습 4-5. 
SELECT * FROM Sale LIMIT 3;
SELECT * FROM Sale LIMIT 0, 3;
SELECT * FROM Sale LIMIT 1, 2;
SELECT * FROM Sale LIMIT 5, 3;
SELECT * FROM Sale ORDER BY price DESC LIMIT 3, 5;
SELECT * FROM Sale WHERE price < 50000 ORDER BY price DESC LIMIT 3;
SELECT * FROM Sale
WHERE price > 50000
ORDER BY year DESC, month ASC, price DESC
LIMIT 5;


# 실습 4-6. 
SELECT SUM(price) AS 합계 FROM Sale;
SELECT AVG(price) AS 평균 FROM Sale;
SELECT CEILING(1.2); -- 올림 함수 (소수점을 올려서 조회)
SELECT CEILING (1.8); -- 올림 함수(소수점을 올려서 조회)
SELECT FLOOR (1.2); -- 내림 함수(소수점을 내려서 조회해줌)
SELECT FOOR (1.8); -- 내림 함수(소수점을 내려서 조회해줌)
SELECT ROUND (1.2); -- 반올림
SELECT ROUND (1.8); -- 반올림

SELECT RAND(); -- 0에서 1사이 실수(소수)를 랜덤으로 조회
SELECT RAND() * 10; -- 0에서 10사이 실수
SELECT CEILING (RAND()*45);-- 1에서 45사이 정수

SELECT COUNT(price) AS 갯수 FROM Sale; -- 40개

UPDATE Sale SET price = 80000 WHERE no=3;
SELECT COUNT(*) AS 튜플개수 FROM Sale;
SELECT * FROM Sale;

SELECT LEFT('HelloWorld', 5);
SELECT RIGHT ('HelloWorld', 5);
SELECT SUBSTRING('HelloWorld', 6,5); -- 6번째 문자에서부터 5개 조회
SELECT CONCAT ('Hello', 'World');
SELECT CONCAT(empno, name, hp) FROM Employee WHERE empno='1008';
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();

INSERT INTO Employee SET 
	empno='1012',
    name = '을지문덕',
    gender = 'F',
    hp = '010-1234-1012',
    regdate = NOW();
SELECT * FROM Employee;

# 실습 4-7. 
SELECT SUM(price) AS 합계 FROM Sale WHERE Year= '2018' AND month = 1;

# 실습 4-8. 
SELECT SUM(price) AS 합계, AVG(price) AS 평균 FROM Sale 
	WHERE price > 50000 
    AND year = 2019 
    AND month =2;
    
# 실습 4-9. 
SELECT MIN(price), MAX(price) FROM Sale WHERE year = 2020;

# 실습 4-10. 
SELECT empno FROM Sale GROUP BY empno; -- 그룹 바이 절에 들어간 컬럼을 SELECT 조회
SELECT empno, year FROM Sale GROUP BY empno, year;-- 그룹핑을 하면 항목이 정리되어서 하나로 조회됨
SELECT empno, COUNT(*) AS 건수 FROM Sale GROUP BY empno;
SELECT empno,SUM(price) AS 합계 FROM Sale GROUP by empno;
SELECT empno, AVG(price) AS 평균 FROM Sale GROUP BY empno;
SELECT empno, year, SUM(price) AS 합계
	FROM Sale
    GROUP BY empno, year;
SELECT empno, year, SUM(price) AS 합계
	FROM Sale
    GROUP by empno, year
    ORDER BY year ASC, 합계 DESC;

SELECT empno, year, SUM(price) AS 합계 
	FROM Sale
	WHERE price > 100000
    GROUP BY empno, year
    ORDER BY 합계 DESC;

SELECT * FROM Sale;

# 실습 4-11. 
SELECT empno, SUM(price) AS 합계 
	FROM Sale
	GROUP BY empno
    HAVING 합계 >=200000; -- GROUP BY 결과의 조건
    
    
SELECT empno, year, SUM(price) AS  합계
	FROM sale 
    WHERE price >= 100000
    GROUP BY empno, year
    HAVING 합계 >= 200000
    ORDER BY 합계 DESC;

# 실습 4-12. 
CREATE TABLE Sale2 LIKE Sale; -- 테이블 복사하기
INSERT INTO Sale2 SELECT * FROM Sale; -- 데이터 복사하기

SELECT * FROM Sale2;

UPDATE Sale2 SET year = year + 4;

SELECT * FROM Sale
UNION
SELECT * FROM Sale2; -- 합쳐져서 80건의 Sale 건수가 조회됨

SELECT * FROM sale WHERE price >= 100000
UNION
SELECT * FROM Sale2 WHERE price >=100000;

SELECT empno, year, price FROM Sale 
UNION
SELECT empno, year, price FROM Sale2;

SELECT empno, year, SUM(price) AS 합계
FROM Sale
GROUP BY empno, year
UNION
SELECT empno, year, SUM(price) AS 합계
FROM Sale2
GROUP BY empno, year
ORDER BY year ASC, 합계 DESC;

# 실습 4-13. 
SELECT * FROM Sale 
	INNER JOIN Employee ON Sale.empno = Employee.empno; -- 3번째랑 똑같은
 SELECT * FROM Sale AS a
		 JOIN Employee AS b
         ON a.empno = b.empno; -- 1번이랑 같음 AS 는 생략가능   
         
         
SELECT * FROM Employee JOIN Dept ON Employee.depno = Dept.depno;
SELECT * FROM Sale a
		 JOIN Employee b
         ON a.empno = b.empno;

SELECT * FROM Sale AS a
			JOIN Employee AS b
            USING (empno); -- 위에꺼랑 같음 / 두테이블의 컬럼명이 동일한 경우 USING 사용 / USING에 사용한 컬럼은 1번만 조회됨
  
 SELECT * FROM Sale As a, Employee As b WHERE a.empno = b.empno; 
 SELECT * FROM Employee AS a, Dept AS b WHERE a.depno = b.depno;
 
 SELECT A.no, a.empno, price, name, job
	FROM Sale AS a 
    JOIN Employee AS b
    USING (empno);
    
SELECT a.no, a.empno, price, name, job 
FROM Sale AS a
JOIN Employee AS b 
ON a.empno = b.empno
WHERE price >= 100000;

SELECT a.no, a.empno, a.price, b.name, b.job, c.dname 
FROM sale AS a
JOIN Employee AS b ON a.empno = b.empno
JOIN Dept AS c ON b.depno = c.depno;
  
  
SELECT 
a.no, a.empno, a.price, b.name, b.job, c.dname 
FROM Sale AS a
JOIN Employee AS b
ON a.empno = b.empno
JOIN Dept AS c ON b.depno = c.depno
WHERE price > 100000
ORDER BY price DESC;

# 실습 4-14.  
SELECT * FROM Sale AS a
LEFT JOIN Employee AS b
ON a.empno = b.empno;

SELECT * FROM Sale AS a
RIGHT JOIN Employee AS b
ON a.empno = b.empno;

SELECT a.no, a.empno, price, name, job FROM Sale AS a
LEFT JOIN Employee AS b USING(empno);

SELECT a.no, a.empno, price, name, job FROM Sale AS a
RIGHT JOIN Employee AS b USING(empno);

# 실습 4-15. 
SELECT 
	a.empno,
    a.name,
    a.job,
    b.dname
	FROM Employee AS a
    JOIN Dept AS b
    ON a.depno = b.depno;

# 실습 4-16.
SELECT SUM(price) AS 매출합 FROM Employee AS a
			JOIN Sale AS b
			ON a.empno = b.empno
			WHERE a.name= '김유신'
            AND b.year = 2019;
  
# 실습 4-17.

SELECT 
	a.empno, 
    b.name, 
    c.dname, 
    b.job,
    a.year, 
    SUM(price) AS 매출합 
FROM Sale AS a
JOIN Employee AS b ON a.empno = b.empno
JOIN Dept AS c ON b.depno = c.depno
WHERE year = 2019 AND price >= 50000
GROUP BY
	a.empno,
    b.name,
    c.dname,
    b.job,
    a.year
HAVING 매출합 >= 100000
ORDER BY 매출합 DESC;
