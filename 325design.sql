-- Group Name: Databoiz
-- Group Members: Justin Crittenden, Greg Acosta, Evan Blem, Locke Topping, Emad Syed
-- CS_325 - Fall 2023
-- Last Modified: December 8, 2023

-- User Table			
drop table user_info cascade constraints;
create table user_info
(user_id	    char(7),
 f_name		    varchar2(25),
 l_name		    varchar2(25),
 passw		    varchar2(25),
 email		    varchar2(50),
 phone_num	    char(10),
 is_admin	    char(1),
 is_customer	char(1),
 primary key	(user_id)
);

-- Customer Table
drop table customer cascade constraints;
create table customer
(user_id	    char(7),
 primary key	(user_id),
 foreign key	(user_id) references user_info
);

-- Admin Table
drop table admins cascade constraints;
create table admins
(user_id	    char(7),
 primary key	(user_id),
 foreign key	(user_id) references user_info
);

-- Subscription Table
drop table subscription cascade constraints;
create table subscription
(sub_id		    char(7),
 user_id	    char(7),
 sub_plan	    char(1),
 start_date	    date,
 expir_date	    date,
 sub_status	    varchar2(10),
 pay_id         varchar2(15),
 payment_status varchar2(15),
 primary key	(sub_id),
 foreign key	(user_id) references user_info
);

-- Shipping Address Table
drop table shipping_address cascade constraints;
create table shipping_address
(shipping_add_id	char(8),
 bldg_number		integer,
 apt_num		    integer,
 street			    varchar2(20),
 city			    varchar2(20),
 state			    varchar2(20),
 zip_code		    integer,
 user_id		    char(7),
 primary key 		(shipping_add_id),
 foreign key		(user_id) references user_info
);

-- Billing Address Table
drop table billing_address cascade constraints;
create table billing_address
(billing_add_id		char(8),
 bldg_number		integer,
 apt_num		    integer,
 street			    varchar2(20),
 city			    varchar2(20),
 state			    varchar2(20),
 zip_code		    integer,
 user_id		    char(7),
 primary key 		(billing_add_id),
 foreign key		(user_id) references user_info
);

-- Subscription Order Table
drop table subscription_order cascade constraints;
create table subscription_order
(sub_order_id           char(7),
 sub_id			        char(7),
 sub_order_date 	    date,
 sub_order_status	    varchar2(15),
 sub_order_total	    decimal,
 shipping_add_id		char(8),
 billing_add_id		    char(8),
 shipping_method	    varchar2(20),
 shipping_cost		    decimal,
 tracking_num		    char(10),
 primary key 		    (sub_order_id),
 foreign key		    (sub_id) references subscription,
 foreign key		    (shipping_add_id) references shipping_address,
 foreign key		    (billing_add_id) references billing_address
);

-- Shipment Table
drop table shipment cascade constraints;
create table shipment
(shipment_id        char(7),
 order_id           char(7),
 sub_order_id       char(7),
 shipping_date      date,
 shipping_method    varchar2(20),
 tracking_num       char(10),
 shipment_status    varchar2(10),
 shipping_carrier   varchar2(10),
 est_delivery       date,
 delivery_date      date,
 primary key        (shipment_id),
 foreign key        (order_id) references orders,
 foreign key        (sub_order_id) references subscription_order
);

-- Order table
drop table orders cascade constraints;
create table orders
(order_id		    char(7),
 user_id		    char(7),
 order_date		    date,
 order_status		varchar2(15),
 shipping_add_id	char(8),
 billing_add_id		char(8),
 shipping_method    varchar2(20),
 order_total		decimal,
 payment_method		varchar2(25),
 payment_status		varchar2(15),
 primary key		(order_id),
 foreign key		(user_id) references user_info,
 foreign key		(shipping_add_id) references shipping_address,
 foreign key		(billing_add_id) references billing_address
);

-- Line Item Table
drop table line_item cascade constraints;
create table line_item
(line_Item_id		char(7),
 order_id		    char(7),
 product_id		    char(7),
 quantity		    integer,
 unit_price		    decimal,
 total_price		decimal,
 discounts		    decimal,
 tax			    decimal,
 shipping_costs		decimal,
 primary key		(line_Item_id, order_id),
 foreign key		(product_id) references catalog
);

-- Catalog Table
drop table catalog cascade constraints;
create table catalog
(product_id		char(7),
 product_name		varchar2(50),
 product_descr		varchar2(200),
 product_category	varchar2(25),
 product_condition	varchar2(15),
 release_date		date,
 price			decimal,
 stock			char(3),
 manufacturer		varchar2(15),
 platform		varchar2(50),
 primary key		(product_id)
);

-- Customer Order History Table
drop table customer_order_history cascade constraints;
create table customer_order_history
(user_id	char(7),
 order_id	char(7),
 primary key	(user_id),
 foreign key	(user_id) references user_info,
 foreign key	(order_id) references orders
);

-- Payment Info Table
drop table payment_info cascade constraints;
create table payment_info
(pay_id             char(7),
 user_id            char(7),
 card_type          varchar2(25),
 cardholder_lnam    varchar2(25),
 cardholder_fname   varchar2(25),
 card_number        char(16),
 exp_date           char(7),
 cvv                char(3),
 primary key        (user_id, pay_id),
 foreign key        (user_id) references user_info
);
