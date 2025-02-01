with sales_header as (
    select 
        "SalesOrderID",
        "CustomerID",
        "OrderDate",
        "TotalDue"
    from {{ source('adw', 'salesorderheader') }}
)
select * from sales_header

