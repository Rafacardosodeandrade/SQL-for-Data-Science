#Write and run a query, with no starter code to answer this question: 
#What Step are Job Codes 0110-0400? Hint: there are 6 lines to run this query.

SELECT
Step,
Job_Code
FROM salary_range_by_job_classification
WHERE Job_Code BETWEEN '0110' 
AND '0400'

#RESULTS:
+------+----------+
| Step | Job_Code |
+------+----------+
| 1    | 0110     |
| 1    | 0111     |
| 1    | 0112     |
| 1    | 0114     |
| 1    | 0115     |
| 1    | 0116     |
| 1    | 0118     |
| 1    | 0119     |
| 1    | 0140     |
| 1    | 0150     |
| 1    | 0170     |
| 1    | 0180     |
| 1    | 0190     |
| 1    | 0380     |
| 1    | 0381     |
| 1    | 0382     |
| 1    | 0390     |
| 1    | 0395     |
| 1    | 0400     |
| 1    | 0140     |
| 1    | 0150     |
| 1    | 0380     |
| 1    | 0381     |
| 1    | 0382     |
+------+----------+

