--Preamble 
--Purpose: clean analysis data
-- Author: Wei Wang , Chiyue Zhuang
--Date: 14 November 2024
--Contact: won.wang@mail.utoronto.ca, chiyue.zhuang@mail.utoronto.ca


-- Merge the raw and product tables
CREATE TABLE data AS
SELECT
    p.id AS product_id,
    p.vendor,
    p.product_name,
    CAST(r.current_price AS NUMERIC) AS current_price,
    CAST(r.old_price AS NUMERIC) AS old_price
FROM
    product p
JOIN
    raw r
ON
    p.id = r.product_id;


-- Creates analysis dataset
CREATE TABLE a_data AS
SELECT
    vendor,
    current_price,
    old_price
FROM
    merged_data
WHERE
    vendor IS NOT NULL
    AND current_price IS NOT NULL
    AND old_price IS NOT NULL;




