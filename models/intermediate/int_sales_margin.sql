Select
    orders_id,
    date_date,
    revenue,
    quantity,
    ROUND((SUM(purchase_price)*SUM(quantity)),2) AS purchase_cost,
    ROUND(((SUM(purchase_price)*SUM(quantity))- revenue),2) AS margin
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__product")}}
USING (products_id)
GROUP BY revenue, orders_id, date_date, revenue, quantity
