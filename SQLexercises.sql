--Write a query to return all category names with their descriptions from the Categories table.
	--SELECT CategoryName, Description 
	--FROM Categories ;  

--Write a query to return the contact name, customer id, company name and city name of all Customers in London
	--SELECT ContactName, CustomerID, CompanyName, City 
	--FROM Customers
	--WHERE City='London';
 
--Write a query to return all available columns in the Suppliers tables for the marketing managers and sales representatives that have a FAX number
	--SELECT * FROM Suppliers
	--WHERE (ContactTitle = 'Sales Representative' OR ContactTitle = 'Marketing Manager') 
	--AND Fax IS NOT NULL;

--Write a query to return a list of customer id's from the Orders table with required dates between Jan 1, 1997 and Dec 31, 1997 and with freight under 100 units.
	--SELECT CustomerID From Orders
	--WHERE Freight < 100 
	--AND RequiredDate BETWEEN '1997-01-01 00:00:00.000' AND '1997-12-31 00:00:00.000';

--Write a query to return a list of company names and contact names of all customers from Mexico, Sweden and Germany.
	--SELECT CompanyName, ContactName
	--FROM Customers
	--WHERE Country='Mexico' OR Country='Sweden' OR Country='Germany';
--Write a query to return a count of the number of discontinued products in the Products table.
	--SELECT COUNT (ProductID)
	--FROM Products
	--WHERE Discontinued=1;

--Write a query to return a list of category names and descriptions of all categories beginning with 'Co' from the Categories table.
	--SELECT CategoryName, Description 
	--FROM Categories 
	--WHERE CategoryName LIKE 'Co%';

--Write a query to return all the company names, city, country and postal code from the Suppliers table with the word 'rue' in their address. 
--The list should be ordered alphabetically by company name.
	--SELECT CompanyName, City, Country, PostalCode
	--FROM Suppliers
	--WHERE Address LIKE '%rue%'
	--ORDER BY CompanyName;

--Write a query to return the product id and the quantity ordered for each product labelled as 'Quantity Purchased' in the Order Details table ordered by the Quantity Purchased in descending order.
	--SELECT ProductID, Quantity AS 'Quantity Purchased' 
	--FROM [Order Details]
	--ORDER BY Quantity DESC;

--Write a query to return the company name, address, city, postal code and country of all customers with orders that shipped using Speedy Express, along with the date that the order was made.
	--SELECT Customers.CompanyName, Customers.Address, Customers.City, Customers.PostalCode, Customers.Country, Orders.OrderDate
	--FROM Orders
	--INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID
	--WHERE Orders.ShipVia=1;

--Write a query to return a list of Suppliers containing company name, contact name, contact title and region description.
	--SELECT CompanyName, ContactName, ContactTitle, Region
	--FROM Suppliers

--Write a query to return all product names from the Products table that are condiments.
	--SELECT ProductName 
	--FROM Products
	--WHERE CategoryID=2;

--Write a query to return a list of customer names who have no orders in the Orders table.
	--SELECT Customers.CompanyName
	--FROM Customers
	--LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID
	--WHERE OrderID IS NULL;

--Write a query to add a shipper named 'Amazon' to the Shippers table using SQL.
	--INSERT INTO Shippers(CompanyName)
	--VALUES ('Amazon');
	
--Write a query to change the company name from 'Amazon' to 'Amazon Prime Shipping' in the Shippers table using SQL.
	--UPDATE Shippers 
	--SET CompanyName = 'Amazon Prime Shipping'
	--WHERE CompanyName ='Amazon';

--Write a query to return a complete list of company names from the Shippers table. Include freight totals rounded to the nearest whole number for each shipper from the Orders table for those shippers with orders.
	--SELECT Shippers.CompanyName, ROUND(SUM(Orders.Freight), 0) AS "Freight Total"
	--FROM Shippers
	--LEFT JOIN Orders ON Shippers.ShipperID = Orders.ShipVia
	--WHERE Freight IS NOT NULL
	--GROUP BY CompanyName;
	
--Write a query to return all employee first and last names from the Employees table by combining the 2 columns aliased as 'DisplayName'. The combined format should be 'LastName, FirstName'.
	--SELECT CONCAT(LastName, ', ', FirstName) AS 'Display Name'
	--FROM Employees;

--Write a query to add yourself to the Customers table with an order for 'Grandma's Boysenberry Spread'.
	--INSERT INTO Customers (CustomerID, CompanyName, ContactName) 
	--VALUES ('SABSI', 'SABRINA INC', 'Sabrina Simeroth');
	--INSERT INTO [Orders] ([CustomerID])
	--VALUES ('SABSI');
	--INSERT INTO [Order Details](OrderID, ProductID)
	--VALUES(11078, 6);	

--Write a query to remove yourself and your order from the database.
	--DELETE FROM [Order Details] 
	--WHERE OrderID = '11078'
	--DELETE FROM [Orders] 
	--WHERE OrderID=11078 AND CustomerID='SABSI'
	--DELETE FROM Customers 
	--WHERE CustomerID = 'SABSI';

--Write a query to return a list of products from the Products table along with the total units in stock for each product. Include only products with TotalUnits greater than 100.
	--SELECT ProductName, UnitsInStock 
	--FROM Products 
	--WHERE UnitsInStock > 100;