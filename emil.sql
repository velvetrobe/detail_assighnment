#1
select prod_id , prod_city
from j 
where substring(prod_city,2,1) = 'о';

#2
update s 
set imp_rate = imp_rate + 10
where imp_id in (
select imp_id 
from spj 
where amount > (select avg(amount) from spj) );

#3
select  imp_name , s.imp_id
from s 
join spj on spj.imp_id = s.imp_id
where spj.detail_id like 'J1';

#4
select *
from spj 
where amount between 300 and 750;

#5 
select prod_id 
from spj 
where imp_id = "S5"; 

#6
select detail_color 
from p , spj 
where imp_id = "S5"
group by detail_color;

#7
select imp_name , s.imp_id
from s, spj
where spj.amount > (select avg(detail_id) from spj where detail_id = "P1") 
and s.imp_id = spj.imp_id;

#8
select prod_name
from spj , j
where imp_id = "S5"
group by prod_name;

#9
select j.prod_id , prod_name
from spj , j 
where imp_id = "S5";

#10
select detail_id , prod_id , sum(amount)
from spj
group by detail_id , prod_id;

#11
select distinct prod_id
from spj 
where imp_id = "S5";

#12
select spj.imp_id , imp_name 
from spj , s 
where detail_id = "P1" and amount > (select avg(detail_id) from spj where detail_id = "P1")