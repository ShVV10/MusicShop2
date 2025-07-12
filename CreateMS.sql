CREATE TABLE IF NOT EXISTS music_genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	id SERIAL PRIMARY KEY,
	name  VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(id),
	length TIME NOT null
 );

CREATE TABLE IF NOT EXISTS compilation (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year_of_release INTEGER
);


CREATE TABLE IF NOT EXISTS album_artist (
	album_id INTEGER REFERENCES album(id),
	artist_id INTEGER REFERENCES artist(id),
	CONSTRAINT pk PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS compilation_track (
	compilation_id INTEGER REFERENCES compilation(id),
	track_id INTEGER REFERENCES track(id),
	CONSRTRAINT pk PRIMARY KEY (compilation_id, track_id)
);

CREATE TABLE IF NOT exists genre_artist (
	genre_id INTEGER REFERENCES music_genre(id),
	artist_id INTEGER REFERENCES artist(id),
	CONSRTRAINT pk PRIMARY KEY (genre_id, artist_id)
);



