--[SQLPY-49] 3. ДЗ-2 "Сотрудники"
--Домашнее задание к лекции «Проектирование БД. Связи. 3НФ»

--ПРОВЕРКА:

--3.2.3. внесём значения в табл. employee 
insert into sqlpy49_task3_2.employee 
	(employee_id, employee_name, department_id, chief_id)
values
	(1, 'Иванов Иван', 5, 2), 
	(2, 'Петров Пётр Иванович', 5, 2), 
	(3, 'Васильев Василий', 5, 2), 
	(4, 'Михайлов Михаил', 7, 5), 
	(5, 'Сергеев Сергей Семёнович', 7, 5), 
	(6, 'Тимофеев Тимоша', 7, 4) ;
	
--3.2.4. Выведем табл на экран
select e.employee_id , e.employee_name , e.department_id , e.chief_id ,
		e2.employee_name as chief_name 
from sqlpy49_task3_2.employee e
join sqlpy49_task3_2.employee e2 on e2.employee_id = e.chief_id ; 
