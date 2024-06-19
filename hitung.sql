create temp table if not exists berat 
(
	id integer not null primary key,
	kg float not null
);
:r berat tmp/kg.sql
:x tmp/kg.sql
select sum(kg) from berat;
