
  create view "adventureworks2022"."public"."stg_sales_header__dbt_tmp"
    
    
  as (
    with sales_header as (
    select 
        "SalesOrderID",
        "CustomerID",
        "OrderDate",
        "TotalDue"
    from "adventureworks2022"."public"."salesorderheader"
)
select * from sales_header
  );