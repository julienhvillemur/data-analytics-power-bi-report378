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
Card Visualisations | Total revenue, orders & profit.
Donut Charts | Revenue by country & store type.
Line Chart | Revenue by start of year.
Clustered bar chart | Orders by product category.
KPIs | Target vs last quarter for revenue, profit & orders.
Slicer | Date range (range customised by user to analyse by date periods).

### Customer Detail


### Product Detail
This page of the report provides insights into the fincial and productive achievements of the company.

## Report Structure

## Troubleshooting

## Licence
