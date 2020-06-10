#What is the pay type for all the job codes that start with '03'? 
The code has been started for you, but you will need to program the fourth and fifth lines yourself before running the query.

SELECT
job_code,
pay_type,
FROM salary_range_by_job_classification
WHERE job_code LIKE '03%'

#RESULT:
+----------+----------+
| Job_Code | Pay_Type |
+----------+----------+
| 0380     | B        |
| 0381     | B        |
| 0382     | B        |
| 0390     | B        |
| 0395     | B        |
| 0380     | B        |
| 0381     | B        |
| 0382     | B        |
+----------+----------+
