-- 1. Pull a list of customer ids with the customer’s full name, and address, along with combining their city and country together.
-- Be sure to make a space in between these two and make it UPPER CASE.

SELECT CustomerId,
       FirstName || " " || LastName AS FullName,
       Address,
       UPPER(City || " " || Country) AS City_Country
FROM Customers

-- OUTPUT
+------------+-----------------------+--------------------------------------+----------------------------+
| CustomerId | FullName              | Address                              | City_Country               |
+------------+-----------------------+--------------------------------------+----------------------------+
|          1 | Luís Gonçalves        | Av. Brigadeiro Faria Lima, 2170      | SãO JOSé DOS CAMPOS BRAZIL |
|          2 | Leonie Köhler         | Theodor-Heuss-Straße 34              | STUTTGART GERMANY          |
|          3 | François Tremblay     | 1498 rue Bélanger                    | MONTRéAL CANADA            |
|          4 | Bjørn Hansen          | Ullevålsveien 14                     | OSLO NORWAY                |
|          5 | František Wichterlová | Klanova 9/506                        | PRAGUE CZECH REPUBLIC      |
|          6 | Helena Holý           | Rilská 3174/6                        | PRAGUE CZECH REPUBLIC      |
|          7 | Astrid Gruber         | Rotenturmstraße 4, 1010 Innere Stadt | VIENNE AUSTRIA             |
|          8 | Daan Peeters          | Grétrystraat 63                      | BRUSSELS BELGIUM           |
|          9 | Kara Nielsen          | Sønder Boulevard 51                  | COPENHAGEN DENMARK         |
|         10 | Eduardo Martins       | Rua Dr. Falcão Filho, 155            | SãO PAULO BRAZIL           |
|         11 | Alexandre Rocha       | Av. Paulista, 2022                   | SãO PAULO BRAZIL           |
|         12 | Roberto Almeida       | Praça Pio X, 119                     | RIO DE JANEIRO BRAZIL      |
|         13 | Fernanda Ramos        | Qe 7 Bloco G                         | BRASíLIA BRAZIL            |
|         14 | Mark Philips          | 8210 111 ST NW                       | EDMONTON CANADA            |
|         15 | Jennifer Peterson     | 700 W Pender Street                  | VANCOUVER CANADA           |
|         16 | Frank Harris          | 1600 Amphitheatre Parkway            | MOUNTAIN VIEW USA          |
|         17 | Jack Smith            | 1 Microsoft Way                      | REDMOND USA                |
|         18 | Michelle Brooks       | 627 Broadway                         | NEW YORK USA               |
|         19 | Tim Goyer             | 1 Infinite Loop                      | CUPERTINO USA              |
|         20 | Dan Miller            | 541 Del Medio Avenue                 | MOUNTAIN VIEW USA          |
|         21 | Kathy Chase           | 801 W 4th Street                     | RENO USA                   |
|         22 | Heather Leacock       | 120 S Orange Ave                     | ORLANDO USA                |
|         23 | John Gordon           | 69 Salem Street                      | BOSTON USA                 |
|         24 | Frank Ralston         | 162 E Superior Street                | CHICAGO USA                |
|         25 | Victor Stevens        | 319 N. Frances Street                | MADISON USA                |
+------------+-----------------------+--------------------------------------+----------------------------+
-- (Output limit exceeded, 25 of 59 total rows shown)

-- 2.Create a new employee user id by combining the first 4 letters of the employee’s first name with the first 2 letters of the employee’s last name.
-- Make the new field lower case and pull each individual step to show your work.

