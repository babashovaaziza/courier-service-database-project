use CourseWork
go

Create table Territory (
   territoryNO int IDENTITY(1,1),
   city nvarchar(20),
   district nvarchar(20),
   street nvarchar(20),
   postalCode nvarchar(20)
   constraint pk_Territory_No primary key(territoryNO),
)
Create table Branch (
   branchNO int IDENTITY(1,1),
   locationID int,
   startDate date,
   deliveryRadius int,
   phone nvarchar(20),
   managerPassportNO nvarchar(20),
   servicingCarrier int
   constraint pk_Branch_No primary key(branchNO),
   constraint fk_branch_loc foreign key(locationID) 
             references Territory(territoryNO)
);
Create table Employee(
   passportNO nvarchar(20),
   firstName nvarchar(20),
   LastName nvarchar(20),
   birthdate date,
   hiredate date,
   position nvarchar(20),
   experience int,
   salary money,
   adress nvarchar(100),
   phone nvarchar(20),
   numberOfChildren int,
   gender nvarchar(10),
   workingBranchNo int
   constraint pk_Employee_No primary key(passportNO),
   constraint fk_working_br foreign key(workingBranchNo) 
             references Branch(branchNO)
);
ALTER TABLE Branch ADD CONSTRAINT fk_manager_mn foreign key(managerPassportNO) 
             references Employee(passportNO)
Create table OnlineShop (
   onlineShopNO int IDENTITY(1,1),
   onlineShopName nvarchar(20),
   startDate date,
   NumberofUsers int,
   contractStartDate date,
   phone nvarchar(20),
   ContactEmployeeName nvarchar(20),
   [servicingPrice(in %)] int,
   BankAccountNumber nvarchar(50),
   constraint pk_OnlineShop_No primary key(onlineShopNO),
);
Create table Carrier (
   carrierNO int IDENTITY(1,1),
   carrierName nvarchar(20),
   startDate date,
   contractStartDate date,
   phone nvarchar(20),
   contactEmployeeName nvarchar(20),
   [servicingPrice(in km)] money,
   bankAccountNumber nvarchar(50),
   constraint pk_Carrier_No primary key(carrierNO),
);
ALTER TABLE Branch ADD CONSTRAINT fk_servicingCarrier_no foreign key(servicingCarrier) 
             references Carrier(carrierNO)

Create table CarrierEmployee(
   passportNO nvarchar(20),
   firstName nvarchar(20),
   lastName nvarchar(20),
   birthdate date,
   hiredate date,
   phone nvarchar(20),
   vehcileNo nvarchar(20),
   vehcileType nvarchar(20),
   experience int,
   workingCarrierNo int
   constraint pk_CarrierEmployee_No primary key(passportNO),
   constraint fk_workingCarrier_No foreign key(workingCarrierNo) 
             references Carrier(CarrierNO)
);
Create table Orderr(
   orderrNo int IDENTITY(1,1),
   orderTime datetime,
   deliveryTime datetime,
   paymentMethod nvarchar(50),
   customerPhone nvarchar(20),
   deliveryAdress nvarchar(50),
   [deliveryRouteLen(km)] int,
   acceptingEmployee nvarchar(20),
   carriyngEmployee nvarchar(20),
   orderGivedOnlineShop int
   constraint pk_Orderr_No primary key(orderrNo),
   constraint fk_OnlineShop_Org foreign key(orderGivedOnlineShop) 
             references OnlineShop(onlineShopNO),
   constraint fk_Employee_acc foreign key(acceptingEmployee) 
             references Employee(PassportNO),
   constraint fk_CarrierEmployee_crr foreign key(carriyngEmployee) 
             references CarrierEmployee(PassportNO)
);
create table Category(
   categoryNo int IDENTITY(1,1),
   categoryName  nvarchar(30), constraint uq_category_name UNIQUE(categoryName),
   [PreparationTime(min)] int,
   [status] nvarchar(30),
   [description] nvarchar(300),
   shelfLife nvarchar(200),
   [storageTempMax(Celsius)] int,
   [storageTempMin(Celsius)] int,
   constraint pk_Category_No primary key(categoryNo)
)

Create table [Product](
   productNO int IDENTITY(1,1),
   [name] nvarchar(20),
   price money,
   preparedTime datetime,
   [appweight(gr)] int,
   appcalories int,
   inCategory int,
   preparedBy nvarchar(20)
   constraint pk_Product_No primary key(productNO),
   constraint fk_Employee_No foreign key(preparedBy) 
             references Employee(PassportNo),
   constraint fk_Category_No foreign key(inCategory) 
             references Category(categoryNo)
)
create table OrderDetail(
   orderDetailNo int IDENTITY(1,1),
   productNo int,
   quantity int,
   orderNo int
   constraint pk_OrderDetail_No primary key(orderDetailNo),
   constraint fk_Order_No foreign key(orderNo) 
             references Orderr(orderrNO),
   constraint fk_product_No foreign key(productNo) 
              references [Product](productNO)

); 
/* In our business study case online shop which gives order must have more than 10000 users.*/

ALTER TABLE OnlineShop ADD CONSTRAINT ck_OnlineShop_NU check( NumberofUsers>10000)
