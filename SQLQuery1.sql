-- Sales Analysis using SQL

use sales;

-- Show all customer records
Select * from customers

-- Show total number of customers
Select  Count(*) as Total_customer from customers

-- Show transactions for Chennai market (market code for chennai is Mark001)
Select * from transactions
Select * from transactions 
where market_code = 'Mark001'

-- Show distinct product codes that were sold in chennai.
Select distinct(product_code) from transactions 
where market_code = 'Mark001'

-- update the value in currency column from USD\r to USD and INR\r to INR

update transactions  set currency = 'INR'
where currency = 'INR\r'

update transactions  set currency = 'USD'
where currency = 'USD\r'


-- Show transactions where currency is US dollars.
Select * from transactions
where currency = 'USD'

-- Show transactions in 2020 join by date table.
Select * from transactions
where order_date like '%20'


-- Show total revenue in year 2020.

Select Sum(sales_amount) from transactions
where order_date like '%20'

Select * from date

-- Show total revenue in year 2020, January Month.
Select Sum(sales_amount) from transactions
where order_date like '%-01-20'



-- Show total revenue in year 2020 in Chennai.
Select sum(sales_amount) from transactions
where order_date like '%20' and market_code = 'Mark001' 

