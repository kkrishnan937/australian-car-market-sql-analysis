-- Which brands have the highest average prices in the Wagon segment

SELECT c.brand,count(*) as wagon_count,
	   round(AVG(c.price),2) as avg_price
FROM cars c
WHERE c.type like '%wagon%'
GROUP by c.brand
order by avg_price desc;

select type from cars;
