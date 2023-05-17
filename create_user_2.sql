--Sintaksis:
 CREATE USER username
    IDENTIFIED BY password
    [DEFAULT TABLESPACE tablespace]
    [QUOTA {size | UNLIMITED} ON tablespace]
    [PROFILE profile]
    [PASSWORD EXPIRE]
    [ACCOUNT {LOCK | UNLOCK}];

--Misol:
CREATE USER c##Azamat IDENTIFIED BY atom240;

GRANT CONNECT TO c##Azamat;

--Tizimga kirish imtiyozi
GRANT CREATE SESSION TO c##Azamat;

--Jadval yaratish imtiyozi
GRANT CREATE TABLE TO c##Azamat;

--Foydalanuvchi imtiyozlarini ko'rish
SELECT * FROM session_privs;

--ma'lumot kiritish imtiyozi
ALTER USER c##Azamat QUOTA UNLIMITED ON USERS;

--Ko'rsatilgan user boshqa userga imtiyoz berishga rusxat berish
GRANT CREATE TABLE TO c##Azamat WITH ADMIN OPTION;

--Bazadagi istalgan sxemadagi istalgan jadvaldan ma'lumotlarni tanlash imkonini berish
GRANT SELECT ANY TABLE TO c##Azamat;

--Barcha imtiyozlarni berish
GRANT ANY PRIVILEGE TO c##Azamat;

--Jadvalni har qanday o'zgartirish imtiyozi
GRANT UNLIMITED TABLESPACE TO c##Azamat;

GRANT CREATE VIEW TO c##Azamat;

GRANT CREATE PROCEDURE TO c##Azamat;

GRANT CREATE TRIGGER TO c##Azamat;

GRANT CREATE SEQUENCE TO c##Azamat;

GRANT CREATE SYNONYM TO c##Azamat;