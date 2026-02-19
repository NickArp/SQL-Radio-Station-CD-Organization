CREATE TABLE label (
lbltitle VARCHAR(15),
lblstreet VARCHAR(25),
lblcity VARCHAR(20),
lblstate VARCHAR(20),
lblpostcode VARCHAR(10),
lblnation VARCHAR(20),
	PRIMARY KEY (lbltitle));
	
CREATE TABLE cd (
cdid INTEGER,
cdlblid VARCHAR(10),
cdtitle VARCHAR(25),
cdyear INTEGER,
lbltitle VARCHAR(15),
	PRIMARY KEY (cdid),
	FOREIGN KEY (lbltitle) REFERENCES label(lbltitle));
	
CREATE TABLE composition (
compid INTEGER,
comptitle  VARCHAR(35) NOT NULL,
compyear INTEGER,
	PRIMARY KEY(compid));

CREATE TABLE person (
psnid INTEGER,
psnfname  VARCHAR(25),
psnlname  VARCHAR(25),
	PRIMARY KEY(psnid));
	
CREATE TABLE person_cd (
psnid INTEGER,
cdid INTEGER, 
psncdorder INTEGER,
	PRIMARY KEY(psnid, cdid));
	
CREATE TABLE person_composition (
psnid INTEGER,
compid INTEGER,
psncomprole VARCHAR(25),
psncomporder INTEGER,
	PRIMARY KEY(psnid,compid));
	
CREATE TABLE recording (
rcdid INTEGER,
compid INTEGER,
rcdlength DECIMAL(5,2),
rcddate date,
	PRIMARY KEY(rcdid,compid));
	
CREATE TABLE track (
cdid INTEGER,
trkid INTEGER,
rcdid INTEGER,
	PRIMARY KEY(cdid,trkid,rcdid));
	
CREATE TABLE person_recording (
psnid INTEGER,
rcdid INTEGER,
psncdprole VARCHAR(25),
	PRIMARY KEY(psnid, rcdid));

INSERT INTO label VALUES ('Atlantic', '75 Rockefeller Plaza','New York', 'NY','10019', 'USA');

INSERT INTO cd VALUES (1, 'A2 1311','Giant Steps II', 1960,'Atlantic');
INSERT INTO cd VALUES (2, '83012-2','Swing', 1977,'Atlantic');

INSERT INTO person VALUES (1, 'John J', 'Coltrane');
INSERT INTO person VALUES (2, 'Tommy T', 'Flanagan');
INSERT INTO person VALUES (3, 'Paul P', 'Chamber');
INSERT INTO person VALUES (4, 'Art J' ,'Taylor');
INSERT INTO person VALUES (5, 'Cheryl S', 'Bentyne');
INSERT INTO person VALUES (6, 'Janis D', 'Siegel');
INSERT INTO person VALUES (7, 'Tim T', 'Hauser');
INSERT INTO person VALUES (8, 'Alan B', 'Paul');

INSERT INTO composition VALUES (1,'Giant Steps',NULL);
INSERT INTO composition VALUES (2,'Cousin Mary',NULL);
INSERT INTO composition VALUES (3,'Countdown',NULL);
INSERT INTO composition VALUES (4,'Spiral',NULL);
INSERT INTO composition VALUES (5,'Syeeda''s Song Flute',NULL);
INSERT INTO composition VALUES (6,'Naima',NULL);
INSERT INTO composition VALUES (7,'Mr. P.C.',NULL);
INSERT INTO composition VALUES (8,'Stomp of King Porter',1924);
INSERT INTO composition VALUES (9,'Sing a Study in Brown',1937);
INSERT INTO composition VALUES (10,'Sing Moten''s Swing',1997);
INSERT INTO composition VALUES (11,'A-Tisket, A-Tasket',1938);
INSERT INTO composition VALUES (12,'I Know Why',1941);
INSERT INTO composition VALUES (13,'Sing You Sinners',1930);
INSERT INTO composition VALUES (14,'Java Jive',1940);
INSERT INTO composition VALUES (15,'Down South Camp Meetin''',1997);
INSERT INTO composition VALUES (16,'Topsy',1936);
INSERT INTO composition VALUES (17,'Clouds',NULL);
INSERT INTO composition VALUES (18,'Skyliner',1944);
INSERT INTO composition VALUES (19,'It''s a Good Enough to Keep',NULL);
INSERT INTO composition VALUES (20,'Choo Choo Ch'' Boogie',1945);

