-- NULL에 대한 고찰
-- MyBook 테이블에서 시작
SELECT bookid
     , price + 100
  FROM MyBook;

-- 합계, 전체의 COUNT는 문제x, 평균에서와 price COUNT는 NULL값이 빠짐.
SELECT SUM(price), AVG(price), COUNT(*), COUNT(price)
  FROM MyBook;

SELECT (10000 + 20000 + 0) / 3;

SELECT SUM(price), AVG(price), COUNT(*), COUNT(price)
  FROM MyBook
 WHERE bookid >= 4;

 -- NULL 비교(!)
 -- NULL은 일반 비교연산자로 비교X
 -- IS / IS NOT
 SELECT *
   FROM MyBook
  WHERE price IS NULL;

  -- ISNULL() 함수
  -- 사전 작업(Customer 테이블)
  SELECT *
    FROM Customer

UPDATE Customer
   SET phone = NULL
 WHERE custid = 2;

 SELECT custid
      , [name]
      , [address]
      , ISNULL(phone, '연락처 없음') AS phone
      FROM Customer