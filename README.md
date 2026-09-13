# Supplier Performance Analysis

## Project Overiview

Supplier performance is a critical part of the suppy chain world. Often times, supplier performance involves looking at spend, cost savings, on-time deliveries, defective units, lead times, and many other factors. This project looked at a group of five suppliers where I looked at total spend, compliance, cost savings, lead times, and defective units. The approach of this project was to treat it as a procurement case study, rather than making a simple visualization.

## Business Questions

The analysis of this project focused on several key questions as outlined in the project overview that could help a management team evauluate these metrics and decide whether corrective action needs to be taken.

- Which suppliers account for the most purchasing spend?
- WHich suppliers generate the most cost savings?
- Which suppliers have the highest and lowest defect rates?
- How does complaince performance differ between the suppliers?
- Which suppliers have the longest lead times?
- What tradeoffs appear when financial and operational performance are considered together?

## Dataset

This project used synthetic supplier purchasing data containing information about supplier activity, pricing, savings, quality, compiance, and delivery. 

Key fields used in the analysis includes:

- Supplier
- Item Category
- Order Status
- Compliance
- Quantity
- Order Data
- Delivery Date
- Devliery Lead Time
- Unit Price
- Negotiated Price
- Actual Spend
- Savings Per Unit
- Total Savings
- Savings Percentage
- Defective Units
- Defect Rate

## Data Preperation

Throughout my journey at ODU, data clenaing has been a big part of all homework and project assignments. In this project, Python was the main method of clenaing using the Pandas library. Below were the steps taken to ensure quality data was being used for the analysis.

- Reviewing missing values and duplicate records
- Standardizing fields used in the analysis
- Converting date fields into usable datetime formats
- Calculating delivery lead time
- Calculating savings per unit and total savings
- Calculating savings percentage
- Calculating defect rate
- Creating a supplier-level summary dataset
- Exporting cleaned data for Tableau and SQL analysis

## SQL Analysis

During this project, I wanted to get more hands-on experience with SQL. For this project, I used SQLite in VS Code to answer some basic questions.

- Total purchasing spend by supplier
- Total savings and average savings percentage by supplier
- Average defect rate by supplier
- Compliance rate by supplier
- Average delivery lead time by supplier
- Combined supplier performance scorecard

Although these questions were answered during my Python analysis, I wanted to use SQL to diversify my skill set.

## Tableau Dashboard

To visualize these findings, I created a simple Tableau dashbaord to demonstrate our findings to make it easy for any reader to understand the findings.

[View the interactive Supplier Performance Dashbaord on Tableau Public](https://public.tableau.com/views/SupplierPerformanceAnalysis_17893181448880/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)



## Tech Stack

- Python
- Pandas
- Jupyter Notebook
- SQLite
- Tableau Public
- VS Code

## Project Structure

    SupplierPerformance/
    ├── dashboard/
    │   └── Supplier_Performance_Analysis.twbx
    ├── data/
    │   ├── raw/
    │   └── processed/
    ├── images/
    │   └── supplier_performance_dashboard.png
    ├── notebooks/
    ├── sql/
    │   └── supplier_analysis.sql
    ├── .gitignore
    ├── README.md
    └── requirements.txt

## Limitations

This project used synthetic data and should be treated as such rather than an assessment of real suppliers. 

The dataset also did not contain promise dates for purchase orders, so on-time deliveries could not be calcualted effectively rather I used lead time to see when the order was placed and when the order was delivered. 

There was also no performance threshold to see whether suppliers failed or passed. This project simply looks at the data provided and gather metrics that could later be passed on to management, that might have these performance metrics to see if supplier fails or pass.

## AI Usage

AI tools were used throughout this process and AI helped me get a better understanding of troubleshooting errors and help guide me in areas where I might have been stuck. AI did not write large solutions as AI was used more for guidance than writing multiple lines of code. 

## What I leanred

This project helped further my skills in Python, SQL, and Tableau as all three of these tools together provide significant insight to data where in return makes it easier for management, or teams to evaulate the data to make decisions. Another important skill I have leanred is that supplier performance cannot be judged solely on single metrics. There are many factors into supplier performance that should be looked into significantly in depth.

