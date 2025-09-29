SELECT date_date,COUNT(orders_id) AS number_of_transactions, SUM(revenue) AS Total_revenue
,SUM(revenue)/COUNT (DISTINCT orders_id) AS average_basket , SUM(operational_margin) AS operational_margin, 
SUM(purchase_cost) AS total_purchase_cost, SUM(shipping_fee) AS Total_shipping_fees,
SUM(logcost) AS Total_log_costs , COUNT(quantity) AS total_product_sold
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date