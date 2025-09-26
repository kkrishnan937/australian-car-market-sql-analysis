-- 1. Identify the luxury segment: Top 5 most expensive cars across all brands.

SELECT c.brand,c.model,c.name,c.price
FROM cars c
ORDER BY c.price desc
limit 5;
