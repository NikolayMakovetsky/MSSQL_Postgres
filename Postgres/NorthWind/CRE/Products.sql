CREATE TABLE "Products"
(
	"ProductID" int NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"ProductName" varchar (40) NOT NULL ,
	"SupplierID" int NULL ,
	"CategoryID" int NULL ,
	"QuantityPerUnit" varchar (20) NULL ,
--	"UnitPrice" money NULL CONSTRAINT "DF_Products_UnitPrice" DEFAULT (0),
	"UnitsInStock" smallint NULL CONSTRAINT "DF_Products_UnitsInStock" DEFAULT (0),
	"UnitsOnOrder" smallint NULL CONSTRAINT "DF_Products_UnitsOnOrder" DEFAULT (0),
	"ReorderLevel" smallint NULL CONSTRAINT "DF_Products_ReorderLevel" DEFAULT (0),
	"Discontinued" bit NOT NULL CONSTRAINT "DF_Products_Discontinued" DEFAULT (0),
	CONSTRAINT "PK_Products" PRIMARY KEY("ProductID"),
	CONSTRAINT "FK_Products_Categories" FOREIGN KEY("CategoryID") REFERENCES "Categories" ("CategoryID"),
	CONSTRAINT "FK_Products_Suppliers" FOREIGN KEY("SupplierID") REFERENCES "Suppliers" ("SupplierID"),
	CONSTRAINT "CK_Products_UnitPrice" CHECK (UnitPrice >= 0),
	CONSTRAINT "CK_ReorderLevel" CHECK (ReorderLevel >= 0),
	CONSTRAINT "CK_UnitsInStock" CHECK (UnitsInStock >= 0),
	CONSTRAINT "CK_UnitsOnOrder" CHECK (UnitsOnOrder >= 0)
);
CREATE  INDEX "CategoriesProducts" 	ON "Products"("CategoryID");
CREATE  INDEX "CategoryID" 		ON "Products"("CategoryID");
CREATE  INDEX "ProductName" 		ON "Products"("ProductName");
CREATE  INDEX "SupplierID" 		ON "Products"("SupplierID");
CREATE  INDEX "SuppliersProducts" 	ON "Products"("SupplierID");
