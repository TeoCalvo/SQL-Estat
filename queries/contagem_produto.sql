select count(*) as qtde_produto,
       count(distinct product_id) as qtde_produto_distintos,
       avg(product_weight_g) as peso_medio,
       max(product_weight_g) as peso_maximo,
       min(product_weight_g) as peso_minimo

from tb_products

where product_category_name = 'bebes'
