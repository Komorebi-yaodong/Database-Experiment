delimiter $
set pages 9000
set line 200
SET TERMOUT OFF
set heading on
set feedback on
set echo off

spool D:\BUAA\大3上\数据库系统及安全实验\实验2\tout.html
set markup html on

PROMPT 第1题 输出结果

SELECT DISTINCT warehouses.WAREHOUSE_NAME,locations.ADDRESS,locations.postal_code,locations.city,locations.state,countries.country_name,regions.region_name
FROM warehouses NATURAL JOIN locations NATURAL JOIN countries NATURAL JOIN regions;

PROMPT 第2题a 输出结果

SELECT CONCAT(first_name,' ',LAST_name) 姓名,email,"employee" 类别
FROM employees
UNION
SELECT CONCAT(first_name,' ',LAST_name) 姓名,email,"contact" 类别
FROM contacts
ORDER BY 姓名;

PROMPT 第2题b 输出结果

SELECT DISTINCT 姓
FROM (
SELECT LAST_name 姓
	FROM employees
	UNION
	SELECT LAST_name 姓
	FROM contacts
	)AS peoples
ORDER BY 姓;

PROMPT 第3题 输出结果

SELECT DISTINCT CONCAT(contacts.first_name,' ',contacts.last_name) 客户联系人姓名,customers.name 客户公司名称,CONCAT(employees.first_name,' ',employees.last_name) 销售代表名称
FROM contacts,customers,orders,employees
WHERE
contacts.customer_id = customers.customer_id AND customers.customer_id=orders.customer_id and orders.salesman_id = employees.employee_id
ORDER BY 客户公司名称;
--  AND orders.`status`="Shipped"

PROMPT 第4题 输出结果

SELECT employees.employee_id,CONCAT(employees.first_name,employees.last_name),SUM(salesman_price.price) sum_price
FROM (
	SELECT orders.salesman_id salesman_id,order_items.quantity * order_items.unit_price price
	FROM orders,order_items
	WHERE orders.`STATUS` <> 'Canceled' AND year(orders.ORDER_DATE) = '2017' AND orders.ORDER_ID = order_items.order_id
) as salesman_price,employees
WHERE salesman_price.salesman_id = employees.employee_id
GROUP BY employees.employee_id
HAVING sum_price>1000000.0
ORDER BY employees.employee_id;

PROMPT 第5题 输出结果

SELECT products.product_name 商品名称,products.description
FROM products
WHERE products.product_id NOT IN (
	SELECT DISTINCT order_items.product_id
	FROM orders , order_items
	WHERE orders.order_id = order_items.order_id
	);

PROMPT 第6题 输出结果

SELECT products1.product_id id,products1.product_name name
FROM orders orders1,orders orders2,order_items order_items1,order_items order_items2,products products1,products products2
WHERE 
	orders1.customer_id=45 AND 
	orders2.customer_id=46 AND 
	orders1.order_id=order_items1.order_id AND 
	orders2.order_id=order_items2.order_id AND 
	order_items1.product_id=products1.product_id AND 
	order_items2.product_id=products2.product_id AND 
	products1.product_id=products2.product_id;

PROMPT 第7题 输出结果

SELECT customers.customer_id 客户ID,customers.name 姓名,COUNT(*) 订单数量,SUM(order_items.quantity*order_items.unit_price) 订单总金额,AVG(order_items.quantity*order_items.unit_price) 订单平均金额
FROM customers,orders,order_items
WHERE orders.order_id = order_items.order_id AND orders.`status`='Shipped' AND orders.customer_id = customers.customer_id
GROUP BY customers.customer_id

PROMPT 第8题 输出结果

SELECT customers.customer_id 客户ID,customers.name 客户名称,customer_price.year_time 年度,customer_price.total_price 采购金额
FROM (
	SELECT SUM(order_items.quantity*order_items.unit_price) total_price,YEAR(orders.order_date) year_time,orders.customer_id id
	FROM orders,order_items
	WHERE orders.order_id = order_items.order_id AND orders.`status`<>"Canceled"
	GROUP BY YEAR(orders.order_date),orders.customer_id
) AS customer_price,customers
WHERE customer_price.id = customers.customer_id
GROUP BY customers.customer_id,customer_price.year_time
ORDER BY 采购金额 DESC

PROMPT 第9题 输出结果

SELECT products.product_id 商品id,products.product_name 商品名称
FROM
	(
	SELECT order_items.product_id id,SUM(order_items.quantity) amount
	FROM orders,order_items
	WHERE orders.order_id=order_items.order_id AND orders.`status` = "Shipped"
	GROUP BY order_items.product_id
	UNION
	SELECT DISTINCT products.product_id id,0 amount
	FROM products
	WHERE products.product_id NOT IN
		(
		SELECT order_items.product_id
		FROM orders,order_items
		WHERE orders.order_id=order_items.order_id AND orders.`status` = "Shipped"
		)
	) AS pro_used,
	(
	SELECT products.product_id id, SUM(inventories.quantity) amount
	FROM products,inventories
	WHERE products.product_id=inventories.product_id
	GROUP BY products.product_id
	UNION
	SELECT DISTINCT products.product_id id,0 amount
	FROM products
	WHERE products.product_id NOT IN 
		(
		SELECT inventories.product_id
		FROM inventories
		)
	) AS pro_amount, products
WHERE products.product_id=pro_amount.id AND pro_amount.id = pro_used.id AND pro_amount.amount <= pro_used.amount
GROUP BY 商品id;

PROMPT 第10题 输出结果

SELECT DISTINCT employees.employee_id,employees.first_name,employees.last_name
FROM employees LEFT JOIN orders ON employees.employee_id=orders.salesman_id
WHERE orders.order_id IS NULL;

PROMPT 第11题 输出结果

SELECT warehouses.warehouse_name 仓库名称,product_categories.category_name 产品类型,SUM(inventories.quantity) 库存数量
FROM warehouses,product_categories,inventories,products
WHERE warehouses.warehouse_id=inventories.warehouse_id AND inventories.product_id=products.product_id AND products.category_id=product_categories.category_id
GROUP BY 仓库名称,产品类型
ORDER BY 仓库名称,产品类型;

PROMPT 第12题 输出结果

SELECT DISTINCT customers0.customer_id ID,customers0.name 客户名称
FROM customers customers0,orders orders0
WHERE customers0.customer_id = orders0.customer_id AND orders0.`status`='Shipped' AND NOT EXISTS
	(
	SELECT *
	FROM order_items order_items100
	WHERE order_items100.order_id = 100 AND order_items100.product_id NOT IN 
		(
		SELECT order_items0.product_id
		FROM order_items order_items0
		WHERE orders0.order_id = order_items0.order_id
		)
	);

PROMPT 第13题 输出结果

SELECT m.id 经理ID,CONCAT(employees.first_name,' ',employees.last_name) 经理姓名,employees.email 经理邮件,employees.phone 经理电话,DATE_FORMAT(employees.hire_date,'%Y-%M-%D') 雇佣日期,employees.job_title 职位
FROM (
	SELECT  manager.employee_id id,COUNT(*) amount
	FROM employees employee,employees manager
	WHERE employee.manager_id = manager.employee_id
	GROUP BY manager.employee_id
	) AS m,employees
WHERE m.id = employees.employee_id AND m.amount >= ALL
	(
	SELECT  COUNT(*) amount
	FROM employees employee,employees manager
	WHERE employee.manager_id = manager.employee_id
	GROUP BY manager.employee_id
	)

set markup html off
spool off
exit
