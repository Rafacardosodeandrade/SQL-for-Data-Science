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