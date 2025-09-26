-- Which cars are priced above their brand’s average price?

with brand as (SELECT brand ,avg(price)as avg_price
FROM cars 
group by brand)

select c.name,c.brand,c.price,b.avg_price
from cars c
join brand b on b.brand = c.brand 
where c.price > b.avg_price;
