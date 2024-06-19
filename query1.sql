create temp table if not exists vars (
	name text primary key, 
	value text not null
);
insert into vars (name, value)
values ('test','${test}')
returning value
;
/*select value from vars
where name='test';*/
:x /sdcard/sql/query2.sql
--drop table vars;
