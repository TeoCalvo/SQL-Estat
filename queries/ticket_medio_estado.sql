select t2.customer_state,
       sum(t3.price) / count(distinct t1.order_id) as ticket_medio

from tb_orders as t1

left join tb_customers as t2
on t1.customer_id = t2.customer_id

left join tb_order_items as t3
on t1.order_id = t3.order_id

group by customer_state
order by sum(t3.price) / count(distinct t1.order_id) desc