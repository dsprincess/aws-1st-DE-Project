with fact_sales as (
    select "SalesOrderID",
        "CustomerID",
        SUM("OrderQty" * "UnitPrice") AS "TotalRevenue"
    from {{ ref('trans_sales_orders') }}
    group by "SalesOrderID", "CustomerID"
)
select * from fact_sales
