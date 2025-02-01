with sales_header as (
    select 
        SalesOrderID,
        CustomerID,
        OrderDate,
        TotalDue
    from "adventureworks2022"."adw"."sales_header"
)
select * from sales_header;