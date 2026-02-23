# Exploratory Data Analysis with SQL: Job Market Analysis

![Project 1 Overview](../Images\1_1_Project1_EDA.png)

This SQL project analyzes real data engineering job market trends to determine which skills provide the strongest career value based on demand and compensation. It demonstrates my ability to write **production-quality analytical SQL, design efficient queries, and translate stakeholder questions into actionable, data-driven insights**.

## Executive Summary
✅ **Project Scope:** Developed three analytical queries to answer key questions about the data engineering job market.

✅ **Data Modeling:** Leveraged multi-table joins across fact and dimension tables to extract meaningful insights.

✅ **Analytics:** Applied aggregations, filtering, and sorting techniques to identify top skills by demand, salary, and overall value.

✅ **Outcomes:** Produced actionable insights highlighting Python and SQL dominance, the importance of cloud skills, and emerging salary trends.

If you have a minute, review these:

1. [`01_top_demanded_skills.sql`](./01_top_demanded_skills.sql) - demand analysis with multi-table joins
2. [`02_top_paying_skills.sql`](./02_top_paying_skills.sql) - salary analysis with aggregations
3. [`03_optimal_skills.sql`](./.03_optimal_skills.sql) -combined demand optimization query

## Problem & Context
Job market analysts often need to answer questions such as:

📌 **Most in-demand:** Which skills are most frequently requested for data engineering roles?
💰 **Highest paid:** Which skills command the highest salaries?
⚖️ **Best trade-off:** Which skills offer the strongest balance between demand and compensation?

This project analyzes a **data warehouse** built using a star schema design, providing a structured foundation for exploring job market trends and answering these questions.

![Data Warehouse](../Images/1_2_Data_Warehouse.png)

- **Fact Table:** `job_postings_fact` — The central table containing job posting details such as job titles, locations, salaries, and posting dates.

- **Dimension Tables:**
    - `company_dim` — Stores company information linked to each job posting.
    - `skills_dim` — Maintains the catalog of skills, including skill names and categories.
- **Bridge Table:** `skills_job_dim` — Handles the many-to-many relationship between job postings and required skills.

By querying across these interconnected tables, I was able to extract insights into skill demand, salary trends, and the most valuable skill combinations for data engineering roles.

## Tech stack

- **Query Engine:** DuckDB, used for fast OLAP-style analytical processing.
- **Language:** SQL (ANSI-compliant, with analytical functions).
- **Data Model:** Star schema architecture with fact, dimension, and bridge tables.
- **Development Environment:** VS Code for writing and editing SQL queries, plus the DuckDB CLI for execution.
- **Version Control:** Git/GitHub for managing and tracking SQL scripts.

## Analysis Overview
1. **[Top Demanded Skills](./01_top_demanded_skills.sql)** -
Identifies the 10 most in-demand skills for remote data engineering roles.

2. **[Top Paying Skills](./02_top_paying_skills.sql)** -
Examines the 25 highest-paying skills using salary and demand metrics.

3. **[Optimal Skills](./03_optimal_skills.sql)** -
Computes an optimal score by combining the natural log of demand with median salary to determine the most valuable skills to learn.

## Key Insights

- Core programming languages such as SQL and Python appear in roughly 29,000 job postings each, making them the most widely requested skills.

- Cloud platforms, particularly AWS and Azure, play a central role in modern data engineering roles.

- Infrastructure and tooling skills like Kubernetes, Docker, and Terraform are linked to higher salary potential.

- Among big data technologies, Apache Spark stands out with strong demand and competitive compensation.

## SQL Skills Demonstrated
### Query Design & Optimization

- **Complex Joins:** Used multi-table `INNER JOIN` operations across `job_postings_fact`, `skills_job_dim`, and `skills_dim`.
- **Aggregations:** Applied functions such as `COUNT()`, `MEDIAN()`, `ROUND()` for statistical analysis and summarization.
- **Filtering:** Implemented boolean logic with `WHERE` clauses and multiple conditions (e.g., `job_title_short`, `job_work_from_home`, `salary_year_avg IS NOT NULL`).
- **Sorting & Limiting:** Utilized `ORDER BY` with `DESC` and `LIMIT` to surface top-N results efficiently.