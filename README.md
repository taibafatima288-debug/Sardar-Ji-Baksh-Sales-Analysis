# Sardar Ji Baksh Sales Analytics

A business analytics project analysing sales performance, outlet performance, product profitability, seasonal trends, discounts and payment behaviour using Excel, PostgreSQL, SQL and Power BI.

## Project Origin

This project was undertaken through a **Consulting Club**, where I was a **founding member**. The project provided an opportunity to work with a structured sales dataset and apply business analytics techniques to practical business questions.

The project involved analysing transactional sales data, identifying performance patterns and translating the analysis into an interactive Power BI dashboard.

## Project Overview

This project was developed to demonstrate how transactional sales data can be transformed into business insights using relational data modelling, SQL analysis and interactive Power BI reporting.

The analysis examines sales transactions, stores, products, customers, payment methods, discounts and profitability to understand overall business performance and identify patterns across outlets, products and time periods.

The project combines dataset preparation, relational database development, SQL-based business analysis, KPI development and interactive Power BI dashboard reporting.

## Business Context

The business dataset contains multiple entities covering stores, products, customers and sales transactions.

The analysis focuses on five main areas:

- Overall sales performance
- Outlet performance
- Product profitability
- Monthly revenue and profit trends
- Discount and payment behaviour

The project demonstrates how transactional sales data can be structured, analysed and presented through SQL and Power BI to support business-oriented questions and decision-making.

## Objectives

The main objectives of the project are to:

- Analyse overall revenue, profit and order performance
- Calculate average order value and profit margin
- Compare revenue and profit across outlets
- Identify outlets with higher average revenue per sale
- Analyse product-level sales and profitability
- Identify high-profit products for potential promotion
- Identify lower-profit products for further review
- Analyse product profit margins
- Examine monthly revenue and profit trends
- Compare discounted and non-discounted transactions
- Analyse payment method performance
- Examine transaction volume by payment method
- Develop an interactive Power BI dashboard for sales reporting

## Technology Stack

- **Excel** – Dataset preparation and initial data organisation
- **PostgreSQL / pgAdmin** – Relational database implementation and management
- **SQL** – Business analysis and querying
- **Power BI** – Interactive dashboards and business reporting
- **DAX** – KPI and profitability calculations
- **GitHub** – Project documentation and portfolio presentation

## Dataset

The project dataset contains five business tables:

| Table | Records | Description |
|---|---:|---|
| `Business_Info` | 1 | Business-level information |
| `Stores` | 5 | Store and outlet information |
| `Products` | 76 | Product information |
| `Sales` | 1,562 | Transaction-level sales data |
| `Customers` | 1,032 | Customer information |

### Sales Data

The `Sales` table contains:

- Invoice ID
- Date
- Payment Method
- Store ID
- Product ID
- Quantity
- Discount %
- Selling Price
- Cost Price
- Revenue
- Cost
- Profit

The `Customers` table is maintained separately because the Sales table does not contain a Customer ID field establishing a direct relationship between customers and sales.

**File:**

- [Sardar_Ji_Baksh_Sales_Dataset.xlsx](Sardar_Ji_Baksh_Sales_Dataset.xlsx) – project dataset used for database development, SQL analysis and Power BI reporting.

## Data Model

The project uses a relational structure connecting stores and products to sales transactions.

### Relationships

**Stores (1) → Sales (*)**

**Products (1) → Sales (*)**

The `Customers` table does not have a direct relationship with `Sales` because the Sales table does not contain a Customer ID field.

The `Business_Info` table is maintained separately as business-level reference information.

## SQL Analysis

The SQL component is organised into five analysis files covering different business areas.

### 1. Overall Sales KPIs

**Business Questions:**

- What is the total revenue?
- What is the total profit?
- What is the total number of orders?
- What is the average order value?

Key results:

- **Total Revenue:** ₹891,261.20
- **Total Profit:** ₹539,595.20
- **Total Orders:** 1,562
- **Average Order Value:** ₹570.59

### 2. Outlet Analysis

The outlet analysis compares stores based on total revenue, total profit and average revenue per sale.

Key observations:

- **S003** generated the highest total profit at **₹116,167.30**.
- **S003** generated the highest total revenue at **₹192,181.30**.
- **S002** generated the lowest total profit at **₹96,567.70**.
- **S002** generated the lowest total revenue at **₹159,855.70**.
- **S001** recorded the highest average revenue per sale at **₹591.28**.
- **S002** recorded the lowest average revenue per sale at **₹543.73**.

### 3. Product Analysis

The product analysis evaluates:

- Units sold
- Total revenue
- Total profit
- Profit margin

Products with high total profit were identified as potential candidates for promotion.

Products such as **Shortbread Cookies, Dark Choco Cookie and Mint Kombucha** were among the lower-profit products and were flagged for further review based on their sales volume, revenue, pricing and costs.

