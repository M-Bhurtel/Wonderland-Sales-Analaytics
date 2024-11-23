# **Wonderland Sales Analytics Dashboard**

## **Project Overview**
This project involves designing a comprehensive sales analytics dashboard for Wonderland, a fictional Australian company, using mock datasets provided as part of a case study. The dashboard aims to provide actionable insights for senior executives (CEO, CMO) to make data-driven decisions on sales trends, product performance, customer segmentation, and return analysis. The project integrates **SQL for data preparation** and **Power BI for visualization**.

---

## **Objective**
- To analyze sales performance across states, products, and customer demographics from 2015–2017.
- To highlight high-profit products, customer segments, and potential areas for cost reduction.
- To demonstrate advanced data preparation and visualization techniques.

---

## **Dataset Details**
The dataset includes nine mock files that encompass customer information, sales data, product details, and regional mappings:

1. **Customers.csv**: Customer demographics and personal information.
2. **Product_Categories.csv**: High-level product categories.
3. **Product_Subcategories.csv**: Detailed product subcategories and their mappings to categories.
4. **Products.csv**: Detailed product information, including cost, price, and descriptions.
5. **State_Mapping.csv**: Mapping of sales territories to Australian states.
6. **Product_Sales_2015.csv**: Sales data for 2015.
7. **Product_Sales_2016.csv**: Sales data for 2016.
8. **Product_Sales_2017.csv**: Sales data for 2017.
9. **Product_Returns.csv**: Information on product returns.

---

## **Key Features**

### **State Performance Analysis**
- Identified **New South Wales** as the top-performing state with $7M in sales.
- Highlighted Queensland’s YoY growth, indicating future opportunities.

### **Product Profitability**
- **Mountain Bikes** achieved the highest profit margin at **84.44%**.
- Accessories like **Helmets (175%)** and **Gloves (142%)** were top performers.
- Notable return rates for **Shorts (3.66%)** and **Tires and Tubes (3.26%)** were analyzed.

### **Customer Segmentation**
- The **56–70 age group** (45.63%) and **Professionals (29.89%)** were identified as the largest contributors to revenue.

### **Return Analysis**
- Suggested strategies to reduce return rates for frequently returned products.

---

## **Process and Tools**

### **Data Preparation (SQL)**
- Cleaned, transformed, and merged datasets using SQL scripts.
- Addressed missing values and inconsistencies to ensure data quality.
- Performed complex joins to combine sales, customer, and product data.

### **Data Visualization (Power BI)**
- Built a dynamic, user-friendly dashboard using only **default visuals**.
- Created KPIs, trend lines, and interactive visualizations to display insights.

### **Exploratory Data Analysis (EDA)**
- Analyzed sales trends, customer demographics, and return patterns.
- Highlighted correlations between product performance and returns.

---

## **Key Files in Repository**

1. **Data Files**:
   - All nine `.csv` files used for the analysis.

2. **SQL Scripts**:
   - `Bulk_Insert_All_Tables.sql`: For importing raw data.
   - `Data_Preparation.sql`: For cleaning and transforming data.

3. **Power BI File**:
   - `Wonderland_Sales_Analytics.pbix`: The interactive dashboard.



---

## **Insights**
This case study demonstrated how mock data can provide actionable insights through effective analysis and visualization. The integration of **SQL for data preparation** and **Power BI for visualization** highlights the value of combining technical skills to deliver business-ready solutions.
