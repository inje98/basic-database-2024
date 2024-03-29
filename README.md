# basic-database-2024
IoT 개발자 과정 SQLServer 학습 리포지토리


## 1일차
- MS SQL Server 설치 : https://www.microsoft.com/ko-kr/sql-server/sql-server-downloads 최신버전
    - DBMS 엔진 - 개발자 버전
        - iso 다운로드 후 설치 추천
        - SQL Server에 대한 Azure 확장 비활성화 후 진행

        ![기능선택]https://github.com/hugoMGSung/basic-database-2024/blob/main/images/db001.png?raw=true

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

    ![SSMS]https://github.com/hugoMGSung/basic-database-2024/blob/main/images/db002.png?raw=true

- DML 학습
    - SQL 명령어 키워드 : SELECT, INSERT, UPDATE, DELETE
    - IT개발 표현언어 : Request, Create, Update, Delete(CRUD로 부름. CRU개발 뜻은 INSERT, UPDATE, SELECT를 )
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
    - ServerName(HostName) - 내 컴퓨터 이름(DESKTOP-QO2E9L6) | 내 네트워크 주소 | 127.0.0.1(LoopBack IP) | localhost(LoopBack URL)
    - 관계 데이터 모델
- DML 학습