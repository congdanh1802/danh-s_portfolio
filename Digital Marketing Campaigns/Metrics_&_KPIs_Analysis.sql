-- I. Import data

CREATE TABLE marketing (
id NUMERIC,
c_date date,
campaign_name VARCHAR(100),
category VARCHAR(100),
campaign_id NUMERIC,
impressions NUMERIC,
mark_spent NUMERIC,
clicks NUMERIC,
leads NUMERIC,
orders NUMERIC,
revenue NUMERIC
);



--II. Clean data

-- 1/ Create a backup table to clean data
CREATE TABLE marketing_alter AS 
(SELECT * FROM marketing);
  
-- 2/ Reformat campaigns' name
UPDATE marketing_alter
SET campaign_name = UPPER(LEFT(campaign_name,1)) || LOWER(SUBSTRING(campaign_name,2, POSITION('_' IN campaign_name)-2)) 
                    ||' '|| UPPER(SUBSTRING(campaign_name,POSITION('_' IN campaign_name)+1,1)) 
                    || SUBSTRING(campaign_name,POSITION('_' IN campaign_name)+2,LENGTH(campaign_name)-POSITION('_' IN campaign_name));

-- 3/ Reformat category
UPDATE marketing_alter 
SET category = UPPER(LEFT(category,1))|| SUBSTRING(category,2,LENGTH(category)-1);

-- 4/ Save as a new table (clean)
CREATE TABLE marketing_clean AS
(SELECT * FROM marketing_alter);

-- III. Ad-hoc tasks

-- 1/ Calculate th REVENUE of each CAMPAIGN
SELECT campaign_id, campaign_name, ROUND(SUM(revenue),2) total_revenue
FROM marketing_clean
GROUP BY campaign_id, campaign_name
ORDER BY SUM(revenue) DESC;

-- 2/ Calculate GROSS PROFIT of each CAMPAIGN
SELECT campaign_id, campaign_name, ROUND(SUM(revenue-mark_spent),2) gross_profit
FROM marketing_clean
GROUP BY campaign_id, campaign_name;

-- 3/ Calculate ROMI of each CAMPAIGN
SELECT campaign_id, campaign_name, ROUND(SUM(revenue-mark_spent)/SUM(mark_spent),2) romi
FROM marketing_clean
GROUP BY campaign_id, campaign_name;

-- 4/ Calculate the REVENUE of each WEEKDAY
SELECT TO_CHAR(c_date,'D') weekday, ROUND(SUM(revenue),2) revenue
FROM marketing_clean
GROUP BY TO_CHAR(c_date,'D');

-- 5/ Calculate the REVENUE of each CATEGORY
SELECT category, ROUND(SUM(revenue),2) revenue
FROM marketing_clean
GROUP BY category;

-- 6/ Calculate the number of ORDERS of each CATEGORY
SELECT campaign_id, campaign_name, ROUND(SUM(orders),2) total_order
FROM marketing_clean
GROUP BY campaign_id, campaign_name;

-- 7/ Calculate the Click-through rate(CTR) of each CAMPAIGN
SELECT campaign_id, campaign_name, ROUND(100*SUM(clicks)/SUM(impressions),2) ctr
FROM marketing_clean
GROUP BY campaign_id, campaign_name;

-- 8/ Calculate the numbers of CLICKS and the Cost per click (CPC) of each CAMPAIGN
SELECT campaign_id, campaign_name, ROUND(SUM(mark_spent)/SUM(clicks),2) cpc
FROM marketing_clean
GROUP BY campaign_id, campaign_name;


