create database ca2; #creating the database 
use ca2; #use database for the following tables:
#____________________________________________________________________________________________________________________________________________
#I created these tables based on my first CA. 
#CA1 contained: Customer, Purchase_Order, Line_Item, Stock_Item, Supplier, Category and Employee tables
#It still contains Employees, even though they are not relevant here.
#I added an Invoice table which is linked to the Purchase Orders mainly to summarise the final order price including vat and delivery costs.
#I added a Payment Type table which is linked to the invoices. It is still a first draft because I did not use it for the queries.
#I added a Return_Order table which is linked to the Customers and line items. The returns are therefore not directly referring to the orders.
	#They create another Line_Item in the Line_Item table which will influence the Stock_Item table, once a new Line_Item is created (trigger 2)

#Customer table which is linked to Purchase_Order and Return_Order with FK Customer_ID
CREATE TABLE Customer (
    Customer_ID INT(11) NOT NULL AUTO_INCREMENT, #PK, which auto-increments starting at 100001 -> all customers start with 1
    Customer_FName VARCHAR(50) NOT NULL, #mandatory field
    Customer_LName VARCHAR(50) NOT NULL, #mandatory field
    Address VARCHAR(50) NOT NULL, #mandatory field
    City VARCHAR(50) NOT NULL, #mandatory field
    Region VARCHAR(50) DEFAULT NULL, #not andatory field, because not every address has a region line
    Post_Code VARCHAR(20) DEFAULT NULL, #not andatory field, because not every address has a post code
    Country VARCHAR(50) NOT NULL, #mandatory field
    Phone VARCHAR(50) DEFAULT NULL,  #not andatory field, email address is sufficient as contact detail
    Email VARCHAR(50) NOT NULL, #mandatory field
    PRIMARY KEY (Customer_ID) #creating PK
)  AUTO_INCREMENT=100001; #Custpmer ids start at 100001 and are incremented by 1

#Purchase_Order table which is linked to Customer, Employee and Invoice with FK Customer_ID and Order_ID
CREATE TABLE Purchase_Order (
    Order_ID INT(11) NOT NULL AUTO_INCREMENT, #PK, which auto-increments starting at 200001 -> all orders start with 2
    Customer_ID INT(11) NOT NULL, #FK mandatory field
    Order_Date DATE NOT NULL, #mandatory field
    Shipped_Date DATE NOT NULL, #mandatory field
    Ship_Address VARCHAR(50) NOT NULL, #mandatory field
    Ship_City VARCHAR(50) NOT NULL, #mandatory field
    Ship_Region VARCHAR(50) DEFAULT NULL, #not andatory field, because not every address has a region line
    Ship_Post_Code VARCHAR(20) DEFAULT NULL, #not andatory field, because not every address has a post code
    Ship_Country VARCHAR(50) NOT NULL, #mandatory field
    Employee_ID INT(11) NOT NULL,
    PRIMARY KEY (Order_ID), #PK
    FOREIGN KEY (Customer_ID) #FK
        REFERENCES Customer (Customer_ID) #FK from Customer table
)  AUTO_INCREMENT=200001; #Order ids start at 200001 and are incremented by 1

#Line_Item table which is linked to Purchase_Order, Return_Order and Stock_Item with FK Order_ID, Return_Order_ID, Stock_Item_ID
CREATE TABLE Line_Item (
    Line_Item_ID INT(11) NOT NULL AUTO_INCREMENT, #PK, which auto-increments starting at 300001 -> all line_items start with 3
    Order_ID INT(11) DEFAULT NULL, #FK not mandatory field, because a line item can exist through placing an order OR a return
    Return_Order_ID INT(11) DEFAULT NULL, #FK not mandatory field, because a line item can exist through placing an order OR a return
    Stock_Item_ID INT(11) NOT NULL, #FK mandatory field
    Quantity INT(50) NOT NULL, #mandatory field
    PRIMARY KEY (Line_Item_ID), #PK
    FOREIGN KEY (Order_ID) #FK
        REFERENCES Purchase_Order (Order_ID) #FK from Purchase_Order table
)  AUTO_INCREMENT=300001; #Line Item ids start at 300001 and are incremented by 1

#Stock_Item table which is linked to Line_Item, Supplier and Category with FK Stock_Item_ID, Supplier_ID, Category_ID
CREATE TABLE Stock_Item (
    Stock_Item_ID INT(11) AUTO_INCREMENT NOT NULL, #PK, which auto-increments starting at 400001 -> all stock_items start with 4
    Item_Description VARCHAR(255) DEFAULT NULL, #there can be items initially without description
	Stock_Size INT(11) DEFAULT NULL, #stock can be or can go down to null
    Category_ID INT(11) NOT NULL, #mandatory field, each stock item belongs in one category
    Arrival_Date DATE NOT NULL, #arrival date of stock item from supplier, mandatory field
    Purchase_Price DECIMAL(5 , 2 ) NOT NULL, #mandatory field
    Sales_Price_Ex_VAT DECIMAL(5 , 2 ) NOT NULL, #mandatory field
    VAT DECIMAL(5 , 2 ) NOT NULL, #mandatory field
    Sales_Price_Inc_VAT  DECIMAL(5 , 2 ) NOT NULL, #mandatory field
    Supplier_ID INT(11) NOT NULL, #mandatory field
    PRIMARY KEY (Stock_Item_ID) #PK
)  AUTO_INCREMENT=400001; #Stock Item ids start at 400001 and are incremented by 1

