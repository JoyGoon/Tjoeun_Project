create SEQUENCE login_seq;

delete from login;

insert into login (cnum, password) values (110, '1234');
insert into login (cnum, password) values (111, '1234'); 
insert into login (cnum, password) values (112, '1234'); 
insert into login (cnum, password) values (113, '1234'); 
insert into login (cnum, password) values (114, '1234'); 
insert into login (cnum, password) values (115, '1234'); 
insert into login (cnum, password) values (116, '1234'); 
insert into login (cnum, password) values (117, '1234'); 
insert into login (cnum, password) values (118, '1234'); 
insert into login (cnum, password) values (220, '1234'); 

select * from login;





CREATE SEQUENCE main_seq;

DELETE FROM main;

INSERT INTO main (cnum, name, email, phone, birthday) VALUES (110, '������', 'a@a', '010-2906-0775', '000106');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (111, '����ö', 'b@a', '010-8928-9488', '000303');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (112, '���Ͽ�', 'c@a', '010-2468-3151', '990608');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (113, '������', 'd@a', '010-5044-1868', '901007');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (114, '�����', 'e@a', '010-1234-4561', '950504');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (115, '�ڻ��', 'f@a', '010-1234-4562', '980410');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (116, '������', 'g@a', '010-1234-4563', '961117');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (117, '������', 'h@a', '010-1234-4564', '971019');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (118, '�̼ҹ�', 'i@a', '010-1234-4565', '980408');
INSERT INTO main (cnum, name, email, phone, birthday) VALUES (220, '������', 'j@a', '010-1234-4566', '800714');

SELECT * FROM main;

COMMIT;