with combined as (
    select
        sh."SalesOrderID",
        sh."CustomerID",
        sh."OrderDate",
        sh."TotalDue",
        sd."ProductID",
        sd."OrderQty",
        sd."UnitPrice",
        sd."TotalPrice"
    from {{ ref('stg_sales_header') }} sh
    join {{ ref('stg_sales_order_detail') }} sd
    on sh."SalesOrderID" = sd."SalesOrderID"
)
select * from combined;
