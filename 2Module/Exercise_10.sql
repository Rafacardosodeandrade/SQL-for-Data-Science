#Write and run a query, with no starter code or hints to answer this question: 
#What is the Extended Step for Pay Types M, H, and D?

SELECT
Extended_Step,
Pay_Type
FROM salary_range_by_job_classification
WHERE Pay_type IN ('M','H','D')

#RESULT

+---------------+----------+
| Extended_Step | Pay_Type |
+---------------+----------+
| 0             | D        |
| 0             | D        |
| 0             | D        |
| 0             | M        |
| 0             | D        |
| 0             | D        |
| 0             | M        |
| 0             | H        |
| 0             | H        |
| 0             | H        |
| 0             | H        |
| 0             | H        |
| 0             | H        |
| 0             | H        |
| 0             | H        |
+---------------+----------+

