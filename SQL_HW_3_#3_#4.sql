--[Forwarded from 25_QA_Channel]
--SQL HomeWork 3. Joins

--Подключится к 
--Host: 159.69.151.133
--Port: 5056
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Pass: 123

--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )
--select * from employees;

--Первое задание у тебя выводит 1120 строк. То есть на каждую существующую зп. (1000,1100,1200 и тд) оно назначает всех наших 70 работников. По факту там должно вывести намного меньше. Например, на моей базе данных должно было вывести всего 10 строк
 --1. ПРАВИЛЬНО Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary
from  employee_salary 
   join salary on  salary_id = salary.id
   join employees on employee_id = employees.id;
 
  

  select employee_name, monthly_salary
  from employee_salary  
  join employees on employee_salary.employee_id = employees.id
  join salary on salary.id = employee_salary.salary_id;


select monthly_salary from salary; 


 --Второе задание : у тебя неправильно присваивается зарплата. В строке join salary on salary. id = employee_salary. id ты хотела подставить месячные х зарплаты в номера работников. А поставила просто номера строк из employee_salary
 --2. ПРАВИЛЬНО Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary
from employees 
left join employee_salary on employees.id = employee_id
left join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2000;



 --3. НЕПРАВИЛЬНО Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary
from salary 
 left join employee_salary on salary.id = employee_salary.salary_id 
 left join employees on employees.id = employee_salary.employee_id
 where employee_id is null; 


select monthly_salary
from salary 
  join employee_salary on salary.id = employee_salary.salary_id 
  join employees on employees.id = employee_salary.employee_id
 --where employee_salary.employee_id is null; 


 --4. НЕПРАВИЛЬНО Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
-- Выводит все правильно, если нет последней строки
select monthly_salary
from salary
	 join employee_salary on salary.id = employee_salary.salary_id
	 join employees on employees.id = employee_salary.employee_id
where monthly_salary < 2000;
--and employee_name is null;


select monthly_salary
from salary
right join employee_salary on salary.id = employee_salary.salary_id
right join employees on employees.id = employee_salary.employee_id
where monthly_salary < 2000   
--and employee_salary.employee_id is null;


select monthly_salary
from salary
	left join employee_salary on salary.id = employee_salary.salary_id
	left join employees on employees.id = employee_salary.employee_id
where monthly_salary < 2000
and employee_name is null;

 --5. ПРАВИЛЬНО ИХ 34 штук. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary 
from employees 
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;


select employee_name, salary_id 
from employees 
left join employee_salary on employees.id = employee_salary.employee_id
--left join salary on employee_salary.salary_id = salary.id
where salary_id is null;

 --6. ПРАВИЛЬНО. ИХ 40. Вывести всех работников с названиями их должности.
select employee_name, roles.role_name
from roles_employee
    left join employees  on roles_employee.employee_id = employees.id 
  left  join roles on roles_employee.role_id = roles.id;


 --7. ПРАВИЛЬНО Вывести имена и должность только Java разработчиков.
select employee_name, role_name 
from employees 
left join roles_employee on employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%Java Dev%';

 --8. ПРАВИЛЬНО Вывести имена и должность только Python разработчиков.
select employee_name, role_name
from  roles_employee
 left join  employees on roles_employee.employee_id = employees.id
left  join roles on roles_employee.role_id = roles.id 
where role_name like '%Python%';

 --9. ПРАВИЛЬНО Вывести имена и должность всех QA инженеров.
select employee_name, roles.role_name
from  employees
left join roles_employee on roles_employee.employee_id =  employees.id
left join roles on roles_employee.role_id = roles.id 
where role_name like '%QA Engin%';

 --10. ПРАВИЛЬНО Вывести имена и должность ручных QA инженеров.
select  employee_name, role_name
from employees 
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA Engineer';

 --11. ПРАВИЛЬНО Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation QA%';


 --12. ПРАВИЛЬНО Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary
from employees
 join roles_employee on roles_employee.employee_id = employees.id
 join roles on roles.id= roles_employee.role_id
 join employee_salary  on employee_salary.employee_id = employees.id 
 join salary on  employee_salary.salary_id = salary.id
where role_name like 'Junior%';


 --13. ПРАВИЛЬНО Вывести имена и зарплаты Middle специалистов
select  employee_name, role_name, monthly_salary 
from employees 
left join roles_employee on roles_employee.employee_id = employees.id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on salary.id = employee_salary.salary_id  
where role_name like '%Middle%'; 

--14. ПРАВИЛЬНО Вывести имена и зарплаты Senior специалистов
select employee_name, role_name, monthly_salary
from employees
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles_employee.role_id = roles.id 
 join employee_salary on employees.id = employee_salary.employee_id
 join salary on employee_salary.salary_id = salary.id
where role_name like 'Seni%';

 --15. ПРАВИЛЬНО Вывести зарплаты Java разработчиков
select role_name, monthly_salary
from employees 
 join roles_employee on roles_employee.employee_id = employees.id 
  join roles on roles.id = roles_employee.role_id 
 join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
 join salary on salary.id = employee_salary.salary_id 
where role_name like '%Java Dev%';

 --16.  ПРАВИЛЬНО Вывести зарплаты Python разработчиков
