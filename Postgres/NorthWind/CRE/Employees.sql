CREATE TABLE "Employees" (
	"EmployeeID" int NOT NULL GENERATED ALWAYS AS IDENTITY,
	"LastName" varchar (20) NOT NULL,
	"FirstName" varchar (10) NOT NULL,
	"Title" varchar (30) NULL,
	"TitleOfCourtesy" varchar (25) NULL,
	"BirthDate" date NULL,
	"HireDate" timestamp NULL,
	"Address" varchar (60) NULL,
	"City" varchar (15) NULL,
	"Region" varchar (15) NULL,
	"PostalCode" varchar (10) NULL,
	"Country" varchar (15) NULL,
	"HomePhone" varchar (24) NULL,
	"Extension" varchar (4) NULL,
--	"Photo" "image" NULL,
	"Notes" text NULL ,
	"ReportsTo" int NULL,
	"PhotoPath" varchar (255) NULL,
	CONSTRAINT "PK_Employees" PRIMARY KEY ("EmployeeID"),
	CONSTRAINT "FK_Employees_Employees" FOREIGN KEY ("ReportsTo") REFERENCES "Employees" ("EmployeeID"),
	CONSTRAINT "CK_Birthdate" CHECK ("BirthDate" < now())
);

CREATE INDEX "LastName" ON "Employees"("LastName");
CREATE INDEX "PostalCode" ON "Employees"("PostalCode");
