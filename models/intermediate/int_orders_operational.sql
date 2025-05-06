select a.orders_id,
a.date_date,
margin + shipping_fee - log_cost - ship_cost as Operational_margin
from {{ref("int_orders_margin")}} as a
left join {{ref("stg_gz_raw_data__raw_gz_ship")}} as b
on a.orders_id = b.orders_id