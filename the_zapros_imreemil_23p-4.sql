--1
select j.prod_name , j.prod_id , j.prod_city
from j 
join spj on j.prod_id = spj.prod_id
where spj.detail_id = 'P1';

--2
update p
set detail_name = 'ново название' , detail_city ='Уфа'
where weight = (select max(weight) from p);

--3
delete from s
where imp_id in (
select distinct imp_id from spj where amount = (
select min(amount) from spj));
--4
update s
set rating = rating + 10
where imp_id in ( select distinct imp_id from spj where amount = (select max(amount) from spj));


