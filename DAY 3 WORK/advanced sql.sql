//1)Employees with salary > 50000

WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 50000
)

select * from employees;

SELECT *
FROM high_salary;

//2)Average Salary

WITH avg_sal AS (
    SELECT AVG(salary) AS average_salary
    FROM employees
)

SELECT *
FROM avg_sal;

//3) Employees Above Average Salary

WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal
    FROM employees
)

SELECT emp_name,
       salary
FROM employees, avg_salary
WHERE salary > avg_sal;

//windows function
//1.row function
SELECT emp_name,
       salary,

       ROW_NUMBER() OVER(
           ORDER BY salary DESC
       ) AS row_num

FROM employees;

//2.rank function
SELECT emp_name,
       salary,

       RANK() OVER(
           ORDER BY salary DESC
       ) AS salary_rank

FROM employees;

//3.dense_rank
SELECT emp_name,
       salary,

       DENSE_RANK() OVER(
           ORDER BY salary DESC
       ) AS dense_rank

FROM employees;

//case when
//1.Salary Category
SELECT emp_name,
       salary,

       CASE
           WHEN salary >= 55000 THEN 'High Salary'
           WHEN salary >= 50000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS salary_category

FROM employees;

//2.Bonus Calculation
SELECT emp_name,
       salary,

       CASE
           WHEN salary >= 55000 THEN salary * 0.20
           WHEN salary >= 50000 THEN salary * 0.10
           ELSE salary * 0.05
       END AS bonus

FROM employees;
