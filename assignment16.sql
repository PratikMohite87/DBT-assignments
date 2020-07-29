create index i_orders_Odate on orders(Odate);

select Onum from Orders where Odate in (
select distinct(Odate) from orders);

alter table orders add unique(Onum);

desc orders;

select Snum, Onum from orders where Odate in(
select distinct(Odate) from orders);

alter table customers add unique(Rating);