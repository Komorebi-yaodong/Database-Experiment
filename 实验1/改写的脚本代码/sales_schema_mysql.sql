--
-- Name	       : OT (Oracle Tutorial) Sample Database
-- Link	       : http://www.oracletutorial.com/oracle-sample-database/
-- Version     : 1.0
-- Last Updated: July-28-2017
-- Copyright   : Copyright ?2017 by www.oracletutorial.com. All Rights Reserved.
-- Notice      : Use this sample database for the educational purpose only.
--               Credit the site oracletutorial.com explitly in your materials that
--               use this sample database.
--
--
-- execute the following statements to create tables
--
-- regions
CREATE TABLE IF NOT EXISTS `regions`(
   region_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   region_name VARCHAR( 50 ) NOT NULL
  )ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- countries table
CREATE TABLE IF NOT EXISTS `countries`(
   country_id CHAR( 2 ) PRIMARY KEY,
   country_name VARCHAR( 50 ) NOT NULL,
   region_id BIGINT,
   CONSTRAINT fk_countries_regions
   FOREIGN KEY(region_id) REFERENCES regions(region_id)
  )ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- location
CREATE TABLE IF NOT EXISTS `locations`(
   location_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
   address     VARCHAR( 255 ) NOT NULL,
   postal_code VARCHAR( 20 ),
   city        VARCHAR( 50 ),
   state       VARCHAR( 50 ),
   country_id  CHAR( 2 ),
   CONSTRAINT fk_locations_countries 
   FOREIGN KEY(country_id) REFERENCES countries(country_id) 
  )AUTO_INCREMENT=24 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- warehouses
CREATE TABLE IF NOT EXISTS `warehouses`(
    warehouse_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    warehouse_name VARCHAR( 255 ) ,
    location_id    BIGINT, -- fk
    CONSTRAINT fk_warehouses_locations 
      FOREIGN KEY( location_id )REFERENCES locations( location_id ) 
  )AUTO_INCREMENT=10 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- employees
CREATE TABLE IF NOT EXISTS `employees`(
    employee_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR( 255 ) NOT NULL,
    last_name  VARCHAR( 255 ) NOT NULL,
    email      VARCHAR( 255 ) NOT NULL,
    phone      VARCHAR( 50 ) NOT NULL ,
    hire_date  DATE NOT NULL          ,
    manager_id BIGINT, -- fk
    job_title  VARCHAR( 255 ) NOT NULL,
    CONSTRAINT fk_employees_manager 
        FOREIGN KEY( manager_id )REFERENCES employees( employee_id )
  )AUTO_INCREMENT=108 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- product category
CREATE TABLE IF NOT EXISTS `product_categories`(
    category_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR( 255 ) NOT NULL
  )AUTO_INCREMENT=6 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- products table
CREATE TABLE IF NOT EXISTS `products`(
    product_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name  VARCHAR( 255 ) NOT NULL,
    description   VARCHAR( 2000 )        ,
    standard_cost DOUBLE          ,
    list_price    DOUBLE          ,
    category_id   BIGINT NOT NULL         ,
    CONSTRAINT fk_products_categories 
      FOREIGN KEY( category_id )REFERENCES product_categories( category_id )
  )AUTO_INCREMENT=289 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- customers
CREATE TABLE IF NOT EXISTS `customers`(
    customer_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR( 255 ) NOT NULL,
    address      VARCHAR( 255 )         ,
    website      VARCHAR( 255 )         ,
    credit_limit DOUBLE
  )AUTO_INCREMENT=320 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

-- contacts
CREATE TABLE IF NOT EXISTS `contacts`(
    contact_id BIGINT NOT NULL PRIMARY KEY,
    first_name  VARCHAR( 255 ) NOT NULL,
    last_name   VARCHAR( 255 ) NOT NULL,
    email       VARCHAR( 255 ) NOT NULL,
    phone       VARCHAR( 20 )          ,
    customer_id BIGINT                 ,
    CONSTRAINT fk_contacts_customers 
      FOREIGN KEY( customer_id )REFERENCES customers( customer_id )
  )AUTO_INCREMENT=320 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- orders table
CREATE TABLE IF NOT EXISTS `orders`(
    order_id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL, -- fk
    status      VARCHAR( 20 ) NOT NULL ,
    salesman_id BIGINT         , -- fk
    order_date  DATE NOT NULL          ,
    CONSTRAINT fk_orders_customers 
      FOREIGN KEY( customer_id )REFERENCES customers( customer_id ),
    CONSTRAINT fk_orders_employees FOREIGN KEY( salesman_id )REFERENCES employees( employee_id ) 
  )AUTO_INCREMENT=106 ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- order items
CREATE TABLE IF NOT EXISTS `order_items`(
    order_id   BIGINT                                         , -- fk
    item_id    BIGINT                                ,
    product_id BIGINT NOT NULL                       , -- fk
    quantity   DOUBLE NOT NULL                        ,
    unit_price DOUBLE NOT NULL                        ,
    CONSTRAINT pk_order_items 
      PRIMARY KEY( order_id, item_id ),
    CONSTRAINT fk_order_items_products 
      FOREIGN KEY( product_id )
      REFERENCES products( product_id ) ,
    CONSTRAINT fk_order_items_orders 
      FOREIGN KEY( order_id )REFERENCES orders( order_id ) 
  )ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
  
-- inventories
CREATE TABLE IF NOT EXISTS `inventories`(
    product_id   BIGINT        , -- fk
    warehouse_id BIGINT        , -- fk
    quantity     DOUBLE NOT NULL,
    CONSTRAINT pk_inventories 
      PRIMARY KEY( product_id, warehouse_id ),
    CONSTRAINT fk_inventories_products 
      FOREIGN KEY( product_id )REFERENCES products( product_id ) ,
    CONSTRAINT fk_inventories_warehouses 
      FOREIGN KEY( warehouse_id ) REFERENCES warehouses( warehouse_id ) 
  )ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;