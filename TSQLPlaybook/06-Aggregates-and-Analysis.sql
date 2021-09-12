
BEGIN --Basic Aggregate

SELECT 
SUM(Total) AllTimeSales,
AVG(Total ) as AvgSale ,
COUNT(Total) as SalesCount,
MIN(Total) as SmallestSale,
MAX(Total ) as BiggestSale
FROM Invoice; 

END

BEGIN --Grouping Results

SELECT BillingCountry,
SUM(Total) as AllTimeSales
FROM Invoice
GROUP BY BillingCountry; 

END

BEGIN --Simple sales query

SELECT FirstName + ' ' + LastName  as [Name], BillingCountry,
SUM(Total) as AllTimeSales,AVG (Total) as AveragePurchasing
FROM Invoice
INNER JOIN Customer on Invoice.CustomerId = Customer.CustomerId 
GROUP BY FirstName,LastName,BillingCountry
ORDER BY BillingCountry,LastName; 

END

BEGIN --Tangent Checking your results

SELECT FirstName + ' ' + LastName  as [Name], BillingCountry,
SUM(UnitPrice * Quantity) as SalesTotal
--AVG (UnitPrice * Quantity) as AveragePurchasing
FROM Invoice
INNER JOIN Customer on Invoice.CustomerId = Customer.CustomerId 
INNER JOIN InvoiceLine on InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY FirstName,LastName,BillingCountry
ORDER BY BillingCountry,LastName; 

END

BEGIN --Constraining Aggregate Results

SELECT BillingCountry,
SUM(UnitPrice * Quantity) as SalesTotal
FROM Invoice
INNER JOIN InvoiceLine on InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE BillingCountry IN('Germany','Argentina','United Kingdom')
GROUP BY BillingCountry
HAVING SUM(UnitPrice * Quantity)> 40
ORDER BY BillingCountry; 

END
