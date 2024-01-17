-- Join the item_info and the outlet_info to recreate the original deleted item

CREATE TABLE bigmart_info(
item_identifier TEXT,
item_weight TEXT,
item_fat_content TEXT,
item_type TEXT,
item_mrp TEXT,
outlet_identifier TEXT,
outlet_established TEXT,
outlet_size TEXT,
outlet_location TEXT,
outlet_type TEXT,
item_outlet_sale TEXT);
INSERT INTO
	bigmart_info
SELECT
	item_info.item_identifier,
    item_info.item_weight,
    item_info.item_fat_content,
    item_info.item_type,
    item_info.item_mrp,
    item_info.outlet_identifier,
    outlet_info.outlet_established,
    outlet_info.outlet_size,
    outlet_info.outlet_location,
    outlet_info.outlet_type,
    item_info.item_outlet_sale
FROM
	item_info
JOIN
	outlet_info
ON
	item_info.outlet_identifier = outlet_info.outlet_identifier;