create database dmart_analysis;
use dmart_analysis;

select * from dmart_sales;

-- 1.Find the total number of orders placed by each customer. Show Customer ID and total orders, sorted by highest orders first.

select customer_id,count(order_id) as total_orders
from dmart_sales
group by customer_id
order by total_orders desc;

-- 2.Calculate the total revenue generated each year. Use Total Order Value and group by Year.

select year,sum(total_order_value) as revenue
from dmart_sales
group by year
order by revenue desc;

-- 3.Find the top 5 products which provided the highest average discount (MRP - Discount Price).

select product_id,
round(avg(mrp-Discount_Price),2)  as Highest_avg_discount
from dmart_sales
group by product_id
order by Highest_avg_discount desc 
limit 5;

-- 4.Group customers into age groups (e.g., 18–25, 26–35, 36–45, 46–60, 60+) and find total orders per age group.

select 
case
    when customer_age between 18 and 25 then "18-25"
    when customer_age between 26 and 35 then "26-35"
    when customer_age between 36 and 45 then "36-45"
    when customer_age between 46 and 60 then "46-60"
    else "60+" 
    end as age_group,
count(order_id) as total_orders
from dmart_sales
group by age_group;

-- 5.Show category-wise total revenue and number of products sold. Sort by revenue in descending order.

select category,
count(product_id) as total_product_sold,
round(sum(total_order_value),2) as revenue
from dmart_sales
group by category
order by revenue desc;

-- 6.Find the count of orders for each Payment Method and show which method is used the most.

select payment_method,
count(order_id) as count_of_orders
from dmart_sales
group by payment_method
order by count_of_orders desc;

-- 7. Calculate the average delivery time (Delivery Date – Order Date) for each State.

select state,
round(avg(datediff(
str_to_date(delivery_date,'%d-%m-%y'),
str_to_date(order_date,'%d-%m-%y')
)),2) as average_delivery_days
from dmart_sales
where delivery_date is not null
group by state
order by average_delivery_days;

-- 8.Find the cancellation percentage of orders by State. Formula: (Cancelled Orders / Total Orders) × 100

select state,
count(order_id) as total_orders,
 (sum(case when cancellation_date is not null then 1 else 0 end)/count(order_id)*100)  as cancelled_orders
from dmart_sales
group by state;

-- 9. Find the Top 10 most frequently purchased products across all years.

select year,
product_name,
count(order_id) as most_frequently_purchase
from dmart_sales
group by year,product_name
order by most_frequently_purchase desc
limit 10;

-- 10. Compare the average Total Order Value of orders with Shipping Charges = 0 vs > 0.

select 
case
when shipping_charges = 0 then "Free Shipping"
else "Paid Shipping" end as Shipping_type,
round(avg(total_order_value),2) as average_total_order,
count(order_id) as total_orders
from dmart_sales
group by shipping_type;
