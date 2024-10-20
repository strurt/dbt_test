with orders as (
    select * from {{ref('stage_orders')}}
),

payments as (
    select * from {{ref("stage_payments")}}
),

fact_orders as(
    select order_id,
    payment_id,
    amount
    from orders o 
    left join payments  p on 
    o.order_id = p.payment_id
    
    
    
)
select * from fact_orders