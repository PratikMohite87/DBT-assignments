create table multicust as
select * from salespeople where snum in (select Snum from customers 
										group by Snum 
										having count(Snum) > 1);
                                        
select * from multicust;

delete from customers
where Cnum = any(select Cnum from orders 
				where Cnum not in (select Cnum from customers));
                
update salespeople
set Comm = Comm*(20/100)
where Snum in (select Snum from orders where amt > 3000);
                
select * from salespeople;