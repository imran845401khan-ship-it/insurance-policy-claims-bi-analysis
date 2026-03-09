create database policy;

use policy;

show tables;

SELECT SUM(Premium)
FROM policy_sales_data;

SELECT 
YEAR(Claim_Date) AS Year,
MONTH(Claim_Date) AS Month,
SUM(Claim_Amount) AS Total_Claims
FROM claims_data
GROUP BY YEAR(Claim_Date), MONTH(Claim_Date);




SELECT 
p.Policy_Tenure,
SUM(c.Claim_Amount)/SUM(p.Premium) AS Claim_Ratio
FROM policy_sales_data p
JOIN claims_data c
ON p.Vehicle_ID = c.Vehicle_ID
GROUP BY p.Policy_Tenure;




