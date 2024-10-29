--SELS
--use master 

--create database a888

use a888

CREATE TABLE SpecialOfferProduct
(
SpecialOfferid int not null ,
Productid int  not null,
modifieddate datetime not null DEFAULT GETDATE ()
CONSTRAINT pss_SpecialOfferid_Productid_pk PRIMARY KEY (SpecialOfferid,Productid )
)

 
 insert into  SpecialOfferProduct
values (1,1,DEFAULT)

 insert into  SpecialOfferProduct
values (2,2,DEFAULT)

 insert into  SpecialOfferProduct
values (3,3,DEFAULT)

 insert into  SpecialOfferProduct
values (4,4,DEFAULT)

 insert into  SpecialOfferProduct
values (5,5,DEFAULT)

 insert into  SpecialOfferProduct
values (6,6,DEFAULT)

 insert into  SpecialOfferProduct
values (7,7,DEFAULT)

 insert into  SpecialOfferProduct
values (8,8,DEFAULT)

 insert into  SpecialOfferProduct
values (9,9,DEFAULT)

 insert into  SpecialOfferProduct
values (10,10,DEFAULT)

---CONSTRAINT splm_SpecialOfferid_Productid_pk  PRIMARY KEY (SpecialOfferid,Productid)

CREATE TABLE CreditCard
(
CreditCardid int not null PRIMARY KEY  ,
cardtype nvarchar(50) not null,
cardnumber nvarchar(25) not null,
expmonth tinyint not null,
expyear smallint not null,
modifieddate datetime not null DEFAULT GETDATE (),
CONSTRAINT cre_cardnumber_uq UNIQUE (cardnumber)
)

 insert into  CreditCard
values (1,'mastercard',0901643487985487,12,2028,DEFAULT)
  
   insert into  CreditCard
values (2,'mastercard',8090164348798354,12,2027,DEFAULT)

 insert into  CreditCard
values (3,'mastercard',0901643487981987,12,2026,DEFAULT)

 insert into  CreditCard
values (4,'mastercard',8945643487985487,11,2028,DEFAULT)

 insert into  CreditCard
values (5,'mastercard',0901643907885487,2,2028,DEFAULT)


insert into  CreditCard
values (6,'visa',0901643907881846,1,2028,DEFAULT)

insert into  CreditCard
values (7,'visa',0901673407881846,1,2025,DEFAULT)

insert into  CreditCard
values (8,'visa',0901692107881846,1,2027,DEFAULT)

insert into  CreditCard
values (9,'visa',0901643091281846,8,2028,DEFAULT)


insert into  CreditCard
values (10,'visa',0901646709881846,5,2026,DEFAULT)
 


CREATE TABLE  SalesTerritory 
(
Territoryid int not null PRIMARY KEY ,
name nvarchar(50) not null,
countryregioncode nvarchar(3) not null,
[group] nvarchar(50) not null,
salesytd money not null,
saleslastyear money not null,
costytd money not null,
costlastyear money not null,
modifieddate datetime not null DEFAULT GETDATE (),
CONSTRAINT sa_name_CK CHECK (LEN (name)>1)
)


insert into  SalesTerritory 
values ( 1,'gsdd','hh',10,87766,5456778,300,3000,DEFAULT )



insert into  SalesTerritory 
values ( 2,'gjjd','ht',10,87766,5456778,300,3000, DEFAULT)



insert into  SalesTerritory 
values ( 3,'ppjjd','pp',20,87766,5456778,300,3000,DEFAULT )

insert into  SalesTerritory 
values ( 4,'pood','lp',20,87766,5456778,300,3900, DEFAULT)

insert into  SalesTerritory 
values ( 5,'pood','lp',20,87766,5456778,300,3900, DEFAULT)

insert into  SalesTerritory 
values ( 6,'food','ll',20,87766,5459778,300,3900,DEFAULT )

insert into  SalesTerritory 
values ( 7,'food','ll',20,87766,5459778,300,3900, DEFAULT)


insert into  SalesTerritory 
values ( 8,'food','ll',10,87766,5459778,300,3900,DEFAULT)



insert into  SalesTerritory 
values ( 9,'flld','ll',10,87766,5459778,300,3900, DEFAULT)


