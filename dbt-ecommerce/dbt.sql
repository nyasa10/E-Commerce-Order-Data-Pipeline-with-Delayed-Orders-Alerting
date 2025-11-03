CREATE DATABASE ecommerce_db;
USE DATABASE ecommerce_db;

CREATE SCHEMA raw;
CREATE SCHEMA analytics;

CREATE OR REPLACE TABLE raw.orders(
order_id STRING,
customer_id STRING,
order_date DATE
);

CREATE OR REPLACE TABLE raw.customers(
customer_id STRING,
name STRING,
email STRING
);

CREATE OR REPLACE TABLE raw.shipments(
shipment_id STRING,
order_id STRING,
status STRING,
shipped_at TIMESTAMP,
delivered_at TIMESTAMP
);
SELECT*FROM raw.shipments;

SELECT*FROM ECOMMERCE_DB.ANALYTICS.ORDER_STATUS;

update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-01-06' where shipment_id = 'S2';

update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-01-15' where shipment_id = 'S6';


update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-01-19' where shipment_id = 'S9';

update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-03-25' where shipment_id = 'S78';

update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-05-06' where shipment_id = 'S122';

update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-08-14' where shipment_id = 'S222';

update ECOMMERCE_DB.RAW.SHIPMENTS
set DELIVERED_AT = '2025-09-19' where shipment_id = 'S257';


