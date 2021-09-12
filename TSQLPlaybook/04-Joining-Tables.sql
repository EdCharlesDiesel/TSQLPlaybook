
BEGIN --Inner Join

SELECT Invoice.InvoiceId, InvoiceDate, UnitPrice, Quantity 
FROM Invoice
inner Join  InvoiceLine
on InvoiceLine.InvoiceId = Invoice.InvoiceId ; 

END

BEGIN --Subqueries

 SELECT * ,
 (select COUNT(1) FROM Album
  WHERE Album.ArtistId = Artist.ArtistId
  ) AS AlbumCount
FROM Artist

order by AlbumCount
END

BEGIN --Left Right Joins

SELECT [Name] ,Title 
FROM Artist left Join Album
on Album.ArtistId = Artist.ArtistId


SELECT [Name] ,Title 
FROM Artist right Join Album
on Album.ArtistId = Artist.ArtistId

END

BEGIN --Full join
SELECT [Name] ,Title 
FROM Artist full Join Album
on Album.ArtistId = Artist.ArtistId
END