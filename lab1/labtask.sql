create database lab1;

create table users (
    id serial primary key,
    firstname varchar(50),
    lastname varchar(50)
);

alter table users
add column isadmin int;

alter table users
alter column isadmin
set data type boolean
using case
    when isadmin = 1 then true
    else false
end;

alter table users
alter column isadmin set default false;

alter table users
add constraint users_pkey primary key (id);

create table tasks (
    id serial primary key,
    firstname varchar(50),
    user_id int
);


drop database lab1;

drop table tasks;