insert into  SalesTerritory 
values ( 10,'klld','ll',10,87766,5459778,300,3900,DEFAULT )


  CREATE TABLE Address
  (
  addressid int not null PRIMARY KEY ,
  addressline1 nvarchar(60)not null,
  addressline2 nvarchar(60)null,
  city nvarchar(30)not null,
  stateprovinceid int not null,
  postalcode nvarchar(15)null,
  modifieddate datetime not null DEFAULT GETDATE (),
  CONSTRAINT ad_postalcode_CK CHECK (LEN (postalcode )=7)
 )

 insert into  Address
values (1,'bhddjg','bhgjkhh','lo',478,9865663,DEFAULT)

 insert into  Address
values (2,'bhppjg','bhklkhh','lo',478,9865683,DEFAULT)

 insert into  Address
values (3,'bhpyyg','bhuukhh','yy',499,9869683,DEFAULT)
  
   insert into  Address
values (4,'bbpyyg','bhunnhh','ly',999,9869688,DEFAULT)

   insert into  Address
values (5,'bbpuug','lhuonhh','my',959,9869388,DEFAULT)

   insert into  Address
values (6,'bopyyg','bhunihh','mm',929,9819688,DEFAULT)


   insert into  Address
values (7,'bopyvg','bhubihh','lm',924,9869688,DEFAULT)

   insert into  Address
values (8,'bopyvh','bhubihj','lk',904,9860688,DEFAULT)

   insert into  Address
values (9,'bppyvh','bhubihl','kk',914,9860088,DEFAULT)

   insert into  Address
values (10,'bapyvh','bhubial','aa',214,9860288,DEFAULT)

  CREATE TABLE ShipMethod
  (
   ShipMethodid int not null PRIMARY KEY ,
   name nvarchar(50)not null,
    Shipbase money not null,
	 Shiprate money not null,
	 modifieddate datetime not null DEFAULT GETDATE (),
	 CONSTRAINT sh_name_CK CHECK (LEN (name)>1)
  )
 
     insert into  ShipMethod
values (1,'sdfd',777989,664767,DEFAULT )

     insert into  ShipMethod
values (2,'sdgg',775589,664766,DEFAULT )

     insert into  ShipMethod
values (3,'sdhd',777909,660767,DEFAULT )

     insert into  ShipMethod
values (4,'kdhd',779909,600767,DEFAULT )

     insert into  ShipMethod
values (5,'vdhd',788909,960767,DEFAULT )

     insert into  ShipMethod
values (6,'shxd',772909,160767,DEFAULT )

     insert into  ShipMethod
values (7,'sdpp',747909,260767,DEFAULT )

     insert into  ShipMethod
values (8,'sbud',077909,669767,DEFAULT )

     insert into  ShipMethod
values (9,'sohd',776909,000767,DEFAULT )

     insert into  ShipMethod
values (10,'mmhd',747909,620767,DEFAULT )



  CREATE TABLE  CurrencyRate
  (
  CurrencyRateid int not null PRIMARY KEY ,
    CurrencyRateiddate datetime not null,
	fromcurrencycode nchar(3)not null,
	tocurrencycode nchar(3)not null,
	averagerate money not null,
	endofdayrate money not null,
	modifieddate datetime not null DEFAULT GETDATE (),
	 CONSTRAINT ad_fromcurrencycode_CK CHECK (LEN (fromcurrencycode)=3),
	  CONSTRAINT ad_tocurrencycode_CK CHECK (LEN (tocurrencycode)>1)
  )

 
     insert into  CurrencyRate 
values (1,GETDATE (),343,28,78756,239800,DEFAULT)

     insert into  CurrencyRate 
values (2,GETDATE (),393,18,78656,222800,DEFAULT)

     insert into  CurrencyRate 
values (3,GETDATE (),143,11,78756,239660,DEFAULT)

     insert into  CurrencyRate 
values (4,GETDATE (),343,28,78756,239800,DEFAULT)

     insert into  CurrencyRate 
values (5,GETDATE (),303,20,18756,231800,DEFAULT)

     insert into  CurrencyRate 
values (6,GETDATE (),313,12,78750,239809,DEFAULT)

     insert into  CurrencyRate 
