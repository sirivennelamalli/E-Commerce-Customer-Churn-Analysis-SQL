-- ==========================================
-- E-Commerce Customer Churn Analysis
-- Author: Siri Vennela
-- SQL Server Project
-- ==========================================

-- Total Customers

SELECT COUNT(*) AS TotalCustomers
FROM dbo.ecommerce_churn;

-- Overall Churn Rate

SELECT
    COUNT(*) AS TotalCustomers,
    SUM(CAST(Churn AS INT)) AS ChurnedCustomers,
    ROUND(
        (SUM(CAST(Churn AS FLOAT))/COUNT(*))*100,
        2
    ) AS ChurnRatePercentage
FROM dbo.ecommerce_churn;

-- Churn Analysis by Login Device

SELECT
    PreferredLoginDevice,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(Churn AS INT)) AS ChurnedCustomers,
    ROUND(
        (SUM(CAST(Churn AS FLOAT))/COUNT(*))*100,
        2
    ) AS ChurnRate
FROM dbo.ecommerce_churn
GROUP BY PreferredLoginDevice
ORDER BY ChurnRate DESC;

-- Churn Analysis by City Tier

SELECT
    CityTier,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(Churn AS INT)) AS ChurnedCustomers,
    ROUND(
        (SUM(CAST(Churn AS FLOAT))/COUNT(*))*100,
        2
    ) AS ChurnRate
FROM dbo.ecommerce_churn
GROUP BY CityTier
ORDER BY ChurnRate DESC;

-- Churn Analysis by Payment Mode

SELECT
    PreferredPaymentMode,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(Churn AS INT)) AS ChurnedCustomers,
    ROUND(
        (SUM(CAST(Churn AS FLOAT))/COUNT(*))*100,
        2
    ) AS ChurnRate
FROM dbo.ecommerce_churn
GROUP BY PreferredPaymentMode
ORDER BY ChurnRate DESC;

-- Churn Analysis by Marital Status

SELECT
    MaritalStatus,
    COUNT(*) AS TotalCustomers,
    SUM(CAST(Churn AS INT)) AS ChurnedCustomers,
    ROUND(
        (SUM(CAST(Churn AS FLOAT))/COUNT(*))*100,
        2
    ) AS ChurnRate
FROM dbo.ecommerce_churn
GROUP BY MaritalStatus
ORDER BY ChurnRate DESC;