-- Assignment: Data Analysis with SQL
-- =============================================
-- Question 1: Total payment amount by date
-- Display the total payment amount for each payment date
-- Show only the top 5 latest payment dates
-- =============================================
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- =============================================
-- Question 2: Average credit limit by customer and country
-- Find the average credit limit for each customer
-- Grouped by customer name and country
-- =============================================
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- =============================================
-- Question 3: Total price of products ordered
-- Calculate the total price for each product in order details
-- Grouped by product code and quantity ordered
-- =============================================
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- =============================================
-- Question 4: Highest payment amount by check number
-- Find the maximum payment amount for each check number
-- Grouped by check number
-- =============================================
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;