with sales_order_detail as (
    select 
        SalesOrderDetailID,
        SalesOrderID,
        ProductID,
        OrderQty,
        UnitPrice,
        OrderQty * UnitPrice as TotalPrice
    from "adventureworks2022"."adw"."sales_order_detail"
)
select * from sales_order_detail;