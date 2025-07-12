SELECT name, length FROM track
WHERE length = (SELECT MAX(length) FROM track);

SELECT name FROM track
WHERE length >= 210;

SELECT name FROM compilation
WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT name FROM artist
WHERE name NOT LIKE '% %';

SELECT name FROM track
WHERE name ILIKE '%my%' OR name ILIKE '%мой%';

SELECT name, COUNT(artist_id) artist_c FROM music_genre mg
JOIN genre_artist ga  ON mg.id = ga.genre_id
GROUP BY mg.name
ORDER BY artist_c;

SELECT COUNT(t.id) FROM track t 
JOIN album a ON t.album_id = a.id
WHERE a.year_of_release BETWEEN 2019 AND 2020;

SELECT a.name, AVG(t.length) FROM album a 
JOIN track t ON a.id = t.album_id
GROUP BY a.name;

SELECT a.name FROM artist a
JOIN album_artist aa ON a.id = aa.artist_id
JOIN album a2 ON aa.album_id  = a2.id
WHERE year_of_release != 2020;

SELECT c.name FROM compilation c
JOIN compilation_track ct ON c.id = ct.compilation_id
JOIN track t ON ct.track_id = t.id
JOIN album ON t.album_id = album.id
JOIN album_artist aa ON album.id = aa.album_id
JOIN artist a ON aa.artist_id = a.id
WHERE a.name = 'Pet Shop Boys'
GROUP BY c.name;