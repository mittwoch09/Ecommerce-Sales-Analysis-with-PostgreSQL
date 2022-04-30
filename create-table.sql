DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	order_id VARCHAR PRIMARY KEY,
	customer_id VARCHAR,
	order_status VARCHAR,
	order_purchase_timestamp TIMESTAMP,
	order_approved_at TIMESTAMP,
	order_delivered_carrier_date TIMESTAMP,
	order_delivered_customer_date TIMESTAMP,
	order_estimated_delivery_date TIMESTAMP);

COPY orders FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_orders_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	customer_id VARCHAR PRIMARY KEY,
	customer_unique_id VARCHAR,
	customer_zip_code INT,
	customer_city VARCHAR,
	customer_state VARCHAR);
	
COPY customers FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_customers_dataset.csv' DELIMITER ',' CSV HEADER;


DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items (
	order_id VARCHAR,
	order_item_id VARCHAR,
	product_id VARCHAR,
	seller_id VARCHAR,
	shipping_limit_date TIMESTAMP,
	price FLOAT,
	freight_value FLOAT);
	
COPY order_items FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_order_items_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS order_payments;
CREATE TABLE order_payments (
	order_id VARCHAR, 
	payment_sequential INT, 
	payment_type VARCHAR, 
	payment_installments INT, 
	payment_value FLOAT);
	
COPY order_payments FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_order_payments_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS reviews;
CREATE TABLE reviews (
	review_id VARCHAR,
	order_id VARCHAR,
	review_score INT, 
	review_comment_title VARCHAR, 
	review_comment_message VARCHAR, 
	review_creation_date TIMESTAMP, 
	review_answer_timestamp TIMESTAMP);
	 
COPY reviews FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_order_reviews_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	product_id VARCHAR PRIMARY KEY,
	product_category_name VARCHAR,
	product_name_length INT,
	product_description_length INT,
	product_photos_qty INT,
	product_weight_g INT,
	product_length_cm INT,
	product_height_cm INT,
	product_width_cm INT);
	
COPY products FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_products_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS sellers;
CREATE TABLE sellers (
	seller_id VARCHAR PRIMARY KEY,
	seller_zip_code_prefix INT,
	seller_city VARCHAR,
	seller_state VARCHAR);

COPY sellers FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_sellers_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS geolocation;
CREATE TABLE geolocation (
	geolocation_zip_code_prefix INT,
	geolocation_lat FLOAT,
	geolocation_Ing FLOAT,
	geolocation_city VARCHAR,
	geolocation_state VARCHAR);
	 
COPY geolocation FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_geolocation_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS translation;
CREATE TABLE translation (
	product_category_name VARCHAR PRIMARY KEY,
	product_category_name_english VARCHAR);
	
COPY translation FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/product_category_name_translation.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS deals;
CREATE TABLE deals (
	mql_id VARCHAR PRIMARY KEY,
	seller_id VARCHAR,
	sdr_id VARCHAR,
	sr_id VARCHAR,
	won_date TIMESTAMP,
	business_segment VARCHAR,
	lead_type VARCHAR,
	lead_behaviour_profile VARCHAR,
	has_company BOOLEAN,
	has_gtin BOOLEAN,
	average_stock VARCHAR,
	business_type VARCHAR,
	declared_prodcut_catalog_size FLOAT,
	declared_monthly_revenue FLOAT);
	
COPY deals FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_closed_deals_dataset.csv' DELIMITER ',' CSV HEADER;

DROP TABLE IF EXISTS leads;
CREATE TABLE leads (
	mql_id VARCHAR PRIMARY KEY,
	first_contact_date TIMESTAMP,
	landing_page_id VARCHAR,
	origin VARCHAR);

COPY leads FROM '/Users/mac/Data-Analysis/project/Ecommerce-Sales-Analysis-with-PostgreSQL/Dataset/olist_marketing_qualified_leads_dataset.csv' DELIMITER ',' CSV HEADER;