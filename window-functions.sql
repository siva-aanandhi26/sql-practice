  ----WINDOW FUNCTIONS----

BASIC RANKING WITHOUT TIMESTAMP WALA!!!
1. Write a query to find the top two highest grossing products with each category in the year 2026. The output should include the category, product and total spend.
 PRODUCTS: 
category | product | user_id | spend | transaction_date | transaction_time


with rank_spend as(

  select user_id,product,category,
          sum(spend) as total_spend,
          RANK() OVER(PARTITION BY category order by total_spend DESC) as rank
        from products 
        where extract( year from transaction_date) ='2026'
        group by category,product;
)

select category,product,total_spend from rank_spend where rank<=2 order by category,rank;


RUNNING TOTAL LOGIC WITH WINDOWS
2. select sales_date, sales_amount, SUM(sales_amount) OVER(ORDER by sales_date) as running_total from sales;


