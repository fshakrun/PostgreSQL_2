create table if not exists Artist_list(
	Id serial primary key,
	Artist_name varchar(40) not null
);

create table if not exists Album(
	Id serial primary key,
	Album_title varchar(40) not null unique,
        Release_date integer(4,0) not null,
	Artist_Id integer references Artist_list(Id) not null
);

create table if not exists Tracks(
	Id serial primary key,
        Track_title varchar(100) not null unique,
        Track_duration integer(4,0) not null,
	Album_Id integer references Album(Id)
);
