select product_category_name,

       avg(product_length_cm * product_height_cm * product_width_cm) as volume_medio

from tb_products

group by product_category_name
order by avg(product_length_cm * product_height_cm * product_width_cm) desc