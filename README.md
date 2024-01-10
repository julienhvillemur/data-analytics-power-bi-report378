# Power BI Data Analytics Project

## Overview

## Prerequisites
To access this project Power BI Destkop must be installed.

## Introduction
This project will explore the use of Power BI to retrieve, transform and analyse sales data. The project will make use of robust power BI features in order to clean and modify data to suit our analytical requirements.

## Features

## Usage

### Data Loading
The project involves analysis of 4 different sample tables: Orders, Products, Stores and Customers. The main fact table within this project is the Orders table, which is retrieved from an Azure SQL database.
Use the following steps to retrieve the Orders table within Power BI Desktop:
1. Under the Home tab move to the Data section and click Get Data.
2. Click SQL server.
3. Enter your Azure sever name in the Server box.
4. Click OK.  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/defac103-9a00-4658-81dd-d473b4e29549)  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/48524f0d-aeb6-40cb-a48e-b09b97899da9)
5. Click orders_db [3], under which click on the orders table to select it.
6. Click load.  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/c9ff280f-87cb-4bf0-a9ee-d488a769ff96)
   
### Report Pages
The first page of the Power BI report contains the executive summary. The summary page provides insights into sales data via visualisations listed in the [Data Model section](#Data-Model) of this file. Use the featured slicer in order to analyse sales data between your required date range.

The Customer Detail page then provides more in depth information about the sample sales data concerning revenue and order quantities in relation to customers.

### Navigation
To move between pages of the report use the navigation bar at the left-hand side of the page.
Click on the following icons to move to a specific page:
Icon | Report Page
|:---:|:---:
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/a704d4f0-11fb-4221-9353-7f2ed3ff857a) | Executive Summary
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/20fb3cc6-2ae4-4980-987b-d18d1ee86e35) | Customer Detail
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/be8c1769-940b-4b9c-ab2a-bba5f61c3682) | Product Detail
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/6d4f76c0-6d2a-4b9b-b82a-41983517781c) | Stores Map

## Data Model
### Executive Summary
The execute summary within the report view of this project presents essential information concerning sales data. The summary visualisations pull data from the Orders, Products and Stores sample tables. The summary provides the following visualisations and information:
Visualisation | Information
| :---: | :---: 
Card Visuals | Total revenue, orders & profit.
Donut Charts | Revenue by country & store type.
Line Chart | Revenue by start of year.
Clustered bar chart | Orders by product category.
KPIs | Target vs last quarter for revenue, profit & orders.
Slicer | Date range (range customised by user to analyse by date periods).
Table | Category, revenue, customers and amount ordered for the top 10 products by revenue.

### Customer Detail
Following on from the Executive Summary, the Customer Detail page is available for analysis of customer-related sales data. This can be viewed over selected time periods with the included slicer. The page presents customer data to users based on product types, country of purchase, total orders and total revenue. The following visualisations are included on the page:
Visualisation | Information
| :---: | :---: 
Card Visuals | Unique customers, revenue per customer, top customer revenue, top customer & top customer order amount.
Line Chart | Total customers over time.
Stacked Column Chart | Total customers per product category.
Slicer | Date range (range customised by user to analyse by date periods).
Donut Chart | Total customers by country.
Table | Total orders and revenue for the top 20 customer (by revenue).

### Product Detail
This page of the report provides insights into the financial and productive achievements of the organisation recorded in the sample data. It allows users to view revenue, profit and order numbers filtered by selected product categories and countries. The data presented on the Product Detail page is derived from the Orders, Products and Customers sample tables. The page contains the following visualisations and information:
Visualisation | Information
| :---: | :---: 
Gauges | Current quarter orders, revenue and profit vs respective 10% target.
Area Chart | Total revenue by year, quarter, month, day and product category.
Scatter Chart | Total quantity vs profit per item.
Table | Revenue, customer numbers, amount ordered and profit for the top 10 products.

### Stores Map
A stores map page is included in this report to enable users to check the performance of stores across multiple countries. The page consists of the stores map and a slicer, which is used to filter the map by country. The map enables drillthrough from global regions down to sub regions of specific countries, all of which are represented as bubbles. For each bubble on the map, the user may hover over with the cursor to view a popout of the stores tooltip page. This stores tooltip popout reveals a profit gauge to the user, presenting the current year to date profit against the 20% profit goal for the year.

### Stores Drillthrough
The stores drillthrough page provides further insights from the locations presented in the stores map. The page allows users to view orders by category, progress on profit and revenue goals and information on the top 5 products. It allows users to search through these parameters filtered by an individual store location that the user has drilled through to. The following visualisations are contained within the page:
Visualisation | Information
|:---:|:---:
Card Visual | Current store location of drillthrough.
Gauges | Year to date profit and revenue vs 20% goal value.
Stacked Column Chart | Total orders by product category.
Table | Year to date profit, total orders and total revenue for the top 5 products.

## Report Structure

## Troubleshooting

## Licence
