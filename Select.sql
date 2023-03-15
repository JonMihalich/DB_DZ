--1
select name_album, date_album  from album
where date_album >= '2018-01-01' and date_album <= '2018-12-31';
--2
select  name_trek, duration from trek
where duration = (select  MAX(duration) from trek);
--3
select name_trek, duration from trek
where duration / 60 >= 3.5;
--4
select name_collections from collections
where release_collections >= '2018-01-01' and release_collections <= '2020-12-31';
--5
select name_executor  from executor e 
where name_executor  not like '% %';
--6
select name_trek  from trek
where name_trek  like '%Мои%' or name_trek like '%my%';
