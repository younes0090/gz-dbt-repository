SELECT date_date,
ROUND(SUM(operational_margin) - SUM(ads_cost),2) AS ads_margin ,AVG(average_basket) AS average_basket,SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,SUM(impression) AS ads_impression, SUM(click) AS ads_clicks , SUM(total_product_sold) AS qunatity,
 SUM(Total_revenue) AS revenue ,SUM(total_purchase_cost) AS purchase_cost ,SUM(Total_shipping_fees) AS shipping_fee,
 SUM(Total_log_costs) AS log_cost
FROM {{ ref('finance_days') }}
LEFT JOIN {{ ref('int_campaigns_day') }}
USING(date_date)
GROUP BY date_date 
ORDER BY date_date