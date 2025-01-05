-- ========================================
-- 1. Data Preprocessing
-- ========================================

-- Add Churn Status Column
ALTER TABLE prod_Churn
ADD Churn_Status INT;
UPDATE prod_Churn
SET Churn_Status = CASE 
    WHEN Customer_Status = 'Churned' THEN 1 
    ELSE 0 
END;

-- Monthly Charge Range
ALTER TABLE prod_Churn
ADD Monthly_Charge_Range NVARCHAR(50);
UPDATE prod_Churn
SET Monthly_Charge_Range = CASE
    WHEN Monthly_Charge < 20 THEN '< 20'
    WHEN Monthly_Charge < 50 THEN '20-50'
    WHEN Monthly_Charge < 100 THEN '50-100'
    ELSE '> 100'
END;

-- ========================================
-- 2. Create Age Group Reference Table
-- ========================================
CREATE TABLE mapping_AgeGrp AS
SELECT DISTINCT Age,
    CASE 
        WHEN Age < 20 THEN '< 20'
        WHEN Age < 36 THEN '20 - 35'
        WHEN Age < 51 THEN '36 - 50'
        ELSE '> 50'
    END AS Age_Group,
    CASE 
        WHEN Age < 20 THEN 1
        WHEN Age < 36 THEN 2
        WHEN Age < 51 THEN 3
        ELSE 4
    END AS AgeGrpSorting
FROM prod_Churn;

-- ========================================
-- 3. Create Tenure Group Reference Table
-- ========================================
CREATE TABLE mapping_TenureGrp AS
SELECT DISTINCT Tenure_in_Months,
    CASE 
        WHEN Tenure_in_Months < 6 THEN '< 6 Months'
        WHEN Tenure_in_Months < 12 THEN '6-12 Months'
        WHEN Tenure_in_Months < 18 THEN '12-18 Months'
        WHEN Tenure_in_Months < 24 THEN '18-24 Months'
        ELSE '>= 24 Months'
    END AS Tenure_Group,
    CASE 
        WHEN Tenure_in_Months < 6 THEN 1
        WHEN Tenure_in_Months < 12 THEN 2
        WHEN Tenure_in_Months < 18 THEN 3
        WHEN Tenure_in_Months < 24 THEN 4
        ELSE 5
    END AS TenureGrpSorting
FROM prod_Churn;

-- ========================================
-- 4. Unpivot Services Data
-- ========================================
SELECT Customer_ID,
    UNPIVOT (Status FOR Services IN (Internet_Service, Phone_Service, Device_Protection_Plan)) AS UnpivotedData
INTO prod_Services
FROM prod_Churn;

-- ========================================
-- 5. Create Views
-- ========================================

-- vw_ChurnData: Filter for 'Churned' and 'Stayed'
CREATE VIEW vw_ChurnData AS
SELECT *
FROM prod_Churn
WHERE Customer_Status IN ('Churned', 'Stayed');

-- vw_JoinData: Filter for 'Joined'
CREATE VIEW vw_JoinData AS
SELECT *
FROM prod_Churn
WHERE Customer_Status = 'Joined';

-- ========================================
-- 6. Prediction Data Preparation
-- ========================================
-- Extract prediction-related columns
SELECT Customer_ID, Monthly_Charge, Total_Charges, Total_Refunds, Number_of_Referrals
FROM prod_Churn
WHERE Customer_Status = 'Joined';

