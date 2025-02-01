with sales_header as (
    select 
        SalesOrderID,
        CustomerID,
        OrderDate,
        TotalDue
    from {{ source('adw', 'sales_header') }}
)
select * from sales_header;
