# Task 3: SQL for Data Analysis

## 📌 Objective
The objective of this task is to analyze structured data using SQL.  
This task focuses on writing SQL queries to retrieve, filter, aggregate, and optimize data from a relational database.

---

## 🛠 Tools Used
- SQLite  
- DB Browser for SQLite  

---

## 🗄 Database Details
- Database Name: `online_store.db`
- Dataset Type: Ecommerce / Online Store

The database was created as a `.db` file using SQLite.

---

## 📂 Tables Created
1. **customers**
   - customer_id
   - name
   - email
   - country

2. **products**
   - product_id
   - product_name
   - price

3. **orders**
   - order_id
   - customer_id
   - order_date

4. **order_items**
   - item_id
   - order_id
   - product_id
   - quantity

---

## 🔍 SQL Concepts Covered
- SELECT, WHERE, ORDER BY
- GROUP BY with aggregate functions (SUM, AVG)
- INNER JOIN
- Subqueries
- Views
- Indexes for query optimization

---

## 📊 Analysis Performed
- Retrieved customers based on country
- Sorted products by price
- Calculated total quantity sold per product
- Retrieved customer order details using JOIN
- Used subqueries to filter customers
- Calculated average revenue per user
- Created views for easy analysis
- Optimized queries using indexes

---

## 📁 Files Included
- `task3_sql_analysis.sql` – Contains all SQL queries
- `online_store.db` – SQLite database file
- `screenshots/` – Output screenshots of executed queries
- `README.md` – Task documentation

---

## ✅ Outcome
This task helped in understanding how SQL can be used for real-world data analysis by manipulating and querying structured datasets efficiently.

---

## 👤 Author
Venkatesh S
