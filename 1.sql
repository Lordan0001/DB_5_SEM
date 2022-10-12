CREATE TABLE BVD_t(
x number(3),
s varchar(50)
);


INSERT INTO BVD_t(x,s)
VALUES(1,'A');

INSERT INTO BVD_t(x,s)
VALUES(2,'B');

INSERT INTO BVD_t(x,s)
VALUES(3,'C');

UPDATE BVD_t
SET x = 4,s = 'D'
WHERE x = 1;

UPDATE BVD_t
SET x = 5,s = 'E'
WHERE x = 2;



select x,s from BVD_t
WHERE x = 3;

SELECT COUNT (x) FROM BVD_t;

SELECT SUM (x) FROM BVD_t;

SELECT MIN (x) FROM BVD_t;

SELECT MAX (x) FROM BVD_t;

SELECT AVG (x) FROM BVD_t;


DELETE FROM BVD_t 
WHERE x = 3;



/*ALTER TABLE BVD_t
MODIFY x NUMBER(3) PRIMARY KEY*/


CREATE TABLE BVD_t1(
x1 number(3)REFERENCES BVD_t (x),
s1 varchar(50) 
);

INSERT INTO BVD_t1(x1,s1)
VALUES(4,'A');

INSERT INTO BVD_t1(x1,s1)
VALUES(5,'A');


SELECT x,s,x1,s1
FROM BVD_t INNER JOIN BVD_t1 ON BVD_t.x = bvd_t1.x1;


SELECT x,s,x1,s1
FROM BVD_t LEFT JOIN BVD_t1 
ON BVD_t.x = bvd_t1.x1;

SELECT x,s,x1,s1
FROM BVD_t RIGHT JOIN BVD_t1 
ON BVD_t.x = bvd_t1.x1;
