CREATE TABLE financial_data (
    transaction_id VARCHAR(20),
    customer_name VARCHAR(100),
    transaction_date DATE,
    category VARCHAR(50),
    amount NUMERIC(10,2),
    payment_method VARCHAR(50),
    city VARCHAR(100)
);

select * from financial_data;