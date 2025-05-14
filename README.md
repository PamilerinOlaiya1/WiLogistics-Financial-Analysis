# WiLogistics-Financial-Analysis
Analysis of WiLogistics' bank statement using SQL to uncover financial trends. Extracted, cleaned, and analyzed transactions to evaluate income, expenses, and cash flow. Key metrics like revenue, monthly spend, and balance trends were identified to support data-driven decisions.

![](https://github.com/PamilerinOlaiya1/WiLogistics-Financial-Analysis/blob/main/Front%20page.jpg)

## Project Overview

The aim of this project is to analyze WiLogistics’ bank statement to uncover financial trends and gain insights into the company’s operational performance. This includes a detailed breakdown of income sources, expenditure patterns, cash flow behavior, and overall financial health. The analysis supports better decision-making through clear reporting and trend identification.The dataset used is a bank statement originally provided in PDF format. It was converted and cleaned for analysis. Key features in the dataset include:
- Date
- Transaction Type
- Settlement Debits
- Settlement Credits
- Beneficiary Institution
- Source Institution
- Balance After Transaction
- Transaction Amount

## Aim and Objective
To conduct a comprehensive analysis of WiLogistics' bank statements to reveal financial patterns and derive actionable insights that enhance understanding of the company's financial performance and operational efficiency.

## Objectives

1. To Extract and categorize transaction data from bank statements to identify primary income sources and expenditure patterns
2. Analyze cash flow trends to understand the company's financial life
3. Identify the most frequent transaction types to reveal core business activities
4. Determine top beneficiaries and source institutions by transaction value to understand key business relationships
5. Calculate monthly credit and debit averages to establish baseline financial performance metrics
6. Compare net cash flow between 2023 and 2024 to evaluate year-over-year financial growth
7. Examine daily and monthly spending patterns to identify operational cycles
8. Generate clear financial reports that support informed decision-making by management

##  Tools Used
- Razor Extract – Used to convert the PDF bank statement to Excel format.
- Microsoft SQL Server (MSSQL) – For querying and analyzing transactional data.
- Microsoft Excel – Used for initial data cleaning and formatting.
- Google Looker Studio – For creating interactive dashboards and visualizing key financial insights.

## Data Cleaning Process
Initial Data Extraction and Transformation
The analysis began with converting WiLogistics' bank statements from PDF to Excel format using Razor Extract. The raw extracted data contained numerous inconsistencies that required thorough cleaning before analysis could proceed.

Here are the steps i took:

1. Fixing Missing and Wrong Values
I found and filled empty spots in the debit and credit columns by checking the original PDF files. I fixed mixed-up values where credit amounts were wrongly put in debit columns and the other way around. I corrected mismatched information such as transactions labeled "credit" that had values in debit columns instead.
2. Making Text Consistent
I fixed spelling mistakes in the Source Institution column. I removed duplicate entries from the data. I made sure names were written the same way throughout all records.
3. Fixing Data Formats
I changed all money columns to proper currency format for consistent analysis. I converted dates from general format to date format to enable time-based analysis. I made sure all numbers used the same format throughout the dataset.
These cleaning steps helped make the data accurate and ready for analysis.
![](https://github.com/PamilerinOlaiya1/WiLogistics-Financial-Analysis/blob/main/Monniepoint%20Cleaned%20file.jpg)

## Exploratory Data Analysis
### Analysis Approach
### SQL Query Analysis
I wrote SQL queries to extract key insights from the cleaned data. These queries helped me identify transaction patterns, calculate important financial metrics, and segment the data in meaningful ways. I used SQL to determine the most frequent transaction types, identify top beneficiaries by transaction amount, and analyze spending patterns across different time periods.
![](https://github.com/PamilerinOlaiya1/WiLogistics-Financial-Analysis/blob/main/Moniepoint%20queries%20SC.jpg)

### Visualization with Google Looker Studio
After extracting the data through SQL, I imported the results into Google Looker Studio for visualization. I created interactive dashboards that displayed transaction trends over time, monthly credit and debit comparisons, and distribution of spending across various categories. This visual representation made it easier to identify patterns in WiLogistics' financial data.
![](https://github.com/PamilerinOlaiya1/WiLogistics-Financial-Analysis/blob/main/Moniepointlooker1.jpg) , ![](https://github.com/PamilerinOlaiya1/WiLogistics-Financial-Analysis/blob/main/Moniepointlooker2.jpg),
![](https://github.com/PamilerinOlaiya1/WiLogistics-Financial-Analysis/blob/main/Moniepointlooker3.jpg)

## Insights
1. The Total number of transactions were 1,573 with only 17 reversals which is 1.08% of total transactions and this shows strong accuracy in transaction processing.
2. There were Regular but low-cost charges which reflects cost-efficient operations.
3. November had the highest monthly debit and credit. This suggests high operations which could be linked to year end activity.
4. Operational dependence on a few financial ecosystems e.g Opay, Moniepoint .
5. Highest Net Charge was in March 2024 and Lowest Net Charge was in August 2024
6. November 2024 had the highest Monthly Credit and Debit while May 2024 had the lowest Monthly Credit and Debit
7. ₦1.3M Spent on Weekdays with ₦404K Spent on Weekends
- Highest Spending: Friday - ₦587,156.00
- Lowest Spending: Thursday - ₦320,819.40
## Recommendation
- Optimize Friday Operations: Since Friday has the highest activity, consider reinforcing customer service and system
uptime on this day.
-  Weekend Engagement Strategy: Explore ways to boost engagement on weekends via promos or automated services, given
the drop in activity.
-  rack Monthly Performance: Some months like November 2024 and March 2024 show peaks in debit and credit flows explore what drove this.


  
