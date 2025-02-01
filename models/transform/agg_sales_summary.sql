with monthly_sales as (
    select
        date_trunc('month', OrderDate) as month,
        sum(TotalPrice) as total_revenue,
        count(distinct SalesOrderID) as total_orders
    from {{ ref('trans_sales_orders') }}
    group by 1
)
select * from monthly_sales;
