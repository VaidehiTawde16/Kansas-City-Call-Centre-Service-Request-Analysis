--Question 1A

Use [master]
GO

SELECT YEAR([Creation_Date]) AS Year, COUNT(*) AS [CASE ID]
FROM dbo.Vai2
WHERE YEAR([Creation_Date]) >= 2018 AND YEAR([Creation_Date]) <= 2021
GROUP BY YEAR([Creation_Date]);

--Question 1B

Use [master]
GO

SELECT YEAR([Creation_Date]) AS Year, MONTH([Creation_Date]) AS Month, COUNT(*) AS [CASE ID]
FROM dbo.Vai2
GROUP BY YEAR([Creation_Date]), MONTH([Creation_Date]);

--Question 2

Use [master]
GO

SELECT SOURCE, COUNT(*) AS [CASE ID]
FROM dbo.Vai2
GROUP BY SOURCE;

--Question 3

Use [master]
GO

SELECT DEPARTMENT, COUNT(*) as [CASE ID]
FROM dbo.Vai2
GROUP BY DEPARTMENT;

--Question 4
USE [master]
GO

SELECT TOP 10
    CATEGORY1,
    [TYPE],
    COUNT(*) as [CASE ID]
FROM 
    dbo.Vai2
GROUP BY 
    CATEGORY1, [TYPE]
ORDER BY 
    [CASE ID] DESC;

--Question 5

Use [master]
GO

SELECT TOP 10 [ZIP CODE], COUNT(*) as [CASE ID]
FROM dbo.Vai2
GROUP BY [ZIP CODE]
ORDER BY [CASE ID] DESC;

--Question 6

Use [master]
GO

SELECT [DEPARTMENT], [WORK GROUP], COUNT(*) as [CASE ID]
FROM dbo.Vai2
GROUP BY DEPARTMENT, [WORK GROUP];

--Question 7

Use [master]
GO

SELECT 
    DEPARTMENT,
    [Creation_Date], 
    [CREATION TIME], 
    COUNT(*) as [CASE ID]
FROM 
    dbo.Vai2
GROUP BY 
    DEPARTMENT, [Creation_Date], [CREATION TIME]
ORDER BY 
    DEPARTMENT, [Creation_Date], [CREATION TIME];

--Question 8

Use [master]
GO

SELECT STATUS, YEAR([Creation_Date]) as Year, COUNT(*) as [CASE ID]
FROM dbo.Vai2
WHERE YEAR([Creation_Date]) BETWEEN 2018 AND 2021
GROUP BY STATUS, YEAR([Creation_Date]);

--Question 9

Use [master]
GO

SELECT CATEGORY1, AVG([DAYS TO CLOSE]) as AverageDaysToClose
FROM dbo.Vai2
GROUP BY CATEGORY1;

--Question 10

USE [master]
GO

SELECT 
    DEPARTMENT, COUNT(*) as [CASE ID], AVG([DAYS TO CLOSE]) as AverageDaysToClose
FROM 
    dbo.Vai2
GROUP BY 
    DEPARTMENT;