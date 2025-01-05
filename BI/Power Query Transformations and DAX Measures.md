# Power Query Transformations and DAX Measures for Churn Analysis Project

This document details all the Power Query transformations and DAX measures implemented in the Power BI dashboard for the **Churn Analysis Project**. These steps were critical for preparing the data and building advanced visualizations to derive meaningful insights.

---

## **Power Query Transformations**

### **1. Data Preparation**
#### **Adding Churn Status**
- **Transformation**: Created a new column `Churn Status` in the `prod_Churn` table.
  ~~~powerquery
  Churn Status = if [Customer_Status] = "Churned" then 1 else 0
  ~~~
- **Purpose**: To create a binary indicator (1 for churned, 0 otherwise) for easier aggregation and analysis.

#### **Categorizing Monthly Charges**
- **Transformation**: Added a new column `Monthly Charge Range`.
  ~~~powerquery
  Monthly Charge Range = 
      if [Monthly_Charge] < 20 then "< 20" 
      else if [Monthly_Charge] < 50 then "20-50" 
      else if [Monthly_Charge] < 100 then "50-100" 
      else "> 100"
  ~~~
- **Purpose**: To group customers by their monthly charges for easier segmentation.

### **2. Reference Tables**
#### **Age Group Reference Table**
- **Steps**:
  - Kept only the `Age` column and removed duplicates.
  - Added an `Age Group` column:
    ~~~powerquery
    Age Group = 
        if [Age] < 20 then "< 20" 
        else if [Age] < 36 then "20 - 35" 
        else if [Age] < 51 then "36 - 50" 
        else "> 50"
    ~~~
  - Added `AgeGrpSorting` for ordering the age groups:
    ~~~powerquery
    AgeGrpSorting = 
        if [Age Group] = "< 20" then 1 
        else if [Age Group] = "20 - 35" then 2 
        else if [Age Group] = "36 - 50" then 3 
        else 4
    ~~~
- **Purpose**: To categorize customers into meaningful age groups for demographic analysis.

#### **Tenure Group Reference Table**
- **Steps**:
  - Kept only the `Tenure_in_Months` column and removed duplicates.
  - Added a `Tenure Group` column:
    ~~~powerquery
    Tenure Group = 
        if [Tenure_in_Months] < 6 then "< 6 Months" 
        else if [Tenure_in_Months] < 12 then "6-12 Months" 
        else if [Tenure_in_Months] < 18 then "12-18 Months" 
        else if [Tenure_in_Months] < 24 then "18-24 Months" 
        else ">= 24 Months"
    ~~~
  - Added `TenureGrpSorting` for ordering:
    ~~~powerquery
    TenureGrpSorting = 
        if [Tenure Group] = "< 6 Months" then 1 
        else if [Tenure Group] = "6-12 Months" then 2 
        else if [Tenure Group] = "12-18 Months" then 3 
        else if [Tenure Group] = "18-24 Months" then 4 
        else 5
    ~~~
- **Purpose**: To group customers by their tenure for account-based analysis.

### **3. Services Table Transformation**
- **Steps**:
  - Unpivoted service-related columns (e.g., Internet_Service, Phone_Service, etc.).
  - Renamed columns:
    - `Attribute` → `Services`
    - `Value` → `Status`
- **Purpose**: To restructure the data for easier service-related analysis.

---

## **DAX Measures**

### **Summary Page Measures**
1. **Total Customers**
   ~~~dax
   Total Customers = COUNT(prod_Churn[Customer_ID])
   ~~~
   - **Purpose**: To calculate the total number of customers.

2. **New Joiners**
   ~~~dax
   New Joiners = 
   CALCULATE(
       COUNT(prod_Churn[Customer_ID]), 
       prod_Churn[Customer_Status] = "Joined"
   )
   ~~~
   - **Purpose**: To count customers who recently joined.

3. **Total Churn**
   ~~~dax
   Total Churn = SUM(prod_Churn[Churn Status])
   ~~~
   - **Purpose**: To calculate the total number of churned customers.

4. **Churn Rate**
   ~~~dax
   Churn Rate = [Total Churn] / [Total Customers]
   ~~~
   - **Purpose**: To calculate the churn rate as a percentage.

---

### **Churn Prediction Page Measures**
1. **Count Predicted Churners**
   ~~~dax
   Count Predicted Churners = COUNT(Predictions[Customer_ID]) + 0
   ~~~
   - **Purpose**: To count the total number of predicted churners.

2. **Title Predicted Churners**
   ~~~dax
   Title Predicted Churners = 
   "COUNT OF PREDICTED CHURNERS : " & COUNT(Predictions[Customer_ID])
   ~~~
   - **Purpose**: To create a dynamic title for the churn prediction visual.

---

## **Purpose of Transformations and Measures**
These transformations and measures enable the Power BI dashboard to:
- Present a detailed analysis of churn demographics, account details, and service usage.
- Highlight key metrics such as churn rates and new joiners.
- Enable predictive analytics by integrating Python-generated predictions into the visualizations.
