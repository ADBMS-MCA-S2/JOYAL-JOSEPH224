create database movie;
use movie;
create table movies(title varchar(20) not null,director varchar(20) not null,myear int(4) not null,rating float(4) not null,primary key (title));
insert into movies values("fargo","coen",1996,8.2);
insert into movies values("raising arizona","coen",1987,7.6);
insert into movies values("spiderman","raimi",2002,7.4);
insert into movies values("wonder boys","hanson",2000,7.6);
create table actors(actor varchar(20) not null,ayear int(10) not null ,primary key(actor));
insert into actors values("cage",1964);
insert into actors values("hanks",1956);
insert into actors values("maguire",1975);
insert into actors values("McDormand",1957);
create table acts (actor varchar(20) not null,title varchar(20) not null,foreign key(actor) references actors (actor) on delete cascade,foreign key (title) references movies(title) on delete cascade);
insert into acts values("cage","raising arizona");
insert into acts values("Maguire","spiderman");
insert into acts values("Maguire","wonder boys");
insert into acts values("McDormand","fargo");
insert into acts values("McDormand","raising arizona");
insert into acts values("McDormand","wonder boys");
create table directors (director varchar(20) not null,dyear int(20) not null,primary key(director));
insert into directors values ("coen",1954);
insert into directors values ("hanson",1945);
insert into directors values ("raimi",1959);
select title from movies where myear>1997;
select title from movies where director="hanson" and myear>1997;
select title,rating from movies;

select title from acts where actor="McDormand" and title in (select title from movies where director="coen");
select distinct movies.director,acts.actor from movies inner join acts on movies.title=acts.title;






 