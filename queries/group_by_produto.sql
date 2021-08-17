select product_category_name,
       count(*) as qtde,
       avg(product_weight_g) as peso_medio,
       max(product_weight_g) as peso_max,
       min(product_weight_g) as peso_min

from tb_products

group by product_category_name