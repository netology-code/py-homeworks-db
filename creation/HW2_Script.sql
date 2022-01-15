create table if not exists genres (
	id serial primary key,
	name char(100) not null unique
);

create table if not exists artists (
	id serial primary key,
	name char(100) not null unique,
	genre_id int references genres(id)
);

create table if not exists albums (
	id serial primary key,
	name char(100) not null unique,
	release_year int,
	artist_id int references artists(id)
);

create table if not exists tracks (
	id serial primary key,
	name char(100) not null,
	duration interval minute to second (2) not null,
	album_id int references albums(id)
);


