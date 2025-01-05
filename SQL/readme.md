# SQL Queries for Churn Analysis Project

This folder contains all the SQL queries and scripts used in the **Churn Analysis** project. The SQL scripts were instrumental in preparing the data for analysis in Power BI, creating views for segmentation, and extracting insights for predictive modeling. Below is an overview of the SQL work done in this project:

## **Key Objectives**
- To preprocess and transform the raw churn data for better usability in Power BI.
- To create specific SQL views for segmenting customers based on their statuses:
  - `vw_ChurnData`: Focused on customers who have either "Churned" or "Stayed."
  - `vw_JoinData`: Focused on customers who have "Joined."
- To extract customer details for predictive modeling and visualization.

---

## **SQL Queries Overview**
1. **Data Preprocessing**:
   - Transforming the `prod_Churn` table by adding calculated columns such as `Churn Status`.
   - Categorizing customers based on `Age Group`, `Tenure Group`, and `Monthly Charge Range`.

2. **View Creation**:
   - **`vw_ChurnData`**: Filters customers with statuses "Churned" or "Stayed".
   - **`vw_JoinData`**: Extracts customers with status "Joined" to analyze new customer behavior.

3. **Data Segmentation**:
   - Segmented data based on geographical regions, services used, payment methods, and contract types.
   - Aggregated data for insights into churn reasons and predictive modeling.

4. **Outputs**:
   - Provided clean datasets for:
     - Power BI visualizations.
     - Machine learning models for churn prediction.

---

## **Usage**
- **`SQL_Queries.sql`**: Contains all SQL queries used in the project in a structured and documented manner.
- To run these queries:
  1. Ensure the database has the `prod_Churn` table and other required datasets.
  2. Execute the queries in order as provided in the `SQL_Queries.sql` file.

---

## **Folder Structure**
```plaintext
SQL/
├── README.md          # This documentation file
├── SQL_Queries.sql    # Consolidated SQL queries used in the project

