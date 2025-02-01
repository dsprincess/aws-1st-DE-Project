
  create view "adventureworks2022"."public"."fact_sales__dbt_tmp"
    
    
  as (
    with fact_sales as (
    select "SalesOrderID",
        "CustomerID",
        SUM("OrderQty" * "UnitPrice") AS "TotalRevenue"
    from "adventureworks2022"."public"."trans_sales_orders"
    group by "SalesOrderID", "CustomerID"
)
select * from fact_sales
  );