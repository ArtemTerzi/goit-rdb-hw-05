with sub as (select * from order_details od where quantity>10)
select sub.order_id, avg(sub.quantity) avg_quantity
from sub
group by sub.order_id
