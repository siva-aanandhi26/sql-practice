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



