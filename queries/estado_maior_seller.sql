select seller_state,
       count(distinct seller_id)

from tb_sellers

group by seller_state
order by count(distinct seller_id) desc