-- Part 1: Yelp Dataset Profiling and Understanding

-- 1. Profile the data by finding the total number of records for each of the tables below:
-- 1.i 
SELECT COUNT(*) AS
TT_RECS_attribute 
FROM Attribute

-- OUTPUT
+-------------------+
| TT_RECS_attribute |
+-------------------+
|             10000 |
+-------------------+

-- 1.ii
SELECT COUNT(*) AS
TT_RECS_business
FROM business

--OUTPUT
+------------------+
| TT_RECS_business |
+------------------+
|            10000 |
+------------------+

-- 1.iii
SELECT COUNT(*) AS
TT_RECS_category
FROM category

--OUTPUT
+------------------+
| TT_RECS_category |
+------------------+
|            10000 |
+------------------+

-- 1.iv
SELECT COUNT(*) AS
TT_RECS_checkin
FROM checkin

--OUTPUT
+-----------------+
| TT_RECS_checkin |
+-----------------+
|           10000 |
+-----------------+

--1.v
SELECT COUNT(*) AS
TT_RECS_elite_years
FROM elite_years

--OUTPUT
+---------------------+
| TT_RECS_elite_years |
+---------------------+
|               10000 |
+---------------------+

--1.vi
SELECT COUNT(*) AS
TT_RECS_friend
FROM friend

--OUTPUT
+----------------+
| TT_RECS_friend |
+----------------+
|          10000 |
+----------------+

--1.vii
SELECT COUNT(*) AS
TT_RECS_hours
FROM hours

--OUTPUT
+---------------+
| TT_RECS_hours |
+---------------+
|         10000 |
+---------------+

--1.viii
SELECT COUNT(*) AS
TT_RECS_photo
FROM photo

--OUTPUT
+---------------+
| TT_RECS_photo |
+---------------+
|         10000 |
+---------------+

--1.ix
SELECT COUNT(*) AS
TT_RECS_review
FROM review

--OUTPUT
+----------------+
| TT_RECS_review |
+----------------+
|          10000 |
+----------------+

--1.x
SELECT COUNT(*) AS
TT_RECS_tip
FROM tip

--OUTPUT
+-------------+
| TT_RECS_tip |
+-------------+
|       10000 |
+-------------+

--1.xi
SELECT COUNT(*) AS
TT_RECS_user
FROM user

--OUTPUT
+--------------+
| TT_RECS_user |
+--------------+
|        10000 |
+--------------+


-- 2. Find the total distinct records by either the foreign key or primary key for each table.
-- If two foreign keys are listed in the table, please specify which foreign key.

--2.i
SELECT  COUNT (distinct id) AS       
DISTINCT_RECS_business
FROM business

--OUTPUT
+------------------------+
| DISTINCT_RECS_business |
+------------------------+
|                  10000 |
+------------------------+

--2.ii 
SELECT COUNT (distinct business_id) AS
DISTINCT_RECS_hours
FROM hours

--OUTPUT
+---------------------+
| DISTINCT_RECS_hours |
+---------------------+
|                1562 |
+---------------------+

--2.iii
SELECT  COUNT (distinct business_id) AS
DISTINCT_RECS_category
FROM category

--OUTPUT
+------------------------+
| DISTINCT_RECS_category |
+------------------------+
|                   2643 |
+------------------------+

--2.iv
SELECT  COUNT (distinct business_id) AS
DISTINCT_RECS_attribute
FROM attribute

--OUTPUT
+-------------------------+
| DISTINCT_RECS_attribute |
+-------------------------+
|                    1115 |
+-------------------------+

--2.v
SELECT  COUNT (distinct id) AS
DISTINCT_RECS_id
FROM review

--OUTPUT
+----------------------+
| DISTINCT_RECS_id     |
+----------------------+
|                10000 |
+----------------------+

SELECT  COUNT (distinct business_id) AS
DISTINCT_RECS_business_id
FROM review

