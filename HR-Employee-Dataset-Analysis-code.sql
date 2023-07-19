# WHOLE DATABASE
select * from employees

### SELECTING WITH WILDCARD
select * from employees
where department like 'H%'

### COUNTING THE TOTAL AMOUNT OF EMPLOYEES BY DEPARTMENT
SELECT Department, COUNT(*) As Total_Employees_By_Department
FROM employees 
Group by Department

### TOTAL SUM OF MONTHLY PAY BY DEPARTMENT
select Department, sum(MonthlyIncome) as Total_salary_perMonth
from employees
group by department

### TOTAL MONTHLY PAY
SELECT * FROM employees
select sum(MonthlyIncome) as Total_salary_perMonth
from employees

### TOP 10 EMPLOYEES WHO HAS SPENT MORE THAN 5 YEARS IN THE COMPANY BY MONTH INCOME
SELECT * FROM employees
WHERE YearsAtCompany > 5
order by MonthlyIncome desc
limit 10

### MANAGERS WHO EARN BETWEEN 10000 AND 20000
SELECT * FROM employees 
WHERE JobRole = 'Manager' AND MonthlyIncome BETWEEN 10000 AND 20000
order by YearsAtCompany desc

### AVERAGE SALARY BY EACH JOB ROLE 
SELECT JobRole, AVG(MonthlyIncome) as avg_salary
FROM employees 
GROUP BY JobRole;

### TOTAL EMPLOYEES BY JOB ROLE
SELECT JobRole, COUNT(*) as num_employees 
FROM employees 
GROUP BY JobRole;