values (7,GETDATE (),243,17,78758,239900,DEFAULT)

     insert into  CurrencyRate 
values (8,GETDATE (),343,28,78756,239800,DEFAULT)

     insert into  CurrencyRate 
values (9,GETDATE (),343,28,78756,239800,DEFAULT)

     insert into  CurrencyRate 
values (10,GETDATE (),343,28,78756,239800,DEFAULT)



  CREATE TABLE  SalesPerson
(
businessentityid int not null PRIMARY KEY  ,
territoryid int null,
salesquota money null,
bonus money not null DEFAULT 100,
commissionpct smallmoney not null,
salesytd money null DEFAULT 0,
saleslastyear money null DEFAULT 0,
modifieddate datetime not null DEFAULT GETDATE (),
CONSTRAINT saa_territoryid_fk FOREIGN KEY (territoryid) REFERENCES   SalesTerritory  (Territoryid)
)


     insert into  SalesPerson
values(1,1,null,DEFAULT,88794,null,null,DEFAULT)

 insert into  SalesPerson
values(2,2,null,DEFAULT,88704,null,null,DEFAULT)

 insert into  SalesPerson
values(3,3,null,DEFAULT,83794,null,null,DEFAULT)

 insert into  SalesPerson
values(4,4,null,DEFAULT,48794,null,null,DEFAULT)

 insert into  SalesPerson
values(5,5,null,DEFAULT,58794,null,null,DEFAULT)

 insert into  SalesPerson
values(6,6,null,DEFAULT,88764,null,null,DEFAULT)

 insert into  SalesPerson
values(7,7,null,DEFAULT,88774,null,null,DEFAULT)

 insert into  SalesPerson
values(8,8,null,DEFAULT,88798,null,null,DEFAULT)

 insert into  SalesPerson
values(9,9,null,DEFAULT,98794,null,null,DEFAULT)

 insert into  SalesPerson
values(10,10,null,DEFAULT,10794,null,null,DEFAULT)




CREATE TABLE Customer
(
Customerid int not null PRIMARY KEY ,
personid int null,
storeld int null,
territoryid int null,
accountnumber int not null,
modifieddate datetime not null DEFAULT GETDATE (),
CONSTRAINT ssp_territoryid_fk FOREIGN KEY (territoryid) REFERENCES   SalesTerritory  (Territoryid),
CONSTRAINT cyy_accountnumber_uq UNIQUE (accountnumber)
)


 insert into  Customer 
values(1,null,null,1,89797,DEFAULT)

 insert into  Customer 
values(2,null,null,2,82797,DEFAULT)

 insert into  Customer 
values(3,null,null,3,89397,DEFAULT)

 insert into  Customer 
values(4,null,null,4,84797,DEFAULT)

 insert into  Customer 
values(5,null,null,5,89757,DEFAULT)

 insert into  Customer 
values(6,null,null,6,89697,DEFAULT)

 insert into  Customer 
values(7,null,null,7,79787,DEFAULT)

 insert into  Customer 
values(8,null,null,8,89897,DEFAULT)

 insert into  Customer 
values(9,null,null,9,89097,DEFAULT)

 insert into  Customer 
values(10,null,null,10,81097,DEFAULT)




CREATE TABLE SalesOrderHeader
(
salesorderld int not null PRIMARY KEY ,
revisionnumber tinyint not null,
orderdate datetime not null ,
duedate datetime not null,
shipdate datetime  null,
status tinyint not null,
salesordernumber int not null ,
customerid int not null,
salespersonid int null,
territoryid int null,
billtoaddressid int not null,
shiptoaddressid int not null ,
shipmethodid int not null,
creditcardid int null ,
creditcardapprovalcod varchar(15)null,
currencyrateid int null,
subtotal money not null,
taxamt money not null,
freight money not null,
CONSTRAINT pssp_creditcardid_fk FOREIGN KEY (creditcardid) REFERENCES   creditcard  (creditcardid),
CONSTRAINT pssp_salespersonid_fk FOREIGN KEY (salespersonid)REFERENCES SalesPerson (businessentityid),
CONSTRAINT pssp_territoryid_fk FOREIGN KEY (territoryid)REFERENCES SalesTerritory ( territoryid),
CONSTRAINT pssp_customerid_fk FOREIGN KEY (customerid)REFERENCES  customer(customerid),
CONSTRAINT pssp_shiptoaddressid_fk FOREIGN KEY (shiptoaddressid)REFERENCES Address (Addressid),
CONSTRAINT pssp_shipmethodid_fk FOREIGN KEY (shipmethodid)REFERENCES ShipMethod (shipmethodid),
CONSTRAINT pssp_currencyrateid_fk FOREIGN KEY (currencyrateid) REFERENCES CurrencyRate (currencyrateid),
CONSTRAINT adkk_creditcardapprovalcod_CK CHECK (LEN (creditcardapprovalcod)=5)
)

 insert into  SalesOrderHeader
