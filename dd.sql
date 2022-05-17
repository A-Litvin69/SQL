show databases;
create database sallers;
use sallers;
create table Customers(
ID CHAR(10) NOT NULL Primary key,
Cus_name CHAR(25) NULL,
Cus_adress CHAR(25) NULL,
Cus_sity CHAR(25) NULL,
Cus_country CHAR(25) NULL,
ArcDeate DATE NOT NULL);
desc Customers;
alter table Customers add Phone CHAR(20) not null;
alter table Customers drop column ArcDeate;
insert into Customers values ("1", "Jan", "Lenina7", "Minsk", "Belr");
insert into Customers values ("2", "San", "Laranq27", "Moscow", "Rash");
insert into Customers values ("3", "Rob", "Fedrova11", "Kiev", "Ukr");
insert into Customers values ("4","Lena","Sidorova170","Riga","Pol");
insert into Customers values ("5","Polja","K.Marksa 2/1","Paris","Franc");
select * from Customers;
insert into Customers(ID,Cus_name,Cus_country) values ("6","Adolf","Germ");
update Customers set Cus_sity ="Lend" where Cus_sity ="Riga";
SET SQL_SAFE_UPDATES = 0;