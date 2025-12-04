JOIN

employees

| emp_id | name | dept_id | salary |

departments

| dept_id | dept_name |

shifts

| shift_id | shift_name |

  
----INNER JOIN----
Q1. Return employee name and department name
  Select e.name,d.dept_name from employees e join departments d on e.dept_id=d.dept_id;

----LEFT JOIN----
Q1. Return ALL employees and their department name
    Select e.emp_id,e.name,e.dept_id,e.salary,d.dept_name from employees e left join departments d on e.dept_id=d.dept_id ;

----RIGHT JOIN----
Q1. Return all departments and their employees
  Select d.dept_id,d.dept_name,e.emp_id,e.name,e.salary from employees e right join departments d on e.dept_id=d.dept_id;


GOLDEN RULE FOR JOINS (tattoo this in your brain)
  A LEFT JOIN B   → keep ALL A
  A RIGHT JOIN B  → keep ALL B

----FULL OUTER JOIN----
Q1. Return all employees and departments
select e.emp_id,e.name,e.dept_id,e.salary,d.dept_name from employees e full join departments d on e.dept_id=d.dept_id

----CROSS JOIN----  
Q1. Return all shifts and employees
  select e.emp_id,e.name,s.shift_id,s.shift_name from employees e cross join shifts s

----TRICKY JOIN INTERVIEW QUESTIONS----
  
Q1. Write a query to return employee name,department name and show employees with no department as no_dept also departments with no employees as no_employees
select e.name,d.dept_name,
case 
  when e.name is null then 'no dept'
  when d.dept_name is null then 'no employees'
  end as dept_logic
from employees e full join departments d on e.dept_id=d.dept_id;

Q2. 


  
