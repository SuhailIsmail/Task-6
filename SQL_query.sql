# Monthly Sales Trend Analysis

use sql_store;

select 
	extract(year from o.order_date) as year,
	month(o.order_date) as month,
    sum(oi.unit_price) as total_revenue,
    count(distinct o.order_id) as order_volume
from orders o
join order_items oi
	using(order_id)
where o.order_date >= '2017-01-01'
group by 
	year,month
order by 
	year,month;
---------------------------------------------------

#Top 10 Products by Sales Revenue

select
	oi.product_id,
    sum(oi.unit_price) as total_revenue
from order_items oi
group by 
	oi.product_id
order by
	total_revenue desc
limit 10;
---------------------------------------------------
# Top 10 Products by Quantity Sold 

select 
	oi.product_id,
    count(*) as total_quantity_sold
from order_items oi
group by oi.product_id
order by total_quantity_sold desc
limit 10;
    

---------------------------------------------------

# Monthly Average Order Value (AOV)

select 
	year(o.order_date) as year,
	month(o.order_date) as month,
    	sum(oi.unit_price) / count(distinct o.order_id) as Avg_order_value
from orders o
join order_items oi
	using(order_id)
group by year,month 
order by year,month;

---------------------------------------------------

# Customer Lifetime Value (CLV) - Top 5 Customers

select 
	o.customer_id,
    sum(oi.unit_price) as lifetime_value,
    c.first_name as customer
from orders o
join order_items oi
	using(order_id)
join customers c 
	using(customer_id)
group by customer_id
order by lifetime_value desc
limit 5;

---------------------------------------------------
