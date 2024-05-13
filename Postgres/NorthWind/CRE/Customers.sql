CREATE TABLE "Customers"
(
	"CustomerID" char (5) NOT NULL ,
	"CompanyName" varchar (40) NOT NULL ,
	"ContactName" varchar (30) NULL ,
	"ContactTitle" varchar (30) NULL ,
	"Address" varchar (60) NULL ,
	"City" varchar (15) NULL ,
	"Region" varchar (15) NULL ,
	"PostalCode" varchar (10) NULL ,
	"Country" varchar (15) NULL ,
	"Phone" varchar (24) NULL ,
	"Fax" varchar (24) NULL ,
	CONSTRAINT "PK_Customers" PRIMARY KEY("CustomerID")
);
CREATE  INDEX "City" 		ON "Customers"("City");
CREATE  INDEX "CompanyName" 	ON "Customers"("CompanyName");
CREATE  INDEX "PostalCode" 	ON "Customers"("PostalCode");  
CREATE  INDEX "Region" 		ON "Customers"("Region");