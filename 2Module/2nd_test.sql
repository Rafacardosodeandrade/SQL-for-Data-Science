#1.Question 1
#All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT milliseconds
FROM Tracks
WHERE milliseconds >= 5000000

#RESULTS
+--------------+
| Milliseconds |
+--------------+
|      5286953 |
|      5088838 |
+--------------+

##########################

#2.Question 2
#All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Find all the invoices whose total is between $5 and $15 dollars.

SELECT Total
FROM Invoices
WHERE Total BETWEEN 5 and 15

+-------+
| Total |
+-------+
|  5.94 |
|  8.91 |
| 13.86 |
|  5.94 |
|  8.91 |
| 13.86 |
|  5.94 |
|  8.91 |
| 13.86 |
|  5.94 |
+-------+
(Output limit exceeded, 10 of 168 total rows shown)

#############

#3. All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

SELECT 
State
,Company
,FirstName
,LastName
FROM Customers
WHERE State IN ('RJ','DF','AB','BC','CA','WA','NY')

+-------+-----------------------+-----------+----------+
| State | Company               | FirstName | LastName |
+-------+-----------------------+-----------+----------+
| RJ    | Riotur                | Roberto   | Almeida  |
| DF    | None                  | Fernanda  | Ramos    |
| AB    | Telus                 | Mark      | Philips  |
| BC    | Rogers Canada         | Jennifer  | Peterson |
| CA    | Google Inc.           | Frank     | Harris   |
| WA    | Microsoft Corporation | Jack      | Smith    |
| NY    | None                  | Michelle  | Brooks   |
| CA    | Apple Inc.            | Tim       | Goyer    |
| CA    | None                  | Dan       | Miller   |
+-------+-----------------------+-----------+----------+

#4.Question 4
#All of the questions in this quiz refer to the open source Chinook Database.
#Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT 
InvoiceId
,InvoiceDate
,Total
,CustomerId 
FROM Invoices
WHERE CustomerId IN ('56','58')
AND Total BETWEEN '1.00' AND '5.00'

+-----------+---------------------+-------+------------+
| InvoiceId | InvoiceDate         | Total | CustomerId |
+-----------+---------------------+-------+------------+
|       119 | 2010-06-12 00:00:00 |  1.98 |         56 |
|       142 | 2010-09-14 00:00:00 |  3.96 |         56 |
|       337 | 2013-01-28 00:00:00 |  1.98 |         56 |
|       120 | 2010-06-12 00:00:00 |  1.98 |         58 |
|       315 | 2012-10-27 00:00:00 |  1.98 |         58 |
|       338 | 2013-01-29 00:00:00 |  3.96 |         58 |
|       412 | 2013-12-22 00:00:00 |  1.99 |         58 |
+-----------+---------------------+-------+------------+

#5.Question 5
#All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Find all the tracks whose name starts with 'All'.

SELECT 
Name
FROM Tracks
WHERE Name LIKE 'All%'

+----------------------------------------+
| Name                                   |
+----------------------------------------+
| All I Really Want                      |
| All For You                            |
| All Star                               |
| All My Life                            |
| All My Love                            |
| All Within My Hands                    |
| All or None                            |
| All Dead, All Dead                     |
| All the Best Cowboys Have Daddy Issues |
| All Because Of You                     |
+----------------------------------------+
(Output limit exceeded, 10 of 15 total rows shown)

#6.Question 6
#All of the questions in this quiz refer to the open source Chinook Database.
#Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Find all the customer emails that start with "J" and are from gmail.com.

SELECT
Email
FROM Customers
WHERE email LIKE 'j%@gmail.com'

+---------------------+
| Email               |
+---------------------+
| jubarnett@gmail.com |
+---------------------+

# 7.Question 7
# All of the questions in this quiz refer to the open source Chinook Database. 
# Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

# Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT 
InvoiceId 
,Total
, BillingCity
FROM Invoices
WHERE BillingCity IN ('Brasiília', 'Edmonton','Vancouver')
ORDER BY InvoiceId DESC

+-----------+-------+-------------+
| InvoiceId | Total | BillingCity |
+-----------+-------+-------------+
|       362 | 13.86 | Edmonton    |
|       351 |  1.98 | Edmonton    |
|       328 |  0.99 | Vancouver   |
|       276 |  5.94 | Vancouver   |
|       254 |  3.96 | Vancouver   |
|       231 |  1.98 | Vancouver   |
|       230 |  0.99 | Edmonton    |
|       178 |  5.94 | Edmonton    |
|       156 |  3.96 | Edmonton    |
|       133 |  1.98 | Edmonton    |
+-----------+-------+-------------+
(Output limit exceeded, 10 of 14 total rows shown)

# 8.Question 8
#All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT CustomerId, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC

+------------+--------+
| CustomerId | Orders |
+------------+--------+
|          1 |      7 |
|          2 |      7 |
|          3 |      7 |
|          4 |      7 |
|          5 |      7 |
|          6 |      7 |
|          7 |      7 |
|          8 |      7 |
|          9 |      7 |
|         10 |      7 |
+------------+--------+
(Output limit exceeded, 10 of 59 total rows shown)

#9.Question 9
#All of the questions in this quiz refer to the open source Chinook Database. Please familiarize yourself with the ER diagram to familiarize yourself with the table and column names to write accurate queries and get the appropriate answers.

#Run Query: Find the albums with 12 or more tracks.

SELECT AlbumId, COUNT (*) AS
More_than_12
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >=12

+---------+--------------+
| AlbumId | More_than_12 |
+---------+--------------+
|       5 |           15 |
|       6 |           13 |
|       7 |           12 |
|       8 |           14 |
|      10 |           14 |
|      11 |           12 |
|      12 |           12 |
|      14 |           13 |
|      18 |           17 |
|      21 |           18 |
+---------+--------------+
(Output limit exceeded, 10 of 158 total rows shown)







