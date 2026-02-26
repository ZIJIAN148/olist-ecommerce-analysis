WITH CategoryRevenue AS (
    SELECT 
        p.product_category_name,
        SUM(oi.price) AS total_revenue
    FROM 
        `olist-portfolio-488616.ecommerce_data.orders_items` oi
    JOIN 
        `olist-portfolio-488616.ecommerce_data.products` p 
        ON oi.product_id = p.product_id
    WHERE 
        p.product_category_name IS NOT NULL
    GROUP BY 
        p.product_category_name
)

SELECT 
    product_category_name,
    ROUND(total_revenue, 2) AS total_revenue_usd,
    RANK() OVER(ORDER BY total_revenue DESC) AS revenue_rank
FROM 
    CategoryRevenue
ORDER BY 
    revenue_rank
LIMIT 5;