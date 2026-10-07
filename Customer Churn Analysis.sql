Create Database customer_churrn;

Use customer_churrn;

Show tables;

Select COUNT(*) FROM telco_churrn;

Select * from telco_churrn;

Select COUNT(customerid) from telco_churrn;

Select * from telco_churrn LIMIT 5;

Select churn, COUNT(*) as customer_count FROM telco_churrn GROUP BY churn;

Select COUNT(*) as total_customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_customers,
ROUND(SUM(CASE WHEN Churn = 'Yes'  THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM telco_churrn;
use customer_churrn;


Select Contract,churn, count(*) as customer_count
from telco_churrn GROUP BY  contract, churn
ORDER BY contract, churn;


SELECT 
    Contract,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM telco_churrn
GROUP BY Contract;



SELECT 
    tenure,
    Churn,
    COUNT(*) AS Customer_Count
FROM telco_churrn
GROUP BY tenure, Churn
ORDER BY tenure;



SELECT PaymentMethod, Churn, COUNT(*) AS Customer_Count
FROM telco_churrn
GROUP BY PaymentMethod, Churn
ORDER BY PaymentMethod, Churn;



SELECT 
    PaymentMethod,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS Churn_Rate
FROM telco_churrn
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;


SELECT 
    SeniorCitizen,
    Churn,
    COUNT(*) AS Customer_Count
FROM telco_churrn
GROUP BY SeniorCitizen, Churn
ORDER BY SeniorCitizen, Churn;




