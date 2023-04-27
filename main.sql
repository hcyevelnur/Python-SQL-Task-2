create database Mytask2

create table Salesman(
salesman_id int AUTO_INCREMENT primary key,
name varchar(50) NOT NUll,
city varchar(50),
commission decimal(10,2) Not null
)

create table Customer(
customer_id int,
cust_name varchar(50) NOT NUll,
city varchar(50) NOT NULL,
grade int,
salesman_id int,
PRIMARY KEY (customer_id),
FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id)
)

insert into Salesman(salesman_id, name, city, commission)
values
(5001, "James Hoog", "New York", 0.15),
(5002, "Nail Knife", "Paris", 0.13),
(5005, "Pit Alex", "London", 0.11),
(5006, "Mc Lyon", "Paris", 0.14),
(5003, "Lauson Hense", "", 0.12),
(5007, "Paul Adam", "Roma", 0.13)



insert into Customer (customer_id, cust_name, city, grade, salesman_id)
values
(3002,'Nick Rimondo', 'New York', 100, 5001),
(3005,'Graham Zusi', 'California', 200, 5002),
(3004,'Fabian Johnson', 'Paris', 300, 5006),
(3007,'Brad Davis', 'New York', 200, 5001 ),
(3009,'Geoff Cameron', 'Berlin', 100, 5003 ),
(3008,'Julian Green', 'London', 300, 5002),
(3001,'Brad Guzan', 'London', null,5005),
(3003,'Jozy Altidore', 'Moscow', 200, 5007)


select Salesman.name, Customer.cust_name, Customer.city  from Salesman
inner join Customer on Salesman.salesman_id = Customer.salesman_id


select Salesman.name, Salesman.commission, Customer.cust_name, Customer.city from Salesman
left join Customer on Salesman.salesman_id = Customer.salesman_id



select Customer.cust_name, Customer.city, Customer.grade, Salesman.city from Customer 
left join Salesman on Customer.salesman_id =  Salesman.salesman_id order by Customer.customer_id ASC;



select Customer.cust_name, Customer.city, Salesman.commission from Customer 
inner join Salesman on Customer.salesman_id = Salesman.salesman_id 
where Salesman.commission > 0.12 order by Customer.customer_id ASC;
