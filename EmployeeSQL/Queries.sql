-- 1. List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name,last_name,hire_date
from employees
where date_part('year',hire_date)=1986;

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
select d.dept_no, dept.dept_name, d.emp_no, e.last_name, e.first_name
from dept_manager as d
join departments as dept on d.dept_no = dept.dept_no
join employees as e on d.emp_no = e.emp_no;


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dept.dept_no, dept.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as dept
join departments as d on d.dept_no = dept.dept_no
join employees as e on dept.emp_no = e.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
select dept.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as dept
join departments as d on d.dept_no = dept.dept_no
join employees as e on dept.emp_no = e.emp_no
where d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as dept
join departments as d on d.dept_no = dept.dept_no
join employees as e on dept.emp_no = e.emp_no
where d.dept_name in ('Sales','Development');

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) 
from employees
group by last_name
order by count(last_name) desc;


