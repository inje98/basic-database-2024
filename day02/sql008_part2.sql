/*
SELECT *
  FROM Book;

SELECT *
  FROM Customer;

SELECT *
  FROM Orders;
*/

-- 1. 마당서점에서 도서 총 개수
SELECT COUNT(*) AS '도서 총 개수'
  FROM Book;

-- 2. 마당서점에서 출판사 총 개수
SELECT COUNT(DISTINCT publisher) AS '출판사 총 개수'
  FROM Book;

-- 3. 모든 고객의 이름, 주소
SELECT [name], [address]
  FROM Customer;

-- 4. 2023-07-04 ~ 2023-07-07 사이의 주문받은 도서 주문번호
SELECT orderid
  FROM Orders
 WHERE orderdate BETWEEN '2023-07-04' AND '2023-07-07';

-- 5. 저 날짜 제외한 도서 주문번호
SELECT orderid
  FROM Orders
 WHERE orderdate > '2023-07-04' AND orderdate < '2023-07-07';

-- 6. 성이 '김'씨인 고객의 이름과 주소
SELECT [name], [address]
  FROM Customer
 WHERE [name] LIKE '김%';

--7. 성이 '김'씨이고 '아'로 끝나는 고객의 이름과 주소
SELECT [name], [address]
  FROM Customer
 WHERE [name] LIKE '김%아';