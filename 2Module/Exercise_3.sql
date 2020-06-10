#Excluding $0.00, what is the minimum bi-weekly high rate of pay (please include the dollar sign and decimal point in your answer)? 
The code has been started for you, but you will need to add onto the last line of code to get the correct answer.

SELECT
MIN(Biweekly_high_Rate)
FROM salary_range_by_job_classification
WHERE Biweekly_high_Rate > '0.00'