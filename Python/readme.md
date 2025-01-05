# Python Code for Churn Analysis Project

This folder contains all the Python scripts and related files used for predictive analysis in the **Churn Analysis Project**. The scripts leverage libraries such as Pandas, NumPy, and Scikit-learn to preprocess data, train machine learning models, and generate predictions for customer churn.

## **Key Objectives**

- To preprocess the input customer data (`Prediction_Data.xlsx`) for predictive modeling by cleaning and encoding the data.
- To develop a machine learning model that predicts customer churn probabilities and classifications.
- To generate actionable insights from predictions for integration into Power BI dashboards.
- To save the prediction results (`Predictions_output.csv`) for further analysis and visualization.
- To create a reusable and modular Python script (`churn_prediction.py`) for predictive analytics.

---

## **Python Code Overview**

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
- Utilized a **Random Forest Classifier** to predict churn probabilities.
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

---

**Prediction_Data.xlsx Analysis**  
- Contains customer features such as:  
  - Monthly Charges, Total Charges, Total Refunds, Number of Referrals.  
- Includes key identifiers like `Customer_ID`.  
- Used to generate predictions with the trained model.

**Predictions_output.csv Analysis**  
- Contains the following columns:  
  - **Customer_ID**: Unique identifier for each customer.  
  - **Predicted_Churn_Probability**: Probability score (0 to 1) indicating the likelihood of churn.  
  - **Predicted_Churn**: Binary classification (0 for non-churn, 1 for churn).  

**Example Output:**

| Customer_ID | Predicted_Churn_Probability | Predicted_Churn |
|-------------|-----------------------------|-----------------|
| 11098-MAD   | 0.87                        | 1               |
| 11227-UTT   | 0.15                        | 0               |

---

**How to Use**  
1. Place `Prediction_Data.xlsx` in the folder.  
2. Run the Python script (`churn_prediction.py`) using Python 3.8 or higher:
    ```bash
    python churn_prediction.py
    ```
3. The output file `Predictions_output.csv` will be generated in the same directory.

---

**Dependencies**  
Install the required Python libraries before running the script:
```bash
pip install pandas numpy scikit-learn openpyxl
```

---

**Folder Structure**
```plaintext
Python/
├── README.md              # Documentation file
├── churn_prediction.py    # Python script for prediction
├── Prediction_Data.xlsx   # Input data
├── Predictions_output.csv # Predicted churn data


