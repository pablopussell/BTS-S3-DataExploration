use BTS_S3_VINE;

create table vineitems
(
	vine varchar(255) NOT NULL,
	tweetid bigint NOT NULL,
	created_at datetime NOT NULL,
	mex varchar(255) NOT NULL,
	primary key ( vine, tweetid )
);

create table vine_ks
(
	vine varchar(255) NOT NULL,
	userid integer NOT NULL,
	kid integer NOT NULL,
	ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	primary key ( vine, userid, kid )
);

create table if not exists keywords
(
	kid integer auto_increment,
	word varchar(255) NOT NULL,
	catid integer NOT NULL,
	primary key ( kid )
);

create table if not exists categories
(
	catid integer NOT NULL,
	word varchar(255) NOT NULL,
	primary key ( catid )
);
