-- Databoiz
-- Greg Acosta, Emad Syed, Justin Crittenden, Locke Topping, Miguel Lopez, Evan Blem

spool 325query-results.txt

prompt When does a customers subscription end?

select user_id, expir_date "DATE"
from subscription
where user_id = '&id';


prompt What quantity do we have of SNES games?


select product_name, stock NUM
from catalog
where platform = 'SNES'
order by stock;


prompt What game do we have the most copies of?

select product_name, stock NUM
from catalog
where stock =
    (select max(stock)
    from catalog);


prompt What is a customers order history?

select c.order_id ID, order_date, order_status STATUS
from customer_order_history c
join orders o on c.user_id = o.user_id
where c.user_id = '&id';


prompt What kind of consoles do you sell?

select product_name
from catalog
where product_category = 'Console';


prompt What is your oldest console?

select product_name, release_date "RELEASE DATE"
from catalog
where release_date =
    (select min(release_date)
    from catalog);

prompt Do you have Pokémon Red?

select product_name
from catalog
where product_name like 'Pokemon Red%';

prompt Are any customer's subscriptions expiring this month?

select u.user_id, u.l_Name, u.f_Name, s.expir_date
from subscription s
join user_info u on s.user_id = u.user_id
where s.expir_date like '%-&month-%';
