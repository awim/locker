CREATE TABLE mst
    ([name] char(15), [hobi] char(15))
;

insert into mst ([name], [hobi]) values
	('Satria', 'Dancer'),
	('Juli', 'Actress'),
	('Mario', 'Actress'),
	('Memet', 'Salesman'),
	('Alan', 'Photographer'),
	('Kiky', 'Photographer'),
	('Chacha', 'Photographer'),
	('Joko', 'Actress'),
	('Juni', 'Dancer'),
	('Putra', 'Salesman');



select * from (
  select
    hobi, name, row_number() over (partition by [hobi] ORDER BY [name]) as rn
  from mst
) src
pivot(
MAX([name])
for hobi in ([Actress], [Dancer], [Photographer], [Salesman])
) result;



select [Actress], [Dancer], [Photographer], [Salesman] from (
  select
    hobi, name, row_number() over (partition by [hobi] ORDER BY [name]) as rn
  from mst
) src
pivot(
MAX([name])
for hobi in ([Actress], [Dancer], [Photographer], [Salesman])
) result;
