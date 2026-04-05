select
	od.*,
	(	
		select o.customer_id
		from orders o
		where o.id = od.order_id
	) customer_id
from order_details od;