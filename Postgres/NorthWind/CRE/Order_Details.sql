CREATE TABLE "Order Details"
(
	"OrderID" int NOT NULL ,
	"ProductID" int NOT NULL ,
--	"UnitPrice" money NOT NULL CONSTRAINT "DF_Order_Details_UnitPrice" DEFAULT (0),
	"Quantity" smallint NOT NULL CONSTRAINT "DF_Order_Details_Quantity" DEFAULT (1),
	"Discount" real NOT NULL CONSTRAINT "DF_Order_Details_Discount" DEFAULT (0),
	CONSTRAINT "PK_Order_Details" PRIMARY KEY("OrderID","ProductID"),
	CONSTRAINT "FK_Order_Details_Orders" FOREIGN KEY("OrderID") REFERENCES "Orders" ("OrderID"),
	CONSTRAINT "FK_Order_Details_Products" FOREIGN KEY("ProductID") REFERENCES "Products" ("ProductID"),
	CONSTRAINT "CK_Discount" CHECK (Discount >= 0 and (Discount <= 1)),
	CONSTRAINT "CK_Quantity" CHECK (Quantity > 0),
	CONSTRAINT "CK_UnitPrice" CHECK (UnitPrice >= 0)
);
CREATE  INDEX "OrderID" 		ON "Order Details"("OrderID");
CREATE  INDEX "OrdersOrder_Details" 	ON "Order Details"("OrderID");
CREATE  INDEX "ProductID" 		ON "Order Details"("ProductID");
CREATE  INDEX "ProductsOrder_Details" 	ON "Order Details"("ProductID");
