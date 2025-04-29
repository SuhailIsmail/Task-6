# Task-6
Sales Trend Analysis Using Aggregations. This setup assumes you’re analyzing e-commerce sales using SQL (MySQL, PostgreSQL, or SQLite) on a dataset with orders, order_items, and relevant fields.
# 📊 Sales Trend Analysis Using SQL
![Content Type by Rating](https://github.com/SuhailIsmail/Task-6/blob/main/2.png?raw=true)
![Content Type by Rating](https://github.com/SuhailIsmail/Task-6/blob/main/4.png?raw=true)

## 🧩 Project Overview
This project focuses on performing **Sales Trend Analysis** using **SQL** (MySQL / PostgreSQL / SQLite). The goal is to analyze **monthly revenue** and **order volume trends** by leveraging SQL aggregation functions and date-based grouping.

---

## 🗂️ Dataset Structure

This analysis uses a simplified e-commerce dataset with the following tables:

### `orders` Table
| Column Name              | Description                      |
|--------------------------|----------------------------------|
| `order_id`               | Unique ID for each order         |
| `customer_id`            | ID of the customer               |
| `order_date`             | date of order placement      |

### `order_items` Table
| Column Name  | Description                   |
|--------------|-------------------------------|
| `order_id`   | Associated order ID           |
| `product_id` | ID of the purchased product   |
| `unit_price` | price of the product per unit |
| `price`      | Price of the item             |

---

## 🔍 Key Objectives

- Analyze **monthly revenue** (`SUM(price)`)
- Analyze **monthly order volume** (`COUNT(DISTINCT order_id)`)
- Use **EXTRACT(YEAR/MONTH FROM date)** for grouping
- Use **JOINs** to combine order and item data

---

