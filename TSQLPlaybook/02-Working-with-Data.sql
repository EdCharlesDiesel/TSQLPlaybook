
select * from users
BEGIN ---Insert data--

insert into Users(Email,  CreatedAt, FirstName, LastName, Bio )
values('test1@test.com',GETDATE(),'Khotso','Mokhethi','I am awesome');

select * from users
 

END

BEGIN --Bulk insert--

insert into Users(Email, FirstName, LastName)
select Email, FirstName,LastName
from Chinook.dbo.Customer 

END

BEGIN --Update data--

update Users set MoneySpent = 0.00
where Id = 1;
 

END

BEGIN --Update with criteria--

UPDATE Users set FirstName = 'Kagiso'
WHERE Id =  1;

END

BEGIN --Bulk update--

UPDATE Users set MoneySpent = 0.50
WHERE Id >=  10;

END

BEGIN --Delete--

DELETE from Users
WHERE Id =  1;

END

BEGIN --Bulk delete --

DELETE from Users
WHERE Id <=  10;

END
