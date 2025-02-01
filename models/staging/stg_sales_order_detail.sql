with sales_order_detail as (
    select 
        "SalesOrderID",
        "SalesOrderDetailID",
        "ProductID",
        "OrderQty",
        "UnitPrice",
        "OrderQty" * "UnitPrice" as "TotalPrice"
    from {{ source('adw', 'salesorderdetail') }}
)
select * from sales_order_detail
