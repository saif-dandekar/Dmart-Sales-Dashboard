📊 DMART Sales Analysis Dashboard – Power BI Project

This project presents an end-to-end sales analysis dashboard created using Power BI Desktop, offering actionable insights into DMART’s sales performance across various dimensions such as cities, categories, marketing channels, customer demographics, and payment methods.

🚀 Project Overview

The purpose of this dashboard is to analyze and visualize the sales data of DMART to support strategic business decisions.
The dashboard highlights key performance indicators, trends, and patterns that help stakeholders evaluate:

Total Revenue

Orders Volume

Category-wise Sales

Payment Method Preferences

Customer Demographics

City-Wise Sales Distribution

Monthly & Quarterly Revenue Trends

Order Status Journey

📥 Data Loading – Power BI Steps
1️⃣ Open Power BI Desktop

Go to Get Data → Choose Source (Excel/CSV/SQL) and import the dataset.

2️⃣ Transform Data (Power Query)

Performed the following steps in Power Query Editor:

Removed duplicates and nulls

Corrected data types (Date, Currency, Whole Number)

Split and cleaned text columns

Created calculated columns

Renamed fields for clarity

3️⃣ Data Modelling

Organized tables into a Star Schema, connecting facts and dimensions such as:

Fact Table	Dimension Tables
Sales / Orders	Customers, Products, Categories, Marketing, Calendar

Relationships were created using primary & foreign keys.

4️⃣ DAX Measures

Created key measures such as:

Total Revenue = SUM(Sales[Revenue])

Total Orders = COUNT(Orders[OrderID])

Total Discount = SUM(Sales[Discount])

Cancelled Orders = CALCULATE(COUNT(Orders[OrderID]), Orders[Status] = "Cancelled")


Additional time-intelligence and segmentation measures were also used.

📊 Dashboard Visuals
✔ 1. Total Orders & Revenue by City (Map Visual)

Shows spatial distribution of sales across Indian cities.

✔ 2. KPI Summary Tiles

17M Total Revenue

25K Total Orders

1784 Cancelled Orders

18.39M Total Discount

✔ 3. Quarterly Sales Trend (Area Chart)

Displays revenue growth from Q1 to Q4.

✔ 4. Monthly Sales Trend (Line Chart)

Helps identify seasonal patterns and performance peaks.

✔ 5. Revenue by Category (Pie Chart)

Comparison of Local vs Branded products.

✔ 6. Marketing Channel Revenue Contribution

Channels analysed:

Instagram

Facebook

TV

WhatsApp

✔ 7. Orders by Payment Method

Breakdown of:

UPI

Credit Card

Debit Card

Cash

✔ 8. Customer Gender Distribution

Shows male vs female customer share.

✔ 9. Order Status Funnel

Tracks:

Delivered

Shipped

Cancelled

Returned

🔍 Key Insights

Revenue shows a steady increase from Q1 to Q4.

Branded category generates the highest revenue.

Instagram & Facebook dominate marketing-driven revenue.

UPI and Credit Cards are the most preferred payment modes.

Maharashtra & Karnataka cities contribute the highest sales volume.

Delivered orders (654K) indicate strong logistics performance.

Male customers slightly exceed female customers in order count.
