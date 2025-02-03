# Amazon S3 and dbt ELT Pipeline Project (Revised)

## Overview
This project focuses on designing and implementing an ELT (Extract, Load, Transform) pipeline using **Amazon S3** for data storage, **dbt** for data transformation, and **PostgreSQL** as the data warehouse. The pipeline processes and transforms the **AdventureWorks 2022 (ADW 2022)** data SalesOrderHeader and SalesOrderDetail, demonstrating how raw data can be structured into actionable insights.

This project is derived from the initial one, which can be found in the file Amazon S3 and dbt ELT Pipeline Project.

---

## Project Scope

- **AWS RDS Creation & Database Setup**:  
  - Create an **AWS RDS PostgreSQL** instance with **public access enabled**.  
     - In VPC Security Group > Inbound Rules, add:
        - Custom TCP Rule → Source: Anywhere (0.0.0.0/0, IPv4)
        - Custom TCP Rule → Source: Anywhere (::/0, IPv6)
  - Connect the RDS instance to **pgAdmin** on a local machine.  
  - Import **AdventureWorks 2022 tables** into the database.  

- **Data Transformation with dbt**:  
  - Develop **dbt models** to clean, structure, and aggregate data.  Refer to the separate document file for more detailed steps on dbt model creation.
  - Validate transformations using **dbt tests**.  

- **Analytics Dashboard (Future Work)**:  
  - Integrate with a **BI tool** for visualization and reporting.  

---

## Implementation Steps

### 1. AWS RDS Creation & Connection
- Create an **AWS RDS PostgreSQL** instance with **public access enabled**.
- Configure **pgAdmin** on a local machine to connect to the RDS instance.
- Import **AdventureWorks 2022** tables into **PostgreSQL**.
  - Reference: [YouTube Guide](https://www.youtube.com/watch?v=I_fTQTsz2nQ)

### 2. Configuring dbt for Data Transformation
- **Initialize a dbt project** and configure it for **PostgreSQL**.
- Develop **dbt models** to transform raw data.
- Run **dbt tests** to validate transformations.

  **References:**
  - [Getting Started with dbt](https://medium.com/@suffyan.asad1/getting-started-with-dbt-data-build-tool-a-beginners-guide-to-building-data-transformations-28e335be5f7e)

  **Setup Steps in VS Code:**
  1. Create a **virtual environment**:
     - `Ctrl + Shift + P` → Search "Python Environment" → Select → Wait.
  2. Add a **requirements file** inside the environment folder.
  3. Open a terminal and activate the environment:
     ```bash
     Scripts\Activate
     ```
  4. Install dependencies:
     ```bash
     pip install -r requirements.txt
     ```
  5. Initialize dbt:
     ```bash
     dbt init
     ```
  6. Configure **dbt profile** and test the connection:
     ```bash
     dbt debug
     ```
  7. Create **dbt models** to clean and structure data.
  8. Run **dbt tests** to ensure data integrity.
     
---Cost Optimization
This revised version incurred lower AWS costs, with the only additional expense being for VPC public IPv4 access. AWS services will be explored further in future projects as I review its functionality before deep diving.


## Next Steps
- **Enhance security** by migrating to a **private RDS instance**.
- **Optimize dbt models** for better performance.
- **Integrate with a BI tool** to build dashboards and reports.

---
