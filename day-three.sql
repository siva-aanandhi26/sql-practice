----SUB QUERIES----

Q1. Employees earning above average salary

  select salary from employees where salary >(select avg(salary) from employees);

Q2. Departments whose avg salary is above company avg

  select departments,avg(salary) as avg_salary from employees group by departments having avg(salary)>(select avg(salary) from employees); 

Q3. Customers with more orders than the average orders per customer

Q4. Find employees whose salary is the highest in their department

Q5. Return customers who placed orders every month

Q6. Employees who earn more than their manager

Q7. Top 3 salaries without window functions

Q8. Find duplicates in a table

Q9. Products never purchased

Q10. Products purchased by ALL customers
