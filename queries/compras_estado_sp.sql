select customer_state,
       count(distinct order_id)

from tb_orders as t1

left join tb_customers as t2
on t1.customer_id = t2.customer_id

where t1.order_purchase_timestamp >= '2017-01-01'
and t1.order_purchase_timestamp < '2017-02-01'

group by customer_state
order by count(order_id) desc
