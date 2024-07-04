-- Total States
SELECT COUNT(*) AS total_states
FROM d_store;
------------------------------------------------
-- Total Products
SELECT COUNT(*) AS total_products
FROM d_product;
--------------------------------------------------
-- Total Inventory
SELECT SUM(`Quantity on Hand`) AS total_inventory
FROM f_inventory_adjusted;

-- sales growth 
    SELECT
        d.year,
        SUM(s.total_amount) AS total_sales
    FROM
        sales s
    JOIN
        dates d ON s.sale_date = d.date;



-- Region wise sales
SELECT 
    r.region_name,
    SUM(s.sale_amount) AS total_sales_amount,
    SUM(s.quantity) AS total_quantity_sold
FROM 
    Sales s
JOIN 
    Regions r ON s.region_id = r.region_id
GROUP BY 
    r.region_name
ORDER BY 
    total_sales_amount DESC;
  
  -- State wise sales
    SELECT 
    state,
    SUM(amount) AS total_sales
FROM 
    sales
GROUP BY 
    state
ORDER BY 
    total_sales DESC;


