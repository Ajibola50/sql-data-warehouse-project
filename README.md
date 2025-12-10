# End-to-End Data Warehouse Project

## Project Summary
This project demonstrates how to build a modern data warehouse from scratch using **SQL Server**. The goal was to take messy, disconnected data from two different sources—an ERP system and a CRM system—and transform it into a clean, centralized dataset ready for analysis.

I followed the **Medallion Architecture** (Bronze, Silver, Gold layers) to ensure the data pipeline is scalable and easier to debug. This project showcases my ability to handle ETL processes, data cleaning, and dimensional modeling.

<img width="1142" height="809" alt="Screenshot 2025-11-11 141343" src="https://github.com/user-attachments/assets/f693a0ce-5691-40f7-8c4d-8d845bc69948" />

## How the Architecture Works
I designed the data flow in three distinct layers to maintain data quality:

**1. The Bronze Layer (Raw Data)**
This is where the data lands first. I ingested raw CSV files from the source systems directly into SQL Server. At this stage, no changes were made to the data. This creates a historical archive that allows me to re-process data later if business rules change, without needing to go back to the source systems.

**2. The Silver Layer (Transformation & Cleaning)**
This is the "logic" layer. I wrote SQL scripts to clean the raw data.
* **Standardization:** I renamed columns to follow a consistent naming convention (e.g., ensuring all date columns follow the same format).
* **Data Quality:** I handled null values, removed duplicates, and fixed data typing issues (like converting text strings to proper Date or Integer types).
* **Integration:** I merged the data from the ERP and CRM systems so they could "talk" to each other.

**3. The Gold Layer (Reporting)**
This is the final output. I modeled the cleaned data into a **Star Schema**.
* **Fact Tables:** Created tables for transactional data (Sales).
* **Dimension Tables:** Created tables for context (Customers, Products, Calendar).
This structure is optimized for performance and is ready to be plugged into visualization tools like Power BI or Tableau.

## Technologies Used
* **Database:** Microsoft SQL Server
* **Language:** T-SQL (Transact-SQL)
* **Concepts:** ETL, Data Warehousing, Star Schema, Normalization

## Key Learnings
Building this project helped me solidify several core data engineering concepts:
* Writing complex Stored Procedures to automate the flow of data.
* Understanding the importance of a Date Dimension for time-intelligence analysis.
* Handling data quality issues proactively before they reach the reporting layer.

## How to Run This Project
1.  Clone this repository to your local machine.
2.  Open the SQL scripts in **SSMS (SQL Server Management Studio)**.
3.  Run the setup script to initialize the database.
4.  Execute the pipelines in order: **Bronze** (load), **Silver** (clean), then **Gold** (model).

---
*Credit: This project was built following the Data With Baraa SQL Masterclass.*

# 🌟About Me

HI!i'm Ajibola Oyefeso an Economics student interested in financial literacy and education.I am a dedicated learner and aspiring Analyst Engineer. I am currently honing my skills in **SQL Server** and implementing best practices in **Data Warehousing**.
