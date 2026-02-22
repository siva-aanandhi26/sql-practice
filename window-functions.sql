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


2.RUNNING TOTAL LOGIC WITH WINDOWS
  Select sales_date, sales_amount, SUM(sales_amount) OVER(ORDER by sales_date) as running_total from sales;


3.FOR EACH ORDER SHOW % OF TOTAL USER REVENUE IT CONTRIBUTES

select user_id,order_id, revenue, revenue *100.0/ SUM(revenue) OVER(partition by user_id) as user_revenue from orders;

4. TOTAL SALES REVENUE FOR EACH PRODUCT LINE

PRODUCT LINE WITH HIGHEST REVENUE SHOULD BE AT THE TOP

Tables:
products 
prod_id| prod_name| prod_line

transactions
transaction_id| prod_id| amount


select distinct p.prod_id, sum(t.amount) OVER(PARTITION BY p.prod_line) as revenue from products p join transactions t on p.prod_id=t.prod_id order by revenue desc;






