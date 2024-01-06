# Power BI Data Analytics Project

## Overview

## Prerequisites
To access this project Power BI Destkop must be installed.

## Introduction
This project will explore the use of Power BI to retrieve, transform and analyse sales data. The project will make use of robust power BI features in order to clean and modify data to suit our analytical requirements.

## Features

## Usage
The first page of the Power BI report contains the executive summary. The summary page provides insights into sales data via visualisations listed in the [Data Model section](#Data-Model) of this file. Use the featured slicer in order to analyse sales data between your required date range.

### Data Loading
The project involves analysis of 4 different sample tables: Orders, Products, Stores and Customers. The main fact table within this project is the Orders table, which is retrieved from an Azure SQL database.
Use the following steps to retrieve the Orders table within Power BI Desktop:
1. Under the Home tab move to the Data section and click Get Data.
2. Click SQL server.
3. Enter your Azure sever name in the Server box.
4. Click OK.  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/defac103-9a00-4658-81dd-d473b4e29549)  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/48524f0d-aeb6-40cb-a48e-b09b97899da9)
5. Click orders_db [3], under which click on the orders table to select it.
6. Click load.  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/c9ff280f-87cb-4bf0-a9ee-d488a769ff96)



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

### Customer Detail


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
Gauge Filters | Year to date profit and revenue vs 20% goal value.
Stacked Column Chart | Total orders by product category.
Table | Year to date profit, total orders and total revenue for the top 5 products.

## Report Structure

## Troubleshooting

## Licence
