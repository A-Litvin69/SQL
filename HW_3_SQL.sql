-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id

-- 2. ������� ���� ���������� � ������� �� ������ 2000.

select employees.employee_name, salary.monthly_salary  from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id 
where salary.monthly_salary < 2000

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employees.employee_name, salary.monthly_salary from salary 
left join employee_salary on employee_salary.salary_id = salary.id 
left join employees on employees.id = employee_salary.employee_id 
where employees.employee_name is null

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employees.employee_name, salary.monthly_salary from salary 
left join employee_salary on employee_salary.salary_id = salary.id 
left join employees on employees.id = employee_salary.employee_id 
where employees.employee_name is null and salary.monthly_salary < 2000

-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employees.employee_name, salary.monthly_salary from employees
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where salary.monthly_salary is null

-- 6. ������� ���� ���������� � ���������� �� ���������.

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id

-- 7. ������� ����� � ��������� ������ Java �������������.

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java %'

-- 8. ������� ����� � ��������� ������ Python �������������.

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python %'

-- 9. ������� ����� � ��������� ���� QA ���������.

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer%'

-- 10. ������� ����� � ��������� ������ QA ���������.

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA engineer%'

-- 11. ������� ����� � ��������� ��������������� QA

select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA engineer%'

-- 12. ������� ����� � �������� Junior ������������

select distinct employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%'

-- 13. ������� ����� � �������� Middle ������������

select distinct employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle%'

-- 14. ������� ����� � �������� Senior ������������

select distinct employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Senior%'

-- 15. ������� �������� Java �������������

select distinct salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Java developer%'

-- 16. ������� �������� Python �������������

select distinct salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Python developer%' 

-- 17. ������� ����� � �������� Junior Python �������������

select distinct employees.employee_name, salary.monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior Python%'

-- 18. ������� ����� � �������� Middle JS �������������

select distinct employees.employee_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Middle JavaScript developer%' 

-- 19. ������� ����� � �������� Senior Java �������������

select distinct employees.employee_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Senior JavaScript developer%'

-- 20. ������� �������� Junior QA ���������

select distinct salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like 'Junior % QA engineer' 

-- 21. ������� ������� �������� ���� Junior ������������

select distinct avg(salary.monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%'

-- 22. ������� ����� ������� JS �������������

select distinct sum(salary.monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%JavaScript developer%'

-- 23. ������� ����������� �� QA ���������

select distinct min(salary.monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA engineer%'

-- 24. ������� ������������ �� QA ���������

select distinct max(salary.monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA engineer%'

-- 25. ������� ���������� QA ���������

select distinct count(employees.employee_name) from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer%'

-- 26. ������� ���������� Middle ������������.

select distinct count(employees.employee_name) from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%'

-- 27. ������� ���������� �������������

select distinct count(employees.employee_name) from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%developer%'

-- 28. ������� ���� (�����) �������� �������������.

select distinct sum(salary.monthly_salary) from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer%'

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������

select distinct employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
order by salary.monthly_salary

-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select distinct employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where salary.monthly_salary between 1700 and 2300 order by monthly_salary

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select distinct employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where salary.monthly_salary < 2300 order by monthly_salary

-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select distinct employees.employee_name, roles.role_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employees.id
join roles on roles.id = roles_employee.role_id 
where salary.monthly_salary in (1100,1500,2000) order by monthly_salary

		