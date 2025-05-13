create user 'local'@'localhost' identified by 'localpass';
create user 'local1'@'localhost' identified by '1', 'local2'@'localhost' identified by '2';
select user from mysql.user;
select user();
create database test;
grant select, insert, update, delete on test.* to 'local'@'localhost';
show grants for 'local'@'localhost';
revoke select on test.* from 'local'@'localhost';
drop user 'local1'@'localhost', 'local2'@'localhost';