USE Sales;

----- First of all cleaning Customers table

select * from Customers;

------- Checking for missing data

SELECT Count(1) as Total,
count(CustomerKey) * 1.0 / Count(1) as CustomerKey,
count(Prefix) * 1.0 / Count(1) as Prefix,
count(FirstName) * 1.0 / Count(1) as FirstName,
count(LastName) * 1.0 / Count(1) as LastName,
count(BirthDate) * 1.0 / Count(1) as BirthDate,
count(MaritalStatus) * 1.0 / Count(1) as MaritalStatus,
count(Gender) * 1.0 / Count(1) as Gender,
count(EmailAddress) * 1.0 / Count(1) as EmailAddress,
count(Salary) * 1.0 / Count(1) as Salary,
count(TotalChildren) * 1.0 / Count(1) as TotalChildren,
count(EducationLevel) * 1.0 / Count(1) as EducationLevel,
count(Occupation) * 1.0 / Count(1) as Occupation,
count(HomeOwner) * 1.0 / Count(1) as HomeOwner
from Customers;

------ we have 130 null data in prefix but we donot need that columns its not that important that we are missing data on that column.


--------- checking for duplicates

SELECT *, count(*)
from Customers
GROUP BY CustomerKey,Prefix,FirstName,LastName,BirthDate,MaritalStatus,Gender,
EmailAddress,Salary,TotalChildren,EducationLevel,Occupation,HomeOwner
HAVING COUNT(*) >  1;

---------- NO Duplicate Rows Found

------- Checking Outliers

SELECT MAX(YEAR(BirthDate)) as MaxDOB,
MIN(YEAR(BirthDate)) as MinDOB,
AVG(YEAR(BirthDate)) as AVGDOB,
MAX(Salary) AS MaxSalary,
MIN(Salary) AS MINSalary,
AVG(Salary) AS AVGSalary,
MAX(TotalChildren) AS MaxTotalChildren,
MIN(TotalChildren) AS MINTotalChildren,
AVG(TotalChildren) AS AVGTotalChildren
FROM Customers;


---------- No Outliers 

------ there's some NA in Gender Column need to fix that

Select Gender , count(Gender)
FROM Customers
group by Gender;

SELECT FirstName,LastName,Gender
FROM Customers
where Gender = 'NA';

select DATEDIFF(YEAR,BirthDate,GETDATE()) as Age , 
        CASE when DATEDIFF(YEAR,BirthDate,GETDATE()) < 44 then '30-43'
        WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) >= 44 AND DATEDIFF(YEAR,BirthDate,GETDATE()) <=55 THEN '44-55'
        WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) > 55 AND DATEDIFF(YEAR,BirthDate,GETDATE()) <= 70 THEN '56-70'
        ELSE '71+' END As Age_Bin
from Customers;

---- now converting NA into others as these data are useful to us.

SELECT CASE WHEN Gender = 'M' THEN 'Male'
            WHEN Gender = 'F' THEN 'Unknown'
            ELSE 'Unknown' End As Genders
From Customers;


SELECT CASE WHEN MaritalStatus = 'M' THEN 'Married'
            WHEN MaritalStatus = 'S' THEN 'Single'
            ELSE 'Unknown' End As Maritial_status
From Customers;

SELECT CASE WHEN HomeOwner = 'Y' THEN 'Yes'
            WHEN HomeOwner = 'N' THEN 'No'
            ELSE 'Unknown' End As Home_Owner
From Customers;



------- Final Customers Table

DROP TABLE IF EXISTS FInal_Customers

Select CustomerKey,
FirstName,
LastName,
BirthDate,
DATEDIFF(YEAR,BirthDate,GETDATE()) as Age , 
        CASE when DATEDIFF(YEAR,BirthDate,GETDATE()) < 44 then '30-43'
        WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) >= 44 AND DATEDIFF(YEAR,BirthDate,GETDATE()) <=55 THEN '44-55'
        WHEN DATEDIFF(YEAR,BirthDate,GETDATE()) > 55 AND DATEDIFF(YEAR,BirthDate,GETDATE()) <= 70 THEN '56-70'
        ELSE '71+' END As Age_Bin,
