-- How have average prices and total listings changed year-over-year?

with yearly as (SELECT 
c.year, COUNT(*) AS total_cars,
round(avg(c.price),2) as avg_price
from cars c
group by c.year)
,
growth as (select year, total_cars,avg_price,
		lag(total_cars) over(order by year) as prev_cars,
        lag(avg_price) over(order by year) as prev_avg_price
        from yearly)
select year,total_cars,avg_price,
			ROUND((total_cars-prev_cars)*100/prev_cars,2) as yoy_growth,
            ROUND((avg_price-prev_avg_price)*100/prev_cars,2) as yoy_growth_price
            from growth
order by year desc;
            
            


        