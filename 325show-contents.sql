-- Group: Databoiz
-- Members: Greg Acosta, Emad Syed, Evan Blem, Justin Crittenden, Locke Topping, Miguel Lopez

-- Last Modified: 12/4/23

spool 325result-contents.txt

col fname FORMAT a20 TRUNCATED
col lname FORMAT a20 TRUNCATED

prompt Showing User_info Table
prompt ***********************
SELECT *
FROM user_info;


prompt Showing Customer Table
prompt ***********************
SELECT *
FROM customer;


prompt Showing Admin Table
prompt ***********************
SELECT *
FROM admins;


prompt Showing Subscription Table
prompt ***********************
SELECT *
FROM subscription;

prompt Showing Shipping Address Table
prompt ***********************
SELECT *
FROM shipping_address;

prompt Showing Billing_Address Table
prompt ***********************
SELECT *
FROM billing_address;

prompt Showing Subscription Order Table
prompt ***********************
SELECT *
FROM subscription_order;

prompt Showing Shipment Table
prompt ***********************
SELECT *
FROM shipment;

prompt Showing Order Table
prompt ***********************
SELECT *
FROM orders;

prompt Showing Line Item Table
prompt ***********************
SELECT *
FROM line_item;

prompt Showing Catalog Table
prompt ***********************
SELECT *
FROM catalog;


prompt Showing Customer Order History Table
prompt ***********************
SELECT *
FROM customer_order_history;

prompt Showing Payment Info Table
prompt ***********************
SELECT *
FROM payment_info;

