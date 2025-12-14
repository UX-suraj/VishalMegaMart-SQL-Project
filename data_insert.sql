-- Data insertion for VishalMegaMart project
-- Includes customers, products, orders and order items

-- Customers data
-- (50 customers inserted)
INSERT INTO customers VALUES
(1,'Aman Verma','Male','Delhi','2023-01-10'),
(2,'Rohit Singh','Male','Mumbai','2023-01-15'),
(3,'Priya Sharma','Female','Jaipur','2023-02-01'),
(4,'Neha Gupta','Female','Delhi','2023-02-10'),
(5,'Arjun Patel','Male','Ahmedabad','2023-02-18'),
(6,'Sneha Iyer','Female','Chennai','2023-03-05'),
(7,'Karan Malhotra','Male','Delhi','2023-03-12'),
(8,'Pooja Nair','Female','Kochi','2023-03-20'),
(9,'Rahul Mehta','Male','Pune','2023-04-01'),
(10,'Anjali Singh','Female','Lucknow','2023-04-10'),

(11,'Vikas Yadav','Male','Noida','2023-04-18'),
(12,'Simran Kaur','Female','Chandigarh','2023-05-01'),
(13,'Mohit Jain','Male','Indore','2023-05-10'),
(14,'Ritu Agarwal','Female','Agra','2023-05-15'),
(15,'Nikhil Bansal','Male','Delhi','2023-05-22'),
(16,'Ayesha Khan','Female','Bhopal','2023-06-01'),
(17,'Saurabh Mishra','Male','Prayagraj','2023-06-08'),
(18,'Kavita Joshi','Female','Udaipur','2023-06-15'),
(19,'Manish Kapoor','Male','Gurgaon','2023-06-20'),
(20,'Shalini Verma','Female','Faridabad','2023-07-01'),

(21,'Deepak Rana','Male','Meerut','2023-07-05'),
(22,'Rashmi Saxena','Female','Bareilly','2023-07-12'),
(23,'Akash Tiwari','Male','Kanpur','2023-07-18'),
(24,'Nisha Pandey','Female','Varanasi','2023-07-25'),
(25,'Harsh Gupta','Male','Delhi','2023-08-01'),
(26,'Preeti Arora','Female','Panipat','2023-08-08'),
(27,'Yogesh Kumar','Male','Rohtak','2023-08-15'),
(28,'Meenal Sharma','Female','Ajmer','2023-08-22'),
(29,'Rohini Desai','Female','Surat','2023-09-01'),
(30,'Tushar Shah','Male','Vadodara','2023-09-05'),

(31,'Aditya Kulkarni','Male','Nagpur','2023-09-12'),
(32,'Pallavi Patil','Female','Kolhapur','2023-09-18'),
(33,'Siddharth Rao','Male','Bangalore','2023-09-25'),
(34,'Ankita Sen','Female','Kolkata','2023-10-01'),
(35,'Ramesh Das','Male','Guwahati','2023-10-08'),
(36,'Isha Mukherjee','Female','Howrah','2023-10-12'),
(37,'Vivek Choudhary','Male','Jaipur','2023-10-18'),
(38,'Komal Jain','Female','Ujjain','2023-10-25'),
(39,'Naveen Reddy','Male','Hyderabad','2023-11-01'),
(40,'Srilatha Rao','Female','Vizag','2023-11-05'),

(41,'Anupam Ghosh','Male','Durgapur','2023-11-12'),
(42,'Rina Paul','Female','Asansol','2023-11-18'),
(43,'Prakash Iyer','Male','Coimbatore','2023-11-22'),
(44,'Divya Menon','Female','Trivandrum','2023-11-28'),
(45,'Sanjay Kulkarni','Male','Satara','2023-12-01'),
(46,'Poonam Deshpande','Female','Nashik','2023-12-05'),
(47,'Amit Solanki','Male','Ratlam','2023-12-10'),
(48,'Shweta Chouhan','Female','Jodhpur','2023-12-15'),
(49,'Kishore Naidu','Male','Nellore','2023-12-18'),
(50,'Bhavana Shetty','Female','Mangalore','2023-12-20');

-- Products data
-- (25 products inserted)
INSERT INTO products VALUES
(101,'Laptop','Electronics','HP',55000,40),
(102,'Smartphone','Electronics','Samsung',25000,60),
(103,'Headphones','Electronics','Boat',3000,120),
(104,'Smart TV','Electronics','LG',42000,25),
(105,'Refrigerator','Appliances','Whirlpool',30000,20),

