use restaurant_db;


-- View All menu_items table
select * from menu_items;

-- Find the Number of items in the Menu
select count(*) from menu_items;

-- what are the least and most expensive items in the Menu
select max(price) from menu_items;
select min(price) from menu_items;

-- or--
select * from menu_items
order by price;

select * from menu_items
order by price DESC;

-- Number of Italian dishes in the menu
select count(*) as no_of_italiandishes from menu_items 
where category="Italian" ;
 
 -- what are the least and most expensive Asian items in the Menu
select max(price) as expensive from menu_items
where category="Asian"; 

select min(price) as Cheapest from menu_items
where category="Asian"; 

-- how many dishes are in each category
select category, count(menu_item_id) as num_dishes  from menu_items
group by category;

-- Average dish price within ech category
select category,Avg(price) as avgprice from menu_items
group by category;







