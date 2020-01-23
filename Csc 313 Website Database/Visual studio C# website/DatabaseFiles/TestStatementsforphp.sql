USE DOGSTAIRSINC;

INSERT INTO customer (customerNumber, customerFName, customerLName, phone, addressLine1, addressLine2, city, state, postalCode, country) VALUES
	(1,'jeff', 'davidson', 8593615025, '106 blackberry', 'null', 'georgetown', 'Ky', '40324', 'USA');
	
#generate random ORDER number
#in visual studio	
insert  into orders (orderNumber, orderDate, shippedDate, STATUS, comments, customerNumber) VALUES
	(1, '2003-01-06','2003-01-10','Shipped',NULL,1);
	
INSERT INTO orderdetails (orderNumber, quantityOrdered, stairHeight, stairWidth, stairLength, hasCarpet, typeWood, price) VALUES 
	(1, 1, 10, 15, 12, 'no', 'MAHOGANY', 190.54);
	
	
#get max custNumber then add 1 in php	
SELECT MAX(customerNumber)
FROM customer;

#set customer number to return + 1 in php

SELECT MAX(orderNumber)
FROM orders;


SELECT orderDate, shippedDate, status, comments
FROM orders
WHERE orderNumber = 1;

SELECT orderNumber, quantityOrdered, stairHeight, stairWidth, stairLength, hasCarpet, typeWood, price
FROM orderdetails
WHERE orderNumber = 1;

SELECT c.customerFName c.customerLName, c.phone,c.addressLine1,c.addressLine2,c.city,c.state,c.postalCode,c.country, os.orderNumber, os.quantityOrdered, o.orderDate, o.shippedDate, o.status, o.comments, os.stairHeight, os.stairWidth, os.stairLength, os.hasCarpet, os.typeWood, os.price
FROM orders o JOIN orderdetails os ON o.orderNumber = os.orderNumber JOIN customer c ON o.customerNumber = c.customerNumber
WHERE o.orderNumber = 9;

JOIN customer c ON o.customerNumber = c.customerNumber
#set customer order number with custNumber in php

SELECT os.orderNumber, os.quantityOrdered, o.orderDate, o.shippedDate, o.status, o.comments, os.stairHeight, os.stairWidth, os.stairLength, os.hasCarpet, os.typeWood, os.price FROM orders o JOIN orderdetails os ON o.orderNumber = os.orderNumber WHERE o.orderNumber = 1;

#also set order number in orderdetails