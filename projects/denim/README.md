## Denim Product Line 2022 and 2023 Sales Report

#### Tools: Microsoft Excel (Pivot Table, Conditional Formatting, Pivot Chart, Power Query Editor)

### Introduction

Unique Attireis is a small to medium-sized fashion enterprise well-known for its bespoke two-piece apparel. In January 2022, the company launched a new denim line, comprising 10 distinct types of pants and jackets. Unfortunately, the product line has fallen short of sales expectations, prompting the need for an in-depth analysis to guide strategic decisions.

### Objective

The primary objective of this project is to assess the sales performance of the denim line and deliver actionable insights and recommendations to the Sales and Marketing teams. The project demonstrates the power of data-driven analysis in solving real-world business problems and guiding strategic decision-making.

#### [Download Report](/projects/denim/Denim_Product_Line_Sales_Report.xlsx)

#### [See SQL Queries here](/projects/denim/SQL.md)

### Dashboard Overview: 

![Denim_Sales_Report](/projects/denim/Denim_Product_Line_Sales_Report_Dashboard.png)

### The Dataset

The analysis leverages a dataset from Unique Attire's database, including sales data from 2022 to 2023. The various data points such as product sales figures, customer details, order specifics, and geographic distribution.

#### Key Components of the Dataset:

**North Star Metrics and Dimensions for Analysis**

- Total Sales: Represents the overall revenue generated from denim product sales, a critical measure of financial performance.
- Total Quantity of Orders: Captures the volume of denim items sold, offering insights into demand levels across the product line.
- Unique Customers: Reflects the number of unique customers who made a single order. 


**Dimensions for Analysis**

- Product Category: Analysing sales by category (Pants vs. Jackets) helps identify trends and performance gaps, guiding product mix and marketing strategies.
- Product Name: A detailed breakdown of sales by specific product names allows for targeted marketing efforts, trend insights and product development adjustments.
- Loyalty Card: Sales data segmented by loyalty card holders versus non-holders helps gauge customer loyalty and assess the effectiveness of the loyalty programme for denim products.
- Date: This allows for assessing seasonality and sales trends over time, informing inventory and promotions management.
- Country: Sales performance segmented by country offers insights into regional demand. Understanding country-specific preferences can help tailor marketing strategies and product offerings to maximise regional revenue potential.


### Key Assumptions

In developing the interactive dashboard and report, several assumptions were made due to the absence of direct end-user discussions. These assumptions shaped the analysis and the design of the dashboard:

- Primary Focus on Sales Performance: It is assumed that the primary interest lies in evaluating the overall health of the denim line, pinpointing strong and weak performers, and understanding the underlying reasons for these trends.
- Impact of Seasonality on Sales: Given the seasonality of the fashion industry, the analysis assumes a need to assess how different denim products perform across various seasons, uncovering peaks and troughs in demand.
- Need for a User-Friendly Dashboard: The dashboard is designed to be intuitive for non-technical stakeholders, providing clear visualisations of key metrics such as total sales, quantity of orders, and product performance.


### Data Analysis Approach

- Initial Data Cleaning: The first step involved a comprehensive data wrangling process to clean and standardise the raw dataset, removing duplicate records, and transforming data types to ensure uniformity across the dataset. These steps were essential to avoid skewed results due to data inconsistencies.
- Data Merging and Transformation: Advanced Excel functions such as Index-match and Xlookup were used to merge relevant fields from the product and customer tables to create a unified dataset.
- Descriptive Statistics: Leveraging descriptive statistical methods, I conducted EDA to uncover key patterns and distributions within the dataset. 
- Interactive Dashboard Development: Visual exploratory tools such as pivot charts and slicers were used to design the intuitive dashboard, considering the non-technical sales and marketing end users. It provided a dynamic view of the sales data, allowing users to drill down into specific regions, product categories, and periods for more granular insights.
- Storytelling with Data: The dashboard employed storytelling techniques to narrate the sales journey, making complex data more relatable and insightful.


### Key Insights

**Seasonal Demand Patterns**

The data indicate a clear seasonal demand trend for 2022 and 2023. Denim Jacket Cropped, Denim Jeans Flare Cut, and Denim Jeans Vintage Wash consistently excelled during summer, while Denim Jacket Hooded and Denim Jacket Classic outperformed in the winter. Sales trends show consistent patterns, with a sales peak from May to September and a drop-off in December.

