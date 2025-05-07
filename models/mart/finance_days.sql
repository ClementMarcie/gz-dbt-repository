--finance_days.sql
{{ config(materialized='table') }}
select date_date,
count(orders_id) as nb_transactions,
sum(revenue) as revenue,
avg(revenue) as avg_basket,
sum(margin) as margin,
sum(purchase_costs) as total_purchase_cost,
sum(shipping_fee) as total_shipping_fee,
sum(log_cost) as total_log_cost,
sum(quantity) as total_quantity
from {{ref("int_orders_operational")}}
group by date_date