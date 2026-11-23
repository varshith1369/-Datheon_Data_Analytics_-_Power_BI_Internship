# -Datheon_Data_Analytics_-_Power_BI_Internship
POWER BI SUPERSTORE DASHBOARD - STARTER PACKAGE

Files:
- FactOrders.csv: transaction-level fact table (9,994 rows)
- DimCustomer.csv: customer dimension (793 customers)
- DimProduct.csv: product dimension (1,862 products)
- DimDate.csv: continuous calendar date dimension (1,458 dates)
- DAX_Measures.txt: core DAX measures
- PowerQuery_FactOrders_Template.m: starter Power Query M template
- PNG chart files: executive report chart assets

Data preparation:
- Original uploaded file: 10,800 rows
- Rows with valid Order Date retained: 9,994
- Rows without Order Date excluded: 806
- Exact duplicate rows removed after required-field checks.
- The source file has missing values in 806 appended rows; these are not transaction records.

Model relationships to create (one-to-many, single direction):
- DimCustomer[CustomerKey] 1 -> * FactOrders[CustomerKey]
- DimProduct[ProductKey] 1 -> * FactOrders[ProductKey]
- DimDate[DateKey] 1 -> * FactOrders[OrderDateKey]

Mark DimDate as the Date table using DimDate[Date].
For an inactive shipping-date relationship, create DimDate[DateKey] -> FactOrders[ShipDateKey] and activate it in measures with USERELATIONSHIP when needed.

Suggested report pages:
1. Executive Overview: KPI cards, monthly sales trend, sales by region, sales by segment.
2. Product Profitability: category/sub-category matrix, sales and profit, profit margin.
3. Regional & Customer Analysis: region slicer, customer segment and customer drill-down.
4. Order Trends: date slicers, monthly sales, order count, YoY growth.

Headline figures from cleaned transaction rows:
Total Sales: $2,297,200.86
Total Profit: $286,397.02
Distinct Orders: 5,009
Profit Margin: 12.47%

Important:
This package is import-ready source material, not a .pbix file. Open Power BI Desktop, import the four CSV tables, create the relationships above, add the DAX measures, build visuals, and save as .pbix. Export the report to PDF from Power BI Desktop.
