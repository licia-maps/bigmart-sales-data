-- Total sales per item_type in each outlet
SELECT 
	outlet_identifier,
    item_type,
    SUM(item_outlet_sale) AS total_sales
FROM
	item_info
GROUP BY
	outlet_identifier,
    item_type
ORDER BY 
	outlet_identifier;

-- Total sales per item_type
SELECT 
    item_type,
    SUM(item_outlet_sale) AS total_sales
FROM
	item_info
GROUP BY
    item_type;

-- Total sales per outlet
SELECT 
    outlet_identifier,
    SUM(item_outlet_sale) AS total_sales
FROM
	item_info
GROUP BY
    outlet_identifier;

-- Total sales according to item_fat_content
SELECT 
    item_fat_content,
    SUM(item_outlet_sale) AS total_sales
FROM
	item_info
GROUP BY
    item_fat_content;

-- Total sales per outlet_type
SELECT 
  outlet_info.outlet_type,
  sum(item_outlet_sale) as total_sales
FROM
	item_info,
    outlet_info
GROUP BY
    outlet_type;

-- Total sales per outlet_location
SELECT 
  outlet_info.outlet_location,
  sum(item_outlet_sale) as total_sales
FROM
	item_info,
    outlet_info
GROUP BY
    outlet_location;