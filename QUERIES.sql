--ASSIGNMENT -1
1. Select * from salesman;
2. SELECT "This is SQL Exercise, Practice and Solution" AS text;
3. SELECT 5 AS Column1, 10 AS Column2, 15 AS Column3;
4. Select 10+15 as sum;
5. SELECT 10 + 15 - 5 * 2 AS result;
6. SELECT name,commission from salesman;
7. SELECT ord_date,salesman_id,ord_no,purch_amt from orders;
8. SELECT DISTINCT salesman_id from orders;
9. SELECT name,city from salesman where city='paris';
10. SELECT customer_id,cust_name,city,grade,salesman_id from customer where grade=200;
11. SELECT ord_no,ord_date,purch_amt from orders where salesman_id=5001;
12. SELECT year, subject, winner from nobel_win where year=1970;
13. SELECT winner from nobel_win where subject='literature' and year='1971';
14. SELECT year,subject from nobel_win where winner='dennis gabor';
15. SELECT winner from nobel_win where subject='physics' and year>=1950;
16. SELECT year,subject,winner,country from nobel_win where subject='chemistry'and year>=1956 and year<=1975;
SELECT year, subject, winner, country FROM nobel_win WHERE subject = 'Chemistry' AND year BETWEEN 1965 AND 1975;
17. SELECT * from nobel_win where year>1972 and name in ('Menachem Begin','Yitzhak Rabin')
18. SELECT year,subject,winner,country,category from nobel_win where winner like 'louis%';
19. SELECT year, subject, winner, country, category FROM nobel_win WHERE (subject = 'Physics' AND year = 1970) OR (subject = 'Economics' AND year = 1971);
20. SELECT year,subject,winner,country,category from nobel_win where year=1970 and subject not in ('physiology','economics');
21.SELECT year,subject,winner,country,category from nobel_win where (subject='physiology' and year<1971) OR (subject='peace' and year>1974);
22. SELECT * from nobel_win where winner='Johannes Georg Bednorz';
23. SELECT * from nobel_win where subject not like 'P%' order by year DESC,winner ASC;
24. 
25. SELECT * from item_mast where price between 200 and 600;
26. SELECT AVG(pro_price) AS avg FROM item_mast WHERE pro_com = 16;
27. SELECT pro_name as 'Item_Name', pro_price as 'Price_in_Rs'from item_mast;
28. SELECT pro_name,pro_price from item_mast where pro_price >= 250 order by pro_price DESC, pro_name ASC;
29. SELECT avg(pro_price) as average_price,pro_id from item_mast group by pro_com;
30. SELECT pro_name, pro_price FROM item_mast WHERE pro_price = (SELECT MIN(pro_price) FROM item_mast);
31. SELECT DISTINCT emp_lname from emp_details; 
32. SELECT emp_idno,emp_fname,emp_lname,emp_dept from emp_details where emp_lname='Snares';
33. SELECT emp_idno,emp_fname,emp_lname,emp_dept from emp_details where emp_dept=57;

--ASSIGNMENT - 2
1. SELECT customer_id, cust_name,city,grade,salesman_id from customer where grade>100;
2. SELECT customer_id, cust_name,city,grade,salesman_id from customer where grade>100 and city='new york';
3. SELECT customer_id, cust_name,city,grade,salesman_id from customer where grade>100 OR city='new york';
4. SELECT customer_id, cust_name,city,grade,salesman_id from customer where grade<100 or city!='new york';
5. SELECT customer_id, cust_name,city,grade,salesman_id from customer where grade>100 or city!='new york';
6. SELECT ord_no,purch_amt,ord_date,customer_id,salesman_id from orders where (ord_date!='2012-09-10' and salesman_id>5005) or purch_amt >1000;
7. SELECT salesman_id,name,city,commission from salesman where commission between 0.10 and 0.12;
8. SELECT ord_no,purch_amt,ord_date,customer_id,salesman_id from orders where purch_amt<200 OR (ord_date>='2012-02-10' and customer_id<3009);
9. SELECT * from orders where ord_date!='2012-08-17' or (customer_id>3005 and purch_amt<1000);
10. 
11. SELECT * from emp_details where emp_lname in ('dosni','mardy');
12. SELECT * from emp_details where emp_dept in (47,63);

