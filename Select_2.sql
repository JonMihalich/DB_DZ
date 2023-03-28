
SELECT name_genre, COUNT(name_genre) FROM genre g
JOIN genre_executor ge ON g.id_genre = ge.id_genre 
JOIN executor e ON ge.id_executor = e.id_executor 
GROUP BY name_genre;


SELECT name_album, COUNT(name_album) FROM album a
JOIN trek t ON a.id_album = t.id_album
WHERE date_album >= '2019-01-01' and date_album <= '2020-12-31'
GROUP BY name_album ;


SELECT name_album, AVG(duration / 60) FROM album a
JOIN trek t ON a.id_album = t.id_album
GROUP BY name_album;


SELECT name_executor, date_album FROM executor e
JOIN executor_album ea ON e.id_executor  = ea.id_executor
JOIN album al ON ea.id_album  = al.id_album
WHERE date_album >= '2020-12-31' or date_album <= '2020-01-01';


SELECT name_collections FROM collections c
JOIN collections_trek ct ON c.id_collections = ct.id_collections
JOIN trek t ON ct.id_trek = t.id_trek
JOIN album al ON t.id_album = al.id_album
JOIN executor_album ea ON al.id_album = ea.id_album
JOIN executor e ON ea.id_executor = e.id_executor
WHERE e.name_executor = 'Feduk';


SELECT  name_album , COUNT(name_genre) FROM album al
JOIN executor_album ea ON al.id_album = ea.id_album
JOIN executor e ON ea.id_executor = e.id_executor
JOIN genre_executor ge ON e.id_executor = ge.id_executor
JOIN genre g ON ge.id_genre = g.id_genre
GROUP BY name_album
HAVING COUNT(name_genre) > 1;


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
	SELECT MIN(count) FROM (
		SELECT al.name_album, COUNT(t.name_trek) from album al
		JOIN trek t ON al.id_album = t.id_album
		GROUP BY al.name_album) AS foo)