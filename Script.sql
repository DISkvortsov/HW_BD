CREATE TABLE IF NOT EXISTS Singers (
	id serial primary key,
	singer_nickname varchar(100) not null
);

CREATE TABLE IF NOT EXISTS Albums (
	id serial primary key,
	album_name varchar(50) not null,
	album_year integer not null
);


CREATE TABLE IF NOT EXISTS AlbumSing (
	id serial primary key,
	id_singer integer references singers(id),
	id_albums integer references albums(id)
);
 

CREATE TABLE IF NOT EXISTS Songs (
	id serial primary key,
	song_name varchar(50) not null,
	song_time numeric not null,
	album_id integer references albums(id)
);


CREATE TABLE IF NOT EXISTS Genres (
	id serial primary key,
	genres_name varchar(50) not null
);


CREATE TABLE IF NOT EXISTS GenresSing (
	id serial primary key,
	id_singer integer references singers(id),
	id_genres integer references genres(id)
);