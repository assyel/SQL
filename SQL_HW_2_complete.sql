--SQL_DDL
--HW_2 SQL
--Первая часть.
--Таблица employees

--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.


CREATE TABLE employees ( 
id serial PRIMARY key,  
employee_name Varchar(50) not null
)

insert into employees(employee_name)
values (0),
	   (1),
	   (2),
	   (3),
	   (4),
	   (5),
	   (6),
	   (7),
	   (8),
	   (9),
	   (10),
	   (11),
	   (12),
	   (13),
	   (14),
	   (15),
	   (16),
	   (17),
	   (18),
	   (19),
	   (20),
	   (21),
	   (22),
	   (23),
	   (24),
	   (25),
	   (26),
	   (27),
	   (27),
	   (28),
	   (29),
	   (30),
	   (31),
	   (32),
	   (33),
	   (34),
	   (35),
	   (36),
	   (37),
	   (38),
	   (39),
	   (40),
	   (41),
	   (42),
	   (43),
	   (44),
	   (45),
	   (46),
	   (47),
	   (48),
	   (49),
	   (50),
	   (51),
	   (52),
	   (53),
	   (54),
	   (55),
	   (56),
	   (57),
	   (58),
	   (59),
	   (60),
	   (61),
	   (62),
	   (63),
	   (64),
	   (65),
	   (66),
	   (67),
	   (68),
	   (69);

	  
--Таблица salary

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--	  
create table salary (
	   id serial primary key,
	   monthly_salary Int not null
	  )

insert into salary(monthly_salary)
values 	(1000),
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
	
	--Таблица employee_salary

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
create table employee_salary (
id serial primary key,
employee_id Int not null unique,
salary_id Int not null
)

insert into employee_salary(employee_id, salary_id)
values  (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(43, 8),
		(32, 3),
		(7, 7),
		(2, 6),
		(9, 9),
		(13, 9),
		(45, 9),
		(8, 9),
		(4, 9),
		(17, 9),
		(18, 9),
		(19, 9),
		(20, 9),
		(21, 9),
		(22, 9),
		(70, 9),
		(24, 9),
		(25, 9),
		(27, 9),
		(28, 9),
		(29, 9),
		(30, 9),
		(90, 9),
		(31, 9),
		(80, 9),
		(34, 9),
		(35, 9),
		(36, 9),
		(37, 9);
	
	--Таблица roles

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles (
	id serial primary key,
	role_name Int not null unique
)		

alter table roles
alter role_name type Varchar(30);   		

insert into roles(role_name)
values  ('Junior Python Developer'),
		('Middle Python Developer'),
		('Senior Python Developer'),
		('Junior Java Developer'),
		('Middle Java Developer'),
		('Senior Java Developer'),
		('Junior Javascript Developer'),
		('Middle Javascript Developer'),
		('Senior Javascript Developer'),
		('Junior Manual QA Engineer'),
		('Middle Manual QA Engineer'),
		('Senioer Manual QA Engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales Manager'),
		('Junior Automation QA Engineer'),
		('Middle Automation QA Engineer');
		
--alter table roles	
--add role_name = 'Senior Automation QA Engineer';
--id=20;
		
--select * from roles; 	

	--Таблица roles_employee

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
create table roles_employee (
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee 
values (1),
	   (2),
	   (3),
	   (4),
	   (5),
	   (6),
	   (7),
	   (8),
	   (9),
	   (10),
	   (11),
	   (12),
	   (13),
	   (14),
	   (15),
	   (16),
	   (17),
	   (18),
	   (19),
	   (20),
	   (21),
	   (22),
	   (23),
	   (24),
	   (25),
	   (26),
	   (27),
	   (27),
	   (28),
	   (29),
	   (30),
	   (31),
	   (32),
	   (33),
	   (34),
	   (35),
	   (36),
	   (37),
	   (38),
	   (39),
	   (40);
	  
select * from roles_employee

	