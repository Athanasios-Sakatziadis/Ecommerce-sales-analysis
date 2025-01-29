# Ecommerce-sales-analysis#
SQL project analyzing e-commerce sales data to provide insights into product performance, regional revenue, customer behavior, and shipping performance.

This project demonstrates an end-to-end SQL-based analysis of an e-commerce dataset. The goal is to answer key business questions to provide actionable insights into product performance, regional revenue, customer behavior, and shipping performance.
This project was created as part of my portfolio to showcase SQL skills in data analysis and storytelling. The Data set is from Kaggle.

1. **Understanding the Business Request**:
   - I Analyzed the given dataset to answer key business questions.
   - I Focused on insights that could drive decision-making.
2. **Data Preparation**:
   - I Imported the dataset into MySQL Workbench.
   - Addressed missing values (e.g., regions with missing data were updated to `'unknown'`).
3. **SQL Analysis**:
   - I Used SQL queries to answer business questions related to top products, regional performance, and customer trends.
4. **Visualization**:
   - I Visualized the insights using Tableau to create dynamic dashboards.
     
The project is based on a pretend email request from Maria Johnson, Sales Manager:

![Maria's Johnson Request](https://github.com/user-attachments/assets/17164860-71e9-4ffe-b10c-ee211089c5de)



Key questions from the request:
1. What are the top-selling products?
2. Which regions generate the most revenue?
3. How does revenue trend month by month?
4. Who are the top 5 customers by total spending?
5. What percentage of orders fall under each shipping status?
--
Our Data:
## Dataset Overview
![Our Data Limit 10](https://github.com/user-attachments/assets/42e9f03c-0879-4d28-a325-300778b5eaa1)

For each business question:

I'm Displaying the Screenshot with Results.
I'm Highlighting Key Insights


--
### Question 1: What are the top-selling products?

![Top Selling Products](https://github.com/user-attachments/assets/1c67e470-41c6-4076-a685-2018ef19e349)

*Key Insights*:
The top-selling product is "Monitor", with a total of 460 units sold.
Accessories dominate the top 5, indicating strong demand in this category.


--
### Question 2: Which regions generate the most revenue?

![About Regions](https://github.com/user-attachments/assets/4858491f-4732-4060-8aec-aca88902cef7)

*Key Insights*:
The region with the most revenue is North with 288.590 revenue in total.
We also notice that there is a line with "Unknown" data in the region field which rises up to 62.970

Since the unknown field were Null, i replaced the null field with Unknown by using this query :

UPDATE orders
SET region = 'unknown'
WHERE region IS NULL OR region = '';

--
### Question 3: How does revenue trend month by month?

![Monthly Revenue](https://github.com/user-attachments/assets/acf90b0b-002d-4e1c-90e9-9e0f4aef3eaa)

*Key Insights*:
Revenue steadily increased from March (64,110.00) to December (97,920.00), showcasing a clear upward trend throughout the year.
The highest revenue month was December, likely due to holiday shopping, while March recorded the lowest sales.
Strong revenue was observed in November (118,090.00) and January (115,020.00), potentially driven by seasonal factors.
Revenue stabilized between August and October, with values ranging from 103,000.00 to 106,000.00.

--
### Question 4: Who are the top 5 customers by total spending?

![Top five Customers](https://github.com/user-attachments/assets/effd69bc-9098-4adb-b6cf-059c06b3c618)

*Key Insights*:
The best five customers are in the screenshot above

--
### Question 5: What percentage of orders fall under each shipping status?

![Shipping status](https://github.com/user-attachments/assets/5a72bee8-8696-4ca8-8fcc-7a1bc28d05c3)

*Key Insights*:
According to caclucations, the percentage of orders that fall under each shipping status are 33.3% for Transit, 30.7% for Returns,
 30.8% for delivered and 5% for pending. 

![Top Selling products - Visualization](https://github.com/user-attachments/assets/16291541-1a3e-45da-bb96-79f845e301d4)

![Revenue by Region - visialization](https://github.com/user-attachments/assets/22d38678-8e9d-4213-9aa2-374ed28e9d49)

![Monthly Revenue - Visualization](https://github.com/user-attachments/assets/34fa96f2-ba3a-4a77-8bba-58d17e174258)

![Top Five Customers - Visualization](https://github.com/user-attachments/assets/89b47a96-80b4-4564-a7ce-509d84e4c9b8)

![shipping status - visualization](https://github.com/user-attachments/assets/70fe331d-d44b-444e-a1f4-e1fe43bd8916)




















