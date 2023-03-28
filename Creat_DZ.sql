create table if not exists genre(
	id_genre int primary key,
	name_genre varchar(40) not null
);

create table if not exists executor(
	id_executor int primary key,
	name_executor varchar(40) not null
);

create table if not exists genre_executor(
	id_genre_executor int primary key,
	id_genre int references genre(id_genre),
	id_executor int references executor(id_executor)
);

create table if not exists album(
	id_album int primary key,
	name_album varchar(40) not null,
	date_album date not null
);


create table if not exists trek(
	id_trek int primary key,
	name_trek varchar(40) not null,
	duration integer not null,
	id_album int references album(id_album)
);


create table if not exists collections(
	id_collections int primary key,
	name_collections varchar(40) not null,
	release_collections date not null
);


create table if not exists executor_album(
	id_executor_album int primary key,
	id_executor int references executor(id_executor),
	id_album int references album(id_album)
);

create table if not exists collections_trek(
	id_collections_trek int primary key,
	id_trek int references trek(id_trek),
	id_collections int references collections(id_collections)
)
