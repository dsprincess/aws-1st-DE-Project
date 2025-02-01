with monthly_sales as (
    select SUM("OrderQty" * "UnitPrice") AS "TotalRevenue"
    from {{ ref('trans_sales_orders') }}
)
select * from monthly_sales

