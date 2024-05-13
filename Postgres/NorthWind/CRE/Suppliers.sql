CREATE TABLE "Suppliers"
(
	"SupplierID" int NOT NULL GENERATED ALWAYS AS IDENTITY ,
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
	"HomePage" text NULL ,
	CONSTRAINT "PK_Suppliers" PRIMARY KEY("SupplierID")
);
CREATE  INDEX "CompanyName" ON "Suppliers"("CompanyName");
CREATE  INDEX "PostalCode" ON "Suppliers"("PostalCode");
