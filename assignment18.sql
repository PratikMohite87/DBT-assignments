create table Cityorders
select Onum, amt, Snum, Cnum, City from orders, customers
where orders.Cnum=customers.Cnum and orders.Snum=customers.Snum;

alter table cityorders add constraint Onum_fk foreign key(Onum) references orders(Onum);

alter table cityorders add foreign key (cnum) references customers(cnum);

alter table copy_orders add foreign key(prev) references copy_orders(onum);