The highest profit margins identified included:

- **Babyccino — 72.17%**
- **Lemon Iced Tea — 69.75%**
- **Thai Green Tea — 69.67%**

### 4. Time Analysis

Monthly revenue and profit were analysed to identify changes in performance throughout the year.

Key observations:

- **September** generated the highest revenue at **₹81,827.90**.
- **October** followed with **₹81,777.20**.
- **February** generated **₹80,965.90** in revenue.
- **September** generated the highest profit at **₹50,208.90**.
- **June** followed with **₹49,503.00** in profit.
- **December** recorded the lowest monthly profit at **₹34,692.50**.
- **May** also recorded relatively low profit at **₹35,348.90**.

### 5. Discount & Payment Analysis

Discounted and non-discounted transactions were compared using average revenue and average profit.

| Discount Status | Average Revenue | Average Profit |
|---|---:|---:|
| No Discount | ₹601.61 | ₹379.14 |
| Discount | ₹539.41 | ₹311.59 |

Within this dataset, non-discounted orders had higher average revenue and average profit than discounted orders.

Payment methods were also analysed:

| Payment Method | Average Revenue | Average Profit |
|---|---:|---:|
| Cash | ₹593.55 | ₹357.40 |
| Card | ₹582.56 | — |
| Wallet | ₹564.00 | — |
| UPI | ₹556.46 | — |

Cash recorded the highest average revenue and average profit among the payment methods in the analysis.

## Power BI Dashboard

The SQL analysis was translated into an interactive Power BI dashboard consisting of four analytical pages.

### Page 1 – Sales Performance Overview

The overview page presents:

- Total Revenue
- Total Profit
- Total Orders
- Average Order Value
- Profit Margin
- Monthly Revenue Trend
- Monthly Profit Trend
- Revenue vs Profit by Month
- Revenue by Store

Interactive slicers:

- Date
- Store
- Payment Method

### Page 2 – Store / Outlet Performance

This page focuses on comparing individual outlets.

Includes:

- Total Stores
- Highest Revenue Store
- Highest Profit Store
- Average Revenue per Sale
- Revenue by Store
- Profit by Store
- Average Revenue per Sale by Store
- Revenue vs Profit by Store

### Page 3 – Product & Profitability Analysis

This page examines product-level sales and profitability.

Includes:

- Top Products by Profit
- Top Products by Revenue
- Units Sold by Product
- Profit Margin by Product
- Products Requiring Review

The page allows products to be examined using multiple measures rather than relying on a single performance indicator.

### Page 4 – Discounts, Payments & Sales Behaviour

This page examines discount and payment behaviour.

Includes:

- Discount vs No Discount
- Discount Impact on Profit
- Average Revenue by Payment Method
- Average Profit by Payment Method
- Transaction Volume by Payment Method

## Dashboard Files

- [Power BI Dashboard](PowerBI/Sardar_Ji_Baksh_Sales_Analytics.pbix) – Power BI project file
- [Dashboard Overview](PowerBI/Dashboard_Overview.sjb.png) – dashboard preview
- [Power BI Dashboard PDF](PowerBI/PowerBI_Dashboard.sjb.pdf) – exported dashboard report

## Key Analytical Themes

### Sales Performance

- Overall revenue and profit
- Total orders
- Average order value
- Profit margin
- Monthly performance

### Outlet Analysis

- Revenue by outlet
- Profit by outlet
- Average revenue per sale
- Revenue versus profit comparison

### Product Analysis

- Top products by profit
- Top products by revenue
- Units sold
- Product-level profit margins
- Products requiring further review

### Sales Behaviour

- Discount versus non-discounted transactions
- Average revenue by payment method
- Average profit by payment method
- Transaction volume by payment method

## Project Workflow

**Excel Dataset → PostgreSQL Database → SQL Analysis → KPI Development → Power BI Data Modelling → Interactive Dashboard**

The project begins with structured sales data, which is organised into related tables and analysed using SQL. The resulting business questions and metrics are then translated into interactive Power BI visualisations.

## Analytical Note

The findings presented in this project describe patterns observed within the available dataset.

Comparisons such as discount status, payment method, outlet performance and product profitability represent observed relationships within the data and should not be interpreted as proof of causation.

For example, the comparison between discounted and non-discounted orders shows that non-discounted orders had higher average revenue and profit in this dataset, but this alone does not establish that discounts caused lower profitability.

Similarly, differences between outlets, products or payment methods represent observed patterns within the dataset.

## Project Purpose

This project demonstrates an end-to-end business analytics workflow involving:

- Relational data modelling
- Data preparation
- SQL querying
- KPI development
- Business question formulation
- Profitability analysis
- Time-based analysis
- Interactive dashboard design
- Analytical interpretation
- Data-driven reporting
