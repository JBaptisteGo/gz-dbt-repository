-- Select
--      ROUND((SUM(purchase_price)*SUM(quantity)),2) AS purchase_cost
--     ,ROUND(((SUM(purchase_price)*SUM(quantity))- revenue),2) AS margin
-- FROM {{ref("stg_raw__sales")}}
-- JOIN {{ref("stg_raw__product")}}
-- USING (products_id)
-- GROUP BY revenue

SELECT 
    orders_id,
    date_date,
    ROUND(SUM(revenue),2),
    SUM(quantity),
    SUM(purchase_cost),
    SUM(margin)
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id, date_date