CREATE TABLE "Orders"
(
	"OrderID" int NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"CustomerID" char (5) NULL ,
	"EmployeeID" int NULL ,
	"OrderDate" date NULL ,
	"RequiredDate" date NULL ,
	"ShippedDate" date NULL ,
	"ShipVia" int NULL ,
--	"Freight" money NULL CONSTRAINT "DF_Orders_Freight" DEFAULT (0),
	"ShipName" varchar (40) NULL ,
	"ShipAddress" varchar (60) NULL ,
	"ShipCity" varchar (15) NULL ,
	"ShipRegion" varchar (15) NULL ,
	"ShipPostalCode" varchar (10) NULL ,
	"ShipCountry" varchar (15) NULL ,
	CONSTRAINT "PK_Orders" PRIMARY KEY("OrderID"),
	CONSTRAINT "FK_Orders_Customers" FOREIGN KEY("CustomerID") REFERENCES "Customers" ("CustomerID"),
	CONSTRAINT "FK_Orders_Employees" FOREIGN KEY("EmployeeID") REFERENCES "Employees" ("EmployeeID"),
	CONSTRAINT "FK_Orders_Shippers" FOREIGN KEY("ShipVia") REFERENCES "Shippers" ("ShipperID")
);
CREATE  INDEX "CustomerID" 	ON "Orders"("CustomerID");
CREATE  INDEX "CustomersOrders" ON "Orders"("CustomerID");
CREATE  INDEX "EmployeeID" 	ON "Orders"("EmployeeID");
CREATE  INDEX "EmployeesOrders" ON "Orders"("EmployeeID");
CREATE  INDEX "OrderDate" 	ON "Orders"("OrderDate");
CREATE  INDEX "ShippedDate" 	ON "Orders"("ShippedDate");
CREATE  INDEX "ShippersOrders" 	ON "Orders"("ShipVia");
CREATE  INDEX "ShipPostalCode" 	ON "Orders"("ShipPostalCode");
