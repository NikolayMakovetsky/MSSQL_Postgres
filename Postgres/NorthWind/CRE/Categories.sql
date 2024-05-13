CREATE TABLE "Categories"
(
	"CategoryID" int NOT NULL GENERATED ALWAYS AS IDENTITY,
	"CategoryName" varchar (15) NOT NULL,
	"Description" text NULL,
--	"Picture" "image" NULL ,
	CONSTRAINT "PK_Categories" PRIMARY KEY ("CategoryID")
);
CREATE  INDEX "CategoryName" ON "Categories" ("CategoryName");
