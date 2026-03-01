-- SQL DAY ONE PRACTISED QUERIES

employees( id,name,department,salary city)

Q1. Return all employees from Bangalore
A: select * from employees where city='Bangalore';

Q2. Return name,department and salary of employees with salary less than 40000, sorted low to high
A: select name,department,salary from employees where salary<40000 order by salary asc

Q3. Salary band logic (low, medium,high) --case when
A: select name, department,salary, 
    case
      when salary < 40000 then 'low'
      when salary between 40000 and 80000 then 'medium'
      else 'High'
    end as salary_band
  from employees;

Q4. Highest salary per department
A: select department,max(salary) as max_salary from employees group by department;

Q5. Count employees per city
A: select city, count(*) as employee_count from employees group by city;

Q6. employees with salary less than 35000
    select name from employees where salary<35000

Q7. Unique department from employees
    select distinct department from employees
    
Q8. SALARY BAND LOGIC
    select name,salary, 
            case 
               when salary > 60000 then 'high'
               else 'low'
            end as salary_band
  from employees        

Q9. Department that has the highest number of employees using only group by +order by +limit 
    select department,count(*) as emp_count from employees group by department order by emp_count desc limit 1;

Q10. Find the highest salary in each department
    select department,max(salary) as highest_salary from employees group by department 

Q11. percentage of employees earn more than 50,000
    select count(
        case 
            when salary>50000 then '1' 
        end) * 100 /

count(*) as perc_emp from employees;

Q12. departments have an average salary HIGHER than the overall company average
    select departments, avg(salary) as avg_salary from employees group by departments having  avg_salary > (select avg(salary) from employees);

Q13. Write a query to find duplicate records in a table and count their occurrences
     select name,count(name) as name_count from employees group by name having count(name)>1; 

Q14. Write a query to find the second-highest salary 
     select distinct salary from employees order by salary desc limit 1 offset 1;

Q15. Due to an error in the delivery driver instructions, each item's order was swapped with the item in the subsequent row. As a data analyst, you're asked to correct this swapping error and return the proper pairing of order ID and item. If the last item has an odd order ID, it should remain as the last item in the corrected data. For example, if the last item is Order ID 7 Tandoori Chicken, then it should remain as Order ID 7 in the corrected data. In the results, return the correct pairs of order IDs and items.

    select 
        case 
            when order_id%2!=0 and order_id!=total_orders then order_id+1
            when order_id%2!=0 and order_id=total_orders then order_id
            else order_id-1
        end as ordered_items, item 
from orders,
(select count (order_id) as total_orders from orders) as order_counts order by ordered_items;



