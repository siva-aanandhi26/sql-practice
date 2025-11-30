-- SQL DAY ONE PRACTISED QUERIES

employees( id,name,department,salary city)

Q1. Return all employees from Bangalore
A: select * from employees where city='Bangalore';

Q2. Return name,department and salary of employees with salary less than 40000, sorted low to high
A: select name,department,salary from employees where salary<40000 order by salary asc

Q3.