**Revenue Distribution by Product Category**

Jackets dominated overall revenue, accounting for £133,801, whereas pants generated £21,769. This indicates a higher customer preference for jackets. 

**Product Sales Seasonality**

An analysis of the best-selling products - Denim Jacket Hooded (£75,965), Denim Jacket Classic (£20,723), Denim Jeans Flare Cut (£16,582), and Denim Jacket Cropped (£14,683), reveals clear seasonality patterns, reflecting changing customer preferences based on seasonal trends. In contrast, the bottom-performing products, such as Denim Jeans Loose Fit, Denim Jeans Cuffed Hem, and Denim Jeans Vintage Wash, show no discernible seasonality trend.

**Sales Distribution by Country**

The majority of sales came from England (£89,368 from 984 orders), followed by Scotland (£32,597), and Wales (£13,604). No sales were recorded in Northern Ireland, indicating a lack of market penetration. This gap presents an opportunity to expand into Northern Ireland with targeted marketing and product offerings.

**Prevalence of Single-Item Transactions and AOV**

Out of 1,515 total orders from 313 customers, 173 were from unique customers who made only one order. Despite this, the Average Order Value (AOV) increased from £89.85 in 2022 to £93.00 in 2023, showing positive growth. While the increase in AOV is a good sign, the high prevalence of single-item transactions suggests an opportunity to drive further growth by incentivising larger orders.

**Contribution of Loyalty Card Holders**

Loyalty card holders accounted for 36% of total sales, contributing £48,805. This segment grew from 31% in 2022 to 36% in 2023. This suggests that the loyalty program is effective, and further investment in personalised rewards could continue to drive sales growth from this group.

**Annual Sales and Profit Growth**
Sales and profit have both increased significantly from 2022 to 2023. Sales grew from £59,332 to £76,238, and profit increased from £28,843 to £36,341. The customer base also grew from 216 to 226. However, the rise in unique customers making only one order, from 10 in 2022 to 92 in 2023, indicates a need to improve customer retention strategies to convert first-time buyers into repeat customers


### Key Recommendations

**Seasonal Marketing and Inventory Management**

Based on the seasonal demand patterns, it is recommended to implement seasonally targeted marketing campaigns. For summer, focus on promoting products like Denim Jacket Cropped and Denim Jeans Flare Cut, while in winter, emphasise Denim Jacket Hooded and Denim Jacket Classic. Additionally, inventory levels should be adjusted according to these seasonal peaks to optimise stock availability.

**Boosting Pants Sales Through Cross-Selling**

To address the revenue imbalance between jackets and pants, the introduction of cross-category promotions, such as bundling jackets with pants at a discounted rate, could be effective. Additionally, promoting pants in conjunction with popular jacket items through online advertisements and in-store displays may help boost sales in the lower-performing category.

**Reevaluating Underperforming Products**

The consistently low sales of Denim Jeans Loose Fit, Denim Jeans Cuffed Hem, and Denim Jeans Vintage Wash indicate that these products may require rebranding or price adjustments. Alternatively, they could be phased out or replaced with new, trend-aligned products if marketing efforts fail to generate improvement in sales.

**Expanding Market Reach to Northern Ireland**

The absence of sales in Northern Ireland represents an untapped market. A focused marketing campaign targeted at Northern Irish consumers, potentially involving localised online ads and promotions, should be considered. 

**Increasing Average Order Value (AOV)**

The growth in AOV from £89.85 in 2022 to £93.00 in 2023 is encouraging but could be further enhanced by introducing targeted promotions such as bundle discounts, loyalty points for larger orders, or free shipping for purchases over a certain amount. This approach, combined with marketing strategies that encourage customers to purchase multiple items, will help drive continued growth in AOV.

**Enhancing the Loyalty Program**
The loyalty program has shown promising results, with loyalty card holders contributing 36% of total sales. To build on this success, offering exclusive rewards, early access to new products, or tailored discounts for loyalty card holders can help maintain their engagement and encourage repeat purchases. 

**Customer Retention Strategies**

The rise in unique customers making only one purchase suggests a need for stronger customer retention efforts. Implementing follow-up emails, personalised promotions, and targeted re-engagement campaigns could help convert first-time buyers into repeat customers.