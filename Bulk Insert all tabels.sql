DROP DATABASE IF EXISTS Sales;

CREATE DATABASE Sales;

USE Sales;

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerKey INT,
    Prefix VARCHAR(5),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    MaritalStatus VARCHAR(2),
    Gender VARCHAR(2),
    EmailAddress VARCHAR(100),
    Salary Decimal(18,1),
    TotalChildren INT,
    EducationLevel VARCHAR(50),
    Occupation VARCHAR(50),
    HomeOwner VARCHAR(2)
);

select * from Customers;

BULK INSERT Customers 
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Customers.csv'
WITH ( 
    format = 'CSV',
    firstrow = 2,
    FieldTerminator = ','
);

select * from Customers;

DROP TABLE IF EXISTS Product_Category;

CREATE TABLE Product_Category ( 
    Product_key INT,
    Category_Name VARCHAR(20)
);

BULK INSERT Product_Category
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Product_Categories.csv'
WITH(
    format = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);

select * from Product_Category;

DROP TABLE IF EXISTS Product_Returns;

CREATE TABLE Product_Returns ( 
    Return_Date DATE,
    Territory_Key INT,
    Product_Key INT,
    Return_Quantity INT
);

BULK insert Product_Returns
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Product_Returns.csv'
WITH(
    FORMAT = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);

select * from Product_Returns;


DROP TABLE IF EXISTS Product_sales_2015;

CREATE TABLE Product_sales_2015 ( 
    Order_Date DATE,
    Order_num VARCHAR(10),
    Product_Key INT,
    Customer_Key INT,
    Territory_Key INT,
    Order_Quantity INT
);

BULK insert Product_sales_2015
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Product_Sales_2015.csv'
WITH(
    FORMAT = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);

Select * FROM Product_sales_2015;


DROP TABLE IF EXISTS Product_sales_2016;

CREATE TABLE Product_sales_2016 ( 
    Order_Date DATE,
    Order_num VARCHAR(10),
    Product_Key INT,
    Customer_Key INT,
    Territory_Key INT,
    Order_Quantity INT
);

BULK insert Product_sales_2016
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Product_Sales_2016.csv'
WITH(
    FORMAT = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);


Select * FROM Product_sales_2016;


DROP TABLE IF EXISTS Product_sales_2017;

CREATE TABLE Product_sales_2017 ( 
    Order_Date DATE,
    Order_num VARCHAR(10),
    Product_Key INT,
    Customer_Key INT,
    Territory_Key INT,
    Order_Quantity INT
);

BULK insert Product_sales_2017
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Product_Sales_2017.csv'
WITH(
    FORMAT = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);


Select * FROM Product_sales_2017;


DROP TABLE IF EXISTS Product_subcategory;

CREATE TABLE Product_subcategory ( 
    Product_subcategory_key INT,
    Subcategory_name VARCHAR(20),
    Product_Key INT
);

BULK insert Product_subcategory
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Product_Subcategories.csv'
WITH(
    FORMAT = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);


Select * FROM Product_subcategory;



DROP TABLE IF EXISTS Products;

CREATE TABLE Products ( 
    Product_key INT,
    Product_subcategory_key INT,
    Product_name VARCHAR(100),
    Model_name VARCHAR(50),
    Product_description VARCHAR(1000),
    Product_color VARCHAR(50),
    Product_cost DECIMAL(18,2),
    Product_price DECIMAL(18,2)
);

BULK insert Products
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\Products.csv'
WITH(
    FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    FIELDQUOTE = '"'
);


Select * FROM Products;



DROP TABLE IF EXISTS States;

CREATE TABLE States ( 
    State_key INT,
    State_name VARCHAR(30)
);

BULK insert States
from 'C:\Users\Ashis\OneDrive\Desktop\DataBootcamp\Bootcamp Project\Sales\State_Mapping.csv'
WITH(
    FORMAT = 'CSV',
    firstrow = 2,
    fieldterminator = ','
);

SELECT * FROM States;