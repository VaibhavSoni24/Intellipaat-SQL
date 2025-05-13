create database temp;
use temp;
create table temp(ID int, Name varchar(30), Age int);
insert into temp(ID, Name, Age) values (1, 'A', 18), (2, 'B', 19);
select * from temp;