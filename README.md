# 🏥 Hospital Data Analysis using SQL (PostgreSQL)

## 📘 Project Introduction
The **Hospital Data Analysis Project** focuses on analyzing healthcare data to understand the relationship between **patients**, **doctors**, **departments**, and **hospitals**.  
The goal is to extract valuable business insights such as patient distribution, doctor workload, and department performance using **SQL queries**.

This project is ideal for learning and demonstrating SQL concepts like **Joins**, **Aggregations**, **Grouping**, and **Filtering** in a real-world healthcare scenario.

## 🎯 Project Overview
Hospitals generate large amounts of data daily, including patient records, doctor assignments, and department activities.  
In this project, we:
- Designed a relational schema for hospital operations.  
- Wrote SQL queries to answer key business questions.  
- Discovered trends and inefficiencies through data-driven insights.  

## 🧩 Dataset Overview
The dataset consists of four main tables that represent hospital operations:

| Table Name  | Description |
|--------------|--------------|
| **patients** | Contains patient details such as ID, name, assigned doctor, hospital ID, and discharge date. |
| **doctors** | Includes doctor information like ID, name, and associated department. |
| **departments** | Contains department names and their respective hospital IDs. |
| **hospitals** | Lists hospital IDs and hospital names. |

### 🗂️ Table Columns

**patients**
- patient_id  
- patient_name  
- doctor_id  
- hospital_id  
- discharge_date  

**doctors**
- doctor_id  
- doctor_name  
- department_id  

**departments**
- department_id  
- department_name  
- hospital_id  

**hospitals**
- hospital_id  
- hospital_name  

## 🔄 Project Workflow
1. **Data Understanding:**  
   Analyzed the structure and relationships among patients, doctors, departments, and hospitals.  

2. **Query Development:**  
   Wrote SQL queries using **JOIN**, **GROUP BY**, **COUNT**, and **WHERE** clauses.  

3. **Data Exploration:**  
   Used different queries to explore patient distribution, department-level analysis, and hospital performance.  

4. **Insight Generation:**  
   Derived business insights such as unassigned patients, doctor workloads, and department effectiveness.  

**🔍Data exploration**

. Unassigned patients

.  Doctor workload and efficiency

. Department-wise patient distribution

. Patient-hospital mapping

. Doctor-department interactions

. Patient discharge tracking

**💼 Business Insights**

. 🩺 **Doctor Efficiency**: Identified doctors treating the highest number of patients.

. 🧑‍⚕️ **Unassigned Patients**: Found patients not assigned to any doctor, helping improve resource allocation.

. 🏢 **Department Workload**: Analyzed patient count per department across hospitals.

. 📊 **Hospital Performance**: Compared departments within hospitals to identify which areas handle more patients.

. 🕒 **Operational Analysis**: Reviewed discharge dates to track patient flow and treatment duration.

**🛠️ Technologies Used**

. PostgreSQL 17

. SQL Queries

. Joins, Aggregations, Filtering, Grouping

**👩‍💻 Author**

Hi, I’m Akanksha Negi — a Data Analyst passionate about transforming raw data into meaningful business insights.

📧 LinkedIn- https://www.linkedin.com/in/akansha-negi-a1900a24b/
