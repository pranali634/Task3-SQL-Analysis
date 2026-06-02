# Task3-SQL-Analysis

## Objective
Use SQL queries to extract and analyze employee attrition data from a relational database, covering selection, filtering, aggregation, joins, subqueries, views, and indexing.

**Tool Used:** MySQL Workbench 
**Dataset:** HR Attrition Dataset (`HR_Attrition_dataset.csv`)

## Repository Structure

```
Task3-SQL-Analysis/
│
├── TASK3_SQL_QUERIES.sql       # All SQL queries used in this task
├── README.md                   # Project documentation (this file)
└── screenshots/                # Output screenshots from SQL Server
    ├── select.png
    ├── where.png
    ├── order_by.png
    ├── group_by.png
    ├── inner_join.png
    ├── left_join.png
    ├── right_join.png
    ├── sum.png
    ├── avg.png
    ├── view.png
    └── index.png
```

## Dataset Overview

**Source:** Kaggle — HR Analytics Attrition Dataset 
**File:** `HR_Attrition_dataset.csv`    
**Format:** CSV with header row

| Column | Type | Description |
|---|---|---|
| Employee_ID | INT | Unique employee identifier |
| Age | INT | Employee age |
| Attrition | CHAR(3) | Whether employee left — `Yes` / `No` |
| Business_Travel | VARCHAR | Travel frequency |
| Department | VARCHAR | Department name |
| Distance_From_Home | INT | Commute distance in km |
| Education | VARCHAR | Education level |
| Environment_Satisfaction | INT | Satisfaction score (1–4) |
| Gender | VARCHAR | Gender |
| Salary | FLOAT | Monthly salary |
| Job_Involvement | INT | Involvement score (1–4) |
| Job_Level | INT | Level in the organization |
| Job_Role | VARCHAR | Role title |
| Job_Satisfaction | INT | Satisfaction score (1–4) |
| Marital_Status | VARCHAR | Marital status |
| Number_of_Companies_Worked_previously | INT | Prior employer count |
| Overtime | CHAR(5) | Works overtime — `Yes` / `No` |
| Salary_Hike_in_percent | INT | Last hike percentage |
| Total_working_years_experience | INT | Total years of work experience |
| Work_Life_Balance | INT | Score (1–4) |
| No_of_years_worked_at_current_company | INT | Tenure at current company |
| No_of_years_in_current_role | INT | Years in current role |
| Years_since_last_promotion | INT | Gap since last promotion |

---

## Steps Performed

| # | Step | Description |
|---|---|---|
| 0 | Download Dataset | Downloaded `HR_Attrition_dataset.csv` from Kaggle |
| 1 | Create Database | Created database `TASK3` and the `Employees` table |
| 2 | Load Data | Imported CSV using `BULK INSERT` |
| 3 | SELECT | Fetched all records and specific columns |
| 4 | WHERE | Filtered employees with `Attrition = 'Yes'` and `Salary > 50000` |
| 5 | ORDER BY | Sorted employees by salary descending |
| 6 | GROUP BY + AVG | Calculated average salary per department |
| 7 | CTE + INNER JOIN | Split data into CTEs and joined on `Employee_ID` |
| 8 | LEFT JOIN | Retrieved all left-table records with matched data |
| 9 | RIGHT JOIN | Retrieved all right-table records with matched data |
| 10 | Subquery | Found employees earning above the company average salary |
| 11 | SUM | Calculated total salary expenditure per department |
| 12 | AVG | Calculated average job satisfaction per job role |
| 13 | CREATE VIEW | Created `AttritionSummary` view for reusable department-level reporting |
| 14 | CREATE INDEX | Added indexes on `Employee_ID`, `Department`, `Salary` for optimization |

---

## Key Insights

- High salary alone does not prevent attrition.
- Departments with lower job satisfaction show higher attrition rates.
- The `AttritionSummary` view enables quick, reusable reporting without rewriting queries.
- Indexes on frequently filtered columns improve query performance significantly.

---

## How to Reproduce

1. Download the dataset from Kaggle (link above) and save the CSV locally.
2. Open **MySQL**.
3. Open `TASK3_SQL_QUERIES.sql`.
4. Update the path in the `BULK INSERT` statement to match your local CSV file location.
5. Run each section using **F5** or the Execute button.
6. Take screenshots of each result set and save them in the `screenshots/` folder.

---

## Concepts Covered

`SELECT` · `WHERE` · `ORDER BY` · `GROUP BY` · `INNER JOIN` · `LEFT JOIN` · `RIGHT JOIN` · Subqueries · CTEs · `SUM` · `AVG` · Views · Indexes

---

## Author
**Pranali** — Internship Task 3: SQL for Data Analysis