--ASSIGNMENT - 03 
1. SELECT  salesman_id,name,city,commission from salesman where city in ('paris','rome');
2. SELECT  salesman_id,name,city,commission from salesman where city='paris or city='rome';
3. SELECT  salesman_id,name,city,commission from salesman where city not in ('paris','rome');
4. SELECT  salesman_id,name,city,commission from salesman where customer_id in (3007,3008,3009);
5. SELECT  salesman_id,name,city,commission from salesman where commission between 0.12 and 0.14;
6. SELECT  salesman_id,name,city,commission from salesman where purch_amt between 500 and 4000 and purch_amt not in (948.50,1983.43);
7. SELECT salesman_id, name, city, commission FROM salesman WHERE name >= 'B'AND name < 'L';
8. SELECT salesman_id, name, city, commission FROM salesman WHERE LEFT(name, 1) NOT BETWEEN 'A' AND 'M';
9.SELECT salesman_id,name,city,commission from salesman where name like 'b%';
10. SELECT salesman_id,name,city,commission from salesman where name like '%n';
11. SELECT salesman_id,name,city,commission from salesman where name like 'n__i%'; 
12. SELECT col1 FROM testtable WHERE col1 LIKE '%\_%' ESCAPE '\';
13. SELECT col1 FROM testtable WHERE col1 NOT LIKE '%\_%' ESCAPE '\';
14. SELECT col1 FROM testtable WHERE col1 LIKE '%/%';
15. SELECT col1 FROM testtable WHERE col1 NOT LIKE '%/%';
16. SELECT col1 FROM testtable WHERE col1 LIKE '%\_/%' ESCAPE '\';
17. SELECT col1 FROM testtable WHERE col1 NOT LIKE '%\_/%' ESCAPE '\';
18. SELECT col1 FROM testtable WHERE col1 LIKE '%\%%' ESCAPE '\';
19. SELECT col1 FROM testtable WHERE col1 NOT LIKE '%\%%' ESCAPE '\';
20. SELECT customer_id,cust_name,city,grade,salesman_id from customer where grade is null;
21. SELECT customer_id,cust_name,city,grade,salesman_id from customer where grade is not null;
22. SELECT customer_id,cust_name,city,grade,salesman_id from customer where exp_name like 'D%'; 

--ASSIGNMENT - 04
1. SELECT sum(purch_amt) as total_purchase_amount from orders;
2. SELECT avg(purch_amt) as average_purchase_amount from orders;
3. SELECT DISTINCT count(salesman_id) as number_of_salespeople from orders; 
4. SELECT count(*) from orders;
5. SELECT count(cust_name) from orders where grade is not NULL;
6. SELECT max(purch_amt) as MAXIMUM_PURCHASE_AMOUNT from orders;
7. SELECT min(purch_amt) as MINIMUM_PURCHASE_AMOUNT from orders;
8. SELECT max(grade), city from orders group by city; 
9. SELECT max(purch_amt) from orders group by customer_id;
10. SELECT max(purch_amt) from orders group by customer_id,ord_date;
11. SELECT salesman_id,max(purch_amt) as highest_purchase from orders where date='2012-08-17'group by salesman_id;
12. SELECT max(purch_amt) from orders group by customer_id,ord_date having max(purch_amt)>2000.00;
13. SELECT max(purch_amt) from orders group by customer_id,ord_date having max(purch_amt) between 2000 and 6000;
14. SELECT max(purch_amt) from orders group by customer_id,ord_date having max(purch_amt) in (2000,3000,5760,6000);
15. SELECT customer_id,max(purch_amt) from orders group by customer_id having customer_id between 3002 and 3007;
16. SELECT customer_id,max(purch_amt) from orders group by customer_id having customer_id between 3002 and 3007 and max(purch_amt)>1000;
17. SELECT salesman_id,max(purch_amt) from orders group by salesman_id having salesman_id between 5003 and 5008;
18. SELECT count(*) from orders where ord_date='2012-08-17';
19. SELECT count(salesman_id) as number_of_Salespeople from salesman;
20. SELECT ord_date,salesman_id,count(*) from orders group by ord_Date,salesman_id;
21. SELECT avg(pro_price) as average_product_price from item_mast;
22. SELECT count(*) from item_mast where pro_price >= 350;
23. SELECT avg(pro_price) as average_price,pro_com as company_id from item_mast group by pro_com;
24. SELECT sum(dept_Allotment) as sum_of_the_allotment_amount from emp_department;
25. SELECT emp_dept,count(*) as number_of_Employee from emp_details group by emp_dept;

--ASSIGNMENT - 5 
--JOINS
1. SELECT salesman.name,salesman.cust_name,salesmane.city from salesman,customer where salesman.salesman_id=customer.salesman_id and salesman.city=customer.city;
2. SELECT orders.ord_no,orders.purch_amt,customer.cust_name,customer.city from customer,orders where customer.salesman_id=orders.salesman_id and orders.purch_amt between 500 and 2000;
3. SELECT customer.cust_name,salesman.name,salesman.commission from customer,salesman where customer.salesman_id=salesman.salesman_id; 
4. SELECT customer.cust_name,customer.city,salesman.name,salesman.commision from customer,salesman where customer.salesman_id=salesman.salesman_id and salesman.commision*100>12;
5. SELECT customer.cust_name,salesman.name,salesman.city,salesman.commission from customer,salesman where customer.salesman_id=salesman.salesman_id and salesman.city!=customer.city and salesman.commission>0.12;
6. SELECT orders.ord_no,orders.ord_date,orders.purch_amt,customer.cust_name,customer.grade,salesname.name,salesman.commission from orders,customer,salesman where orders.salesman_id=customer.salesman_id and customer.salesman_id=salesman.salesman_id;
7. SELECT s.salesman_id, s.name AS salesman_name, s.city AS salesman_city, s.commission, c.customer_id, c.cust_name, c.city AS customer_city, c.grade, o.ord_no, o.purch_amt, o.ord_date FROM salesman s, customer c, orders o WHERE s.salesman_id = c.salesman_id AND c.customer_id = o.customer_id;
8. SELECT customer.cust_name,customer.city,customer.grade,salesman.name,salesman.city from customer,salesman where customer.salesman_id=salesman.salesman_id order by customer.customer_id ASC;
9. customer.cust_name,customer.city,customer.grade,salesman.name,salesman.city from customer,salesman where customer.salesman_id=salesman.salesman_id and customer.grade<300;
10. SELECT c.cust_name, c.city, o.ord_no, o.ord_date, o.purch_amt FROM customer c, orders o WHERE c.customer_id = o.customer_id ORDER BY o.ord_date ASC;
11.
12.
13.
14.
15.
16.
17. SELECT * from salesman,customer;
18.SELECT * FROM salesman, customer WHERE salesman.city IS NOT NULL;
19. SELECT * FROM salesman, customer WHERE salesman.city IS NOT NULL and customer.grade is not null;
20. SELECT * FROM salesman, customer WHERE salesman.city!=customer.city and customer.grade is not null;
21. SELECT * FROM company_mast, item_mast WHERE company_mast.com_id=item_mast.pro_com;
22. SELECT item_mast.pro_name,item_mast.pro_price,company_mast.com_name from company_mast,item_mast where company_mast.com_id=item_mast.pro_com ;
23. SELECT company_mast.com_name,avg(item_mast.pro_price) as average_price from company_mast,item_mast where company_mast.com_id=item_mast.pro_com group by company_mast.com_name;
24. SELECT company_mast.com_name,avg(item_mast.pro_price) as average_price from company_mast,item_mast where company_mast.com_id=item_mast.pro_com group by company_mast.com_name having avg(item_mast.pro_price)>=350;
25. SELECT max(item_mast.pro_price) as expensive_product, company_mast.com_name, item_mast.pro_name from company_mast,item_mast where company_mast.com_id=item_mast.pro_com group by company_mast.com_name;
26. SELECT * from emp_deapartment,emp_details where emp_department.dpt_Code=emp_details.emp_dept;
27. SELECT emp_details.emp_fname,emp_details.emp_lname,emp_department.dept_allotment from emp_deapartment,emp_details where emp_department.dpt_Code=emp_details.emp_dept;
28. SELECT emp_details.emp_fname,emp_details.emp_lname from emp_deapartment,emp_details where emp_department.dpt_Code=emp_details.emp_dept and emp_department.dpt_allotment>50000;
29. SELECT emp_department.dpt_name from emp_deapartment,emp_details where emp_department.dpt_Code=emp_details.emp_dept group by emp_department.dpt_name having count(*)>2;


--ASSIGNMENT - 06
--SUB QUEIRES

1. SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM orders WHERE salesman_id = (SELECT salesman_id FROM salesman WHERE name = 'Paul Adam');
2. SELECT ord_no,purch_Amt, ord_Date, customer_id, salesman_id from orders where salesman_id = (select salesman_id from salesman where city='london');
3. SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM orders WHERE salesman_id = ( SELECT salesman_id FROM salesman WHERE customer_id=3007);
4. SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id FROM orders WHERE purch_amt > (SELECT AVG(purch_amt) FROM orders WHERE ord_date = '2012-10-10');
5. SELECT ord_no,purch_Amt,ord_Date,customer_id,salesman_id from orders where salesman_id = ( Select salesman_id from salesman where city ='new york');
6. SELECT commission from salesman from salesman where salesman_id =(select salesman_id from customer where city='paris');
7. SELECT cust_name from customer where customer_id=2001 and salesman_id < (select salesman_id from salesman where name = 'MC Lyon');
8. SELECT grade, count(cust_name) as count from customer where grade > (select avg(grade) from customer where city='new york');
9. SELECT ord_no,purch_Amt,ord_date,salesman_id from orders where salesmanid in (select salesmanid from salesman where commission=(select max(commission) from salesman));
10.SELECT ord_no, purch_amt, ord_date, customer_id, salesman_id, (SELECT cust_name FROM Customer WHERE Customer.customer_id = Orders.customer_id) AS cust_name FROM Orders WHERE customer_id IN ( SELECT customer_id FROM Orders WHERE ord_date = '2012-08-17' );
11. SELECT salesman_id, name FROM salesman WHERE salesman_id IN ( SELECT salesman_id FROM customer GROUP BY salesman_id HAVING COUNT(*) > 1 );
12. SELECT ord_no,purch_amt,ord_date,customer_id,salesman_id from orders where purch_amt > (select avg(purch_amt) from orders);
13. SELECT ord_no, purch_amt,ord_date, customer_id, salesman_id from orders where purch_amt >= (select avg(purch_amt) from orders);
14. SELECT sum(purch_amt) from orders group by ord_date not having sum(purch_amt)>=(max(purch_amt)+1000); 
15.
16. SELECT salesman_id,name,city,commission from salesman where salesman_id in (select salesman_id from customer group by salesman_id having count(*)>1);
17. SELECT salesman_id,name,city,commission from salesman where salesman_id in (select salesman_id from customer group by salesman_id having count(*)=1);
18. SELECT salesman_id,name,city,commission from salesman where salesman_id in (select salesman_id from orders group by salesman_id having count(ord_no)>1);
19. SELECT salesman_id,name,city,commission from salesman where salesman_id in (select salesman_id from orders where city in (select city from customer));
20. SELECT salesman_id,name,city,commission from salesman where city in (select city from customer);
21.
22.
23.
24.
25.
26.
27.
28.
29.
30.
31. SELECT com_name AS "Company", (SELECT AVG(pro_price) FROM item_mast WHERE pro_com = company_mast.com_id) AS "Average Price” FROM company_mast;

--NORTHWIND CHALLENGE ASSIGNMENT -01

1. SELECT orders.orderid from orders,customers where customers.customerid=orders.customerid and customers.contactname=’HANNA MOOS’;
2. SELECT products.ProductName FROM orders, products WHERE orders.ProductID = products.ProductID AND orders.OrderID = 11011;
3. SELECT total_amount from orders where orderID=11011;
4. SELECT customers.contactname,employees.firstname from orders,customers,employees where customers.customerid=orders.customerid and employees.employeeid=orders.employeeid and orders.orderdate between ‘2020-01-30’ and ‘2021-03-05’;
5. SELECT shipcountry,count(*) from orders group by shipcountry;
6. SELECT categories.categoryname,SUM(orders.total_Amount) as total_sale from orders,products,categories where categories.categoryid=products.categoryid and orders.productid=product.productsid group by categories.categoryname order by total_sale DESC;
7. SELECT products.productname,SUM(orders.total_Amount) as ‘Total_Sale’ from orders,products where orders.productid=products.productid group by products.productname order by Total_Sale Desc;
8. SELECT sum(total_amount) as ‘Total_Sale’ from orders;
9.SELECT orders.orderid products.productname,Orders.quantity,orders.UnitPrice, Sum(orders.total_amount) as ‘Total_Amount’ from orders,products where products.productid=orders.productid group by orders.orderidproducts.ProductName, orders.Quantity,orders.UnitPrice;
10. SELECT orders.orderid from customers,orders where customers.customerid=orders.customerid and customers.contactname=’Laura’;
 

--NORTHWIND ASSIGNMENT -02

# Select products.productname, supplier.contact name,sum(products.unitsinprice) from supplier,product where suppliers.supplierid=products.supplierid group by supplier.id, products.productname
1.SELECT orders.orderid,customers.contactname from orders,customers,products where customers.customerid=orders.customerid and products.productid=orders.productid and products.productname=’Tofu’;
2.SELECT DISTINCT suppliers.contactname from suppliers,products where products.supplierid=suppliers.supplierid and products.productname in (‘tofu’,’ipoh  coffee’);
3.SELECT customers.contactname,count(*) from customers,orders where customers.city=’london’ and customers.customerid=orders.customerid group by orders.customerid having count(*)>1;
4.SELECT customers.contactname,employees.firstname  from customers,employees where customers.city=employees.city;
5.SELECT contactname,companyname from customers where contacttitle=’Owner’;
6.SELECT orders.orderid from orders,employees where employees.employeeid=orders.employeeid and employees.firstname=’Anne’;
7.SELECT employees.fullname,count(orders.orderid) as total_order from orders,employee where employees.employeeid=orders.employeeid group by employees.employeeid,employees.fullname order by total_order DESC;
8.SELECT products.productname from products,suppliers where suppliers.supplierid=products.supplierid and suppliers.companyname=’tokyo traders’;
9.SELECT month(orderdate) as sale_month, sum(total_amount) as total_sale from orders group by month(orderdate) order by sale_month DESC;
10.SELECT DATE(OrderDate) AS Date,DAYNAME(OrderDate) AS WeekName, SUM(Total_Amount) AS TotalSale FROM orders WHERE DAYOFWEEK(OrderDate) = 1 GROUP BY DATE(OrderDate), DAYNAME(OrderDate) ORDER BY Date;

--NORTHWIND ASSIGNMENT -03

