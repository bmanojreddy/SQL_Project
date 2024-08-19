-- 1 combine the menu_items and order_details tables into single table
select * from menu_items;
select * from order_details;
select *
from  order_details as od join menu_items as mi
	on od.item_id = mi.menu_item_id;
    
-- 2 what are the least and most ordered items ? what categories were they in?

 select item_name , count(order_details_id) as numpurchases
from  order_details as od join menu_items as mi
	on od.item_id = mi.menu_item_id
group by item_name
order by numpurchases ;

-- 3 what were the top 5 orders that spent the most money
select order_id,sum(price) as moneyspent
from  order_details as od join menu_items as mi
	on od.item_id = mi.menu_item_id
    group by order_id
    order by moneyspent desc limit 5; 
    
-- 4 View the details of top 5 spent orders , what insights can you gather from it?
select category,order_id , count(item_id) as num_items
from  order_details as od join menu_items as mi
	on od.item_id = mi.menu_item_id
    where order_id in (440,2075,1957330,2675)
group by  order_id,category;