CASE WHEN MaritalStatus = 'M' THEN 'Married'
            WHEN MaritalStatus = 'S' THEN 'Single'
            ELSE 'Unknown' End As Maritial_status ,
CASE WHEN Gender = 'M' THEN 'Male'
            WHEN Gender = 'F' THEN 'Female'
            ELSE 'Unknown' End As Genders,
EmailAddress,
Salary,
TotalChildren,
EducationLevel,
Occupation,
CASE WHEN HomeOwner = 'Y' THEN 'Yes'
            WHEN HomeOwner = 'N' THEN 'No'
            ELSE 'Unknown' End As Home_Owner

INTO FInal_Customers
from Customers


Select * FROM FInal_Customers;

----------------------------------------------------------------------------------------
-- This is just a reference table 
SELECT * FROM Product_Category;

SELECT * from Product_Returns;

--------- Everything is good in this table

------- Now  Cleaning Product_sales_2015 Table 

SELECT * FROM Product_sales_2015;


------- Checking for missing data

SELECT Count(1) as Total,
count(Order_Date) * 1.0 / Count(1) as Order_Date,
count(Order_num) * 1.0 / Count(1) as Order_num,
count(Product_Key) * 1.0 / Count(1) as Product_Key,
count(Customer_Key) * 1.0 / Count(1) as Customer_Key,
count(Territory_key) * 1.0 / Count(1) as Territory_key,
count(Order_Quantity) * 1.0 / Count(1) as Order_Quantity

from Product_sales_2015;

-------- no Missing Data 

---- Checking for duplicate data

Select *,COUNT(*)
from Product_sales_2015
GROUP BY Order_Date,Order_num,Product_Key,Customer_Key, Territory_Key, Order_Quantity
HAVING COUNT(*) > 1;

------ No Missing data

------- Now  Cleaning Product_sales_2016 Table 

SELECT * FROM Product_sales_2016;


------- Checking for missing data

SELECT Count(1) as Total,
count(Order_Date) * 1.0 / Count(1) as Order_Date,
count(Order_num) * 1.0 / Count(1) as Order_num,
count(Product_Key) * 1.0 / Count(1) as Product_Key,
count(Customer_Key) * 1.0 / Count(1) as Customer_Key,
count(Territory_key) * 1.0 / Count(1) as Territory_key,
count(Order_Quantity) * 1.0 / Count(1) as Order_Quantity

from Product_sales_2016;

-------- no Missing Data 

---- Checking for duplicate data

Select *,COUNT(*)
from Product_sales_2016
GROUP BY Order_Date,Order_num,Product_Key,Customer_Key, Territory_Key, Order_Quantity
HAVING COUNT(*) > 1;

------ No Missing data

------- Now  Cleaning Product_sales_2017 Table 

SELECT * FROM Product_sales_2017;


------- Checking for missing data

SELECT Count(1) as Total,
count(Order_Date) * 1.0 / Count(1) as Order_Date,
count(Order_num) * 1.0 / Count(1) as Order_num,
count(Product_Key) * 1.0 / Count(1) as Product_Key,
count(Customer_Key) * 1.0 / Count(1) as Customer_Key,
count(Territory_key) * 1.0 / Count(1) as Territory_key,
count(Order_Quantity) * 1.0 / Count(1) as Order_Quantity

from Product_sales_2017;

-------- no Missing Data 

---- Checking for duplicate data

Select *,COUNT(*)
from Product_sales_2017
GROUP BY Order_Date,Order_num,Product_Key,Customer_Key, Territory_Key, Order_Quantity
HAVING COUNT(*) > 1;

------ No Missing data

SELECT * FROM Product_subcategory;
----------- nothing to clean in Product_subcategory table


-------- now cleaning Products table

SELECT * FROM Products;

------- Checking for missing data

SELECT Count(1) as Total,
count(Product_Key) * 1.0 / Count(1) as Product_Key,
count(Product_subcategory_key) * 1.0 / Count(1) as Product_subcategory_key,
count(Product_name) * 1.0 / Count(1) as Product_name,
count(Model_name) * 1.0 / Count(1) as Model_name,
count(Product_description) * 1.0 / Count(1) as Product_description,
count(Product_color) * 1.0 / Count(1) as Product_color,
count(Product_cost) * 1.0 / Count(1) as Product_cost,
count(Product_price) * 1.0 / Count(1) as Product_price
From Products;
----------- No Missing Data

