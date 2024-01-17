select
	item_type,
    ROUND(AVG(item_mrp),2) AS average_price,
    ROUND(MIN(item_mrp),2) AS minimum_price,
    ROUND(MAX(item_mrp),2) AS maximum_price
from
	item_info
group by
	item_type,
    item_weight;