----SUB QUERIES----

Q1. Employees earning above average salary

  select salary from employees where salary >(select avg(salary) from employees);

Q2. Departments whose avg salary is above company avg

  select departments,avg(salary) as avg_salary from employees group by departments having avg(salary)>(select avg(salary) from employees); 

Q3. Customers with more orders than the average orders per customer (subqueries + join)

  select c.customer_id,c.name, count(o.order_id ) as order_count from customers c join orders o on c.customer_id=o.customer_id group by c.customer_id,c.name having count(o.order_id)> (select avg(order_count) from (select count(*) as order_count from orders group by customer_id ) t);

Q4. Find employees whose salary is the highest in their department

  select e1.name,e1.department,e1.salary from employees e1 where e1.salary = (select max(e2.salary) from employees e2 where e2.department = e1.department);

Q5. Return customers who placed orders every month

select customer_id from orders where order_date >=("2024-01-01") and order_date<("2025-01-01")group by customer_id having count(distinct month(order_date))=12;  

Q6. Employees who earn more than their manager

Q7. Top 3 salaries without window functions

  select e1.salary from employees e1 where 3>(select count(distinct salary) from employees e2 where e2.salary> e1.salary);

Q8. Find duplicates in a table

  select name from customers group by name having count(*)>1;
Q9. Products never purchased

  select p.product_id, p.product_name from products p where not exists (select 1 from orders_items o where o.product_id=p.product_id);


Q10. Products purchased by ALL customers

