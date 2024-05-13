SELECT * FROM people;
SELECT * FROM prcurrent;

DECLARE @currdate DATE;
SELECT @currdate = '2020-03-31';

SELECT
	*,
	(SELECT TOP(1) salary FROM prcurrent WHERE people.pid = prcurrent.pid AND prcurrent.currdate <= @currdate ORDER BY prcurrent.currdate DESC) AS salary,
	(SELECT TOP(1) coef FROM prcurrent WHERE people.pid = prcurrent.pid AND prcurrent.currdate <= @currdate ORDER BY prcurrent.currdate DESC) AS coef 
FROM people;


SELECT p.*, x.salary, x.coef, CAST(x.salary * x.coef AS DECIMAL(19, 2)) AS wage
FROM people p
	OUTER APPLY (
		SELECT TOP(1) salary, coef FROM prcurrent c WHERE p.pid = c.pid AND c.currdate <= @currdate ORDER BY c.currdate DESC
	) x
WHERE 1=1


SELECT p.*, x.salary, x.coef, ROUND(x.salary * x.coef, 2) AS wage
FROM people p
	CROSS APPLY (
		SELECT TOP(1) salary, coef FROM prcurrent c WHERE p.pid = c.pid AND c.currdate <= @currdate ORDER BY c.currdate DESC
	) x
WHERE 1=1


SELECT p.*, x.salary, x.coef, CAST(x.salary * x.coef AS DECIMAL(19, 2)) AS wage
FROM people p
	LEFT JOIN (
		SELECT b.*
		FROM
		(
			SELECT pid, MAX(currdate) AS currdate
			FROM prcurrent c WHERE c.currdate <= @currdate
			GROUP BY pid
		) a
		INNER JOIN prcurrent b ON b.pid = a.pid AND b.currdate = a.currdate
	) x ON p.pid = x.pid
WHERE 1=1




