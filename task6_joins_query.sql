--1) product & sales join

select * from product

select * from sales

---INNER JOIN
	
select p.product_id , p.product_name , p.category , s.order_id , s.ship_mode , s.sales from sales as s
inner join product as p
on s.product_id = p.product_id

---LEFT JOIN

select p.product_id , p.product_name , p.category , s.order_id , s.ship_mode , s.sales  from product as p
left join sales as s
on p.product_id = s.product_id

---RIGHT JOIN

select p.product_id , p.product_name , p.category , s.order_id , s.ship_mode , s.sales from sales as s
right join product as p
on s.product_id = p.product_id

---FULL JOIN

select p.product_id , p.product_name , p.category , s.order_id , s.ship_mode , s.sales  from product as p
full join sales as s
on p.product_id = s.product_id


	

--2) customer & sales join

select * from customer

select * from sales

---INNER JOIN

select c.customer_id , c.customer_name , c.age , s.order_id , s.ship_mode , s.sales from sales as s
inner join customer as c
on s.customer_id = c.customer_id

---LEFT JOIN 

select c.customer_id , c.customer_name , c.age , s.order_id , s.ship_mode , s.sales from customer as c
left join sales as s
on c.customer_id = s.customer_id 

---RIGHT JOIN

select c.customer_id , c.customer_name , c.age , s.order_id , s.ship_mode , s.sales from sales as s
right join customer as c
on s.customer_id = c.customer_id

---FULL JOIN

select c.customer_id , c.customer_name , c.age , s.order_id , s.ship_mode , s.sales from customer as c
full join sales as s
on c.customer_id = s.customer_id 





--3) product, customer, sales join (inner join)

select c.customer_id , c.customer_name , c.age , p.product_id , p.product_name , p.category , s.order_id , s.ship_mode , s.sales from sales as s
	
inner join customer as c 
on s.customer_id = c.customer_id

inner join product as p
on s.product_id = p.product_id
