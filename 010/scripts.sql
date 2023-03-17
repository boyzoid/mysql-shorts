create table if not exists mysql_shorts.pets
(
    id    int auto_increment
        primary key,
    name  varchar(10) not null,
    dogs  int         null,
    cats  int         null,
    other int         null
);

insert into pets (id, name, dogs, cats, other) values (1, 'Scott', 1, null, null);
insert into pets (id, name, dogs, cats, other) values (2, 'Todd', 2, 1, 7);
insert into pets (id, name, dogs, cats, other) values (3, 'Ray', 1, 3, null);
insert into pets (id, name, dogs, cats, other) values (4, 'Fred', null, 1, null);
insert into pets (id, name, dogs, cats, other) values (5, 'Charlie', 2, 5, 4);


select * from pets;

select * from pets where dogs > 0
union
select * from pets where other > 0;

select * from pets where dogs > 0
intersect
select * from pets where other > 0;

select * from pets where dogs > 0
except
select * from pets where other > 0;

select * from pets where dogs > 0
union
select * from pets where other > 0
except
select * from pets where cats > 0;




