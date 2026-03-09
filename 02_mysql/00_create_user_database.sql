-- 1) 실습용 계정 생성
CREATE USER 'practice'@'localhost' IDENTIFIED BY 'practice';

-- 2) 현재 존재하는 데이터베이스 확인
SHOW DATABASES;

-- 3) 사용할 데이터베이스 선택
USE mysql;

-- 4) 모든 계정 정보 확인
SELECT * FROM user;

-- 5) 새로운 데이터베이스(스키마) 생성
CREATE DATABASE employeedb;

-- 6) 새롭게 생성한 스키마에 새롭게 생성한 계정이 모든 권한을 가지도록 설정
GRANT ALL PRIVILEGES ON employeedb.* TO 'practice'@'%';

-- [오류] 6)에서 You are not allowed to create a user with GRANT 빨간글씨 뜸
-- [해결] 단계1. SELECT USER() 조회해서 root@localhost 나오는지 확인
SELECT USER();
-- [해결] 단계2. 터미널에서 /usr/local/mysql/bin/mysql -u root -p 입력 후 root 계정 비밀번호(1234!) 입력
-- [해결] 단계3. 아래 명령어 입력
CREATE USER 'practice'@'%' IDENTIFIED BY 'practice';
GRANT ALL PRIVILEGES ON employeedb.* TO 'practice'@'%';
FLUSH PRIVILEGES;

-- 7) 권한 부여 확인
SHOW GRANTS FOR 'practice'@'%';

