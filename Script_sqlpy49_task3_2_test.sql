--[SQLPY-49] 3. ��-2 "����������"
--�������� ������� � ������ ��������������� ��. �����. 3�Ի

--��������:

--3.2.3. ����� �������� � ����. employee 
insert into sqlpy49_task3_2.employee 
	(employee_id, employee_name, department_id, chief_id)
values
	(1, '������ ����', 5, 2), 
	(2, '������ ϸ�� ��������', 5, 2), 
	(3, '�������� �������', 5, 2), 
	(4, '�������� ������', 7, 5), 
	(5, '������� ������ ��������', 7, 5), 
	(6, '�������� ������', 7, 4) ;
	
--3.2.4. ������� ���� �� �����
select e.employee_id , e.employee_name , e.department_id , e.chief_id ,
		e2.employee_name as chief_name 
from sqlpy49_task3_2.employee e
join sqlpy49_task3_2.employee e2 on e2.employee_id = e.chief_id ; 
