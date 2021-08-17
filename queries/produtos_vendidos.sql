select t2.product_category_name,
       count(distinct t1.order_id) as qtde_venda,
       sum( t1.price) as receita

from tb_order_items as t1

left join tb_products as t2
on t1.product_id = t2.product_id

group by t2.product_category_name
order by sum( t1.price) desc