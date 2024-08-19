use restaurant_db;

select * from order_details;

-- Date Range of the table
select min(order_date) as Starting_date, max(order_date) as Ending_date from order_details;

-- How many orders were made within date Range
select count(distinct order_id) from order_details;

-- Which orders had the most number of items
select order_id, count(item_id) as numitems
from order_details 
group by order_id
order by numitems desc;

-- how many orders having more than 12 items
select count(*) from(select order_id, count(item_id) as numitems
from order_details 
group by order_id
having numitems>12) as numorders;