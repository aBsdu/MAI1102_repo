CREATE DATABASE ordewr_book
SELECT * FROM order_book.customers;





SELECT * FROM order_book.orders;





SELECT Orders.Order_ID, customers.FName 
FROM customers, orders;


SELECT Orders.Order_ID, customers.FName 
FROM customers CROSS JOIN orders;



SELECT Orders.Order_ID, customers.FName
FROM customers,orders 
WHERE customers.Cust_ID = orders.Cust_ID;




SELECT Orders.Order_ID, customers.FName
FROM customers INNER JOIN orders ON customers.Cust_ID = orders.Cust_ID;




SELECT Orders.Order_ID, customers.FName 
FROM customers LEFT JOIN orders ON customers.Cust_ID = orders.Cust_ID;





SELECT Orders.Order_ID, customers.FName  
FROM customers RIGHT JOIN orders ON customers.Cust_ID = orders.Cust_ID;





SELECT Orders.Order_ID, customers.FName 
FROM customers RIGHT JOIN orders ON customers.Cust_ID = orders.Cust_ID

UNION ALL 

SELECT Orders.Order_ID, customers.FName 
FROM customers LEFT JOIN orders ON customers.Cust_ID = orders.Cust_ID;



