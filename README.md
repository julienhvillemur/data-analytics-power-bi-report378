# Power BI Data Analytics Project

# Table of Contents
1. [Prerequisites](#Prerequisites)
2. [Introduction](#Introduction)
3. [Usage](#Usage)
   - [Data Loading](#Data-Loading)
       - [Power BI Access](#Power-BI-Access)
           - [Orders Table](#Orders-Table)
           - [Products Table](#Products-Table)
           - [Stores Table](#Stores-table)
           - [Customers Table](#Customers-table)
       - [Postgres Database](#Postgres-Database)
   - [Data Cleaning & Transformation](#Data-Cleaning-&-Transformation)
       - [Orders Table](#Orders-Table)
       - [Products Table](#Products-Table)
       - [Stores Table](#Stores-table)
       - [Customers Table](#Customers-table)
   - [Report Pages](#Report-Pages)
       - [Executive Summary](#Executive-Summary)
       - [Customer Detail](#Customer-Detail)
       - [Product Detail](#Product-Detail)
       - [Stores Map, Drillthrough & Tooltip](#Stores-Map,-Drillthrough-&-Tooltip)
   - [Navigation](#Navigation)
   - [SQL](#SQL)
4. [Data Model](#Data-Model)
   - [Executive Summary](#Executive-Summary)
   - [Customer Detail](#Customer-Detail)
   - [Product Detail](#Product-Detail)
   - [Stores Map](#Stores-Map)
   - [Stores Drillthrough](#Stores-Drillthrough)
7. [Licence](#Data-Model)

## Prerequisites
To access this project Power BI Destkop must be installed or a method to connect and interact with the Orders Postgres database. If Power BI desktop is available to use then a Microsoft Azure SQL server or local CSV table will be needed to retreive the data used in this Power BI project. Similiarly, access to the Postgres database will require an available Microsoft Azure server, as well as an SQL connection and interpretation application such as SQLTools (extension within VSCode) and VSCode.

## Introduction
This project will explore the use of Power BI to retrieve, transform and analyse sales data from a commercial orders database. The project will make use of robust Power BI features in order to clean and modify data to suit our analytical requirements. This file will instruct on how to load data from the orders database and it will detail the steps taken to prepare the data for visualisation and analysis. Specific visualisations and data formed by creating measures and applying graphics have been featured and explained in this file for each section of the project. For users unable to access Power BI in this project, a Postgres server is available for analysis of the Orders database via SQL.

## Usage

### Data Loading

#### Power BI Access
The project involves analysis of 4 different sample tables: Orders, Products, Stores and Customers. 

##### Orders Table
The main fact table within this project is the Orders table, which is retrieved from an Azure SQL database.
Use the following steps to retrieve the Orders table within Power BI Desktop:
1. Under the Home tab move to the Data section and click Get Data.
2. Click SQL server.
3. Enter your Azure sever name in the Server box.
4. Click OK.  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/defac103-9a00-4658-81dd-d473b4e29549)  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/48524f0d-aeb6-40cb-a48e-b09b97899da9)
5. Click orders_db [3], under which click on the orders table to select it.
6. Click load.  ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/c9ff280f-87cb-4bf0-a9ee-d488a769ff96)

##### Products Table
The Products dimension table is obtained from a local Products.csv file via the Get Data method in Power BI Desktop. Follow these steps to import the csv file.
1. Under the Home tab go to the Data section.
2. Click 'Get Data'.
3. Selection 'Text/CSV'.
4. Find your csv file in the directory and click 'Open'.

##### Stores Table
The Stores dimension table in this project is obtained from Azure Blob storage. Use the following steps to obtain the table using this method:
1. Under the Data section of the Home tab select 'Get Data'.
2. Click 'More...'.
   ![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/fe57f272-9d11-47f5-beaa-385edecdb843)
4. Click onto the Azure section and select 'Azure Blob Storage'.
5. Click 'Connect'.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/2528910c-4244-421d-83b4-f2c07fe99f17)
6. Enter your Azure Blob storage account name.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/a790d30c-5800-4643-aebb-7a73308dd9ff)
7. Enter your account key.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/c30aeecf-b0b3-4da0-a6f0-3a280cc1b594)
8. Select under 'powerbistorage2 [1]' select 'data-analytics', then click load to retrieve the Stores table.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/2799b0cf-08a5-4196-a677-6f8c326828ba)

##### Customers Table
The Customers table is available as a zip file. Unpack this file in your local directly and load the Customers table csv file into Power BI. To do this use the 'Get Data' feature as per the instructions within the [Products Table](#Products-Table) section.

#### Postgres Database
To access the sales data directly via the Postgres database use an SQL connection application. For this example we will use the SQLTools Extension within VSCode as follows:
1. Click 'Add New Connection' under the SQLTools extension, which will load a connection assistant page.
2. Select PostgresSQL.
3. Input the details for the Postgres Orders database.
4. Select SQLTools Driver Credentials under the 'Use Password' section.
5. Click 'Test Connection' and ensure that 'Successfully Connected!' is shown in green.
6. Click 'Save Connection'.
7. Click 'Connect Now'.

### Data Cleaning & Transformation
In order to analyse and form visualisations of the sales data, cleaning and transformation must first be performed. The data is first loaded into the Power Query Editor for this purpose.
The following steps have been used to handle each type of table:

#### Orders Table
1. Remove card number column for security.
2. split the order date and shipping date columns to seperate out the time and dates.
3. Remove rows with missing values in the order date column.

#### Products Table
1. Create units and values columns from the weight column using the 'Column From Examples' feature.
2. Ensure blank entries are replaced with kg.
3. Convert all values to kg and L respectively.

#### Stores Table
1. Remove rows with missing values.
2. Create a calculated column of full country names based on the country abreviations in the country code column.

#### Customers Table
1. Remove rows with missing values.
2. Add the first name and last name columns together to form a column named 'Full Name'.

### Report Pages

#### Executive Summary
The first page of the Power BI report contains the executive summary. The summary page provides insights into sales data via visualisations listed in the [Data Model](#Data-Model) section of this file. Use the featured slicer in order to analyse sales data between your required date range.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/f78adb6c-510a-4a27-b79d-7dfe0e12fd30)

#### Customer Detail
The Customer Detail page then provides more in depth information about the sample sales data concerning revenue and order quantities in relation to customers. Use the visualisations to filter other graphics on the page and use the slicer to view existing and projected data.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/e52b4cdc-98ce-4b5c-8adf-b3e885094d31)

#### Product Detail
Information concerning revenue, profit and order numbers by date, country and product category is presented under the Product Detail page. Select data point in the area chart to view progress on orders, revenue and profit targets in the featured gauges. Filter by country and product category by clicking the filter at the top left of the page and selecting different options.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/17c63fbd-ba11-489a-bd5c-5cb702b5912d)

#### Stores Map, Drillthrough & Tooltip
The Stores Map allows users to view progress on profit goals in specific geographic locations. Use the features slicer and drillthrough settings to view progress from continents down to individual counties. Hover over individual bubbles on the map to view profit goals featured from the Stores Tooltip page. Right click the bubble and select Drill through to be directed to the Stores Drillthrough page, filtered by the specific location of the selected map bubble.![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/80cbdfe6-8d7b-4c5d-b59a-2d7870f22b52)

### Navigation
To move between pages of the report use the navigation bar at the left-hand side of the page.
Click on the following icons to move to a specific page:
Icon | Report Page
|:---:|:---:
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/a704d4f0-11fb-4221-9353-7f2ed3ff857a) | Executive Summary
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/20fb3cc6-2ae4-4980-987b-d18d1ee86e35) | Customer Detail
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/be8c1769-940b-4b9c-ab2a-bba5f61c3682) | Product Detail
![image](https://github.com/julienhvillemur/data-analytics-power-bi-report378/assets/146137268/6d4f76c0-6d2a-4b9b-b82a-41983517781c) | Stores Map

### SQL
If it is not possible to access this project via Power BI then queries can be made directly onto the orders database via the Postgres server using SQL. Once connected to the server, use an SQL interpreter to manipulate, analyse and form insights upon the sales data featured in this project.

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

## Licence
Open source.
