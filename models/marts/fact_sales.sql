with fact_sales as (
    select
        SalesOrderID,
        CustomerID,
        sum(TotalPrice) as order_total
    from {{ ref('trans_sales_orders') }}
    group by order_id, customer_id
)
select * from fact_sales;