----------- Cchecking for duplicates

SELECT *, COUNT(*)
from Products
GROUP BY Product_key, Product_subcategory_key, Product_name, Model_name, Product_description, Product_color, Product_cost, Product_price
HAVING COUNT(*) > 1

------------ No Duplicate Data


------ We can get profit for each product in new column

Select Product_cost , Product_price, (Product_price - Product_cost) as Profit_Per_Product
from Products;

------- we do not need product_description

DROP TABLE IF EXISTS Final_Products

SELECT Product_key, 
Product_subcategory_key, 
Product_name,
Model_name,
Product_color,
Product_cost,
Product_price,
(Product_price - Product_cost) as Profit_Per_Product
INTO FInal_Products
From Products;


SELECT * FROM FInal_Products;


------- No outliers to check

SELECT * FROM States;

------- Nothing to Check this Table


------------ combining All 3 years sales in one Table
DROP TABLE IF EXISTS Total_Sales;


Select * 
INTO Total_Sales
From (
    SELECT * FROM Product_sales_2015
    UNION
    SELECT * FROM Product_sales_2016
    UNION
    SELECT * 
    FROM Product_sales_2017) as final_sales;

    
SELECT * FROM Total_Sales;

----------- final sales Table joining with product table

DROP TABLE IF EXISTS Final_Sales;

select Ts.Order_Date, Ts.Order_num, Ts.Product_Key,Ts.Customer_Key,Ts.Territory_Key,Ts.Order_Quantity,
p.Product_subcategory_key, (p.Product_cost * ts.Order_Quantity) As Total_Product_Cost, 
(p.Product_price * ts.Order_Quantity) As Total_Product_Price,
(p.Profit_Per_Product * ts.Order_Quantity) As Total_Profit, 
((p.Profit_Per_Product * ts.Order_Quantity) / (p.Product_cost * ts.Order_Quantity) * 100) As Profit_Percent,
case when (p.Product_price * ts.Order_Quantity) >= 2500 then 'High Value '
when (p.Product_price * ts.Order_Quantity) >= 1000 then 'Medium Value'
else 'Low Value' end as Customer_Segment
INTO Final_Sales
FROM Total_Sales Ts
join FInal_Products p on p.product_key = Ts.product_key


SELECT * FROM Final_Sales;




-- Create the DateReference table
DROP Table IF EXISTS DateReference;

CREATE TABLE DateReference (
    DateKey DATE PRIMARY KEY,        -- Date in 'YYYY-MM-DD' format
    Year INT,                        -- Year
    Month INT,                       -- Month (1-12)
    Day INT,                         -- Day of the month (1-31)
    DayOfWeek INT,                   -- Day of the week (1=Monday, 7=Sunday)
    DayName NVARCHAR(10),            -- Name of the day (e.g., Monday)
    MonthName NVARCHAR(10),          -- Name of the month (e.g., January)
    Quarter INT,                     -- Quarter of the year (1-4)
    WeekOfYear INT,                  -- Week of the year (1-52/53)
    IsWeekend BIT                    -- 1 if weekend, 0 if weekday
);

-- Insert data into the DateReference table
DECLARE @StartDate DATE = '2015-01-01';
DECLARE @EndDate DATE = '2017-12-31';

-- Use a WHILE loop to generate dates
WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO DateReference (
        DateKey, 
        Year, 
        Month, 
        Day, 
        DayOfWeek, 
        DayName, 
        MonthName, 
        Quarter, 
        WeekOfYear, 
        IsWeekend
    )
    VALUES (
        @StartDate,
        YEAR(@StartDate),
        MONTH(@StartDate),
        DAY(@StartDate),
        DATEPART(WEEKDAY, @StartDate),
        DATENAME(WEEKDAY, @StartDate),
        DATENAME(MONTH, @StartDate),
        DATEPART(QUARTER, @StartDate),
        DATEPART(ISO_WEEK, @StartDate),
        CASE WHEN DATEPART(WEEKDAY, @StartDate) IN (1, 7) THEN 1 ELSE 0 END
    );

    -- Increment the date by 1 day
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;

 SELECT *
FROM DateReference;