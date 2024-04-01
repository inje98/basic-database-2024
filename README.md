# basic-database-2024
IoT 개발자 과정 SQLServer 학습 리포지토리


## 1일차
- MS SQL Server 설치 : https://www.microsoft.com/ko-kr/sql-server/sql-server-downloads 최신버전
    - DBMS 엔진 - 개발자 버전
        - iso 다운로드 후 설치 추천
        - SQL Server에 대한 Azure 확장 비활성화 후 진행

        ![기능선택](https://github.com/hugoMGSung/basic-database-2024/blob/main/images/db001.png?raw=true)

        - 데이터베이스 엔진 구성부터 중요
            - Windows 인증모드로 하면 외부에서 접근불가
            - 혼합모드(sa)에한 암호를 지정 / mssql_p@ss(8자 이상/ 대소문자구분/ 특수문자 1자 이상 포함)
            - 데이터루트 디렉토리는 변경
    - ![개발툴 설치]https://learn.microsoft.com/ko-kr/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16
        - SSMS(SQL Server Management Studio) DB에 접근, 여러 개발 작업할 툴

- 데이터베이스 개념
    - 데이터를 보관, 관리, 서비스하는 시스템
    - Data, Information, Knowlege 개념
    - DBMS > Database > Data(Model)

- DB언어
    - SQL(Structured Query Language) : 구조화된 질의 언어
        - DDL(Data Definition Lang) - 데이터베이스, 테이블, 인덱스 생성, CREATE, ALTER, DROP
        - DML(Data Manipulation Lang) - 검색(SELECT), 삽입(INSERT), 수정(UPDATE), 삭제(DELETE) 등 기능(중요!)
        - DCL(Data Control Lang) - 권한, 트랜스액션 부여/제거 기능. GRANT, REVOKE
        - TCL(Transaction) - 트랜스액션(트랜잭션) 제어하는 기능 COMMIT, ROLLBACK. 원래는 DCL의 일부, 기능이 특이해서 TCL로 분리

- SQL 기본 학습
    - SSMS 학습

    ![SSMS](https://github.com/hugoMGSung/basic-database-2024/blob/main/images/db002.png?raw=true)

    - 특이사항 - SSMS 쿼리창에서 소스코드 작성시 빨간색 오류 밑줄이 가끔 표현(전부 오류는 아님!)

- DML 학습
    - SQL 명령어 키워드 : SELECT, INSERT, UPDATE, DELETE
    - IT개발 표현언어 : Request, Create, Update, Delete(CRUD로 부름. CRU개발 뜻은 INSERT, UPDATE, SELECT를 할 수 있는 기능을 개발하라)
    - SELECT
        ```sql
        SELECT[ALL|DISTINCT] 속성이름(들)
          FROM 테이블 이름(들)
         [Where 검색조건(들)]
         [GROUP BY 속성이름(들)]
        [HAVING 검색조건(들)]
         [ORDER BY 속성이름(들) [ASC|DESC]]
        ```

    - SELECT문 학습
        - 기본, 조건검색 학습 중

## 2일차

- Database 학습
    - DB 개발시 사용할 수 있는 툴
        - SSMS(기본)
        - Visual Studio - 아무런 설치 없이 개발 가능
        - Visual Studio Code - SQL Server(mssql) 플러그인 설치하고 개발
    - ServerName(HostName) - [내 컴퓨터 이름(DESKTOP-QO2E9L6) | 내 네트워크 주소 | 127.0.0.1(LoopBack IP) | localhost(LoopBack URL)] 중에서 선호하는거 아무거나
    - 관계 데이터 모델
        - 릴레이션 - 행과 열로 구성된 테이블(관계 데이터모델에서만)
            - 행(튜플),열(속성), 스키마, 인스턴스 용어
        - 매핑되는 이름 테이블(실제 DB)
            - 행, 레코드, 열, 컬럼이름, 데이터
        - 차수(degree) - 속성의 개수
        - 카디나리티(cardinality) - 튜플의 수

        - 릴레이션 특징
            1. 속성은 단일값을 가짐(책이름이 여러개 들어가면 안됨)
            2. 속성은 다른 이름으로 구성(책이름이라는 속성이 두번 있으면 안됨)
            3. 속성의 값은 정의된 도메인값만 가짐(대학교 학년에 5학년이 있으면 안됨)
            4. 속성의 순서는 상관없음
            5. 릴레이션 내 중복된 튜플 허용안함(같은 책 정보를 두번 넣을 수 없음)
            6. 튜플 순서는 상관없음(1, 3, 5, 2, 6, 7, 8...)

            - 관계 데이터 모델은 아래의 요소로 구성됨
                - 릴레이션(Relation)
                - 제약조건(Contraints)
                - 관계대수(Relational algebra)
- DML 학습
    - SELECT문
        - 복합조건, 정렬
        - 집계함수와 Group By
            - SUM(총합), AVG(평균), COUNT(개수), MIN(최소), MAX(최대값)
            - 집계함수 외 일반 컬럼은 Group By 절에 속한 컬럼만 SELECT문에 사용가능
            - HAVING은 집계함수의 필터로 GROUP BY 뒤에 작성. WHERE절과 필터링이 다르다.

        - 두개 이상의 테이블 질의(Query)
            - 관계형 DB에서 가장 중요한 기법중 하나 : JOIN!
            - INNER JOIN(내부 조인)[참조](https://sql-joins.leopard.in.ua/)
            - LEFT|RIGHT OUTER JOIN(외부 조인) - 어느 테이블이 기준인지에 따라서 결과가 상이함

        ![외부조인](https://github.com/hugoMGSung/basic-database-2024/blob/main/images/db004.png?raw=true)

## 3일차
- Database 학습
    - 관계 데이터 모델
        - 무결성 제약조건
            - 슈퍼키 - 튜플을 유일한 값으로 구분 지을 수 있는 속성 또는 속성집합 (고객번호 | 주민번호 | 고객번호/이름 | 고객번호/주소 | 고객번호/이름/전화번호... 이름만은 안됨)
            - 후보키 - 튜플을 유일한 값으로 구분 지을 수 있는 속성 또는 최소한의 속성집합(고객번호 | 주민번호)
            - 복합키 - 후보키 중 속성을 2개 이상 집합으로 한 키
            - 기본키(Primary Key!!) - 여러 후보키 중에서 하나를 선정하여 대표로 삼는 키(고객번호)
                - 고려사항 - 고유한값(Unique), NULL불가(Not NULL), 최소 속성의 집합, 개인정보 등의 보안사항은 사용 자제
            - 대리키 - 기본키가 여러개의 속성으로 구성되어 복잡하거나, 보안문제가 생길때 새롭게 생성하는 키
            - 대체키 - 기본키로 선정되지 않은 후보키
            - 외래키(Foriegn Key!) - 기본키를 참조하여 사용하는 것
                - 고려사항 - 다른 릴레이션과의 관계, 다른 릴레이션의 기본키를 호칭, 서로 같은 값이 사용, 기본키가 변경되면 외래키도 변경되어야 함
                            
                            NULL과 중복을 허용(Not NULL인 경우도 있음), 자기자신의 기본키를 외래키로 사용할 수도 있음, 외래키가 기본키의 속성중 하나가 될 수도 있음
            - 데이터 무결성(Integrity) - DB에 저장된 데이터의 일관성과 정확성을 지키는 것
                - 도메인 무결성 제약조건 - 데이터 타입, NOT Null, 기본값, 체크 특성을 지키는 것
                - 개체 무결성 제약조건 - 기본키 제약조건으로도 부름. Unique에 NOT NULL.(값이 중복되어도 안되고, 빠져도 안됨)
                - 참조 무결성 제약조건 - 외래키 제약조건으로도 부름. 부모의 키가 아닌값은 사용할 수 없음. (외래키가 바뀔때 기본키의 값이 아닌 것은 제약을 받는다.)
                    - RESTRINCT(자식에서 키를 사용하고 있으면 부모 삭제 금지), CASCADE(부모가 지워지면 해당 자식도 같이 삭제)
                    - DEFAULT(부모가 지워지면 자식은 지정된 기본값으로 변경), NULL(부모가 지워지면 자식의 해당값을 NULL로 변경)
                - 유일성 제약조건 - 일반 속의 값이 중복되면 안되는 제약조건. NULL값은 허용.

- DML 학습
    - SELECT문
        - OUTER JOIN(외부조인)
            - LEFT|RIGHT|FULL(FULL은 거의 사용안함) - 왼쪽 테이블을 기준으로 조건에 일치하지 않는 왼쪽 테이블 데이터도 모두 표시(LEFT OUTER JOIN). 오른쪽 테이블 기준으로 조건에 일치하지 않는 오른쪽 테이블 데이터 모두 표시(RIGHT OUTER JOIN)

        - 부속질의(SubQuery)
            - 쿼리 내의 다시 쿼리를 작성하는 것
            - 서브쿼리를 쓸 수 있는 장소
                - SELECT절 - 한 컬럼에 하나의 값만
                - FROM절 - 가상의 테이블로 사용
                - WHERE절 - 여러 조건에 많이 사용

        - 집합연산
            - 합집합
            - 차집합
            - 교집합