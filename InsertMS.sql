INSERT INTO music_genre (name)
VALUES ('Electronic'), ('Rock'), ('Hip-hop'), ('Pop');

INSERT INTO artist (name)
VALUES ('Depeche Mode'), ('Pet Shop Boys'), ('U2'), ('Juice WRLD'), ('Kanye West'), ('Justin Bieber');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 1), (1, 2), (2, 2), (3, 4), (3, 5), (4, 6)

INSERT INTO album (name, year_of_release)
VALUES ('Violator', 1990), ('Please', 1986), ('Boy', 1980), ('Fighting Demons', 2022), ('The Life of Pablo', 2019);

INSERT INTO album_artist (album_id, artist_id)
VALUES (1,1), (2,2), (3,3), (4,4), (5,5), (5,6)

INSERT INTO track (name, album_id, length)
VALUES ('World In My Eyes', 1, 267), ('Personal Jesus', 1, 600), ('Enjoy The Silence', 1, 373), ('Policy Of Truth', 1, 294), ('Two Divided By Zero', 2, 214), ('West End Girls', 2, 285), ('Love Comes Quickly', 2, 259), ('I Will Follow', 3, 216), ('The Ocean', 3, 94), ('Burn', 4, 217), ('Wandered to LA', 4, 188), ('My Life in a Nutshell', 4, 189), ('Feedback', 5, 147), ('I Love Kanye', 5, 44);

INSERT INTO compilation (name, year_of_release)
VALUES ('Synth-pop', 2000), ('Hip-hop bestsellers', 2023), ('80s hits', 2019), ('British music', 1998);

INSERT INTO compilation_track (compilation_id, track_id)
VALUES (1, 1), (1,4), (1,5), (1,6), (2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (3, 3), (3, 4), (3,6), (3, 7), (4, 2), (4, 3), (4, 8), (4, 9);