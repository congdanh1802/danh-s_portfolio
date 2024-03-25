--Create table to import data
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

-- Create a backup table to clean data
CREATE TABLE marketing_alter AS 
(SELECT * FROM marketing)
  
--Reformat campaigns' name
UPDATE marketing_alter
SET campaign_name = UPPER(LEFT(campaign_name,1)) || LOWER(SUBSTRING(campaign_name,2, POSITION('_' IN campaign_name)-2)) 
                    ||' '|| UPPER(SUBSTRING(campaign_name,POSITION('_' IN campaign_name)+1,1)) 
                    || SUBSTRING(campaign_name,POSITION('_' IN campaign_name)+2,LENGTH(campaign_name)-POSITION('_' IN campaign_name))

--Reformat category
UPDATE marketing_alter 
SET category = UPPER(LEFT(category,1))|| SUBSTRING(category,2,LENGTH(category)-1)

--
