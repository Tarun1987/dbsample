DECLARE @TableA TABLE(
	A1		INT IDENTITY(1,1),
	A2		INT,
	A3	VARCHAR(20)
)

INSERT INTO @TableA ( A2, A3 ) VALUES
	(10,'Table A - 1'),
	(20,'Table A - 2'),
	(30,'Table A - 3'),
	(40,'Table A - 4')

DECLARE  @TableB TABLE(
	B1		INT IDENTITY(1,1),
	A1		INT,
	B2	VARCHAR(20)
)

INSERT INTO @TableB ( A1,B2 ) VALUES
	(1,'Table B - 1'),
	(2,'Table B - 2'),
	(2,'Table B - 3'),
	(3,'Table B - 4')

DECLARE  @TableC TABLE(
	C1		INT IDENTITY(1,1),
	A2		INT,
	C2		VARCHAR(20)
)

INSERT INTO @TableC (A2,C2 ) VALUES
	(10,'Table C - 1'),
	(30,'Table C - 2'),
	(40,'Table C - 3'),
	(40,'Table C - 4')


SELECT
		a.[A1],
		a.[A2],
		a.[A3],
		b.[B2],
		c.[C2]
	FROM
					@TableA		a   
		INNER JOIN	@TableC		c  ON c.[A2] = a.[A2]
		INNER JOIN	@TableB		b  ON b.[A1] = a.[A1]
