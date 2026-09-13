-- Query 1: Looking at total spend by supplier
SELECT
    supplier,
    ROUND(SUM(actual_spend), 2) AS total_spend
FROM supplier_performance
GROUP BY supplier
ORDER BY total_spend DESC;

-- Query 2: Analyze total savings and average savings percentage by supplier.
SELECT
    supplier,
    ROUND(SUM(total_savings), 2) AS total_savings,
    ROUND(AVG(savings_percentage), 2) AS avg_savings_percentage
FROM supplier_performance
GROUP BY supplier
ORDER BY total_savings DESC;

-- Query 3: Compare average defect rates across suppliers.
SELECT
    supplier,
    ROUND(AVG(defect_rate), 4) AS avg_defect_rate
FROM supplier_performance
WHERE defect_rate IS NOT NULL
GROUP BY supplier
ORDER BY avg_defect_rate DESC;

-- Query 4: Calculate compliance rate by supplier.
SELECT
    supplier,
    ROUND(
        AVG(
            CASE
                WHEN compliance = 'Yes' THEN 1.0
                WHEN compliance = 'No' THEN 0.0
            END
        ),4
    ) AS compliance_rate
FROM supplier_performance
GROUP BY supplier
ORDER BY compliance_rate DESC;

-- Query 5: Compare average delivery lead time across suppliers.
SELECT
    supplier,
    ROUND(AVG(delivery_lead_time), 2) AS avg_delivery_lead_time_days
FROM supplier_performance
WHERE delivery_lead_time IS NOT NULL
GROUP BY supplier
ORDER BY avg_delivery_lead_time_days DESC;

-- Query 6: Putting it all together
SELECT
    supplier,
    ROUND(SUM(actual_spend), 2) AS total_spend,
    ROUND(SUM(total_savings), 2) AS total_savings,
    ROUND(AVG(savings_percentage), 2) AS avg_savings_percentage,
    ROUND(AVG(defect_rate), 4) AS avg_defect_rate,
    ROUND(
        AVG(
            CASE
                WHEN compliance = 'Yes' THEN 1.0
                WHEN compliance = 'No' THEN 0.0
            END
        ),4
    ) AS compliance_rate,
    ROUND(AVG(delivery_lead_time), 2) AS avg_delivery_lead_time_days
FROM supplier_performance
GROUP BY supplier
ORDER BY total_spend DESC;