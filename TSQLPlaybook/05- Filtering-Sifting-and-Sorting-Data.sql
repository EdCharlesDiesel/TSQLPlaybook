
BEGIN --Ordering Results --

SELECT FirstName + ' ' + LastName  as [Name], Email , Country 
InvoiceId, InvoiceDate, Total FROM Customer
INNER JOIN Invoice on Invoice.CustomerId = Customer.CustomerId  
WHERE Country = 'Brazil'
ORDER BY Total DESC; 

END

BEGIN --Limiting Results --

SELECT TOP 10 FirstName + ' ' + LastName  as [Name], Email , Country 
InvoiceId, InvoiceDate, Total FROM Customer
INNER JOIN Invoice on Invoice.CustomerId = Customer.CustomerId  
WHERE Country = 'Brazil'
ORDER BY Total DESC; 

END

BEGIN --Sequesncial Ordering --

SELECT FirstName + ' ' + LastName  as [Name], Email , Country 
InvoiceId, InvoiceDate, Total FROM Customer
INNER JOIN Invoice on Invoice.CustomerId = Customer.CustomerId  
WHERE Country = 'USA' OR Country = 'Canada'
ORDER BY Country DESC, LastName DESC; 

END

BEGIN --Filtering By Sets --

SELECT FirstName + ' ' + LastName  as [Name], Email , Country 
InvoiceId, InvoiceDate, Total FROM Customer
INNER JOIN Invoice on Invoice.CustomerId = Customer.CustomerId  
WHERE (Country = 'USA' OR Country = 'Canada') AND Total > 5
ORDER BY Country DESC, LastName DESC; 

SELECT FirstName + ' ' + LastName  as [Name], Email , Country 
InvoiceId, InvoiceDate, Total FROM Customer
INNER JOIN Invoice on Invoice.CustomerId = Customer.CustomerId  
WHERE Country IN( 'USA', 'Canada') AND Total > 5
ORDER BY Country DESC, LastName DESC;

END

BEGIN --OFFSETTING RESULTS --

SELECT FirstName + ' ' + LastName  as [Name], Email , Country ,
InvoiceId, InvoiceDate, Total FROM Customer
INNER JOIN Invoice on Invoice.CustomerId = Customer.CustomerId  
WHERE Country = 'USA'
ORDER BY Total DESC
OFFSET 1 rows


END


