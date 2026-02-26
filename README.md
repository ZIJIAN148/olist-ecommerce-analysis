# 🛒 Olist E-Commerce Analytics: Supply Chain & Revenue Optimization

[![Tableau](https://img.shields.io/badge/Tableau-Interactive_Dashboard-blue?style=for-the-badge&logo=tableau)]([INSERT YOUR TABLEAU LINK HERE])

## 📌 Executive Summary
This project analyzes 100,000+ real-world anonymized orders from Olist, a Brazilian e-commerce platform. The objective was to bridge raw relational data with operational management principles, identifying key revenue drivers, supply chain bottlenecks, and root causes for customer dissatisfaction. 

**Live Dashboard:** [Click here to view the interactive Tableau Dashboard]([[INSERT YOUR TABLEAU LINK HERE](https://public.tableau.com/views/Book1_17721260001540/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)])

---

## ⚙️ Methodology & Data Architecture
An end-to-end data pipeline was engineered to extract, clean, and visualize the data.

| Phase | Tool | Actions Performed |
| :--- | :--- | :--- |
| **1. Data Extraction** | **SQL (Google BigQuery)** | Queried a 9-table relational database using CTEs, `JOIN`s, and Window Functions (`RANK()`) to extract high-value metrics. |
| **2. ETL & Wrangling** | **Python (Pandas)** | Merged datasets, handled null values, and engineered new date-time features for accurate time-series analysis. |
| **3. Exploratory Analysis** | **Python (Seaborn/Matplotlib)** | Executed statistical distributions and correlation matrices to identify relationships between freight costs and product pricing. |
| **4. Visualization** | **Tableau** | Developed an interactive, management-facing dashboard focusing on geographic logistics and categorical revenue performance. |

---

## 📊 Key Operational Insights & Recommendations

Using the Observation-Implication-Recommendation (O.I.R) framework, the data revealed the following actionable business strategies:

| Focus Area | Observation (The Data) | Implication (The Business Impact) | Recommendation (Strategic Action) |
| :--- | :--- | :--- | :--- |
| **Revenue & Quality** | The *Health & Beauty* category generated the highest gross revenue but simultaneously accounted for a disproportionately high volume of delayed shipments. | High-value, profitable customers are experiencing the worst logistical performance, creating a severe risk of high churn in the most critical revenue stream. | Audit the top 3 logistics partners routing *Health & Beauty* orders. Shift volume to the carrier with the highest strictly enforced on-time delivery SLA. |
| **Supply Chain Efficiency** | Correlation matrices and geographic mapping highlight a moderate positive correlation between specific northern remote zip codes and extreme freight value spikes. | Unoptimized routing to these specific regions is eroding profit margins and negatively impacting the customer's perceived value at checkout. | Implement a localized fulfillment strategy (micro-warehousing) or partner with specialized regional couriers to standardize freight costs for remote buyers. |
| **Customer Retention** | Cohort analysis shows a sharp drop-off in repeat purchases, with 1-star reviews heavily tied to instances where actual delivery exceeded the estimated delivery date. | The platform's predictive delivery algorithm is setting unrealistic expectations, permanently damaging customer lifetime value (CLV) upon the first purchase. | Recalibrate the delivery estimation algorithm to add a 48-hour buffer to historical averages, prioritizing "under-promising and over-delivering." |

---

## 📂 Repository Contents
* `queries.sql`: Advanced SQL scripts utilized for initial data extraction and aggregation in BigQuery.
* `olist_etl_eda.ipynb`: Jupyter Notebook containing the Python code for data transformation, statistical modeling, and cohort analysis.
* `README.md`: Project documentation and high-level management summary.
