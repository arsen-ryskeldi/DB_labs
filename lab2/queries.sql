-- 1
create database lab2;

-- 2
create table countries(
    country_id serial primary key,
    country_name varchar(30),
    region_id int,
    population int
);

-- 3
insert into countries (country_name, region_id, population)
values
('Germany',121, 8300000);

-- 4
insert into countries (country_id, country_name)
values
(2,'Japan');

-- 5
insert into countries (country_name, region_id, population)
values ('Unknown Country', NULL, 45000);

-- 6
insert into countries (country_name, region_id, population)
values
('USA','240', 333000000),
('Zambia','14', 20000000),
('South Korea','6', 51000000);

-- 7
alter table countries
alter country_name set default 'Kazakhstan';

-- 8
insert into countries (region_id, population)
values
(10, 19000000);

-- 9
insert into countries default values;

-- 10
create table countries_new (like countries including all);

-- 11
insert into countries_new select * from countries;

-- 12
update countries
set region_id = 1
where region_id is NULL;

-- 13
select country_name, population * 1.10 as "New Population"
from countries;

-- 14
delete from countries
where population < 100000
returning *;

-- 15
delete from countries_new
where country_id in (select country_id from countries)
returning *;

-- 16
delete from countries
returning *;





