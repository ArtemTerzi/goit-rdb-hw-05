select sub.order_id, avg(sub.quantity) avg_quantity
from (select * from order_details od where quantity>10) sub
group by sub.order_id