select role_name, monthly_salary
from employees 
right join roles_employee on employees.id = roles_employee.employee_id 
right join roles on roles.id = roles_employee.role_id 
right join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
right join salary on salary.id = employee_salary.salary_id
where role_name like '%Python%';

 --17. ПРАВИЛЬНО Вывести имена и зарплаты Junior Python разработчиков
select  employee_name, role_name, monthly_salary
from  employees
left join roles_employee  on employees.id = roles_employee.employee_id  
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python%';


 --18. ПРАВИЛЬНО Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name,  monthly_salary
from employees
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles.id = roles_employee.role_id 
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary_id = salary.id
where role_name like '%Middle Javascript%';


 --19. ПРАВИЛЬНО Вывести имена и зарплаты Senior Java разработчиков
-- Выводит 1 сотрудника, у кого есть роль и зп. 
select  employee_name, role_name,  monthly_salary
from employees
 join roles_employee on employees.id = roles_employee.employee_id 
 join roles on roles.id = roles_employee.role_id 
 join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
 join salary on salary_id = salary.id
where role_name like '%Senior Java Developer%';

 --20. ПРАВИЛЬНО Вывести зарплаты Junior QA инженеров
select role_name, monthly_salary
from roles 
left join roles_employee on roles.id = roles_employee.role_id   
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id  
left join salary on salary.id = employee_salary.salary_id 
where role_name like 'Junior % QA Engineer';

 --21. ПРАВИЛЬНО Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from roles
join roles_employee on roles_employee.role_id = roles.id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%';

 --22. ПРАВИЛЬНО Вывести сумму зарплат JS разработчиков 
select role_name, monthly_salary   
from roles 
left join roles_employee on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on salary.id = employee_salary.salary_id
where role_name like '%Javascript%';


 --23. ПРАВИЛЬНО Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as min_sal 
from roles 
left join roles_employee on roles.id = roles_employee.role_id 
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where role_name like '%QA%';


 --24. ПРАВИЛЬНО Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as max_sal 
from roles 
left join roles_employee on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id 
where role_name like '%QA%';


 --25. ПРАВИЛЬНО Вывести количество QA инженеров
select count(role_name) as qty_role_name
from  roles
left join roles_employee on roles_employee.role_id = roles.id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
left join salary on salary.id = employee_salary.salary_id 
where role_name like '%QA%';

				--Здесь выводит по каждой роли по сколько
				select role_name, count(role_name) as qty_role_name
				from employees 
				left join roles_employee on roles_employee.employee_id = employees.id
				left join roles on roles.id = roles_employee.role_id 
				left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
				left join salary on salary.id = employee_salary.salary_id 
				where role_name like '%QA%'
				group by roles.role_name;

 --26. ПРАВИЛЬНО Вывести количество Middle специалистов. СДЕЛАНО!!!
select  count(role_name) as qty_role
from  roles
left join roles_employee on roles.id = roles_employee.role_id 
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id 
where role_name like '%Middle%';



 --27. ПРАВИЛЬНО Вывести количество разработчиков
select  count(role_name) as qty_developers
from roles
left join roles_employee on roles.id = roles_employee.role_id 
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id
left join salary on salary.id = employee_salary.salary_id 
where role_name like '%Developer%';


 --28. ПРАВИЛЬНО Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as sum_sal_dev
from employees 
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on salary.id = employee_salary.salary_id 
where role_name like '%Developer%';



 --29. ПРАВИЛЬНО Вывести имена, должности и ЗП всех специалистов по возрастанию
-- Выводит все имена, включая имена тех, у кого нет ролей. В остальном все сходится
select  employee_name, role_name, monthly_salary
from employees 
left join roles_employee on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
left join salary on employee_salary.salary_id = salary.id
order by monthly_salary asc;

-- Выводит всех имен 31, искл тех, у кого нет ролей. В остальном все сходится
select  employee_name, role_name, monthly_salary
from employees 
 join roles_employee on roles_employee.employee_id = employees.id
 join employee_salary on employee_salary.employee_id = employees.id 
left join roles on roles_employee.role_id = roles.id
left join salary on employee_salary.salary_id = salary.id
order by monthly_salary asc;

 --30. ПРАВИЛЬНО Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
-- Выводит имена вместе с теми, у кого нет ролей. В остальном все сходится
select employee_name, role_name, monthly_salary
from employees
left join roles_employee on  roles_employee.employee_id = employees.id
left join employee_salary on employee_salary.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc; 





 --31. ПРАВИЛЬНО Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
--Выводит имена всех 36, вкл имена тех, у кого нет ролей. Остальное все сходится
select employee_name, role_name, monthly_salary
from employees
left  join roles_employee on employees.id = roles_employee.employee_id
left join employee_salary on employee_salary.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
left join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300
order by monthly_salary asc;


--Выводит имена всех 31, искл имена тех, у кого нет ролей. Остальное все сходится
select employee_name, role_name, monthly_salary
from employees
  join roles_employee on employees.id = roles_employee.employee_id
left join employee_salary on employee_salary.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
 join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300
order by monthly_salary asc;


 --32. ПРАВИЛЬНО Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on roles_employee.role_id = roles.id
left join employee_salary on employee_salary.employee_id = roles_employee.employee_id 
left join salary on employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;









