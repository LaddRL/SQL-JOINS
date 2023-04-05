/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name AS Product, c.Name AS Category
 FROM products AS p 
 INNER JOIN categories AS c 
 ON p.CategoryID = c.CategoryID 
 WHERE c.Name LIKE 'Computers';
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.Price, r.Rating
FROM products AS p JOIN reviews AS r
ON p.ProductID=r.ProductID WHERE r.rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT CONCAT(e.FirstName, e.LastName) AS Employee, SUM(s.Quantity) 
AS total FROM employees AS e JOIN sales 
AS s ON e.EmployeeID=s.EmployeeID GROUP BY e.EmployeeID ORDER BY total DESC LIMIT 10;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.name AS Department, c.Name AS Category FROM categories AS c
INNER JOIN departments AS d ON d.DepartmentID = c.DepartmentID
WHERE c.Name LIKE 'Appliances' OR c.Name LIKE 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.name, SUM(s.Quantity)AS Quantity_sold, SUM(s.PricePerUnit * s.Quantity) AS Total_price_sold FROM products AS p JOIN sales AS s ON p.ProductID=s.ProductID WHERE p.ProductID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer, r.Rating, r.Comment
FROM products AS p JOIN reviews AS r
ON p.ProductID=r.ProductID WHERE p.Name = 'Visio TV' ORDER BY r.Rating LIMIT 1;
-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */