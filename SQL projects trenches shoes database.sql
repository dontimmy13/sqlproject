--CREATING TABLE




--CREATE TABLE employee (
--	emp_id INT,
--	first_name VARCHAR(40),
--	last_name VARCHAR(40),
--	sex VARCHAR(1),
--	birth_day DATE,
--	dep_id VARCHAR(1),
--	salary INT,
--	PRIMARY KEY (emp_id),
	
--);

--CREATE TABLE department(
--	dep_id VARCHAR(1),
--	dept_name VARCHAR(100),
--	department_head VARCHAR(100),
--	PRIMARY KEY (dep_id),

--);

--CREATE TABLE client(
--	client_id INT ,
--	first_name VARCHAR(100),
--	last_name VARCHAR(100),
--	mail_address VARCHAR(100),
--	phone_number INT,
--	PRIMARY KEY (client_id)
--);

--CREATE TABLE product(
--	product_id INT,
--	product_name VARCHAR(100),
--	price INT,
--	categories VARCHAR(100),
--	PRIMARY KEY (product_id)
--);

--CREATE TABLE orders(
--	order_id INT,
--	product_id INT,
--	client_id INT,
--	quantity_ordered INT,
--	price_in_total INT,
--	order_status VARCHAR(100),
--	PRIMARY KEY (order_id),
--)

--CREATE TABLE supplier(
--	supplier_id INT,
--	supplier_name VARCHAR(100),
	
--);





--INSERTING VALUES INTO THE TABLE




--INSERT INTO product VALUES(101,'coperate shoes',22000,'male footwear')
--INSERT INTO product VALUES(102,'loafers',18000,'male footwear')
--INSERT INTO product VALUES(103,'mules',16000,'male footwear')
--INSERT INTO product VALUES(104,'boot',18000,'male footwear')
--INSERT INTO product VALUES(105,'palm slippers',10000,'male footwear')
--INSERT INTO product VALUES(106,'berkin stocks',13000,'male footwear')
--INSERT INTO product VALUES(107,'slippers heels/mules',10000,'female footwear')
--INSERT INTO product VALUES(108,'flat slippers',7000,'female footwear')

--INSERT INTO department VALUES('A','marketing','timilehin')
--INSERT INTO department VALUES('B','accounting','seun')
--INSERT INTO department VALUES('C','cobbler & design','kanye west')
--INSERT INTO department VALUES('D','data analyst','alex')

--INSERT INTO supplier VALUES(1,'G & G logistics')
--INSERT INTO supplier VALUES(2,'jumia delivery inc')
--INSERT INTO supplier VALUES(3,'open seas')

--INSERT INTO client VALUES(1,'jakande','sikiru','jakande@gmail.com',0814473867)
--INSERT INTO client VALUES(2,'kendrick','lamar','lamar@gmail.com',08823456667)
--INSERT INTO client VALUES(3,'precious','patrick','precious@gmail.com',072345532)
--INSERT INTO client VALUES(4,'jake','sponge','jks@gmail.com',0808948667)
--INSERT INTO client VALUES(5,'lawrence','okoeki','lawrence@gmail.com',0172556338)
--INSERT INTO client VALUES(6,'mercy','bigmouth','bigmouthe@gmail.com',02399850)
--INSERT INTO client VALUES(7,'favour','smith','favours@gmail.com',0866473867)
--INSERT INTO client VALUES(8,'badoo','olamide','olamide@gmail.com',0102656867)
--INSERT INTO client VALUES(9,'funmilayo','ireti','funmiri@gmail.com',08144787)
--INSERT INTO client VALUES(10,'joy','matthew','joy@gmail.com',0833889337)
--INSERT INTO client VALUES(11,'young','thug','thugerthuger@gmail.com',0079985634)

--INSERT INTO employee VALUES(1,'timilehin','titus','M','2003-04-22','A',200000)
--INSERT INTO employee VALUES(2,'seun','morale','F','1999-11-09','B',150000)
--INSERT INTO employee VALUES(3,'kanye','west','M','2001-09-22','C',300000)
--INSERT INTO employee VALUES(4,'alex','freeman','M','1996-01-30','D',250000)
--INSERT INTO employee VALUES(5,'roddy','ricch','M','2004-08-11','A',50000)
--INSERT INTO employee VALUES(6,'nicki','minaj','f','1999-10-05','C',30000)
--INSERT INTO employee VALUES(7,'jasmine','rice','f','2004-04-10','C',30000)
--INSERT INTO employee VALUES(8,'will','smith','M','1990-02-15','B',400000)
--INSERT INTO employee VALUES(9,'olive','biscuits','F','2002-05-10','D',60000)
--INSERT INTO employee VALUES(10,'esther','dele','F','2000-08-21','A',50000)
--INSERT INTO employee VALUES(11,'davido','obo','M','1999-03-18','C',30000)
--INSERT INTO employee VALUES(12,'gift','fryo','F','2002-02-13','C',30000)
--INSERT INTO employee VALUES(13,'wizkid','starboy','M','2004-06-29','C',30000)

--INSERT INTO orders VALUES(1,102,1,2,36000,'processed')
--INSERT INTO orders VALUES(2,103,3,2,32000,'pending')
--INSERT INTO orders VALUES(3,108,2,4,28000,'processed')
--INSERT INTO orders VALUES(4,106,11,1,13000,'processed')
--INSERT INTO orders VALUES(5,101,9,4,88000,'pending')
--INSERT INTO orders VALUES(6,101,7,2,44000,'pending')
--INSERT INTO orders VALUES(7,101,6,1,22000,'processed')
--INSERT INTO orders VALUES(8,103,10,1,16000,'processed')
--INSERT INTO orders VALUES(9,101,3,1,66000,'processed')
--INSERT INTO orders VALUES(10,104,10,1,18000,'pending')
--INSERT INTO orders VALUES(11,107,5,4,40000,'processed')
--INSERT INTO orders VALUES(12,107,4,1,10000,'pending')
--INSERT INTO orders VALUES(13,108,8,1,7000,'processed')
--INSERT INTO orders VALUES(14,106,9,2,26000,'pending')
--INSERT INTO orders VALUES(15,105,8,9,90000,'pending')
--INSERT INTO orders VALUES(16,104,6,3,54000,'processed')
--INSERT INTO orders VALUES(17,101,2,6,132000,'processed')
--INSERT INTO orders VALUES(18,102,2,1,18000,'pending')
--INSERT INTO orders VALUES(19,103,4,3,39000,'processed')
--INSERT INTO orders VALUES(20,108,6,5,35000,'processed')










-----WRITING BASIC QUERIES





--The select clause
--	select first_name,last_name,salary
--	from employee
--so let say i want to increase the salary of all the employee by adding 100000 to it and putting it on a new column called updated salary using an alias
--	select first_name,last_name,salary,salary+100000 as "updated salary"
--	from employee

--The where clause
--	select*
--	from employee
--	where salary> 130000
--i want to get the first name and last name of employee that their birthday is lesser or equals to the year 2000
--	select first_name,last_name
--	from employee
--	where birth_day<= '2000-01-01'

--The AND,OR and NOT operators
--here i'm making use of the and operator in this case both where conditions should be true
--	select first_name,last_name
--	from employee
--	where birth_day<= '2000-01-01' AND salary >100000
--here the or operator in this case at least one of the conditions should be true
--		select first_name,last_name
--		from employee
--		where birth_day<= '2000-01-01' or salary>100000
--here i'm making use of the not operator
--	select first_name,last_name
--	from employee
--	where NOT birth_day<= '2000-01-01' or salary>100000

--The between operator
--	here salary is going to be greater or equals to 100000 or less than or equals to 200000
--	select*
--	from employee
--	where salary between 100000 and 200000
	
--how to retrieve row that match a specific pattern using the like operator
--	example any eemploee whose last name begin with a t
--	select *
--	from employee
--	where last_name like 't%'

--	example any eemploee whose last name end with a o
--	select *
--	from employee
--	where last_name like '%o'


--order by clause
--this is used to sort rows in a table either by ascending or descending 
--	SELECT*
--	from client
--	order by first_name 

--joins
--combining columns from multi[le tables
--	SELECT*
--	from client
--	join orders on client.client_id=orders.client_id

--unions
--combining rows from multiple tables
--	SELECT first_name 
--	from client
--	union
--	select first_name
--	from employee

	
--updating a single row

--update orders
--set 
--	order_status='pending'
--where order_id=11

