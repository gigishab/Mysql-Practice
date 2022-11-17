show databases;
use classicmodels;
show tables;

select * from product limit 3;
select * from productline limit 3;


select productcode, prodouctname from products p inner join productlines p1
on p.productline = p1.productline

select productcode, productname, textdescription, p.productline 
from products p inner join productlines pl
on p.productline = pl.productline;

select productcode, productname, textdescription, productline 
from products inner join productlines 
using (productline)

-- outer join

select customerName,orderNumber,customerNumber
from customers left outer join productlines 
using (customernumber)
where ordernumber is null

select * from product limit
select * from productline limit

select customerName,orderNumber,customerNumber
from orders right outer join customers
using (customernumber)
where ordernumber is null


-- cross join

select * from product limit
select * from productline limit


show databases;