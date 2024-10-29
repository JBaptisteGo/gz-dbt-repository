-- Select
--      ROUND((SUM(purchase_price)*SUM(quantity)),2) AS purchase_cost
--     ,ROUND(((SUM(purchase_price)*SUM(quantity))- revenue),2) AS margin
-- FROM {{ref("stg_raw__sales")}}
-- JOIN {{ref("stg_raw__product")}}
-- USING (products_id)
-- GROUP BY revenue

SELECT 
    date_date,
    orders_id,
    revenue,
    quantity,
    purchase_cost,
    margin
FROM {{ref("int_sales_margin")}}
GROUP BY date_date