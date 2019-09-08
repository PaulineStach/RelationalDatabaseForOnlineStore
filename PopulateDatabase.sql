#the following code creates the data for the 10 tables
#the order of insert partly depends on which tables draw information from another table
#order of insert: Customer, Employee, Purchase_Oder, Category, Supplier, Stock_Item, Return_Orer, Line_Item, Payment_Type, Invoice
#no insert statement contains id columns because they are auto populated

use ca2;
#Customer Data______________________________________________________
#50 Customers
#in this design, one customer only has one address
insert into Customer 
(Customer_FName, Customer_LName, Address, City, Region, Post_Code, Country, Phone, Email) 
values 
('Kaitlynn', 'Sills', '6 Steensland Terrace', 'Dublin','Dublin', 'hfsjkd', 'Ireland', '564-878-6127', 'ksills0@goodreads.com'),
('Cecelia', 'Tennewell', '7209 Homewood Alley', 'Dublin', 'Dublin', 'fhsjkd', 'Ireland', '436-933-8174', 'ctennewell1@homestead.com'),
('Charles', 'Spencley', '3 Hagan Center', 'Dunshaughlin', 'Meath', 'hriaf', 'Ireland', '523-537-1061', 'cspencley2@bigcartel.com'),
('Tiphanie', 'Mendez', '3389 Sommers Park', 'Dublin', 'Dublin', 'fjoie', 'Ireland', '522-371-1199', 'tmendez3@ucsd.edu'),
('Raffarty', 'Ellph', '8 Lyons Trail', 'Bray', 'Wicklow', 'mvowe', 'Ireland', '477-909-1231', 'rellph4@cmu.edu'),
('Kennedy', 'Boxhall', '7654 Barnett Way', 'Dublin', 'Dublin', '6715', 'Ireland', '178-707-2221', 'kboxhall0@mozilla.com'),
('Vicky', 'Taffee', '4 Brentwood Center', 'Dublin', 'Dublin', null, 'Ireland', '951-815-7436', 'vtaffee1@wikispaces.com'),
('Zechariah', 'Stoyell', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', '158-990-3541', 'zstoyell2@gov.uk'),
('Joni', 'Farrants', '2109 Leroy Point', 'Kilkenny', 'Kilkenny', null, 'Ireland', '490-393-6681', 'jfarrants3@theguardian.com'),
('Augusto', 'Kainz', '10926 Forest Avenue', 'Kilkenny', 'Kilkenny', null, 'Ireland', '664-522-2497', 'akainz4@jiathis.com'),
('Christoforo', 'Cheales', '8179 Warner Avenue', 'Kilkenny', 'Kilkenny', null, 'Ireland', '371-800-6710', 'ccheales5@last.fm'),
('Townsend', 'Heap', '5 Delaware Junction', 'Waterford', 'Waterford', '735 72', 'Ireland', '854-743-8499', 'theap6@wix.com'),
('Forest', 'Duns', '2324 Schlimgen Avenue', 'Dublin', 'Dublin', null, 'Ireland', '252-328-1319', 'fduns7@home.pl'),
('Roselin', 'Kennard', '676 Utah Lane', 'Dingle', 'Kerry', null, 'Ireland', '773-825-3939', 'rkennard8@dyndns.org'),
('Cosme', 'Pococke', '7 Di Loreto Alley', 'Cork', 'Cork', null, 'Ireland', '832-590-1756', 'cpococke9@twitpic.com'),
('Timmie', 'Poletto', '68 Superior Parkway', 'Dublin', 'Dublin', null, 'Ireland', '638-235-8767', 'tpolettoa@eventbrite.com'),
('Minnaminnie', 'Oppery', '986 Hoffman Circle', 'Navan', 'Meath', '183 15', 'Ireland', '294-534-9069', 'mopperyb@ebay.co.uk'),
('Garrard', 'Perree', '0408 Almo Plaza', 'Trim', 'Meath', '25508', 'MIreland', '966-629-1972', 'gperreec@wordpress.org'),
('Fairlie', 'Neising', '07 Surrey Street', 'Waterford', 'BWaterford', null, 'Ireland', '977-470-7027', 'fneisingd@house.gov'),
('Kaia', 'Frere', '7062 Gina Point', 'Drogheda', 'Louth', null, 'Ireland', '323-675-4679', 'kfreree@spotify.com'),
('Hesther', 'Ebden', '452 Browning Way', 'Dundalk', 'Louth', null, 'Ieland', '992-695-7544', 'hebdenf@ning.com'),
('Harlie', 'Inkpin', '44490 Graceland Parkway', 'Trim', 'Meath', null, 'Ireland', '951-491-5160', 'hinkping@craigslist.org'),
('Muffin', 'Twitchings', '2331 Heath Avenue', 'Dublin', 'Dublin', '28', 'Ireland', '410-340-0171', 'mtwitchingsh@upenn.edu'),
('Kerk', 'Mosedale', '70 Northridge Crossing', 'Drogheda', 'Louth', null, 'Ireland', '171-609-1112', 'kmosedalei@youtube.com'),
('Evyn', 'Rex', '5088 Boyd Hill', 'Drogheda', 'Louth', null, 'Ireland', '133-601-0793', 'erexj@list-manage.com'),
('Ward', 'Lie', '9191 Talisman Court', 'Castlebar', 'Mayo', null, 'Ireland', '171-746-4668', 'wliek@tiny.cc'),
('El', 'Laviss', '12119 Shasta Road', 'Athlone', 'Westmeath', null, 'Ireland', '441-741-1216', 'elavissl@eventbrite.com'),
('Michele', 'Ellaman', '61533 Crownhardt Point', 'Kilkenny', 'Kilkenny', null, 'Ireland', '603-599-3864', 'mellamanm@360.cn'),
('Seth', 'Hebblewaite', '4263 Merry Plaza', 'Dublin', 'Dublin', null, 'Ireland', '489-825-4939', 'shebblewaiten@simplemachines.org'),
('Crosby', 'Ballinghall', '43 Shasta Road', 'Greystones', 'Wicklow', '171508', 'Ireland', '120-292-0267', 'cballinghallo@oaic.gov.au'),
('Miguelita', 'Olenchenko', '73272 Petterle Drive', 'Dublin', 'Dublin', '685 24', 'Ireland', '377-317-5594', 'molenchenkop@fema.gov'),
('Jacintha', 'Stuckow', '611 Hansons Terrace', 'Kilkenny', 'Kilkenny', '37180', 'Ireland', '609-875-3878', 'jstuckowq@amazon.co.jp'),
('Goober', 'Gingedale', '122 Old Shore Plaza', 'Midleton', 'Cork', '685 24', 'Ireland', '275-388-6312', 'ggingedaler@pbs.org'),
('Elicia', 'Newlove', '033 Harbort Place', 'Greystones', 'Wicklow', '60506 CEDEX', 'Ireland', '265-584-8947', 'enewloves@mayoclinic.com'),
('Barbaraanne', 'Folbige', '48 Ridge Oak Park', 'Greystones', 'Wicklow', '73201', 'Ireland', '978-241-0111', 'bfolbiget@lulu.com'),
('Nancee', 'Heindl', '9 Village Way', 'Milltown', 'Kerry', '8721', 'Ireland', '396-907-5319', 'nheindlu@ow.ly'),
('Drud', 'Pamplin', '3758 Green Drive', 'Tralee', 'Kerry', null, 'Ireland', '714-713-5167', 'dpamplinv@google.com.au'),
('Guntar', 'Lewsy', '58 Scoville Lane', 'Athlone', 'Westmeath', '22110', 'Ireland', '125-569-1584', 'glewsyw@weather.com'),
('Alden', 'Nestle', '081 Clyde Gallagher Plaza', 'Tralee', 'Kerry', '414029', 'Ireland', '464-972-5370', 'anestlex@earthlink.net'),
('Malinda', 'Cutsforth', '7488 Alpine Circle', 'Cork', 'Cork', '2624', 'Ireland', '749-436-4931', 'mcutsforthy@acquirethisname.com'),
('Theo', 'Tiffney', '3723 Farragut Alley', 'Midleton', 'Cork', '4228', 'Ireland', '634-375-3103', 'ttiffneyz@fema.gov'),
('Waylon', 'Gilpin', '93965 Hooker Place', 'Donegal', 'Donegal', null, 'Ireland', '282-923-0583', 'wgilpin10@loc.gov'),
('Eugenius', 'Hurren', '924 Pierstorff Circle', 'Greystones', 'Wicklow', '252257', 'Colombia', '716-847-0874', 'ehurren11@ehow.com'),
('Elayne', 'Hinchshaw', '1595 Schlimgen Way', 'Letterkenny', 'Donegal', null, 'Ireland', '841-888-1828', 'ehinchshaw12@photobucket.com'),
('Maje', 'Essberger', '1 Porter Plaza', 'Cork', 'Cork', '77708 CEDEX 4', 'Ireland', '358-191-0794', 'messberger13@about.me'),
('Gerardo', 'Echalier', '24723 Algoma Way', 'Greystones', 'Wicklow', '47685', 'Ireland', '190-159-6485', 'gechalier14@japanpost.jp'),
('Brok', 'Orridge', '53659 Crownhardt Center', 'Letterkenny', 'Donegal', null, 'Ireland', '892-759-4230', 'borridge15@wikimedia.org'),
('Cameron', 'Allsopp', '049 Nevada Hill', 'Westport', 'Mayo', '47220', 'Ireland', '426-668-9021', 'callsopp16@godaddy.com'),
('Ettie', 'Benka', '520 Nobel Court', 'Cork', 'Cork', '601545', 'Ireland', '614-112-6445', 'ebenka17@ox.ac.uk'),
('Demetrius', 'Dessaur', '401 Manitowish Terrace', 'Castlebar', 'Mayo', null, 'Ireland', '915-867-0508', 'ddessaur18@tripod.com');

#Employee Data______________________________________________________
#5 Employees
#because purchase_order table draws information from employee table
insert into Employee
(Employee_FName, Employee_LName, Address, City, Region, Post_Code, Country, Phone, Email, Monthly_Salary)
values
('Clim', 'Emburey', '68 Jay Crossing', 'Dublin', 'Dublin', 'gferg', 'Ireland', '791-376-8301', 'cemburey0@un.org', 3000.00),
('Mel', 'Leer', '9124 Grim Parkway', 'Dublin', 'Dublin', 'gferg', 'Ireland', '255-770-3163', 'mleer1@wikia.com', 1500.00),
('Silvanus', 'Gallen', '2862 Dryden Place', 'Dublin', 'Dublin', 'gferg', 'Ireland', '700-168-6097', 'sgallen2@economist.com', 3500.00),
('Skippy', 'Skullet', '761 South Road', 'Dublin', 'Dublin', 'gferg', 'Ireland', '640-320-3366', 'sskullet3@google.de', 3000.00),
('Joelle', 'Barker', '781 Texas Center', 'Dublin', 'Dublin', 'gferg', 'Ireland', '213-902-2203', 'jbarker4@shop-pro.jp', 1500.00);

#Purchare_Order Data________________________________________________
#63 Orders
insert into Purchase_Order
(Customer_ID, Order_Date, Shipped_Date, Ship_Address, Ship_City, Ship_Region, Ship_Post_Code, Ship_Country, Employee_ID) 
values 
(100001, '2018-01-21', '2018-01-23', '6 Steensland Terrace', 'Dublin','Dublin', 'hfsjkd', 'Ireland', 600001),
(100002, '2018-01-25', '2018-01-27', '7209 Homewood Alley', 'Dublin', 'Dublin', 'fhsjkd', 'Ireland', 600001),
(100003, '2018-02-21', '2018-02-23', '3 Hagan Center', 'Dunshaughlin', 'Meath', 'hriaf', 'Ireland', 600001),
(100004, '2018-03-10', '2018-03-12', '3389 Sommers Park', 'Dublin', 'Dublin', 'fjoie', 'Ireland', 600003),
(100004, '2018-03-11', '2018-03-13', '3389 Sommers Park', 'Dublin', 'Dublin', 'fjoie', 'Ireland', 600001),
(100005, '2018-03-23', '2018-03-25', '8 Lyons Trail', 'Bray', 'Wicklow', 'mvowe', 'Ireland', 600002),
(100002, '2018-04-05', '2018-04-07', '7209 Homewood Alley', 'Dublin', 'Dublin', 'fhsjkd', 'Ireland', 600002),
(100006, '2018-04-09', '2018-04-11', '7654 Barnett Way', 'Dublin', 'Dublin', '6715', 'Ireland', 600002),
(100007, '2018-04-09', '2018-04-11', '4 Brentwood Center', 'Dublin', 'Dublin', null, 'Ireland', 600002),
(100008, '2018-04-13', '2018-04-15', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),#10
(100009, '2018-04-20', '2018-04-22', '2109 Leroy Point', 'Kilkenny', 'Kilkenny', null, 'Ireland', 600001),
(100010, '2018-05-01', '2018-05-02', '10926 Forest Avenue', 'Kilkenny', 'Kilkenny', null, 'Ireland', 600001),
(100011, '2018-05-07', '2018-05-09', '8179 Warner Avenue', 'Kilkenny', 'Kilkenny', null, 'Ireland', 600001),
(100012, '2018-05-20', '2018-05-22', '5 Delaware Junction', 'Waterford', 'Waterford', '735 72', 'Ireland', 600001),
(100013, '2018-06-03', '2018-06-05', '2324 Schlimgen Avenue', 'Dublin', 'Dublin', null, 'Ireland', 600001),
(100014, '2018-06-20', '2018-06-22', '676 Utah Lane', 'Dingle', 'Kerry', null, 'Ireland', 600002),
(100015, '2018-07-21', '2018-07-23', '7 Di Loreto Alley', 'Cork', 'Cork', null, 'Ireland', 600002),
(100016, '2018-07-24', '2018-07-26', '68 Superior Parkway', 'Dublin', 'Dublin', null, 'Ireland', 600002),
(100017, '2018-07-26', '2018-07-28', '986 Hoffman Circle', 'Navan', 'Meath', '183 15', 'Ireland', 600002),
(100018, '2018-08-04', '2018-08-06', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),#20
(100018, '2018-08-15', '2018-08-17', '0408 Almo Plaza', 'Trim', 'Meath', '25508', 'Ireland', 600002),
(100019, '2018-08-20', '2018-08-22', '07 Surrey Street', 'Waterford', 'BWaterford', null, 'Ireland', 600001),
(100020, '2018-09-02', '2018-09-04', '452 Browning Way', 'Dundalk', 'Louth', null, 'Ieland', 600001),
(100021, '2018-09-10', '2018-09-12', '44490 Graceland Parkway', 'Trim', 'Meath', null, 'Ireland', 600001),
(100008, '2018-09-21', '2018-09-23', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),
(100022, '2018-09-25', '2018-09-27', '2331 Heath Avenue', 'Dublin', 'Dublin', null, 'Ireland', 600001),
(100008, '2018-09-28', '2018-09-30', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),
(100023, '2018-10-05', '2018-10-07', '70 Northridge Crossing', 'Drogheda', 'Louth', null, 'Ireland', 600001),
(100024, '2018-10-06', '2018-10-08', '5088 Boyd Hill', 'Drogheda', 'Louth', null, 'Ireland', 600002),
(100025, '2018-10-11', '2018-10-13', '9191 Talisman Court', 'Castlebar', 'Mayo', null, 'Ireland', 600002),#30
(100026, '2018-10-15', '2018-10-17', '12119 Shasta Road', 'Athlone', 'Westmeath', null, 'Ireland', 600002),
(100004, '2018-10-17', '2018-10-19', '3389 Sommers Park', 'Dublin', 'Dublin', 'fjoie', 'Ireland', 600001),
(100027, '2018-10-22', '2018-10-24', '61533 Crownhardt Point', 'Kilkenny', 'Kilkenny', null, 'Ireland', 600002),
(100023, '2018-10-25', '2018-10-27', '70 Northridge Crossing', 'Drogheda', 'Louth', null, 'Ireland', 600001),
(100028, '2018-10-30', '2018-11-02', '4263 Merry Plaza', 'Dublin', 'Dublin', null, 'Ireland', 600001),
(100008, '2018-11-02', '2018-11-04', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),
(100029, '2018-11-02', '2018-11-04', '43 Shasta Road', 'Greystones', 'Wicklow', '171508', 'Ireland', 600001),
(100030, '2018-11-10', '2018-11-12', '73272 Petterle Drive', 'Dublin', 'Dublin', '685 24', 'Ireland', 600001),
(100008, '2018-11-11', '2018-11-13', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),
(100031, '2018-11-11', '2018-11-13', '611 Hansons Terrace', 'Kilkenny', 'Kilkenny', '37180', 'Ireland', 600002),#40
(100032, '2018-11-14', '2018-11-16', '122 Old Shore Plaza', 'Midleton', 'Cork', '380-000', 'Ireland', 600002),
(100033, '2018-11-15', '2018-11-17', '033 Harbort Place', 'Greystones', 'Wicklow', '606 CEX', 'Ireland', 600002),
(100034, '2018-11-17', '2018-11-19', '48 Ridge Oak Park', 'Greystones', 'Wicklow', '73201', 'Ireland', 600002),
(100035, '2018-12-01', '2018-12-03', '9 Village Way', 'Milltown', 'Kerry', '8721', 'Ireland', 600002),
(100023, '2018-12-01', '2018-12-03', '70 Northridge Crossing', 'Drogheda', 'Louth', null, 'Ireland', 600001),
(100036, '2018-12-01', '2018-12-03', '3758 Green Drive', 'Tralee', 'Kerry', null, 'Ireland', 600002),
(100037, '2018-12-02', '2018-12-04', '58 Scoville Lane', 'Athlone', 'Westmeath', '22110', 'Ireland', 600001),
(100038, '2018-12-02', '2018-12-04', '081 Clyde Gallagher Plaza', 'Tralee', 'Kerry', '414029', 'Ireland', 600001),
(100039, '2018-12-04', '2018-12-06', '7488 Alpine Circle', 'Cork', 'Cork', '2624', 'Ireland', 600001),
(100008, '2018-12-05', '2018-12-07', '9415 Karstens Drive', 'Greystones', 'Wicklow', '623509', 'Ireland', 600001),#50
(100040, '2018-12-05', '2018-12-07', '3723 Farragut Alley', 'Midleton', 'Cork', '4228', 'Ireland', 600001),
(100023, '2018-12-06', '2018-12-08', '70 Northridge Crossing', 'Drogheda', 'Louth', null, 'Ireland', 600001),
(100041, '2018-12-07', '2018-12-09', '93965 Hooker Place', 'Donegal', 'Donegal', null, 'Ireland', 600002),
(100042, '2018-12-07', '2018-12-09', '924 Pierstorff Circle', 'Greystones', 'Wicklow', '252257', 'Ireland', 600002),
(100043, '2018-12-07', '2018-12-09', '1595 Schlimgen Way', 'Letterkenny', 'Donegal', null, 'Ireland', 600002),
(100044, '2018-12-08', '2018-12-10', '1 Porter Plaza', 'Cork', 'Cork', '77DEX', 'Ireland', 600001),
(100045, '2018-12-08', '2018-12-10', '24723 Algoma Way', 'Greystones', 'Wicklow', '47685', 'Ireland', 600001),
(100046, '2018-12-13', '2018-12-15', '53659 Crownhardt Center', 'Letterkenny', 'Donegal', null, 'Ireland', 600001),
(100036, '2018-12-16', '2018-12-18', '3758 Green Drive', 'Tralee', 'Kerry', null, 'Ireland', 600002),
(100047, '2019-01-20', '2019-01-22', '049 Nevada Hill', 'Westport', 'Mayo', '47220', 'Ireland', 600001),#60
(100048, '2019-01-23', '2019-01-25', '520 Nobel Court', 'Cork', 'Cork', '601545', 'Ireland', 600001),
(100049, '2019-01-23', '2019-01-25', '401 Manitowish Terrace', 'Castlebar', 'Mayo', null, 'Ireland', 600001),
(100023, '2019-01-29', '2019-01-31', '70 Northridge Crossing', 'Drogheda', 'Louth', null, 'Ireland', 600001);


#Category Data______________________________________________________
#3 Categories
#because Stock_Item table draws information from Category table
insert into Category
(Category_Name, Category_Description)
values
('Body and Beauty', null),
('House and Home', null),
('Clothing', null);

#Supplier Data______________________________________________________
#8 Suppliers
#because Stock_Item table draws information from Category table
insert into Supplier
(Company_Name, Contract_Name, Address, City, Region, Post_Code, Country, Phone, Email)
values
('Organics', 'Contract1', '6 Everett Park', 'Dublin', 'Dublin', 'grfsds', 'Ireland', '215-801-3725', 'lcaulfield0@dell.com'),
('Health4u', 'Contract2', '31 1st Crossing', 'Hamburg', null, '186813', 'Germany', '872-550-4805', 'ajoincey1@foxnews.com'),
('Clean&Easy', 'Contract3', '65 Corben Park', 'Berlin', null, '18423', 'Germany', '532-764-4543', 'atimoney2@networkadvertising.org'),
('Ecomax', 'Contract4', '01 Oak Valley Court', 'Enschede', null, '186813', 'Netherlands', '316-608-2859', 'aharby3@aol.com'),
('Oneworld', 'Contract5', '09 Banding Street', 'Dublin', 'Dublin', 'gerhf', 'Ireland', '893-177-6221', 'bankrett4@dailymotion.com'),
('Ocean', 'Contract6', '5 Little Fleur Lane', 'Lisbon', null, 'fsdgdf', 'Portugal', '295-645-5655', 'mbaton5@blogtalkradio.com'),
('EcoFriends', 'Contract7', '32227 Browning Place', 'Edinburgh', null, 'gsdvf', 'Scotland', '868-514-8213', 'pcoppard6@gov.uk'),
('ZeroWaste', 'Contract8', '4515 Thompson Parkway', 'Brussels', null, 'gdfgdfg', 'Berlgium', '526-519-2882', 'sdumini7@harvard.edu');

#Stock_Item Data____________________________________________________
#49 Stock Items
#because Line_Item table draws information from Stock_Item table
insert into Stock_item
(Item_Description, Stock_Size, Category_ID, Arrival_Date, Purchase_Price, Sales_Price_Ex_VAT, VAT, Sales_Price_Inc_VAT, Supplier_ID)
values
('Soap1', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Soap2', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Soap3', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Soap4', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Soap5', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Shampoo1', 10000, 1, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500001),
('Shampoo2', 10000, 1, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500001),
('Shampoo3', 10000, 1, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500001),
('Shampoo4', 10000, 1, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500001),
('Shampoo5', 10000, 1, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500001),#10
('Toothbrush1', 10000, 1, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500002),
('Toothbrush2', 10000, 1, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500002),
('Toothbrush3', 10000, 1, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500002),
('Toothbrush4', 10000, 1, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500002),
('Toothbrush5', 10000, 1, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500002),
('Toothpaste1', 10000, 1, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500001),
('Toothpaste2', 10000, 1, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500001),
('Bath Accessoire1', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Bath Accessoire2', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00',  500001),
('Bath Accessoire3', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),#20
('Bath Accessoire4', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Bath Accessoire5', 10000, 1, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500001),
('Eco Cleaning1', 10000, 2, '2018-10-01', '4.00', '4.88', '1.12', '6.00',  500003),
('Eco Cleaning2', 10000, 2, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500003),
('Eco Cleaning3', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500003),
('Eco Cleaning4', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500003),
('Eco Cleaning5', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500003),
('Organic Cloth1', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500004),
('Organic Cloth2', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500004),
('Organic Brush1', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500004),#30
('Organic Brush2', 10000, 2, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500004),
('Tea Accessoire1', 10000, 2, '2018-10-01', '2.00', '3.25', '0.75', '4.00', 500005),
('Tea Accessoire2', 10000, 2, '2018-10-01', '4.00', '4.88', '1.12', '6.00', 500005),
('Tea Accessoire3', 10000, 2, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500005),
('Tea Accessoire4', 10000, 2, '2018-10-01', '11.00', '2.99', '13.01', '16.00', 500005),
('Reusable Wrap1', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500006),
('Reusable Wrap2', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500006),
('Reusable Wrap3', 10000, 2, '2018-10-01', '3.00', '4.07', '0.93', '5.00', 500006),
('Bamboo Cup1', 10000, 2, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500007),
('Bamboo Cup2', 10000, 2, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500007),#40
('Bamboo Cuop3', 10000, 2, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500007),
('Organic T-Shirt1', 10000, 3, '2018-10-01', '11.00', '2.99', '13.01', '16.00', 500008),
('Organic T-Shirt2', 10000, 3, '2018-10-01', '11.00', '2.99', '13.01', '16.00', 500008),
('Organic Leggins1', 10000, 3, '2018-10-01', '11.00', '2.99', '13.01', '16.00', 500008),
('Organic Leggins2', 10000, 3, '2018-10-01', '20.00', '5.61', '24.39','30.00', 500008),
('Organic Leggins3', 10000, 3, '2018-10-01', '20.00', '5.61', '24.39','30.00', 500008),
('Organic Socks1', 10000, 3, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500008),
('Organic Socks1', 10000, 3, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500008),
('Organic Socks1', 10000, 3, '2018-10-01', '7.00', '7.32', '1.68', '9.00', 500008);#49

#Return_Order Data_____________________________________________________
#4 Retunrs
#because Line_Item table draws information from Return_Order table
insert into Return_Order
(Customer_ID, Return_Date)
values
(100007, '2018-05-03'),
(100018, '2018-09-25'),
(100008, '2018-11-07'),
(100022, '2018-11-11');


#Line_Item Data_____________________________________________________
#92 Line Items
insert into Line_Item
(Order_ID, Return_Order_ID, Stock_Item_ID, Quantity)
values
(200001, Null, 400005, 2),
(200001, Null, 400009, 1),
(200002, Null, 400001, 1),
(200003, Null, 400008, 1),
(200003, Null, 400009, 2),
(200003, Null, 400002, 1),
(200003, Null, 400003, 1),
(200004, Null, 400005, 1),
(200005, Null, 400006, 2),
(200005, Null, 400007, 1),#10
(200006, Null, 400005, 1),
(200006, Null, 400009, 1),
(200007, Null, 400001, 3),
(200008, Null, 400022, 1),
(200008, Null, 400005, 1),
(200008, Null, 400009, 1),
(200009, Null, 400030, 2),
(200010, Null, 400011, 1),
(200011, Null, 400046, 3),
(200012, Null, 400014, 1),#20
(200012, Null, 400001, 1),
(NULL, 800001, 400030, 1),###############return
(200013, Null, 400005, 1),
(200013, Null, 400012, 1),
(200014, Null, 400025, 2),
(200015, Null, 400026, 2),
(200016, Null, 400003, 1),
(200016, Null, 400007, 7),
(200017, Null, 400019, 1),
(200018, Null, 400008, 1),#30
(200018, Null, 400040, 1),
(200019, Null, 400035, 2),
(200019, Null, 400005, 2),
(200019, Null, 400014, 1),
(200020, Null, 400031, 1),
(200021, Null, 400037, 2),
(200022, Null, 400016, 1),
(200023, Null, 400011, 1),
(200023, Null, 400031, 1),
(200023, Null, 400010, 2),#40
(200024, Null, 400004, 3),
(200025, Null, 400022, 1),
(200026, Null, 400048, 1),
(NULL, 800002, 400031, 1),################return
(200027, Null, 400014, 1),
(200028, Null, 400006, 2),
(200029, Null, 400003, 1),
(200030, Null, 400031, 1),
(200031, Null, 400002, 1),
(200032, Null, 400012, 1),#50
(200032, Null, 400014, 1),
(200032, Null, 400037, 2),
(200032, Null, 400016, 1),
(200032, Null, 400006, 2),
(200032, Null, 400011, 1),
(200033, Null, 400015, 1),
(200034, Null, 400022, 1),
(200035, Null, 400007, 1),
(200036, Null, 400012, 1),
(200036, Null, 400023, 1),#60
(200037, Null, 400037, 1),
(NULL, 800003, 400022, 1),#####################return
(200038, Null, 400006, 2),
(200039, Null, 400017, 1),
(200040, Null, 400006, 2),
(Null, 800004, 400048, 1),#####################return
(200041, Null, 400037, 2),
(200042, Null, 400002, 1),
(200043, Null, 400005, 2),
(200044, Null, 400011, 1),#70
(200045, Null, 400022, 1),
(200046, Null, 400005, 1),
(200046, Null, 400012, 1),
(200046, Null, 400016, 2),
(200047, Null, 400005, 2),
(200048, Null, 400012, 1),
(200048, Null, 400021, 1),
(200049, Null, 400022, 1),
(200050, Null, 400001, 1),
(200051, Null, 400001, 1),#80
(200052, Null, 400001, 1),
(200053, Null, 400001, 1),
(200054, Null, 400001, 1),
(200055, Null, 400001, 1),
(200056, Null, 400001, 1),
(200057, Null, 400001, 1),
(200058, Null, 400001, 1),
(200059, Null, 400001, 1),
(200060, Null, 400001, 1),
(200061, Null, 400001, 1),#90
(200062, Null, 400001, 1),
(200063, Null, 400001, 1);#92


#Payment_Type Data_____________________________________________________
#draft with two payment options
#because Invoice table draws information from Payment_Type table
insert into Payment_Type
(Payment_Type_ID, Payment_Description)
values
('Master', 'Master_Card'),
('VISA', 'VISA_Card');

#Invoice Data_____________________________________________________
#63 Invoices; same as orders
insert into Invoice
(Order_ID, Item_Total, Delivery, Invoice_Total, Payment_Type_ID, Invoice_Date)
values
(200001, '21.00', '3.00', '24.00', 'Master', '2018-01-21'),#1
(200002, '6.00', '3.00', '9.00', 'VISA', '2018-01-25'),
(200003, '39.00', '3.00', '42.00', 'VISA', '2018-02-21'),
(200004, '6.00', '3.00', '9.00', 'VISA', '2018-03-10'),
(200005, '27.00', '3.00', '30.00', 'Master', '2018-03-11'),
(200006, '15.00', '3.00', '18.00', 'Master', '2018-03-23'),
(200007, '18.00', '3.00', '21.00', 'Master', '2018-04-05'),
(200008, '21.00', '3.00', '24.00', 'Master', '2018-04-09'),
(200009, '10.00', '3.00', '13.00', 'VISA', '2018-04-09'),
(200010, '4.00', '3.00', '7.00', 'Master', '2018-04-13'),#10
(200011, '90.00', '3.00', '93.00', 'VISA', '2018-04-020'),
(200012, '10.00', '3.00', '13.00', 'VISA', '2018-05-01'),
(200013, '10.00', '3.00', '13.00', 'Master', '2018-05-07'),
(200014, '10.00', '3.00', '13.00', 'VISA', '2018-05-20'),
(200015, '10.00', '3.00', '13.00', 'Master', '2018-06-03'),
(200016, '69.00', '3.00', '72.00', 'VISA', '2018-06-20'),
(200017, '6.00', '3.00', '9.00', 'Master', '2018-07-21'),
(200018, '18.00', '3.00', '21.00', 'VISA', '2018-07-24'),
(200019, '48.00', '3.00', '51.00', 'VISA', '2018-07-26'),
(200020, '6.00', '3.00', '9.00', 'VISA', '2018-08-04'),#20
(200021, '10.00', '3.00', '13.00', 'VISA', '2018-08-15'),
(200022, '4.00', '3.00', '7.00', 'VISA', '2018-08-20'),
(200023, '28.00', '3.00', '31.00', 'VISA', '2018-09-02'),
(200024, '18.00', '3.00', '21.00', 'VISA', '2018-09-10'),
(200025, '6.00', '3.00', '9.00', 'VISA', '2018-09-21'),
(200026, '9.00', '3.00', '12.00', 'VISA', '2018-09-25'),
(200027, '4.00', '3.00', '7.00', 'VISA', '2018-09-28'),
(200028, '18.00', '3.00', '21.00', 'Master', '2018-10-05'),
(200029, '6.00', '3.00', '9.00', 'Master', '2018-10-06'),
(200030, '6.00', '3.00', '9.00', 'VISA', '2018-10-11'),#30
(200031, '6.00', '3.00', '9.00', 'Master', '2018-10-15'),
(200032, '44.00', '3.00', '47.00', 'Master', '2018-10-17'),
(200033, '4.00', '3.00', '7.00', 'VISA', '2018-10-22'),
(200034, '6.00', '3.00', '9.00', 'VISA', '2018-10-25'),
(200035, '9.00', '3.00', '12.00', 'Master', '2018-10-30'),
(200036, '10.00', '3.00', '13.00', 'VISA', '2018-11-02'),
(200037, '5.00', '3.00', '8.00', 'Master', '2018-11-02'),
(200038, '18.00', '3.00', '21.00', 'VISA', '2018-11-10'),
(200039, '5.00', '3.00', '8.00', 'VISA', '2018-11-11'),
(200040, '18.00', '3.00', '21.00', 'VISA', '2018-11-11'),#40
(200041, '10.00', '3.00', '13.00', 'Master', '2018-11-14'),
(200042, '6.00', '3.00', '9.00', 'Master', '2018-11-015'),
(200043, '12.00', '3.00', '15.00', 'VISA', '2018-11-17'),
(200044, '4.00', '3.00', '7.00', 'Master', '2018-12-01'),
(200045, '6.00', '3.00', '9.00', 'VISA', '2018-12-01'),
(200046, '18.00', '3.00', '21.00', 'VISA', '2018-12-01'),
(200047, '12.00', '3.00', '15.00', 'Master', '2018-12-02'),
(200048, '10.00', '3.00', '13.00', 'VISA', '2018-12-02'),
(200049, '6.00', '3.00', '9.00', 'Master', '2018-12-04'),
(200050, '6.00', '3.00', '9.00', 'VISA', '2018-12-05'),
(200051, '6.00', '3.00', '9.00', 'VISA', '2018-12-05'),
(200052, '6.00', '3.00', '9.00', 'VISA', '2018-12-06'),
(200053, '6.00', '3.00', '9.00', 'VISA', '2018-12-07'),
(200054, '6.00', '3.00', '9.00', 'VISA', '2018-12-07'),
(200055, '6.00', '3.00', '9.00', 'VISA', '2018-12-07'),
(200056, '6.00', '3.00', '9.00', 'VISA', '2018-12-08'),
(200057, '6.00', '3.00', '9.00', 'VISA', '2018-12-08'),
(200058, '6.00', '3.00', '9.00', 'VISA', '2018-12-13'),
(200059, '6.00', '3.00', '9.00', 'VISA', '2018-12-16'),
(200060, '6.00', '3.00', '9.00', 'VISA', '2019-01-20'),
(200061, '6.00', '3.00', '9.00', 'VISA', '2019-01-23'),
(200062, '6.00', '3.00', '9.00', 'VISA', '2019-01-23'),
(200063, '6.00', '3.00', '9.00', 'VISA', '2019-01-29');



