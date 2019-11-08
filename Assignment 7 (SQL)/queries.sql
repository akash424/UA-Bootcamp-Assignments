-- Question 1
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from employees e
left join salaries s
on e.emp_no = s.emp_no
order by last_name, first_name

-- Question 2
select emp_no, last_name, first_name
from employees
where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
order by last_name, first_name

-- Question 3
select d.dept_no, e.dept_name, d.emp_no, a.last_name, a.first_name, d.from_date, d.to_date
from dept_manager d
left join
departments e
on d.dept_no = e.dept_no
left join
employees a
on d.emp_no = a.emp_no
order by last_name, first_name

-- Question 4
select emp_no, last_name, first_name
from employees
where first_name = 'Hercules' and last_name LIKE 'B%'

-- Question 5
select emp_no, last_name, first_name
from employees
where first_name = 'Hercules' and last_name LIKE 'B%'

-- Question 6
select d.emp_no, a.last_name, a.first_name, e.dept_name 
from dept_emp d
left join employees a
on d.emp_no = a.emp_no
left join departments e
on d.dept_no = e.dept_no
where e.dept_name = 'Sales'
order by last_name, first_name

-- Question 7
select d.emp_no, a.last_name, a.first_name, e.dept_name 
from dept_emp d
left join employees a
on d.emp_no = a.emp_no
left join departments e
on d.dept_no = e.dept_no
where e.dept_name in ('Sales', 'Development')
order by last_name, first_name

-- Question 8
select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc







