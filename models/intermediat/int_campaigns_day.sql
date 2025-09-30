SELECT date_date, campaign_name, SUM(ads_cost) AS ads_cost , SUM (impression) AS impression , 
SUM(click) AS click
FROM {{ ref('int_campaigns') }}
GROUP BY date_date , campaign_name
ORDER BY date_date , campaign_name