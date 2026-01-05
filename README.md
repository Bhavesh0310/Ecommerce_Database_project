# 🛒 Ecommerce Database Project

## 📌 Project Overview

This project focuses on **designing and implementing a relational database** for an e-commerce platform using **SQL**. It demonstrates database modeling, normalization, and relationship management to support core e-commerce operations such as customers, products, orders, payments, and reviews.

The repository is ideal for showcasing **DBMS fundamentals**, backend readiness, and analytics-friendly schema design.

---

## 🎯 Objectives

* Design a normalized e-commerce database schema
* Implement primary & foreign key relationships
* Ensure data integrity using constraints
* Populate tables with sample data for testing
* Provide a solid base for backend or analytics use cases

---

## 🛠 Tools & Technologies

* **MySQL / SQL**
* **MySQL Workbench** (for ER diagram & execution)
* **SQL Scripts** (DDL & DML)

---

## 🗂 Database Entities

The database includes (but is not limited to):

* **Customers** – user information
* **Products** – product catalog
* **Categories** – product classification
* **Orders & Order_Items** – purchase records
* **Payments** – transaction details
* **Cart** – shopping cart data
* **Reviews** – customer feedback

All entities are connected using appropriate **relationships and constraints**.

---

## 📁 Project Structure

```
Ecommerce_Database_project/
│
├── Databases.sql        # Database & table creation scripts (DDL)
├── Inserts.sql          # Sample data insertion (DML)
├── ER_Diagram.mwb       # ER diagram (MySQL Workbench)
└── README.md            # Project documentation
```

---

## 🚀 How to Run the Project

1. Clone the repository:

   ```bash
   git clone https://github.com/Bhavesh0310/Ecommerce_Database_project.git
   ```
2. Open **MySQL Workbench** or any SQL IDE
3. Execute `Databases.sql` to create schema
4. Execute `Inserts.sql` to insert sample data
5. Run queries to explore the database

---

## 🔍 Sample Queries

```sql
-- View all customers
SELECT * FROM customers;

-- List all products with categories
SELECT p.product_name, c.category_name
FROM products p
JOIN categories c ON p.category_id = c.category_id;

-- Order details with customer info
SELECT o.order_id, c.customer_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
```

---

## 🔮 Future Enhancements

* Add **stored procedures & triggers**
* Create **views** for analytics queries
* Connect database with a backend (Node.js / Java / Python)
* Implement **indexes** for performance optimization
* Extend schema for inventory & shipment tracking