INSERT INTO person_cd VALUES (1,1,1);

INSERT INTO person_composition VALUES (1,1,'music',1);
INSERT INTO person_composition VALUES (1,2,'music',1);
INSERT INTO person_composition VALUES (1,3,'music',1);

INSERT INTO recording VALUES (1,1,4.72,'1959-5-4');
INSERT INTO recording VALUES (2,2,5.75,'1959-5-4');
INSERT INTO recording VALUES (3,3,2.35,'1959-5-4');
INSERT INTO recording VALUES (4,4,5.93,'1959-5-4');
INSERT INTO recording VALUES (5,5,7,'1959-5-4');
INSERT INTO recording VALUES (6,6,4.35,'1959-12-2');
INSERT INTO recording VALUES (7,7,2.95,'1959-5-4');
INSERT INTO recording VALUES (8,1,5.93,'1959-4-1');
INSERT INTO recording VALUES (9,6,7,'1959-4-1');
INSERT INTO recording VALUES (10,2,6.95,'1959-5-4');
INSERT INTO recording VALUES (11,3,3.67,'1959-5-4');
INSERT INTO recording VALUES (12,2,4.45,'1959-5-4');
INSERT INTO recording VALUES (13,8,3.2,NULL);
INSERT INTO recording VALUES (14,9,2.85,NULL);
INSERT INTO recording VALUES (15,10,3.6,NULL);
INSERT INTO recording VALUES (16,11,2.95,NULL);
INSERT INTO recording VALUES (17,12,3.57,NULL);
INSERT INTO recording VALUES (18,13,2.75,NULL);
INSERT INTO recording VALUES (19,14,2.85,NULL);
INSERT INTO recording VALUES (20,15,3.25,NULL);
INSERT INTO recording VALUES (21,16,3.23,NULL);
INSERT INTO recording VALUES (22,17,7.2,NULL);
INSERT INTO recording VALUES (23,18,3.18,NULL);
INSERT INTO recording VALUES (24,19,3.18,NULL);
INSERT INTO recording VALUES (25,20,3,NULL);

INSERT INTO track VALUES (1,1,1);
INSERT INTO track VALUES (1,2,2);
INSERT INTO track VALUES (1,3,3);
INSERT INTO track VALUES (1,4,4);
INSERT INTO track VALUES (1,5,5);
INSERT INTO track VALUES (1,6,6);
INSERT INTO track VALUES (1,7,7);
INSERT INTO track VALUES (1,8,1);
INSERT INTO track VALUES (1,9,6);
INSERT INTO track VALUES (1,10,2);
INSERT INTO track VALUES (1,11,3);
INSERT INTO track VALUES (1,12,5);
INSERT INTO track VALUES (2,1,13);
INSERT INTO track VALUES (2,2,14);
INSERT INTO track VALUES (2,3,15);
INSERT INTO track VALUES (2,4,16);
INSERT INTO track VALUES (2,5,17);
INSERT INTO track VALUES (2,6,18);
INSERT INTO track VALUES (2,7,19);
INSERT INTO track VALUES (2,8,20);
INSERT INTO track VALUES (2,9,21);
INSERT INTO track VALUES (2,10,22);
INSERT INTO track VALUES (2,11,23);
INSERT INTO track VALUES (2,12,24);
INSERT INTO track VALUES (2,13,25);

INSERT INTO person_composition VALUES (1,4,'music',1);
INSERT INTO person_composition VALUES (1,5,'music',1);
INSERT INTO person_composition VALUES (1,6,'music',1);
INSERT INTO person_composition VALUES (1,7,'music',1);

INSERT INTO person_recording VALUES (1,1,'tenor sax');
INSERT INTO person_recording VALUES (2,1,'piano');
INSERT INTO person_recording VALUES (3,1,'bass');
INSERT INTO person_recording VALUES (4,1,'drums');