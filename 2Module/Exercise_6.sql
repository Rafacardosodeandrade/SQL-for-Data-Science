#Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0? 
#The code has been started for you, but you will need to program the third through the sixth lines yourself 
#before running the query.

SELECT
grade,
eff_date,
sal_end_date
FROM salary_range_by_job_classification
WHERE grade LIKE 'Q90H0'

#RESULT:
+-------+------------------------+------------------------+
| Grade | Eff_Date               | Sal_End_Date           |
+-------+------------------------+------------------------+
| Q90H0 | 12/26/2009 12:00:00 AM | 06/30/2010 12:00:00 AM |
+-------+------------------------+------------------------+