SELECT FORMAT_DATE('%m-%Y', date_date) AS datemonth, 
ROUND(SUM(ads_margin)) AS ads_margin ,AVG(average_basket) AS average_basket,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,SUM(ads_impression) AS ads_impression, SUM(ads_clicks) AS ads_clicks , 
SUM(qunatity) AS qunatity, SUM(revenue) AS revenue ,SUM(purchase_cost) AS purchase_cost ,
SUM(shipping_fee) AS shipping_fee,
 SUM(log_cost) AS log_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth 
ORDER BY datemonth 