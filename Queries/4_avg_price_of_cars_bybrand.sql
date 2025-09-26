-- What is the average price of cars by brand, and which brands command premium pricing?

SELECT 	c.brand,count(*) as total_listings,
		round(avg(c.price)) as avg_price
FROM cars c
group by c.brand
order by avg_price desc
limit 10;