(106,'Washing Machine','Appliances','IFB',28000,18),
(107,'Microwave Oven','Appliances','Samsung',18000,22),
(108,'T-Shirt','Fashion','Nike',1200,150),
(109,'Jeans','Fashion','Levis',2500,100),
(110,'Shoes','Fashion','Puma',3500,80),

(111,'Rice 10kg','Grocery','India Gate',650,200),
(112,'Wheat Flour 5kg','Grocery','Aashirvaad',350,180),
(113,'Cooking Oil 5L','Grocery','Fortune',900,140),
(114,'Sugar 5kg','Grocery','Local',280,160),
(115,'Tea 1kg','Grocery','Tata',520,130),

(116,'Office Chair','Home','Godrej',7500,30),
(117,'Study Table','Home','IKEA',9000,25),
(118,'LED Bulb','Home','Philips',450,300),
(119,'Mixer Grinder','Home','Bajaj',4000,35),
(120,'Water Purifier','Home','Kent',15500,15),

(121,'Tablet','Electronics','Lenovo',18000,28),
(122,'Bluetooth Speaker','Electronics','JBL',6500,45),
(123,'Kurti','Fashion','Biba',2200,70),
(124,'Bedsheet','Home','Bombay Dyeing',1800,90),
(125,'Air Fryer','Appliances','Philips',11000,12);

-- CHECKING IF INSERTD DATA IS CORRECT OR NOT 
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM products;

-- Insert Orders
INSERT INTO orders VALUES
(1001,1,'2023-01-15','Delivered'),
(1002,2,'2023-01-18','Delivered'),
(1003,3,'2023-02-05','Delivered'),
(1004,4,'2023-02-15','Cancelled'),
(1005,5,'2023-02-20','Delivered'),
(1006,6,'2023-03-06','Delivered'),
(1007,7,'2023-03-15','Delivered'),
(1008,8,'2023-03-22','Delivered'),
(1009,9,'2023-04-02','Delivered'),
(1010,10,'2023-04-12','Delivered'),

(1011,1,'2023-04-20','Delivered'),
(1012,2,'2023-04-25','Cancelled'),
(1013,3,'2023-05-05','Delivered'),
(1014,4,'2023-05-18','Delivered'),
(1015,5,'2023-05-25','Delivered'),
(1016,6,'2023-06-02','Delivered'),
(1017,7,'2023-06-10','Delivered'),
(1018,8,'2023-06-18','Delivered'),
(1019,9,'2023-06-25','Delivered'),
(1020,10,'2023-07-03','Delivered'),

(1021,11,'2023-07-10','Delivered'),
(1022,12,'2023-07-15','Delivered'),
(1023,13,'2023-07-20','Cancelled'),
(1024,14,'2023-07-28','Delivered'),
(1025,15,'2023-08-03','Delivered'),
(1026,16,'2023-08-08','Delivered'),
(1027,17,'2023-08-15','Delivered'),
(1028,18,'2023-08-22','Delivered'),
(1029,19,'2023-09-02','Delivered'),
(1030,20,'2023-09-08','Delivered'),

(1031,21,'2023-09-15','Delivered'),
(1032,22,'2023-09-22','Delivered'),
(1033,23,'2023-09-28','Delivered'),
(1034,24,'2023-10-02','Delivered'),
(1035,25,'2023-10-10','Delivered'),
(1036,26,'2023-10-15','Cancelled'),
(1037,27,'2023-10-20','Delivered'),
(1038,28,'2023-10-25','Delivered'),
(1039,29,'2023-11-02','Delivered'),
(1040,30,'2023-11-08','Delivered'),

(1041,31,'2023-11-15','Delivered'),
(1042,32,'2023-11-20','Delivered'),
(1043,33,'2023-11-25','Delivered'),
(1044,34,'2023-12-01','Delivered'),
(1045,35,'2023-12-05','Delivered'),
(1046,36,'2023-12-10','Delivered'),
(1047,37,'2023-12-15','Delivered'),
(1048,38,'2023-12-18','Delivered'),
(1049,39,'2023-12-20','Delivered'),
(1050,40,'2023-12-22','Delivered');

-- INSERTING ORDER ITEMS 
INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),

(3,1002,102,1),
(4,1002,110,1),

(5,1003,108,2),
(6,1003,111,1),

(7,1004,104,1),

(8,1005,105,1),
(9,1005,112,2),

(10,1006,121,1),
(11,1006,118,3),

(12,1007,109,1),
(13,1007,113,1),

(14,1008,116,1),
(15,1008,114,2),

(16,1009,102,1),
(17,1009,122,1),

(18,1010,110,2),
(19,1010,115,1);

-- CHECKING IF INSERTED DATA IS COMPLETE OR NOT 
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;