1.SELECT count(*) as product_count from products where unitprice<20;
2.SELECT productname,unitprice from products group by unitprice DESC  limit 1; 
3.SELECT avg(unitprice) as average_unitprice from products;
4.SELECT COUNT(*) AS Products_Above_Average FROM products WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM products);
5. SELECT count(*) from products where unitprice between 15 and 25;
6. SELECT count(*) as employees_count from (select employees.employeeid from employees,orders where employees.employeeid=orders.employeeid and year(orders.orderdate)=2022 group by employees.employeeid having sum(orders.total_Amount)>100000) as employee_sale;
24. SELECT  count(*) as employees_count from employees where year(hiredate)=1994;

--NORTHWIND
--Exercise Simple SQL Queries
  
1.SELECT * from customers; SELECT * from Orders; SELECT * from suppliers;
2.SELECT * from customers order by country,contactname;
3.SELECT * from orders order by orderdate;
4.SELECT count(*) as total_order from orders where year(orderdate)=1997;
5.SELECT contactname from customer where contacttitle=’manager’ order by contactname;
6.SELECT orderid from orders where orderdate=’1997-05-19’;
  
--Exercise SQL Queries for JOINS
1.SELECT customers.customerid,orders.orderid,customers.contactname from customers,orders where customers.customerid=orders.customerid and year(orderdate)=1996;
2.SELECT employees.city,  (SELECT count(*) from customers where employees.city=customer.city) as customer_count, count(employees.employeeid) as employee_count from employees group by employees.city;
3.SELECT customers.city,  (SELECT count(*) from employees where employees.city=customer.city) as employee_count, count(customers.customerid) as customer_count from customers group by customers.city;
4.SELECT cities.City, (SELECT COUNT(*) FROM employees WHERE employees.City = cities.City) AS Employees_Count, (SELECT COUNT(*) FROM customers WHERE customers.City = cities.City) AS Customers_Count FROM (SELECT City FROM employees UNION SELECT City FROM customers) AS cities;

--Exercise SQL Queries for HAVING
1.SELECT orders.orderid,employees.fullname,orders.shippeddate from orders,employees where employees.employeeid=orders.employeeid and orders.orderdate>orders.requireddate; 
2.SELECT products.productname,sum(orders.quantity) as total_quantity from orders,products where products.productid=orders.productid group by orders.productid, products.productname having sum(orders.quantity)<200;
3.SELECT customers.contactname, count(orders.orderid) as total_orders from customers,orders where  customers.customerid=orders.customerid and orders.orderdate>=’1996-12-31’ group by customers.customerid,customers.contanctname having count(orders.orderid)>15;

--Exercise SQL Inserting Records

