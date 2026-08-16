# Online_Retail_Sales_Analysis

# Online Retail Sales Analytics

An end-to-end Data Analytics project analyzing online retail sales using **Python, MySQL, and Power BI**.

The project focuses on understanding sales performance across orders, customers, products, time periods, and countries using valid/non-cancelled transactions.

---

## 📌 Project Overview

This project analyzes transaction-level online retail data to understand how the business is performing and identify the major drivers of sales.

The project follows an end-to-end analytics workflow:

**Python/Pandas → MySQL → Power BI**

- Python/Pandas was used for data cleaning and feature engineering.
- MySQL was used for business analysis and answering analytical questions.
- Power BI was used to create an interactive sales dashboard and visualize key findings.

The primary analysis focuses on **non-cancelled transactions** so that the sales KPIs represent valid sales activity.

---

## 🎯 Business Objective

The main objective of this project is to answer questions such as:

- How much total revenue was generated?
- How many orders were placed?
- What is the average order value?
- How does sales performance change over time?
- Which products generate the most revenue?
- Which products sell the most units?
- Which countries generate the most revenue?
- Which customers contribute the most revenue?
- Which customers place the most orders?

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and feature engineering |
| Pandas | Data manipulation and preparation |
| MySQL | SQL-based business analysis |
| Power BI | Dashboard development and visualization |
| GitHub | Project documentation and version control |

---

## 📂 Dataset

The project uses the **Online Retail** transactional dataset.

The dataset contains transaction-level information including:

- Invoice Number
- Stock Code
- Product Description
- Quantity
- Invoice Date
- Unit Price
- Customer ID
- Country

Additional features were created during the Python data preparation stage for analysis.

---

## 🧹 Data Cleaning & Preparation

Python and Pandas were used to prepare the dataset before analysis.

The main steps included:

1. Loading the raw Excel dataset.
2. Inspecting the dataset structure and data types.
3. Checking missing values.
4. Handling missing product descriptions.
5. Handling missing customer IDs.
6. Identifying and removing duplicate records.
7. Converting `InvoiceDate` into a proper datetime format.
8. Creating separate date and time fields.
9. Creating useful time-based features such as:
   - Year
   - Month
   - Month Name
   - Day
   - Day Name
   - Hour
10. Identifying cancelled transactions using the invoice information.
11. Creating a revenue field using:

```text
Revenue = Quantity × Unit Price
