with combined as (
    select sh."SalesOrderID",
        sh."CustomerID",
        sh."OrderDate",
        sh."TotalDue",
        sd."ProductID",
        sd."OrderQty",
        sd."UnitPrice"
    from "adventureworks2022"."public"."stg_sales_header" as sh
    join "adventureworks2022"."public"."stg_sales_order_detail" as sd
    on sh."SalesOrderID" = sd."SalesOrderID"
)
select * from combined