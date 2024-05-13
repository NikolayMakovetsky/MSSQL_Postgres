CREATE TABLE "Shippers"
(
	"ShipperID" int NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"CompanyName" varchar (40) NOT NULL ,
	"Phone" varchar (24) NULL ,
	CONSTRAINT "PK_Shippers" PRIMARY KEY("ShipperID")
);