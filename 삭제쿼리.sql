---------모든테이블, 시퀀스 삭제 쿼리------------
SELECT 'DROP '||object_type||' '|| object_name || DECODE(OBJECT_TYPE,'TABLE',' CASCADE CONSTRAINTS;',';')
FROM user_objects;

---------아래에 생성된 쿼리를 CTRL+A 하고 복사, 모두 실행-----------
---------오류 나는 것은 상관 없음---------------------------------