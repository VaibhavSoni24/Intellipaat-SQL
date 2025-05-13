create database exp9;
use exp9;
create table Book(B_ID int primary key, B_Name varchar(20), B_Price int, Quantity int);
create table Customer(C_ID int primary key, C_Name varchar(20), C_City varchar(20), B_ID int, foreign key(B_ID) references Book(B_ID));
drop table Book;
desc Customer;
insert into Book value(101, "DBMS", 500, 10),(102, "DSA", 450, 20),(103, "JAVA", 300, 10),(104, "C", 200, 10),(105, "C++", 250, 5);
select * from Book;
insert into Customer value(1, "A", "Jaipur", 101);
select * from Customer;
# insert into Customer value(2, "B", "Kota", 106); will not run since 106 does not exist in the parent table.
insert into Customer value(2, "B", "Kota", 102); # will run since 102 exists in parent table.
# delete from Book where B_ID = 101; will not run since 101 is used in child table.
delete from Book where B_ID = 105; # will run since 105 is not used in child table.
drop table Customer;
create table Customer(C_ID int primary key, C_Name varchar(20), C_City varchar(20), B_ID int, foreign key(B_ID) references Book(B_ID) on delete cascade);
insert into Customer value(1, "A", "Jaipur", 101);
delete from Book where B_ID = 101;