1.INSERT INTO employees (LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, City, Region, PostalCode, Country, HomePhone, ReportsTo) VALUES ('Sharma', 'Drishti', 'Manager', 'Ms.', '2008-10-13', '2020-04-05', 'Gwalior', 'Thatipur', '474011', 'India', '9893173144', NULL);
2.INSERT INTO orders (CustomerID, EmployeeID, OrderDate, RequiredDate) VALUES (1, 1, '2026-10-10', '2026-10-20');
3.INSERT INTO orders (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES (11078, 1, 18.00, 5, 0);


--Exercise SQL Updating Records
  
1.Update employees set homephone=’8770804615’ where firstname=’Drishti’;
2.UPDATE orders SET Quantity = Quantity * 2 WHERE OrderID = 11078 AND ProductID = 1;
3.Update orders set quantity=quantity*2 where customerID=’1’;

--Exercise SQL Deleting Records
  
1.Delete from employees where firstname=’drishti’;

--Exercise Advance SQL Queries
  
1.SELECT sum(total_amount) as total_revenue from orders where year(orderdate)=1997;
2.SELECT customers.contactname,sum(total_Amount) as total_Amount from customers,orders where customers.customerid=orders.customerid group by customers.customerid,customers.companyname;
3.SELECT products.productname,sum(orders.quantity) from products,orders where products,productid=orders.productid group by products.productname,products.productid order by sum(orders.quantity) DESC limit 10;
4.SELECT customers.contact name, sum(orders.total_Amount)  as total_revenue from orders,products where orders.productid=products.productid group by customers.customerid,customer.contactname order by total_revenue DESC;
5.SELECT customers.contactname, sum(orders.total_amount) as total_Amount from orders,customers where customers.customerid=orders.customerid and customers.country=’UK’ group by customers.contactname,customers.customerid having sum(orders.total_Amount)>1000;
6.SELECT customers.customerid,customers.companyname,customers.country,sum(orders.total_Amount),IFNULL((Select sum(orders.total_amount) from orders,customers where customers.customerid=orders.customerid and year(orders.orderdate)>=1997),0) as revenue_1997 from orders,customers where customers.customerid=orders.customerid group by customers.customerid;


--QUERYING THE DATABASE PART-01
  
1.SELECT categoryname,description from categories;
2.SELECT contactname,customerid,companyname from customers where city=’london’;
3.SELECT * from suppliers where fax is not null;
4.Select customerid from orders where requireddate between ‘1997-01-01’ and ‘1998-01-01’ and freight<100;
5.SELECT companyname,contactname from customers where contacttitle=’owner’ and country in (‘mexico’,’sweden’,’germany’);
6.SELECT count(*) as discontinued_products from products where discontinued=1;
7.SELECT categoryname,description from categories where categoryname like ‘Co%’;
8.SELECT companyname,city,country,postalcode from suppliers where address like ‘%rue%’ order by companyname DESC;
9.SELECT productid,sum(quantity) as total_quantity from orders group by productid;
10.SELECT contactname,address from customers,orders where customers.customerid=orders.customerid where orders.shipvia in (SELECT SupplierID FROM suppliers WHERE CompanyName = 'Speedy Express');
11.SELECT companyname,contactname,contacttitle,region from suppliers;
12.SELECT products.ProductName FROM products, categories WHERE products.CategoryID = categories.CategoryID AND categories.CategoryName = 'Condiments';
13.SELECT contactname from customers where customerid not in (select customerid from orders);
14.INSERT INTO Shippers (CompanyName) VALUES ('Amazon');
15.UPDATE shippers set company name= ‘amazon prime shipping where company name =’amazon’;
16.SELECT Shippers.CompanyName, ROUND(SUM(orders.Freight)) AS Total_Freight FROM Shipper,orders where Shippers.ShipperID = orders.ShipVia GROUP BY Shippers.ShipperID, Shippers.CompanyName;
19.SELECT concat(lastname,’  ’,firstname) as display name from employees; 
20.SELECT productname,sum(unitinstock) as total_units from products group by productname having sum(unitinstock)>100;

--Querying the database – Part 2

1.SELECT firstname,address,city,region from employees;
2.SELECT firstname,address,city,region from employees where country=’USA’;
3.SELECT firstname,address,city,region from employees where TIMESTAMPDIFF(YEAR,birthdate,CURDATE())>50;
4.SELECT DISTINCT e.firstname,e.lastname,e.address,e.city,e.region from employees e,orders where employees.employeeid=orders.employeesid and orders.shipcity=’belgium’;
5.SELECT employees.FirstName,employees.LastName,customers.CompanyName AS CustomerName FROM employees, customers, orders, Shippers WHERE employees.EmployeeID = orders.EmployeeID AND customers.CustomerID = orders.CustomerID AND orders.ShipVia = Shippers.ShipperID AND Shippers.CompanyName = 'Speedy Express' AND customers.City = 'Brussels';
6.SELECT DISTINCT employees.fullname,employees.title from employees,products,orders where employees.employeeid=orders.employeeid and orders.productid=products.productid and products.productname in ('Gravad Lax', 'Mishi Kobe Niku');


