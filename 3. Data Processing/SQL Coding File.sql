---------------------------------------------------------------------------------------
---BRIGHT COFFEE SHOP CODING
-------------------------------------------------------------------------------------------
---1. Running the entire table
SELECT*
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`
limit 100;


---2. Checking the date range
SELECT MIN(transaction_date) AS Minimum_Date,
       MAX(transaction_date) AS Maximum_Date
 from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;
      
---This data was collected over a period of 6 months from 2023-01-01 to 2023-06-30

---3.Checking th different store location (only 3 stores)
SELECT DISTINCT store_location
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;
 

---4.  Checking products sold at our stores (only 9 product categories)

SELECT  DISTINCT product_category
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;
 
 
---5. Checking product types sold at our stores (29 product types)
SELECT  DISTINCT product_type
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;
 

---6. Checking product details at our stores -80 different product details
SELECT  DISTINCT product_detail
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;

---7.Checking for NULLS in various columns -No Nulls returned
SELECT*
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`
WHERE unit_price IS NULL
OR transaction_qty IS NULL
OR transaction_date IS NULL;


---8.Checking minimum and maximum unit price- Min unit price 0.8 & Max unit price 45
SELECT MIN(unit_price) AS Lowest_unit_price,
       MAX(unit_price) AS Highest_unit_price
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;


---9.Extracting the day and month names
SELECT transaction_date,
       Dayname(transaction_date) AS Day_name,
       Monthname(transaction_date) AS Month_name,
       Dayofmonth(transaction_date) AS Day_month
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;


---10. Calculating the Revenue
   SELECT unit_price,
          transaction_qty,
          unit_price*transaction_qty AS Revenue
    from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;
 

SELECT*
from `workspace`.`default`.`bright_coffee_shop_analysis_case_study_1_2`;
 

    ---11. Combine functions to get a clean and enhanced dataset

    SELECT
         transaction_id,
         transaction_date,
         transaction_time,
         transaction_qty,
         store_id,
         store_location,
         product_id,
         unit_price,
         product_category,
         product_type,
         product_detail,
---Adding columns to enhance the table for better insights
---New column added 1
        Dayname(transaction_date) AS Day_name,
---New column added 2      
        Monthname(transaction_date) AS Month_name,
---New column added 3
        Dayofmonth(transaction_date) AS Day_of_month,
---New column added 4- Determining weekday/weekend
CASE
    WHEN Dayname(transaction_date) IN ('Sun', 'Sat') THEN 'Weekend'
    ELSE 'Weekday'
    END AS Day_classification,
---New column 5-Time Buckets
CASE
    WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '06:00:00' AND '09:59:59' THEN '01. Morning'
    WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '10:00:00' AND '12:59:59' THEN '02. Mid day'
    WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '13:00:00' AND '15:59:59' THEN '03. Afternoon'
    WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '16:00:00' AND '18:59:59' THEN '04. Evening'
    ELSE '05.Night' 
    END AS Time_classification,

---New Column added 6-Spend buckets
CASE
    
    WHEN (transaction_qty*unit_price)<=50 THEN '01. Low spend'
    WHEN (transaction_qty*unit_price) BETWEEN 51 AND 200 THEN '02. Med Spend'
    WHEN (transaction_qty*unit_price) BETWEEN 201 AND 300 THEN '03. Highest Spend'
    ELSE '04.Expensive'
    END AS spend_bucket,

---New Column added 7-Revenue
   transaction_qty*unit_price AS Revenue
FROM workspace.default.bright_coffee_shop_analysis_case_study_1_2;
