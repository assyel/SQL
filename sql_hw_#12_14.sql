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
 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select monthly_salary, employee_name
from  employee_salary 
   join salary on  salary_id = salary.id
   join employees on employee_id = employees.id;
  

  select employee_name, monthly_salary
  from employee_salary  
  join employees on employee_salary.employee_id = employees.id
  join salary on salary.id = employee_salary.salary_id;


select monthly_salary from salary; 


 --Второе задание : у тебя неправильно присваивается зарплата. В строке join salary on salary. id = employee_salary. id ты хотела подставить месячные х зарплаты в номера работников. А поставила просто номера строк из employee_salary
 --2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary
from employees 
 join employee_salary on employees.id = employee_id
 join salary on salary.id = salary_id
where monthly_salary < 2000;



 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary
from salary 
 left join employee_salary on salary.id = employee_salary.salary_id 
 left join employees on employees.id = employee_salary.employee_id
 where employee_name is null; 


select monthly_salary
from salary 
  join employee_salary on salary.id = employee_salary.salary_id 
  join employees on employees.id = employee_salary.employee_id
 where employee_salary.employee_id is null; 






 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary
 from salary
	left join employee_salary on salary.id = employee_salary.salary_id
	left join employees on employees.id = employee_salary.employee_id
where monthly_salary < 2000
and employee_name is null;


select monthly_salary
 from salary
	  join employee_salary on salary.id = employee_salary.salary_id
	  join employees on employees.id = employee_salary.employee_id
where employee_salary.employee_id is null
and monthly_salary < 2000;


 --5. Найти всех работников кому не начислена ЗП.
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




 --6. Вывести всех работников с названиями их должности.
select employee_name, roles.role_name
from roles_employee
    left join employees  on roles_employee.employee_id = employees.id 
  left  join roles on roles_employee.role_id = roles.id;


 --7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name 
from employees 
left join roles_employee on employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%Java Dev%';



 --8. Вывести имена и должность только Python разработчиков.
select employee_name, roles.role_name
from  roles_employee
 left join  employees on roles_employee.employee_id = employees.id
left  join roles on roles_employee.role_id = roles.id 
where role_name like '%Python%';




 --9. Вывести имена и должность всех QA инженеров.
select employee_name, roles.role_name
from  employees
left join roles_employee on roles_employee.employee_id =  employees.id
left join roles on roles_employee.role_id = roles.id 
where role_name like '%QA Engin%';




 --10. Вывести имена и должность ручных QA инженеров.
select  employee_name, role_name
from employees 
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA Engineer';




 --11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles_employee.role_id = roles.id 
where role_name like '%Automation QA%';



select * from roles;

 --12. Вывести имена и зарплаты Junior специалистов
select employee_name, role_name, monthly_salary
from employees
left join roles_employee on roles_employee.employee_id = employees.id
left join roles on roles.id= roles_employee.role_id
left join employee_salary  on employee_salary.employee_id = employees.id 
left join salary on  employee_salary.salary_id = salary.id
where role_name like 'Junior%';






 --13. Вывести имена и зарплаты Middle специалистов
select  employee_name, role_name, monthly_salary 
from employees 
left join roles_employee on roles_employee.employee_id = employees.id 
left join roles on roles.id = roles_employee.role_id 
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on salary.id = employee_salary.salary_id  
where role_name like '%Middle%'; 






--14. Вывести имена и зарплаты Senior специалистов
select employee_name, role_name, monthly_salary
from employees
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles on roles_employee.role_id = roles.id 
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where role_name like 'Seni%';






 --15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary
from salary 
full join employee_salary on employee_salary.salary_id = salary.id 
full join roles on salary.id = roles.id 
join roles_employee on roles_employee.role_id = salary.id 
where role_name like '%Java Dev%';





 --16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary
from salary
join roles on roles.id = salary.id 
where role_name like '%Python%';





 --17. Вывести имена и зарплаты Junior Python разработчиков
select  employee_name, role_name, monthly_salary
from employees 
left join salary on employees.id = salary.id
left join roles on roles.id = salary.id
where role_name like '%Junior Python%';






 --18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, role_name,  monthly_salary
from employees
left join salary on employees.id = salary.id 
left join roles on roles.id = salary.id
where role_name like '%Middle Javascript%';






 --19. Вывести имена и зарплаты Senior Java разработчиков
select  employee_name, role_name,  monthly_salary
from employees
left join roles on roles.id = employees.id
left join salary on roles.id = salary.id
where role_name like '%Senior Java Developer%';





 --20. Вывести зарплаты Junior QA инженеров????????
select monthly_salary, role_name
from roles 
join salary on roles.id = salary.id  
where role_name like 'Junior % QA Engineer';




 --21. Вывести среднюю зарплату всех Junior специалистов
select role_name, avg(salary.monthly_salary) as avg_salary 
from salary  
join roles on salary.id = roles.id
where role_name like 'Junior%'
group by roles.role_name; 




 --22. Вывести сумму зарплат JS разработчиков
select role_name, monthly_salary   
from salary
join roles on salary.id = roles.id
where role_name like '%Javascript%';




 --23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as min_sal, role_name
from salary
join roles on salary.id = roles.id
where role_name like '%QA%'
group by roles.role_name;






 --24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as max_sal, role_name
from salary 
join roles on roles.id = salary.id 
where role_name like '%QA%'
group by roles.role_name;





 --25. Вывести количество QA инженеров
select role_name, count(role_name) as qty_role_name
from roles 
where role_name like '%QA%'
group by roles.role_name;





 --26. Вывести количество Middle специалистов.
select role_name, count(role_name) as qty_role
from roles
where role_name like '%Middle%'
group by roles.role_name;




 --27. Вывести количество разработчиков
select role_name, count(role_name) as qty_developers
from roles
where role_name like '%Developer%'
group by roles.role_name;






 --28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as sum_sal_dev
from salary 
join roles on salary.id = roles.id 
where role_name like '%Developer%';


select monthly_salary, role_name
from salary 
join roles on salary.id = roles.id
where role_name like '%Developer%';





 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.id, employee_name, roles.id, role_name, monthly_salary
from employees 
join roles on employees.id = roles.id
join salary on roles.id = salary.id
order by monthly_salary asc;






 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.id, employee_name, roles.id, role_name, salary.id, monthly_salary
from employees
join roles on employees.id = roles.id
join salary on roles.id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc; 





 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.id, employee_name, roles.id, role_name, salary.id, monthly_salary
from employees
join roles on employees.id = roles.id
join salary on salary.id = roles.id
where monthly_salary < 2300
order by monthly_salary asc;




 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.id, employee_name, roles.id, role_name, salary.id, monthly_salary
from employees
join roles on employees.id = roles.id
join salary on roles.id = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;













