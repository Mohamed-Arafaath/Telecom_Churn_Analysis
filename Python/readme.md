# Python Code for Churn Analysis Project

This folder contains all the Python scripts and related files used for predictive analysis in the **Churn Analysis Project**. The scripts leverage libraries such as Pandas, NumPy, and Scikit-learn to preprocess data, train machine learning models, and generate predictions for customer churn.

---

## **Overview**

1. **Prediction_Data.xlsx**:
   - Source dataset containing customer details for prediction, including monthly charges, total charges, refunds, and referrals.
   - Preprocessed and used as input for the machine learning models.

2. **Predictions_output.csv**:
   - Output file containing predicted churn probabilities and classifications for customers.

3. **Python Code**:
   - Contains the script for:
     - Preprocessing the data.
     - Training and evaluating the machine learning models.
     - Generating predictions for churn.

---

## **Key Steps in Python Code**

### **1. Data Preprocessing**
- Loaded `Prediction_Data.xlsx` for cleaning and preparation.
- Handled missing values and scaled numerical columns.
- Encoded categorical features to ensure compatibility with machine learning algorithms.

### **2. Model Training**
- Utilized a Gradient Boosting Classifier to predict churn probabilities.
- Split data into training and testing sets for model evaluation.
- Performed hyperparameter tuning to improve model performance.

### **3. Predictions**
- Generated churn predictions based on customer data.
- Exported results to `Predictions_output.csv` for further analysis in Power BI.

---

## **How to Use**
1. Place `Prediction_Data.xlsx` in the folder.
2. Run the Python script (`churn_prediction.py`) using Python 3.8 or higher:
   ```bash
   python churn_prediction.py

