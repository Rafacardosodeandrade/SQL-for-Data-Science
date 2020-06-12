# 1. How many albums does the artist Led Zeppelin have?

SELECT COUNT (AlbumId) as TotalAlbuns
FROM albums
WHERE ArtistId = (SELECT ArtistId FROM artists WHERE Name = 'Led Zeppelin')

#RESULT
+-------------+
| TotalAlbuns |
+-------------+
|          14 |
+-------------+

# 2. All of the questions in this quiz pull from the open source Chinook Database. 
# Please refer to the ER Diagram below and familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

SELECT n.Name, u.UnitPrice
FROM ((albums t INNER JOIN artists n
				ON t.Artistid = n.Artistid)
INNER JOIN tracks u ON t.Albumid = u.Albumid)
WHERE n.Name = 'Audioslave'

#RESULT
+------------+-----------+
| Name       | UnitPrice |
+------------+-----------+
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
| Audioslave |      0.99 |
+------------+-----------+
(Output limit exceeded, 25 of 40 total rows shown)

# 3.Find the first and last name of any customer who does not have an invoice. 
# Are there any customers returned from the query?
SELECT n.FirstName, n.LastName, i.Invoiceid
FROM customers n 
	LEFT JOIN invoices i ON n.Customerid = i.Customerid
WHERE InvoiceId IS NULL

#RESULT
+-----------+----------+-----------+
| FirstName | LastName | InvoiceId |
+-----------+----------+-----------+
+-----------+----------+-----------+
(Zero rows)

# 4.Find the total price for each album.
SELECT t.Title, SUM(p.UnitPrice)
FROM albums t
  INNER JOIN tracks p ON t.Albumid = p.Albumid
WHERE t.Title = 'Big Ones'
GROUP BY t.Title

#RESULT
+----------+------------------+
| Title    | SUM(p.UnitPrice) |
+----------+------------------+
| Big Ones |            14.85 |
+----------+------------------+ 

# 5. How many records are created when you apply a Cartesian join to the invoice and invoice items table?
SELECT a.invoiceid D
FROM invoices a CROSS JOIN invoice_items b;

#RESULT+---+
| D |
+---+
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
| 1 |
+---+
(Output limit exceeded, 25 of 922880 total rows shown)