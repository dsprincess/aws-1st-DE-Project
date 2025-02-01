with combined as (
    select
        sh.SalesOrderID,
        sh.CustomerID,
        sh.OrderDate,
        sh.TotalDue,
        sd.Product_ID,
        sd.OrderQty,
        sd.UnitPrice,
        sd.TotalPrice
    from {{ ref('stg_sales_header') }} sh
    join {{ ref('stg_sales_order_detail') }} sd
    on sh.order_id = sd.order_id
)
select * from combined;