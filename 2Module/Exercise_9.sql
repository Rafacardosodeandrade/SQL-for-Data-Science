#Write and run a query, with no starter code or hints to answer this question: 
What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?

SELECT Biweekly_High_Rate - Biweekly_Low_Rate
FROM salary_range_by_job_classification
WHERE Job_Code = '0170'

#RESULT
+----------------------------------------+
| Biweekly_High_Rate - Biweekly_Low_Rate |
+----------------------------------------+
|                                      0 |
+----------------------------------------+