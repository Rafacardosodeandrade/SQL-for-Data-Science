# 1.Question 1
# All of the questions in this quiz refer to the open source Chinook Database.
# Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.

# Using a subquery, find the names of all the tracks for the album "Californication".

SELECT 
Name 
,AlbumId
FROM Tracks
WHERE AlbumId IN (SELECT AlbumID FROM Albums WHERE Title = 'Californication')

#OUTPUT
+-------------------+---------+
| Name              | AlbumId |
+-------------------+---------+
| Around The World  |     195 |
| Parallel Universe |     195 |
| Scar Tissue       |     195 |
| Otherside         |     195 |
| Get On Top        |     195 |
| Californication   |     195 |
| Easily            |     195 |
| Porcelain         |     195 |
| Emit Remmus       |     195 |
| I Like Dirt       |     195 |
+-------------------+---------+
(Output limit exceeded, 10 of 15 total rows shown)


# 2.Question 2
# All of the questions in this quiz refer to the open source Chinook Database. 
# Please familiarize yourself with the ER diagram in order to familiarize yourself with the table and column names in order to write accurate queries and get the appropriate answers.

// Find the total number of invoices for each customer along with the customers full name, city and email.

SELECT 
FirstName
,LastName
,City
,Email
, COUNT (I.CustomerId) AS Invoices
FROM Customers C INNER JOIN Invoices I
ON C.CustomerId = I.CustomerId
GROUP BY C.CustomerId

+-----------+-------------+---------------------+--------------------------+----------+
| FirstName | LastName    | City                | Email                    | Invoices |
+-----------+-------------+---------------------+--------------------------+----------+
| Luís      | Gonçalves   | São José dos Campos | luisg@embraer.com.br     |        7 |
| Leonie    | Köhler      | Stuttgart           | leonekohler@surfeu.de    |        7 |
| François  | Tremblay    | Montréal            | ftremblay@gmail.com      |        7 |
| Bjørn     | Hansen      | Oslo                | bjorn.hansen@yahoo.no    |        7 |
| František | Wichterlová | Prague              | frantisekw@jetbrains.com |        7 |
| Helena    | Holý        | Prague              | hholy@gmail.com          |        7 |
| Astrid    | Gruber      | Vienne              | astrid.gruber@apple.at   |        7 |
| Daan      | Peeters     | Brussels            | daan_peeters@apple.be    |        7 |
| Kara      | Nielsen     | Copenhagen          | kara.nielsen@jubii.dk    |        7 |
| Eduardo   | Martins     | São Paulo           | eduardo@woodstock.com.br |        7 |
+-----------+-------------+---------------------+--------------------------+----------+
(Output limit exceeded, 10 of 59 total rows shown)