values(1,77,GETDATE (),GETDATE (),GETDATE (),88,88,1,1,1,1,1,1,1,98734,1,76745,5745,23432)

 insert into  SalesOrderHeader
values(2,78,GETDATE (),GETDATE (),GETDATE (),98,98,2,2,2,2,2,2,2,80734,2,86745,2745,13432)

 insert into  SalesOrderHeader
values(3,48,GETDATE (),GETDATE (),GETDATE (),80,80,3,3,3,3,3,3,3,98654,3,76795,5740,23402)

 insert into  SalesOrderHeader
values(4,37,GETDATE (),GETDATE (),GETDATE (),30,56,4,4,4,4,4,4,4,98834,4,76705,5045,23442)

 insert into  SalesOrderHeader
values(5,95,GETDATE (),GETDATE (),GETDATE (),32,90,5,5,5,5,5,5,5,98734,5,76745,5745,23432)

 insert into  SalesOrderHeader
values(6,97,GETDATE (),GETDATE (),GETDATE (),88,88,6,6,6,6,6,6,6,98734,6,76745,5745,23432)

 insert into  SalesOrderHeader
values(7,74,GETDATE (),GETDATE (),GETDATE (),88,88,7,7,7,7,7,7,7,98734,7,76745,5745,23432)

 insert into  SalesOrderHeader
values(8,78,GETDATE (),GETDATE (),GETDATE (),88,88,8,8,8,8,8,8,8,98734,8,76745,5745,23432)

 insert into  SalesOrderHeader
values(9,95,GETDATE (),GETDATE (),GETDATE (),88,88,9,9,9,9,9,9,9,98734,9,76745,5745,23432)

 insert into  SalesOrderHeader
values(10,56,GETDATE (),GETDATE (),GETDATE (),88,88,10,10,10,10,10,10,10,98734,10,76745,5745,23432)



 CREATE TABLE  SalesOrderDetail
 (
 SalesOrderid int not null ,
  SalesOrderDetailid int not null ,
  carriertrackingnumber nvarchar (25)null,
  orderqty smallint not null,
  productid int not null,
  specialofferid int not null,
  unitprice money not null,
  unitpricediscount money not null,
  modifieddate datetime not null DEFAULT GETDATE (),
    CONSTRAINT pss_SalesOrderid_SalesOrderDetailid_pk PRIMARY KEY (SalesOrderid,SalesOrderDetailid),
	  CONSTRAINT pss_SalesOrderDetailid_fk FOREIGN KEY (SalesOrderDetailid)REFERENCES  SalesOrderHeader (salesorderld),
  CONSTRAINT pss_specialofferid_fk FOREIGN KEY (specialofferid, ProductID) REFERENCES  SpecialOfferProduct (specialofferid, ProductId),
  CONSTRAINT aff_carriertrackingnumber_CK CHECK (LEN (carriertrackingnumber)=6),
  CONSTRAINT adf_unitprice_CK CHECK (unitprice>=30)
  )
 
 	 insert into  SalesOrderDetail
values (1,1,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (2,2,868686,19080,1,1,6766666,477447, 2023-2-2)


 	 insert into  SalesOrderDetail
values (3,3,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (4,4,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (5,5,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (6,6,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (7,7,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (8,8,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (9,9,868686,19080,1,1,6766666,477447, 2023-2-2)

 	 insert into  SalesOrderDetail
values (10,10,868686,19080,1,1,6766666,477447, 2023-2-2)
