-- Which 10 cars offer the best price-to-engine-size (CC) ratio?

SELECT c.brand,c.name,c.cc,c.price,c.fuel,c.year,
		round(c.price/c.cc,2) as price_per_cc
FROM cars c 
where c.cc is not null and c.cc > 0
order by price_per_cc asc
limit 10 ;