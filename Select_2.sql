SELECT name_genre, COUNT(ge.id_genre) FROM genre g
JOIN genre_executor ge ON g.id_genre = ge.id_genre 
GROUP BY name_genre;


SELECT COUNT(t.name_trek) FROM trek t
JOIN album a ON t.id_album = a.id_album
WHERE a.date_album >= '2019-01-01' and a.date_album <= '2020-12-31';


SELECT name_album, AVG(duration / 60) FROM album a
JOIN trek t ON a.id_album = t.id_album
GROUP BY name_album;


SELECT name_executor FROM executor e
where name_executor not in (
	select name_executor from executor e2
	JOIN executor_album ea ON e2.id_executor  = ea.id_executor
	JOIN album al ON ea.id_album  = al.id_album
	WHERE date_album <= '2020-12-31' and date_album >= '2020-01-01');


SELECT name_collections FROM collections c
JOIN collections_trek ct ON c.id_collections = ct.id_collections
JOIN trek t ON ct.id_trek = t.id_trek
JOIN album al ON t.id_album = al.id_album
JOIN executor_album ea ON al.id_album = ea.id_album
JOIN executor e ON ea.id_executor = e.id_executor
WHERE e.name_executor = 'Feduk';


SELECT  distinct name_album, COUNT(ge.id_genre) FROM album al
JOIN executor_album ea ON al.id_album = ea.id_album
JOIN executor e ON ea.id_executor = e.id_executor
JOIN genre_executor ge ON e.id_executor = ge.id_executor
GROUP BY name_album, ge.id_executor
HAVING COUNT(ge.id_genre) > 1;


SELECT name_trek FROM trek t
FULL OUTER JOIN collections_trek ct ON t.id_trek = ct.id_trek
LEFT JOIN collections c ON ct.id_collections = c.id_collections
WHERE c.id_collections IS null;


SELECT e.name_executor, t.duration from executor e
JOIN executor_album ea ON e.id_executor = ea.id_executor
JOIN album al ON ea.id_album = al.id_album
JOIN trek t ON al.id_album = t.id_album 
WHERE t.duration = (
SELECT MIN(t.duration) FROM trek t
);


SELECT al.name_album, COUNT(t.name_trek) from album al
JOIN trek t ON al.id_album = t.id_album
GROUP BY al.name_album
HAVING COUNT(t.name_trek) = (
	SELECT count(t2.name_trek) FROM trek t2
	GROUP BY id_album
	order by COUNT(t2.name_trek)
	limit 1)