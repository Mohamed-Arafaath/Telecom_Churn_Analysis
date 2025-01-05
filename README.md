# 📊 Telecom Churn Analysis 
![Vodafone Logo](Dataset/BankOfAmerica_logo.png)

## Overview
The **Telecom Churn Analysis** project is an end-to-end implementation for analyzing customer churn patterns, identifying reasons for churn, and predicting potential churners using **SQL**, **Python**, and **Power BI**. The project integrates data engineering, machine learning, and business intelligence to provide actionable insights for improving customer retention strategies.

---

## 📁 Repository Structure

```plaintext
Telecom_Churn_Analysis/
├── BI/                                      # Business Intelligence (Power BI Dashboard)
│   ├── Dashboards/
│   │   ├── Summary_Dashboard.png            # Screenshot of Summary Dashboard
│   │   ├── Churn_Reasons_Dashboard.png      # Screenshot of Churn Reasons Dashboard
│   │   ├── Churn_Prediction_Dashboard.png   # Screenshot of Churn Prediction Dashboard
│   ├── Churn_Analysis.pbix                  # Power BI file
│   ├── Power_Query_Transformations_and_DAX_Measures.md # Power Query and DAX documentation
│   ├── README.md                            # BI folder documentation
├── Dataset/
│   ├── Customer_Data.csv                    # Source dataset used for the analysis
│   ├── README.md                            # Documentation for the dataset
├── Python/                                  # Predictive Analysis using Python
│   ├── Prediction_Data.xlsx                 # Input data for predictions
│   ├── Predictions_output.csv               # Output of churn predictions
│   ├── churn_prediction.ipynb               # Python script for predictions
│   ├── README.md                            # Python folder documentation
├── SQL/                                     # SQL Queries and Data Preparation
│   ├── SQL_Queries.sql                      # All SQL queries used in the project
│   ├── README.md                            # SQL folder documentation
├── README.md
```
---

## 🏆 Project Objectives

1. **Customer Churn Analysis**:
   - Understand the churn behavior of existing customers using historical data.
   - Identify high-risk customer segments for targeted retention strategies.

2. **Churn Prediction**:
   - Use machine learning models to predict churn for new customers and take proactive action.

3. **Business Insights**:
   - Develop an interactive **Power BI dashboard** for stakeholders to visualize churn metrics, reasons, and predictive insights.

4. **Integration Across Tools**:
   - Use **SQL** for data preparation and creating database views.
   - Use **Python** for predictive modeling and data analysis.
   - Use **Power BI** for interactive dashboards and visualizations.

---

## 🔧 Tools and Technologies

- **SQL**: For data preparation, transformations, and creating database views.
- **Python**: For machine learning-based churn prediction.
- **Power BI**: For creating interactive dashboards and visualizations.
- **DAX (Data Analysis Expressions)**: For advanced calculations in Power BI.
- **Power Query**: For data cleaning and preprocessing.

---

## 📊 Key Components

# Dataset

The **Dataset** folder contains the raw data used for analysis.

---

## **Customer_Data.csv**
This is the primary dataset used to populate the `prod_Churn` table in the database.

### **Key Features**
1. **Demographics**:
   - Age
   - Gender
   - Marital Status

2. **Account Details**:
   - Tenure
   - Monthly Charges
   - Total Charges

3. **Service Usage**:
   - Internet Service
   - Phone Service
   - Additional Services

4. **Churn Status**:
   - Identifies whether the customer has **"Churned," "Stayed,"** or **"Joined"**.

📂 **Refer to the [`Dataset/README.md`](./readme.md) for more details.**

---

### 1. **SQL**
The SQL folder contains queries for:
- Preprocessing churn data by adding calculated columns (e.g., Churn Status).
- Creating views:
  - **`vw_ChurnData`**: Focuses on existing customers with statuses "Churned" or "Stayed".
  - **`vw_JoinData`**: Focuses on joined customers with status "Joined".
- Segmenting data based on demographics, tenure, and service usage.

📂 **Refer to the [SQL/README.md](./SQL/readme.md) for more details.**

---

### 2. **Python**
The Python folder includes scripts for:
- Loading and preprocessing the `Prediction_Data.xlsx` file.
- Training a Gradient Boosting model to predict churn probabilities.
- Generating predictions saved in `Predictions_output.csv`.

📂 **Refer to the [Python/README.md](./Python/readme.md) for more details.**

---

### 3. **Power BI**
The BI folder houses the Power BI dashboard, which provides:
- **Summary Dashboard**: Analysis of churn for existing customers using `vw_ChurnData`.
- **Churn Reasons Dashboard**: Exploration of key drivers for churn.
- **Churn Prediction Dashboard**: Predictive analytics for joined customers using `vw_JoinData`.

📂 **Refer to the [BI/README.md](./BI/readme.md) for more details.**

---

## 🧮 Workflow Overview

1. **Data Preparation (SQL)**:
   - Clean and transform the raw churn data.
   - Create views for existing and joined customers (`vw_ChurnData`, `vw_JoinData`).

2. **Predictive Modeling (Python)**:
   - Use machine learning to predict churn probabilities.
   - Export the predictions for integration with Power BI.

3. **Visualization (Power BI)**:
   - Load SQL and Python outputs into Power BI.
   - Build interactive dashboards for analysis and prediction.

---

## 📈 Insights from the Project

- **Churn Trends**:
  - Higher churn rates observed among customers with shorter tenure (<6 months).
  - Demographic and geographic patterns reveal specific age groups and states with elevated churn rates.

- **Churn Reasons**:
  - Competitive offers and service issues are primary reasons for churn.
  - Customers with "Mailed Check" as a payment method show higher churn rates.

- **Predicted Churn**:
  - Identifies customers at high risk of churning, enabling businesses to take preemptive action.

---

## 🛠️ How to Use

### 1. Clone the Repository

~~~bash
git clone https://github.com/Mohamed-Arafaath/Telecom_Churn_Analysis.git
cd Telecom_Churn_Analysis
~~~

### 2. SQL
- Load the SQL queries in `SQL/SQL_Queries.sql` into your database.
- Ensure the views (`vw_ChurnData` and `vw_JoinData`) are created.

### 3. Python
- Install required Python libraries:
  ~~~bash
  pip install pandas numpy scikit-learn openpyxl
  ~~~
- Run `Python/churn_prediction.ipynb` to generate `Predictions_output.csv`.

### 4. Power BI
- Open `BI/Churn_Analysis.pbix` in Power BI Desktop.
- Refresh data sources to integrate the latest SQL and Python outputs.

---

## 🚀 Conclusion

The **Telecom Churn Analysis Project** is a comprehensive solution for understanding, analyzing, and predicting customer churn. By combining SQL, Python, and Power BI, this project demonstrates the power of integrated data analytics for driving actionable business insights.

---

## 📧 Contact

**Author**: [Mohamed Arafaath](https://www.linkedin.com/in/mohamed-arafaath/)  
**Email**: mohamed_arafaath@outlook.com  

---
