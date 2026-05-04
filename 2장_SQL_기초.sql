SELECT * FROM studydb.user1;

# 실습 2-2 (워크북 p4)
INSERT INTO User1 VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO User1 VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO User1 VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO User1 (userid, name, age) VALUES ('A104','강감찬',45);
INSERT INTO User1 SET userid='A105', name='이순신', hp='010-1234-5555';

# 실습 2-3
SELECT * FROM User1;
SELECT * FROM User1 WHERE userid='A101'; -- WHERE : 조건절
SELECT * FROM User1 WHERE name= '김춘추';
SELECT * FROM User1 WHERE age < 30;
SELECT * FROM User1 WHERE age >= 30;
SELECT userid, name, age FROM User1;

# 실습 2-4
UPDATE User1 SET hp= '010-1234-4444' WHERE userid= 'A104';
UPDATE User1 SET age=51 WHERE userid='A105';
UPDATE User1 SET hp='010-1234-1001', age=27 WHERE userid='A101';


# 실습 2-5
DELETE FROM User1 WHERE userid='A101';
DELETE FROM User1 WHERE userid='A102' AND age=25;
DELETE FROM User1 WHERE age >=30;

DELETE FROM User1 WHERE userid='a102';


# 실습 2-6 테이블 컬럼 수정
ALTER TABLE User1 ADD gender TINYINT;
ALTER TABLE User1 ADD birth CHAR(10) AFTER name;
ALTER TABLE User1 MODIFY gender CHAR(1);
ALTER TABLE User1 DROP gender;
ALTER TABLE User1 DROP birth;
SELECT * FROM User1;


# 실습 2-7. 테이블 복사
CREATE TABLE User1_1 Like User1; -- User1 을 복사 (데이터빼고)
INSERT INTO User1_1 SELECT * FROM User1; -- User1 데이터까지 복사
SELECT * FROM User1_1;
