select * from financial_data;

SELECT customer_name,amount FROM financial_data;

SELECT * FROM financial_data WHERE amount > 50000;

select * from financial_data where amount between 20000 and 30000;

SELECT * FROM financial_data WHERE category = 'Travel';

select count(*) total_transaction from financial_data;

select * from financial_data where payment_method='upi';

SELECT MAX(amount) AS highest_amount FROM financial_data;

select min(amount) as lowest_amount from financial_data;

select avg(amount) as avg_amount from financial_data;

select category,SUM(amount) AS total_amount FROM financial_data GROUP BY category;

SELECT category, COUNT(*) AS total_transactions FROM financial_data GROUP BY category;

SELECT * FROM financial_data ORDER BY amount DESC;

SELECT * FROM financial_data ORDER BY amount DESC LIMIT 5;
