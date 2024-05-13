IF OBJECT_ID('prcurrent', 'U') IS NOT NULL DROP TABLE prcurrent;
IF OBJECT_ID('people', 'U') IS NOT NULL DROP TABLE people;


CREATE TABLE people 
(
	pid			INT			NOT NULL,
	full_name	VARCHAR(50) NOT NULL,
	CONSTRAINT PK_people PRIMARY KEY (pid)
);

CREATE TABLE prcurrent
(
	pid			INT				NOT NULL,
	currdate	DATE			NOT NULL,
	salary		DECIMAL(16, 2)	NOT NULL,
	coef		DECIMAL(7, 6)	NOT NULL,
	CONSTRAINT PK_prcurrent PRIMARY KEY (pid, currdate)
);

ALTER TABLE prcurrent ADD CONSTRAINT FK_prcurrent_people FOREIGN KEY (pid) REFERENCES people (pid);

/*
SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('prcurrent', 'U')
SELECT * FROM sys.objects WHERE parent_object_id = 725577623
*/

INSERT INTO people
(pid, full_name)
VALUES
(1, 'Копылова Дарья'),
(2, 'Думский Максим'),
(3, 'Позднякова Мария'),
(4, 'Лукашин Артем');

INSERT INTO prcurrent
(pid, currdate, salary, coef)
VALUES
(1, '2020-01-31', 34500, 1),
(1, '2020-03-31', 40000, 1.08),
(2, '2020-02-29', 70000, 0.93);

SELECT * FROM people;
SELECT * FROM prcurrent;

