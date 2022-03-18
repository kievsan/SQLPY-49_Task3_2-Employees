--[SQLPY-49] 3. ��-2 "����������" 
--�������� ������� � ������ ��������������� ��. �����. 3�Ի

--�������� ���������:

--3.2.1. �������� ���� ���.������ music_genres 
create table if not exists sqlpy49_task3_2.employee(
	employee_name text not null,
	department_id integer not null,
	chief_id integer not null
);

--3.2.2. ������� � ����. ��������� ���� ��� ����������� � ����.���� ��� ������� � �����������
alter table sqlpy49_task3_2.employee 
	add column employee_id serial primary key,
	add constraint employee_id_chief_id_fkey foreign key (chief_id)
		references sqlpy49_task3_2.employee ;
