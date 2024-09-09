-- create schema retailshop


-- use retailshop;


-- select * from online_retail;


-- DESCRIBE online_retail;


-- SELECT CustomerID, SUM(Quantity * UnitPrice) AS TotalOrderValue
-- FROM online_retail
-- GROUP BY CustomerID;


-- SELECT CustomerID, COUNT(DISTINCT StockCode) AS UniqueProductsPurchased
-- FROM online_retail
-- GROUP BY CustomerID;


-- SELECT CustomerID
-- FROM online_retail
-- GROUP BY CustomerID
-- HAVING COUNT(InvoiceNo) = 1;


-- SELECT a.Description AS ProductA, b.Description AS ProductB, COUNT(*) AS Frequency
-- FROM online_retail a
-- JOIN online_retail b ON a.InvoiceNo = b.InvoiceNo AND a.StockCode < b.StockCode
-- GROUP BY a.Description, b.Description
-- ORDER BY Frequency DESC;


-- SELECT CustomerID,
--     CASE
--         WHEN COUNT(InvoiceNo) > 10 THEN 'High'
--         WHEN COUNT(InvoiceNo) BETWEEN 5 AND 10 THEN 'Medium'
--         ELSE 'Low'
--     END AS PurchaseFrequency
-- FROM online_retail
-- GROUP BY CustomerID;


-- SELECT Country, AVG(Quantity * UnitPrice) AS AverageOrderValue
-- FROM online_retail
-- GROUP BY Country;


-- SELECT CustomerID
-- FROM online_retail
-- WHERE InvoiceDate < NOW() - INTERVAL 6 MONTH
-- GROUP BY CustomerID
-- HAVING COUNT(InvoiceNo) = 0;


-- -- This query finds the most commonly purchased product pairs together
-- SELECT 
--     a.Description AS ProductA, 
--     b.Description AS ProductB, 
--     COUNT(*) AS Frequency
-- FROM 
--     online_retail a
-- JOIN 
--     online_retail b
-- ON 
--     a.InvoiceNo = b.InvoiceNo  -- Join on the same invoice number
--     AND a.StockCode < b.StockCode  -- Ensure each pair is only counted once
-- GROUP BY 
--     a.Description, 
--     b.Description
-- ORDER BY 
--     Frequency DESC;  -- Sort by the frequency of the pairs




-- SELECT a.Description AS ProductA, b.Description AS ProductB, COUNT(*) AS Frequency
-- FROM online_retail a
-- JOIN online_retail b ON a.InvoiceNo = b.InvoiceNo AND a.StockCode < b.StockCode
-- GROUP BY a.Description, b.Description
-- ORDER BY Frequency DESC;








