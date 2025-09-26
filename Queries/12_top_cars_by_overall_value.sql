-- Rank cars by overall value considering price, age, and kilometers driven

WITH stats AS (SELECT avg(price) as avg_price,
		avg(year) as avg_year,
        avg(kilometer) as avg_km
FROM cars),

scored as (
	select c.name,c.brand,c.year,c.price,c.kilometer,
		((c.year - (select avg_year from stats))*0.4)+
        (((select avg_price from stats)-c.price)*0.4)+
        (((select avg_km from stats)-c.kilometer)*0.2) as value_score
        from cars c )
select * 
from scored 
order by value_score desc
limit 10;