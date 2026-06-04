
SELECT
    PortfolioType,
    COUNT(*) AS Total_Portfolios,
    SUM(InvestmentAmount) AS Total_Investment,
    AVG(InvestmentAmount) AS Average_Investment
FROM Portfolio
GROUP BY PortfolioType;

-- NAV Analysis

SELECT
    PortfolioID,
    SUM(CurrentValue) AS Current_Value,
    SUM(InvestmentAmount) AS Invested_Amount,
    SUM(CurrentValue) - SUM(InvestmentAmount) AS Profit_Loss
FROM Portfolio
GROUP BY PortfolioID;

-- Top Clients

SELECT
    ClientName,
    SUM(CurrentValue) AS Portfolio_Value
FROM Portfolio
GROUP BY ClientName
ORDER BY Portfolio_Value DESC;
