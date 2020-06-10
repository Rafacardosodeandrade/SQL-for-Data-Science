#Write and run a query, with no starter code or hints to answer this question: 
#What is the step for Union Code 990 and a Set ID of SFMTA or COMMN?

SELECT
step,
union_code,
setid
FROM salary_range_by_job_classification
WHERE union_code IN ('990')
AND setid IN ('SFMTA', 'COMMN') 

#RESULT:

+------+------------+-------+
| Step | Union_Code | SetID |
+------+------------+-------+
| 1    | 990        | COMMN |
+------+------------+-------+
