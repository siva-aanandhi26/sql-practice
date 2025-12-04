JOIN

employees

| emp_id | name | dept_id | salary |

departments

| dept_id | dept_name |

  
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
  
