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

-- Чтобы изменить значения в таблице, делаются следующие команды:
update employees
set employee_name = 'Will Smith' 
where employee_name = '0';

update employees
set employee_name = 'Johnny Depp' 
where employee_name = '1';

update employees
set employee_name = 'Adam Sandler' 
where employee_name = '2';

update employees
set employee_name = 'Vin Diesel' 
where employee_name = '3';

update employees
set employee_name = 'Jackie Chan' 
where employee_name = '4';

update employees
set employee_name = 'Morgan Freeman' 
where employee_name = '5';

update employees
set employee_name = 'Robin Williams' 
where employee_name = '6';

update employees
set employee_name = 'Angelina Jolie' 
where employee_name = '7';

update employees
set employee_name = 'Brad Pitt' 
where employee_name = '8';

update employees
set employee_name = 'Jim Carrey' 
where employee_name = '9';

update employees
set employee_name = 'Nicholas Cage' 
where employee_name = '10';

update employees
set employee_name = 'Leonardo DiCaprio' 
where employee_name = '11';

update employees
set employee_name = 'Jennifer Aniston' 
where employee_name = '12';

update employees
set employee_name = 'Bruce Willis' 
where employee_name = '13';

update employees
set employee_name = 'Sandra Bullock' 
where employee_name = '14';

update employees
set employee_name = 'Tom Cruise' 
where employee_name = '15';

update employees
set employee_name = 'Cameron Diaz' 
where employee_name = '16';

update employees
set employee_name = 'Eddie Murphy' 
where employee_name = '17';

update employees
set employee_name = 'Ben Stiller' 
where employee_name = '18';

update employees
set employee_name = 'Silvester Stallone' 
where employee_name = '19';

update employees
set employee_name = 'Robert de Niro' 
where employee_name = '20';

update employees
set employee_name = 'Arnold Schwarzenneger' 
where employee_name = '21';

update employees
set employee_name = 'Tom Hanks' 
where employee_name = '22';

update employees
set employee_name = 'Scarlett Johansson' 
where employee_name = '23';

update employees
set employee_name = 'Julia Roberts' 
where employee_name = '24';

update employees
set employee_name = 'Owen Wilson' 
where employee_name = '25';

update employees
set employee_name = 'Matt Damon' 
where employee_name = '26';

update employees
set employee_name = 'Oliver Twist' 
where employee_name = '27';

update employees
set employee_name = 'Keanu Reevez' 
where employee_name = '28';

update employees
set employee_name = 'Orlando Bloom' 
where employee_name = '29';

update employees
set employee_name = 'George Clooney' 
where employee_name = '30';

update employees
set employee_name = 'Mel Gibson' 
where employee_name = '31';

update employees
set employee_name = 'Brendan Frazer' 
where employee_name = '32';

update employees
set employee_name = 'Meryl Streep' 
where employee_name = '33';

update employees
set employee_name = 'Drew Barrymore' 
where employee_name = '34';

update employees
set employee_name = 'Anthony Hopkins' 
where employee_name = '35';

update employees
set employee_name = 'Natalie Portman' 
where employee_name = '36';

update employees
set employee_name = 'Martyn Lawrence' 
where employee_name = '37';

update employees
set employee_name = 'Jack Nicholson' 
where employee_name = '38';

update employees
set employee_name = 'Richard Gere' 
where employee_name = '39';

update employees
set employee_name = 'Al Pacino' 
where employee_name = '40';

update employees
set employee_name = 'Jessica Alba' 
where employee_name = '41';

update employees
set employee_name = 'Salma Hayek' 
where employee_name = '42';

update employees
set employee_name = 'Harrison Fork' 
where employee_name = '43';

update employees
set employee_name = 'Penelope Cruz' 
where employee_name = '44';

update employees
set employee_name = 'Nicole Kidman' 
where employee_name = '45';

update employees
set employee_name = 'Katherine Zeta Jones' 
where employee_name = '46';

update employees
set employee_name = 'Sean Connery' 
where employee_name = '47';

update employees
set employee_name = 'Lindsay Lohan' 
where employee_name = '48';

update employees
set employee_name = 'Jack Black' 
where employee_name = '49';

update employees
set employee_name = 'Clint Eastwood' 
where employee_name = '50';

update employees
set employee_name = 'Kevin Costner' 
where employee_name = '51';

update employees
set employee_name = 'Keira Knightley' 
where employee_name = '52';

update employees
set employee_name = 'Steve Martin' 
where employee_name = '53';

update employees
set employee_name = 'Steve Carrell' 
where employee_name = '54';

update employees
set employee_name = 'Michelle Rodriguez' 
where employee_name = '55';

update employees
set employee_name = 'Elijah Wood' 
where employee_name = '56';

update employees
set employee_name = 'Demi Moore' 
where employee_name = '57';

update employees
set employee_name = 'Eva Mendez' 
where employee_name = '58';

update employees
set employee_name = 'Halle Berry' 
where employee_name = '59';

update employees
set employee_name = 'Rachel McAdams' 
where employee_name = '60';

update employees
set employee_name = 'Robert Redford' 
where employee_name = '61';

update employees
set employee_name = 'Meg Ryan' 
where employee_name = '62';

update employees
set employee_name = 'Sharon Stone' 
where employee_name = '63';

update employees
set employee_name = 'Amanda Bynes' 
where employee_name = '64';

update employees
set employee_name = 'Monica Belucci' 
where employee_name = '65';

update employees
set employee_name = 'Aishwarya Rai' 
where employee_name = '66';

update employees
set employee_name = 'Stella Worren' 
where employee_name = '67';

update employees
set employee_name = 'Christina Ricci' 
where employee_name = '68';

update employees
set employee_name = 'Carmen Electra' 
where employee_name = '69';

delete from employees 
where employee_name = 'Carmen Electra';

delete from employees 
where employee_name = 'Megan Fox';


delete from employees 
where employee_name = 'false';

insert into employees(employee_name)
values (28), 
		(29);

update employees
set employee_name = 'Carmen Electra' 
where employee_name = '69';

insert into employees(employee_name)
values (28), 
		(29);

delete from employees 
where employee_name = '28'; 

delete from employees 
where employee_name = '29';

insert into employees(employee_name)
values ('Oliver Twist'), 
		('Carmen Suita');
	
select * from employees;




	  
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

insert into roles (role_name)
values ('Senior Automation QA Engineer');
		

		
select * from roles; 	


--Таблица roles_employee
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
create table roles_employee (
	id serial  primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
	)

insert into roles_employee(employee_id, role_id)
values  (7, 9),
		(8, 10),
		(5, 7),
		(4, 5),
		(3, 6),
		(2, 8),
		(1, 3),
		(9, 4),
		(11, 15),
		(14, 5),
		(15, 17),
		(10, 20),
		(12, 2),
		(24, 1),
		(13, 19),
		(22, 14),
		(19, 18),
		(17, 13),
		(21, 12),
		(27, 16),
		(33, 11),
		(18, 13),
		(25, 17),
		(31, 10),
		(16, 12),
		(30, 19),
		(37, 20),
		(32, 2),
		(56, 4),
		(77, 6),
		(38, 6),
		(35, 20),
		(36, 13),
		(40, 13),
		(39, 3),
		(41, 5),
		(26, 7),
		(45, 8),
		(34, 9),
		(42, 6);	
	