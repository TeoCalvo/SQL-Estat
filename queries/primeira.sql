SELECT order_id,
       customer_id,

        case when date(order_delivered_customer_date) > date(order_estimated_delivery_date)
                  then 'atraso'
             when date(order_delivered_customer_date) = date(order_estimated_delivery_date)
                  then 'no dia'
                  else 'antes'
        end as flag_atraso

FROM tb_orders
