
  create view "adventureworks2022"."public"."agg_sales_summary__dbt_tmp"
    
    
  as (
    with monthly_sales as (
    select SUM("OrderQty" * "UnitPrice") AS "TotalRevenue"
    from "adventureworks2022"."public"."trans_sales_orders"
)
select * from monthly_sales
  );