with sales_header as (
    select 
        "SalesOrderID",
        "CustomerID",
        "OrderDate",
        "TotalDue"
    from "adventureworks2022"."public"."salesorderheader"
)
select * from sales_header