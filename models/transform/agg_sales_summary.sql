with monthly_sales as (
    select
        date_trunc('month', "OrderDate") as "Month",
        sum("TotalPrice") as "TotalRevenue",
        count(distinct "SalesOrderID") as "TotalOrders"
    from {{ ref('trans_sales_orders') }}
    group by 1
)
select * from monthly_sales;

