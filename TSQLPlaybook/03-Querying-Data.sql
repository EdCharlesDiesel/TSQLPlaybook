
BEGIN --Simple Select--


SELECT * FROM Album; 

END

BEGIN --Select Columns

SELECT FirstName, LastName, Email FROM Customer;  

END

BEGIN --Select Columns Aliasing

SELECT FirstName as 'First', LastName as 'Last Name', Email FROM Customer;  

END

BEGIN --Column Expressions

SELECT FirstName + ' '+ LastName as 'Customer Name', Country FROM Customer; 

END

BEGIN --Tangent Naming convention

SELECT [Email] FROM Customer 

END
