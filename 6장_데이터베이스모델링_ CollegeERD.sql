INSERT INTO `Student` VALUES ('20201011', '김유신', '010-1234-1001', 3 ,'경남 김해시');
INSERT INTO `Student` VALUES ('20201122', '김춘추', '010-1234-1002', 3 ,'경남 경주시');
INSERT INTO `Student` VALUES ('20210213', '장보고', '010-1234-1003', 2 ,'전남 완도군');
INSERT INTO `Student` VALUES ('20210324', '강감찬', '010-1234-1004', 2 ,'서울 관악구');
INSERT INTO `Student` VALUES ('20220415', '이순신', '010-1234-1005', 1 ,'서울 종로구');

INSERT INTO `Lecture` VALUES (101,'컴퓨터과학 개론', 2, 40, '본301');
INSERT INTO `Lecture` VALUES (102,'프로그래밍 언어', 3, 52, '본302');
INSERT INTO `Lecture` VALUES (103,'데이터베이스', 3, 56, '본303');
INSERT INTO `Lecture` VALUES (104,'자료구조', 3, 60, '본304');
INSERT INTO `Lecture` VALUES (105,'운영체제', 3, 52, '본305');

INSERT INTO `Register` VALUES ( 20220415 , 101 , 60 , 30 , NULL, NULL);
INSERT INTO `Register` VALUES ( 20210324 , 103 , 54 , 36 , NULL, NULL);
INSERT INTO `Register` VALUES ( 20201011 , 105 , 52 , 28 , NULL, NULL);
INSERT INTO `Register` VALUES ( 20220415 , 102 , 38 , 40 , NULL, NULL);
INSERT INTO `Register` VALUES ( 20210324 , 104 , 56 , 32 , NULL, NULL);
INSERT INTO `Register` VALUES ( 20210213 , 103 , 48 , 40 , NULL, NULL);
ALTER TABLE `Register` MODIFY regTotalScore int NULL;
ALTER TABLE `Register` MODIFY regMidScore int NULL;
ALTER TABLE `Register` MODIFY regFinalScore int NULL;
ALTER TABLE `Register` MODIFY regGrade int NULL;
SELECT * FROM `Register`;

SELECT * FROM student;
SELECT * FROM register;

SELECT
    s.stdNo,
    s.stdName,
    s.stdHp,
    s.stdYear
FROM Student AS s
LEFT JOIN Register AS r
ON s.stdNo = r.regStdNo
WHERE r.regStdNo IS NULL;

SELECT 
	regStdNo,
    regLecNo,
    regMidScore,
    regFinalScore,
    regMidScore + regFinalScore AS regTotalScore,

	CASE
		WHEN regMidScore + regFinalScore >= 90 THEN 'A'
		WHEN regMidScore + regFinalScore >= 80 THEN 'B'
		WHEN regMidScore + regFinalScore >= 70 THEN 'C'
		WHEN regMidScore + regFinalScore >= 60 THEN 'D'
        ELSE 'F'
	END AS regGrade		
FROM Register;


SELECT
    s.stdNo,
    s.stdName,
    s.stdYear,
    l.lecName,
    r.regMidScore,
    r.regFinalScore,
    r.regMidScore + r.regFinalScore AS total,

    CASE
        WHEN r.regMidScore + r.regFinalScore >= 90 THEN 'A'
        WHEN r.regMidScore + r.regFinalScore >= 80 THEN 'B'
        WHEN r.regMidScore + r.regFinalScore >= 70 THEN 'C'
        WHEN r.regMidScore + r.regFinalScore >= 60 THEN 'D'
        ELSE 'F'
    END AS grade

FROM Student AS s
JOIN Register AS r
ON s.stdNo = r.regStdNo

JOIN Lecture AS l
ON r.regLecNo = l.lecNo

WHERE s.stdYear = 2;
