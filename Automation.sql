-- Views
CREATE VIEW high_value_customers AS
SELECT 
    c.customer_name,
    SUM(p.price * od.quantity) AS total_spent
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
JOIN order_details od 
ON o.order_id = od.order_id
JOIN products p 
ON od.product_id = p.product_id
GROUP BY c.customer_name;

-- Stored procedures
DELIMITER //

CREATE PROCEDURE GetTopSellingProducts()
BEGIN
    SELECT 
        p.product_name,
        SUM(p.price * od.quantity) AS total_revenue
    FROM order_details od
    JOIN products p 
    ON od.product_id = p.product_id
    GROUP BY p.product_name
    ORDER BY total_revenue DESC;
END //

DELIMITER ;
