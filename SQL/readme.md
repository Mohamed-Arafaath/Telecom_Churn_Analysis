# SQL Queries for Telecom Churn Analysis Project

This folder contains all the SQL queries and scripts used in the **Telecom Churn Analysis** project. The SQL scripts were instrumental in preparing the data for analysis in Power BI, creating views for segmentation, and extracting insights for predictive modeling. These queries were executed on the **Customer_Data.csv** dataset, which is located in the [`Dataset`](../Dataset) folder.

---

## **Key Objectives**
- To preprocess and transform the raw churn data for better usability in Power BI.
- To create specific SQL views for segmenting customers based on their statuses:
  - **`vw_ChurnData`**: Focused on customers who have either "Churned" or "Stayed."
  - **`vw_JoinData`**: Focused on customers who have "Joined."
- To extract customer details for predictive modeling and visualization.

---

## **SQL Queries Overview**
1. **Dataset Used**:
   - The dataset **`Customer_Data.csv`** serves as the source file for populating the `prod_Churn` table in the database.
   - This dataset contains information such as:
     - Customer demographics (age, gender, marital status, etc.).
     - Account details (tenure, payment methods, contract types).
     - Service usage (internet, phone, and other services).
     - Churn-related statuses: "Churned," "Stayed," and "Joined."

2. **Data Preprocessing**:
   - Loaded **`Customer_Data.csv`** into the `prod_Churn` table.
   - Added calculated columns such as:
     - **`Churn Status`**: Binary indicator (`1` for churned, `0` for stayed).
     - **Age Group**, **Tenure Group**, and **Monthly Charge Range** for segmentation.

3. **View Creation**:
   - **`vw_ChurnData`**:
     - Filters customers with statuses "Churned" or "Stayed."
     - Provides clean data for analyzing existing customers' churn behavior.
   - **`vw_JoinData`**:
     - Extracts customers with status "Joined."
     - Focused on analyzing behavior and patterns of newly acquired customers.

4. **Data Segmentation**:
   - Segmented data based on:
     - Demographics: **Age Group**, **Marital Status**, **Gender**.
     - Account details: **Tenure Group**, **Monthly Charges**, **Payment Methods**, **Contract Types**.
     - Geographical regions and service usage.

5. **Outputs**:
   - Prepared datasets for:
     - Power BI visualizations (integrated in `BI/Churn_Analysis.pbix`).
     - Machine learning models (Python outputs integrated into dashboards).

---

## **How to Use**

### Prerequisites:
1. **Dataset**: Ensure the **`Customer_Data.csv`** file is available in the [`Dataset`](../Dataset) folder.
2. **Database Setup**:
   - Load the dataset into a relational database.
   - Create the `prod_Churn` table using the structure provided in the dataset's [`README.md`](../Dataset/readme.md).

### Execution Steps:
1. Run the SQL queries in the following order:
   - Preprocessing queries to clean and transform the data.
   - Queries for creating views:
     - **`vw_ChurnData`** for analyzing churn in existing customers.
     - **`vw_JoinData`** for predicting churn in new customers.
   - Segmentation and aggregation queries for detailed insights.
2. Verify the views are correctly created and ready for use in Power BI.

---

## **Folder Structure**

```plaintext
SQL/
├── readme.md          # This documentation file
├── SQL_Queries.sql    # Consolidated SQL queries used in the project