--OUTPUT
+---------------------------+
| DISTINCT_RECS_business_id |
+---------------------------+
|                      8090 |
+---------------------------+

SELECT  COUNT (distinct user_id) AS
DISTINCT_RECS_user_id
FROM review

--OUTPUT
+-----------------------+
| DISTINCT_RECS_user_id |
+-----------------------+
|                  9581 |
+-----------------------+

--2.vi
SELECT  COUNT (distinct business_id) AS
DISTINCT_RECS_checkin
FROM checkin

--OUTPUT
+-----------------------+
| DISTINCT_RECS_checkin |
+-----------------------+
|                   493 |
+-----------------------+

--2.vii
SELECT  COUNT (distinct id) AS
DISTINCT_RECS_id
FROM photo

--OUTPUT
+------------------+
| DISTINCT_RECS_id |
+------------------+
|            10000 |
+------------------+

SELECT  COUNT (distinct business_id) AS
DISTINCT_RECS_business_id
FROM photo

-- OUTPUT
+---------------------------+
| DISTINCT_RECS_business_id |
+---------------------------+
|                      6493 |
+---------------------------+

--2.viii
SELECT  COUNT (distinct user_id) AS
DISTINCT_RECS_user_tip
FROM tip

--OUTPUT
+------------------------+
| DISTINCT_RECS_user_tip |
+------------------------+
|                    537 |
+------------------------+

SELECT  COUNT (distinct business_id) AS
DISTINCT_RECS_business_id
FROM tip

--OUTPUT
+---------------------------+
| DISTINCT_RECS_business_id |
+---------------------------+
|                      3979 |
+---------------------------+

--2.ix 
SELECT  COUNT (distinct id) AS
DISTINCT_RECS_id
FROM user

--OUTPUT
+--------------------+
| DISTINCT_RECS_id   |
+--------------------+
|              10000 |
+--------------------+

--2.x
SELECT  COUNT (distinct user_id) AS
DISTINCT_RECS_user_id
FROM friend

--OUTPUT
+-----------------------+
| DISTINCT_RECS_user_id |
+-----------------------+
|                    11 |
+-----------------------+

--2.xi
SELECT  COUNT (distinct user_id) AS
DISTINCT_RECS_user_id
FROM elite_years

--OUTPUT
+-----------------------+
| DISTINCT_RECS_user_id |
+-----------------------+
|                  2780 |
+-----------------------+

-- 3. Are there any columns with null values in the Users table? Indicate "yes," or "no."

	Answer: 
	
	
	SQL code used to arrive at answer:
	
SELECT COUNT (*)
FROM user
WHERE id is null
    OR name is null
    OR review_count is null
    OR  yelping_since is null
    OR useful is null
    OR funny is null
    OR cool is null
    OR fans is null
    OR average_stars is null
    OR compliment_hot is null
    OR compliment_more is null
    OR compliment_profile is null
    OR compliment_cute is null
    OR compliment_list is null
    OR compliment_note is null
    OR compliment_plain is null
    OR compliment_cool is null
    OR compliment_funny is null
    OR compliment_writer is null
    OR compliment_photos is null

--OUTPUT
+-----------+
| COUNT (*) |
+-----------+
|         0 |
+-----------+

-- 4. For each table and column listed below, display the smallest (minimum), 
-- largest (maximum), and average (mean) value for the following fields:

--i. Table: Review, Column: Stars
	
		min: 1		max: 5		avg: 3.7082

SELECT  
  MIN(stars), 
  MAX(stars), 
  AVG(stars)
  FROM review

--ii. Table: Business, Column: Stars
	
		min: 1		max: 5		avg: 3.6549 

SELECT  
  MIN(stars), 
  MAX(stars), 
  AVG(stars)
  FROM business

--iii. Table: Tip, Column: Likes
	
		min: 0 		max: 2		avg: 0.0144

SELECT  
  MIN(likes), 
  MAX(likes), 
  AVG(likes)
  FROM tip

