with monthly_sales as (
    select SUM("OrderQty" * "UnitPrice") AS "TotalRevenue"
    from "adventureworks2022"."public"."trans_sales_orders"
)
select * from monthly_sales