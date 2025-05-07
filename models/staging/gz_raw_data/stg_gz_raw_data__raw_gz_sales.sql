with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_sales') }}

),

renamed as (

    select
        date_date,
        orders_id,
        pdt_id as products_id,
        cast(revenue as float64) as revenue,
        cast(quantity as int64) as quantity

    from source

)

select * from renamed