--iv. Table: Checkin, Column: Count

        min: 1		max: 53		avg: 1.9414

SELECT  
  MIN(count), 
  MAX(count), 
  AVG(count)
  FROM checkin

--v. Table: User, Column: Review_count
	
		min: 0 		max: 2000	avg: 24.2995

SELECT  
  MIN(review_count), 
  MAX(review_count), 
  AVG(review_count)
  FROM user

--5. List the cities with the most reviews in descending order:

SELECT  
  city,
  SUM (review_count) AS Number_of_reviews
  FROM business
  GROUP BY city
  ORDER BY Number_of_reviews DESC

  --OUTPUT
+-----------------+-------------------+
| city            | Number_of_reviews |
+-----------------+-------------------+
| Las Vegas       |             82854 |
| Phoenix         |             34503 |
| Toronto         |             24113 |
| Scottsdale      |             20614 |
| Charlotte       |             12523 |
| Henderson       |             10871 |
| Tempe           |             10504 |
| Pittsburgh      |              9798 |
| Montréal        |              9448 |
| Chandler        |              8112 |
| Mesa            |              6875 |
| Gilbert         |              6380 |
| Cleveland       |              5593 |
| Madison         |              5265 |
| Glendale        |              4406 |
| Mississauga     |              3814 |
| Edinburgh       |              2792 |
| Peoria          |              2624 |
| North Las Vegas |              2438 |
| Markham         |              2352 |
| Champaign       |              2029 |
| Stuttgart       |              1849 |
| Surprise        |              1520 |
| Lakewood        |              1465 |
| Goodyear        |              1155 |
+-----------------+-------------------+
(Output limit exceeded, 25 of 362 total rows shown)

--6. Find the distribution of star ratings to the business in the following cities:

--i. Avon

--SQL code used to arrive at answer:
SELECT 
  SUM(review_count) AS numbers, 
  stars
  FROM business
  WHERE city = 'Avon'
  GROUP BY stars

--Copy and Paste the Resulting Table Below (2 columns – star rating and count):
+---------+-------+
| numbers | stars |
+---------+-------+
|      10 |   1.5 |
|       6 |   2.5 |
|      88 |   3.5 |
|      21 |   4.0 |
|      31 |   4.5 |
|       3 |   5.0 |
+---------+-------+

--7. Find the top 3 users based on their total number of reviews:
		
--	SQL code used to arrive at answer:
SELECT 
  review_count,  
  name
  FROM user
  ORDER BY review_count DESC
  LIMIT 3

--	Copy and Paste the Result Below:
+--------------+--------+
| review_count | name   |
+--------------+--------+
|         2000 | Gerald |
|         1629 | Sara   |
|         1339 | Yuri   |
+--------------+--------+

--8.Does posing more reviews correlate with more fans?

--Please explain your findings and interpretation of the results:
--As table below show that posing more reviews does not correlate with more fans. The proof is YURI that have 3rd position in number of reviews, but almost last position in the considering the number of fans.

	
SELECT 
    name
    review_count,
    fans
    FROM user
    ORDER BY fans DESC

--OUTPUT
+--------------+------+
| review_count | fans |
+--------------+------+
| Amy          |  503 |
| Mimi         |  497 |
| Harald       |  311 |
| Gerald       |  253 |
| Christine    |  173 |
| Lisa         |  159 |
| Cat          |  133 |
| William      |  126 |
| Fran         |  124 |
| Lissa        |  120 |
| Mark         |  115 |
| Tiffany      |  111 |
| bernice      |  105 |
| Roanna       |  104 |
| Angela       |  101 |
| .Hon         |  101 |
| Ben          |   96 |
| Linda        |   89 |
| Christina    |   85 |
| Jessica      |   84 |
| Greg         |   81 |
| Nieves       |   80 |
| Sui          |   78 |
| Yuri         |   76 |
| Nicole       |   73 |
+--------------+------+
(Output limit exceeded, 25 of 10000 total rows shown)
	
--9


