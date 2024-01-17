-- Calculate the number of items sold, given the market retail value and the total sales made
-- by the outlet

WITH item_count AS(
SELECT
	outlet_identifier,
    item_type,
    item_mrp,
    item_outlet_sale,
    ROUND(item_outlet_sale/item_mrp, 0) AS items_sold # This is the number of items sold at each outlet
FROM
	item_info)

-- Total items sold per item_type
SELECT
	item_type,
    SUM(items_sold) AS total_items_sold
FROM
	item_count
GROUP BY
	item_type;

-- Total items sold per item_fat_content of each item_type
SELECT
	item_type,
    item_fat_content,
    SUM(items_sold) AS total_items_sold
    ()
FROM
	item_count
GROUP BY
	item_type,
    item_fat_content
ORDER BY
	item_type;
    
-- Total items sold at each outlet
SELECT
	outlet_identifier,
    SUM(items_sold) AS total_items_sold
FROM
	item_count
GROUP BY
	outlet_identifier;

-- Total items sold per item_type in each outlet
SELECT
	outlet_identifier,
    item_type,
    SUM(items_sold) AS total_items_sold
FROM
	item_count
GROUP BY
	outlet_identifier,
	item_type
ORDER BY
	outlet_identifier;

-- overall items sold
SELECT
	SUM(items_sold) as total_items_sold
FROM
	item_count;