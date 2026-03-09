-- [오류 문제 해결 요약] 계정 생성할 때의 host와 GRANT 할 때의 host를 반드시 똑같이 써야 합니다.

-- 순서 정리 (최종)
-- 1) root 계정으로 접속되어 있는지 확인
SELECT USER();

-- 2) 데이터베이스 생성
CREATE DATABASE employeedb;

-- 3) 실습용 계정 생성
CREATE USER 'practice'@'%' IDENTIFIED BY 'practice';

-- 4) 생성한 계정에 employeedb 권한 부여
GRANT ALL PRIVILEGES ON employeedb.* TO 'practice'@'%';

-- 5) 권한 적용
FLUSH PRIVILEGES;

-- 6) 권한 확인
SHOW GRANTS FOR 'practice'@'%';