select a.*, 
b.purchase_price, 
quantity * purchase_price as purchase_cost,
revenue - purchase_cost as margin
from {{ref("stg_gz_raw_data__raw_gz_sales")}} as a
left join {{ref("stg_gz_raw_data__raw_gz_product")}} as b
on a.products_id = b.products_id