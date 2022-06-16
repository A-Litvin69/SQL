-- Таблица employees

-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employees_name Varchar(50) not null
)

insert into employees (employees_name)
values  ('Rebekah Foster'),
	('Cadence Howard'),
	('Christina Washington'),
	('Gwendolyn Turner'),
	('Veronika Evans'),
	('Desiree White'),
	('Colette Carter'),
	('Bree Lewis'),
	('Yaeko Cook'),
	('Taya Collins'),
	('Denise Perez'),
	('Hattie Sanders'),
	('Xanthippe Brooks'),
	('Winola Alexander'),
	('Winifred Evans'),
	('Crystal Hill'),
	('Talia Ramirez'),
	('Orianna Davis'),
	('Felicia Turner'),
	('Melissa Hall'),
	('Frida Young'),
	('Megan Davis'),
	('Orabelle Patterson'),
	('Quinna Henderson'),
	('Penelope King'),
	('Barbara Moore'),
	('Daphne Coleman'),
	('Scarlette Bailey'),
	('Paulina Baker'),
	('Xanthe Powell'),
	('Elise Brooks'),
	('Natalya Butler'),
	('Laura Hayes'),
	('Haylie Morris'),
	('Molly Young'),
	('Xamira Edwards'),
	('Margaret Griffin'),
	('Vanessa Thompson'),
	('Alyssa Adams'),
	('Laura Ward'),
	('Coraline Perry'),
	('Gabriela Rodriguez'),
	('Venus Long'),
	('Keira Campbell'),
	('Emilia Hernandez'),
	('Oriana Lee'),
	('Perla Jenkins'),
	('Bonnie King'),
	('Giovanna Murphy'),
	('Daniela Sander'),
	('Isabelle King'),
	('Delilah Watson'),
	('Nathalia Allen'),
	('Valentina Griffin'),
	('Ulva Sanders'),
	('Lilith Wright'),
	('Heidy Griffin'),
	('Zayna Watson'),
	('Camila Thomas'),
	('Wilmina Parker'),
	('Mia Phillips'),
	('Julianna Hughes'),
	('Lila Allen'),
	('Orly Stewart'),
	('Xantha Bailey'),
	('Izabelle Scott'),
	('Emily Ramirez'),
	('Stephanie Rogers'),
	('Treasure Gray'),
	('Iva Cooper');

=============================================================================

-- Таблица salary

-- Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
-- Наполнить таблицу salary 15 строками:
-- - 1000
-- - 1100
-- - 1200
-- - 1300
-- - 1400
-- - 1500
-- - 1600
-- - 1700
-- - 1800
-- - 1900
-- - 2000
-- - 2100
-- - 2200
-- - 2300
-- - 2400
-- - 2500


create table salary(
	 id serial  primary key,
	 monthly_salary Int not null
	 )
	 
	 insert into salary(monthly_salary)
values  (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);
		
=============================================================================
		
-- Таблица employee_salary

-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
-- Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
	
create table employee_salary(
	 id serial  primary key,
	 employee_id Int not null unique,
	 salary_id Int not null
	 )
	 
	 insert into employee_salary(employee_id,salary_id)
values  (1,9),
	(9,1),
	(2,8),
	(10,2),
	(3,7),
	(30,3),
	(4,6),
	(40,5),
	(5,10),
	(50,20),
	(6,19),
	(60,11),
	(7,18),
	(8,12),
	(11,17),
	(21,13),
	(36,16),
	(31,14),
	(55,15),
	(88,29),
	(96,21),
	(69,28),
	(59,22),
	(90,27),
	(66,23),
	(77,26),
	(29,24),
	(33,25),
	(37,30),
	(24,31),
	(16,39),
	(26,38),
	(18,32),
	(32,37),
	(28,33),
	(19,36),
	(17,34),
	(39,40),
	(22,35),
	(34,4);
		
=============================================================================
-- Таблица roles

-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками:


create table roles(
	 id serial  primary key,
	 role_name Int not null
	 )
	 
	alter table roles
	alter column role_name type varchar(30)

	 insert into roles(role_name)
values  ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

=============================================================================

-- Таблица roles_employee

-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- Наполнить таблицу roles_employee 40 строками:

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
)

insert into roles_employee(employee_id,role_id)
values  (7,2),
	(20,4),
	(3,9),
	(5,14),
	(23,4),
	(11,16),
	(40,9),
	(22,13),
	(21,3),
	(34,4),
	(6,7),
	(8,11),
	(31,15),
	(14,17),
	(28,19),
	(2,4),
	(13,3),
	(39,14),
	(19,15),
	(27,18),
	(1,16),
	(12,9),
	(15,12),
	(9,1),
	(10,8),
	(38,10),
	(16,15),
	(36,8),
	(30,7),
	(18,10),
	(17,3),
	(33,2),
	(29,3),
	(4,12),
	(25,1),
	(35,12),
	(26,17),
	(32,6),
	(37,20),
	(24,18);
