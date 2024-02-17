# Credit Card Approval Prediction

This repository contains a machine learning project aimed at predicting credit card approval based on customer information. The prediction model aids in estimating the applicant's level of risk, assisting financial institutions in making informed decisions about credit card applications.

![Untitled](https://github.com/Kiranpreetsingh/Data_science/assets/55728235/cadaacb4-371c-4848-995d-687727020f03)

## Background

Banks prioritize strategic decision-making regarding credit card approval, and the use of machine learning approaches enhances the quality of credit judgments. Incorporating various customer attributes, such as gender, income, education, and employment history, enables accurate prediction of credit card approval or rejection.

## Dataset

The dataset comprises two files:

- **Credit_Card.csv**: Contains customer information, including gender, car ownership, property ownership, income details, education level, marital status, housing type, employment history, contact information, occupation, and family size.
- **Credit_card_label.csv**: Provides credit card approval labels corresponding to customer IDs.

### Features

1. `Ind_ID`: Client ID
2. `Gender`: Gender information
3. `Car_owner`: Car ownership status
4. `Propert_owner`: Property ownership status
5. `Children`: Count of children
6. `Annual_income`: Annual income
7. `Type_Income`: Income type
8. `Education`: Education level
9. `Marital_status`: Marital status
10. `Housing_type`: Housing style
11. `Birthday_count`: Age of the applicant (negative values indicate the number of days from the current date)
12. `Employed_days`: Duration of employment (negative values indicate unemployed)
13. `Mobile_phone`: Presence of a mobile phone
14. `Work_phone`: Presence of a work phone
15. `Phone`: Presence of any phone number
16. `EMAIL_ID`: Presence of an email ID
17. `Type_Occupation`: Occupation
18. `Family_Members`: Family size

### Labels

- `ID`: Client ID (same as `Ind_ID`)
- `Label`: Credit card approval status (0 for approved, 1 for rejected)

## Approach

The project involves the following steps:

1. Data preprocessing: Handling missing values, encoding categorical variables, and scaling numerical features.
2. Exploratory data analysis: Analyzing the distribution of features and their relationship with credit card approval.
3. Model training: Building machine learning models using scikit-learn to predict credit card approval.
4. Model evaluation: Assessing model performance using appropriate evaluation metrics.
5. Deployment: Deploying the trained model for real-time prediction of credit card approval.

## Technologies Used

[![Python](https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg)](https://www.python.org/)
[![Jupyter Notebook](https://upload.wikimedia.org/wikipedia/commons/3/38/Jupyter_logo.svg)](https://jupyter.org/)
[![scikit-learn](https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg)](https://scikit-learn.org/)


## Project Structure

The project repository includes the following files:

- `Credit_Card.csv`: Customer information dataset
- `Credit_card_label.csv`: Credit card approval labels dataset
- `Credit_card_without_nan.csv`: File without the missing values
- `Cap_odin_project_1.ipynb`: Jupyter Notebook containing the project code
- `Project_1_capstone_Mysql`: Mysql file for queries
- `README.md`: Project documentation and overview

## Usage

1. Clone the repository
2. Install the required dependencies
3. Open and run the `Cap_odin_project_1.ipynb` notebook in Jupyter Notebook.

## Contributors

- [Kiranpreet Singh](https://github.com/Kiranpreetsingh)

Feel free to contribute to the project by opening issues or pull requests.



