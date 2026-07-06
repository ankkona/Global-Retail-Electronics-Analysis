-- Create View for Sales Analysis

CREATE VIEW vw_SalesAnalysis AS

SELECT

    -- Sales Details
    s.Order_Number,
    s.Order_Date,
    s.Delivery_Date,
    s.Quantity,

    -- Keys
    s.CustomerKey,
    s.ProductKey,
    s.StoreKey,

    -- Product Details
    p.Product_Name,
    p.Brand,
    p.Category,

    -- Customer Details
    c.Name AS CustomerName,
    c.City,
    c.State,
    c.Country,

    -- Store Details
     st.State AS Store_Type,
    st.State AS StoreState,
    st.Country AS StoreCountry,

    -- Unit Price
    CAST(REPLACE(REPLACE(p.Unit_Price_USD,'$',''),',','') AS DECIMAL(10,2)) AS UnitPrice,

    -- Unit Cost
    CAST(REPLACE(REPLACE(p.Unit_Cost_USD,'$',''),',','') AS DECIMAL(10,2)) AS UnitCost,

    -- Revenue
    s.Quantity *
    CAST(REPLACE(REPLACE(p.Unit_Price_USD,'$',''),',','') AS DECIMAL(10,2)) AS Revenue,

    -- Profit
    s.Quantity *
    (
        CAST(REPLACE(REPLACE(p.Unit_Price_USD,'$',''),',','') AS DECIMAL(10,2))
        -
        CAST(REPLACE(REPLACE(p.Unit_Cost_USD,'$',''),',','') AS DECIMAL(10,2))
    ) AS Profit

FROM Sales s
JOIN Products p
    ON s.ProductKey = p.ProductKey
JOIN Customers c
    ON s.CustomerKey = c.CustomerKey
JOIN Stores st
    ON s.StoreKey = st.StoreKey;