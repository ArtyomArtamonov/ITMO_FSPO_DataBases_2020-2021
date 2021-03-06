BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Rating" (
	"rID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"mID"	INTEGER NOT NULL,
	"stars"	INTEGER NOT NULL,
	"ratingDate"	TEXT
);
CREATE TABLE IF NOT EXISTS "Reviewer" (
	"rID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"name"	TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS "Movie" (
	"mID"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"title"	TEXT NOT NULL,
	"year"	INTEGER NOT NULL,
	"director"	TEXT
);
INSERT INTO "Movie" VALUES (1,'Star Wars',1970,'George Lucas');
INSERT INTO "Movie" VALUES (3,'2001: A Space Odyssey',1969,'Stanley Cubrik');
COMMIT;
