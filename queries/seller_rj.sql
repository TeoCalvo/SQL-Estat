select count(*),
       count(distinct seller_id) 

from tb_sellers

where seller_state = 'RJ'