alter table Line_Item #subsequently altering Line_Item table with FK (Stock_Item_ID)
add foreign key (Stock_Item_ID) 
references Stock_Item(Stock_Item_ID);

#Category table which is linked to Stock_Item with FK Category_ID
CREATE TABLE Category (
    Category_ID INT(11) AUTO_INCREMENT NOT NULL, #PK, which auto-increments starting at 1, then 2, then 3 ...
    Category_Name VARCHAR(50) NOT NULL, #mandatory field
    Category_Description VARCHAR(255) DEFAULT NULL, #there can be items initially without description
    PRIMARY KEY (Category_ID) #PK
);

alter table Stock_Item #subsequently altering Stock_Item table with FK (Category_ID)
add foreign key (Category_ID) 
references Category (Category_ID);

#Supplier table which is linked to Stock_Item with FK Supplier_ID
CREATE TABLE Supplier (
    Supplier_ID INT(11) AUTO_INCREMENT NOT NULL, #PK, which auto-increments starting at 500001 -> all suppliers start with 5
    Company_Name VARCHAR(50) NOT NULL, #mandatory field
    Contract_Name VARCHAR(50) NOT NULL, #mandatory field
    Address VARCHAR(50) NOT NULL, #mandatory field
    City VARCHAR(50) NOT NULL, #mandatory field
    Region VARCHAR(50) DEFAULT NULL, #not andatory field, because not every address has a region line
    Post_Code VARCHAR(20) DEFAULT NULL, #not andatory field, because not every address has a post code
    Country VARCHAR(50) NOT NULL, #mandatory field
    Phone VARCHAR(50) NOT NULL, #mandatory field
    Email VARCHAR(50) NOT NULL, #mandatory field
    PRIMARY KEY (Supplier_ID) #PK
)  AUTO_INCREMENT=500001; #Supplier ids start at 500001 and are incremented by 1

alter table Stock_Item #subsequent altering Stock_Item table with FK (Supplier_ID)
add foreign key (Supplier_ID) 
references Supplier(Supplier_ID);

#Employee table which is linked to Purchase_Order with FK Employee_ID; not really relevant for this CA.
CREATE TABLE Employee (
    Employee_ID INT(11) AUTO_INCREMENT NOT NULL, #PK, which auto-increments starting at 600001 -> all Employees start with 6
    Employee_FName VARCHAR(50) NOT NULL, #mandatory field
    Employee_LName VARCHAR(50) NOT NULL, #mandatory field
    Address VARCHAR(50) NOT NULL, #mandatory field
    City VARCHAR(50) NOT NULL, #mandatory field
    Region VARCHAR(50) DEFAULT NULL, #not andatory field, because not every address has a region line
    Post_Code VARCHAR(20) DEFAULT NULL, #not andatory field, because not every address has a post code
    Country VARCHAR(50) NOT NULL, #mandatory field
    Phone VARCHAR(50) NOT NULL, #mandatory field
    Email VARCHAR(50) NOT NULL, #mandatory field
    Monthly_Salary DECIMAL(6) NOT NULL, #mandatory field
    PRIMARY KEY (Employee_ID) #PK
)  AUTO_INCREMENT=600001;  #Employee ids start at 600001 and are incremented by 1

alter table Purchase_Order #subsequent altering Purchase_Order table with FK (Employee_ID)
add foreign key (Employee_ID) 
references Employee (Employee_ID);

#Invoice table which is linked to Purchase_Order with FK Order_ID
create table Invoice (
Invoice_ID int(11) not null auto_increment, #PK
Order_ID int(11) not null, #mandatory field
Item_Total DECIMAL(5 , 2 ) NOT NULL, #mandatory field, every Item total is rounded to two decimals
Delivery DECIMAL(5 , 2 ) NOT NULL, #mandatory field, every Delivery is rounded to two decimals
Invoice_Total DECIMAL(5 , 2 ) NOT NULL, #mandatory field, every Invoice total is rounded to two decimals
Payment_Type_ID VARCHAR(50) NOT NULL, #mandatory field
Invoice_Date DATE NOT NULL, #mandatory field
primary key (Invoice_ID), #PK
foreign key (Order_ID) #FK
references Purchase_Order(Order_ID) #from Purchase Order table
)auto_increment=700001; #Invoice ids start at 700001 and are incremented by 1

#Payment_Type table which is linked to Invoice tavle with FK Payment_Type_ID; not really relevant for this CA;
#this was a first draft for this table. I realised it is not needed for any of the queries, so I did not modify it
CREATE TABLE Payment_Type (
    Payment_Type_ID VARCHAR(50) NOT NULL, #PK
    Payment_Description VARCHAR(50) NOT NULL,
    PRIMARY KEY (Payment_Type_ID)
);

alter table Invoice #subsequent altering Invoice table with FK (Payment_Type_ID)
add foreign key (Payment_Type_ID) 
references Payment_Type (Payment_Type_ID);

#Return_Order table which is linked to Customer and Line_Item table with FK Customer_ID and Return_Order_ID
CREATE TABLE Return_Order (
    Return_Order_ID INT(11) NOT NULL AUTO_INCREMENT, #PK
    Customer_ID INT(11) NOT NULL, #mandatory field
    Return_Date DATE NOT NULL, #mandatory field
    PRIMARY KEY (Return_Order_ID) #PK
)  AUTO_INCREMENT=800001; #Return_Order ids start at 800001 and are incremented by 1

alter table Line_Item #subsequent altering Line_Item table with FK (Return_Item_ID)
add foreign key (Return_Order_ID) 
references Return_Order (Return_Order_ID);
