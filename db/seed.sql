\c travelread

DELETE FROM states;
DELETE FROM books;

INSERT INTO states (name) VALUES ('Alabama');
INSERT INTO states (name) VALUES ('Alaska');
INSERT INTO states (name) VALUES ('Arizona');
INSERT INTO states (name) VALUES ('Arkansas');
INSERT INTO states (name) VALUES ('California');
INSERT INTO states (name) VALUES ('Colorado');
INSERT INTO states (name) VALUES ('Connecticut');
INSERT INTO states (name) VALUES ('Delaware');
INSERT INTO states (name) VALUES ('Florida');
INSERT INTO states (name) VALUES ('Georgia');
INSERT INTO states (name) VALUES ('Hawaii');
INSERT INTO states (name) VALUES ('Idaho');
INSERT INTO states (name) VALUES ('Illinois');
INSERT INTO states (name) VALUES ('Indiana');
INSERT INTO states (name) VALUES ('Iowa');
INSERT INTO states (name) VALUES ('Kansas');
INSERT INTO states (name) VALUES ('Kentucky');
INSERT INTO states (name) VALUES ('Louisiana');
INSERT INTO states (name) VALUES ('Maine');
INSERT INTO states (name) VALUES ('Maryland');
INSERT INTO states (name) VALUES ('Massachusetts');
INSERT INTO states (name) VALUES ('Michigan');
INSERT INTO states (name) VALUES ('Minnesota');
INSERT INTO states (name) VALUES ('Mississippi');
INSERT INTO states (name) VALUES ('Missouri');
INSERT INTO states (name) VALUES ('Montana');
INSERT INTO states (name) VALUES ('Nebraska');
INSERT INTO states (name) VALUES ('Nevada');
INSERT INTO states (name) VALUES ('New Hampshire');
INSERT INTO states (name) VALUES ('New Jersey');
INSERT INTO states (name) VALUES ('New Mexico');
INSERT INTO states (name) VALUES ('New York');
INSERT INTO states (name) VALUES ('North Carolina');
INSERT INTO states (name) VALUES ('North Dakota');
INSERT INTO states (name) VALUES ('Ohio');
INSERT INTO states (name) VALUES ('Oklahoma');
INSERT INTO states (name) VALUES ('Oregon');
INSERT INTO states (name) VALUES ('Pennsylvania');
INSERT INTO states (name) VALUES ('Rhode Island');
INSERT INTO states (name) VALUES ('South Carolina');
INSERT INTO states (name) VALUES ('South Dakota');
INSERT INTO states (name) VALUES ('Tennessee');
INSERT INTO states (name) VALUES ('Texas');
INSERT INTO states (name) VALUES ('Utah');
INSERT INTO states (name) VALUES ('Vermont');
INSERT INTO states (name) VALUES ('Virginia');
INSERT INTO states (name) VALUES ('Washington');
INSERT INTO states (name) VALUES ('West Virginia');
INSERT INTO states (name) VALUES ('Wisconsin');
INSERT INTO states (name) VALUES ('Wyoming');




INSERT INTO books (title, author, date, description, img, state_id)
VALUES (
  'To Kill a Mockingbird',
  'Harper Lee',
  1960, 
  'As a Southern Gothic novel and a Bildungsroman, the primary themes of To Kill a Mockingbird involve racial injustice and the destruction of innocence.',
  'https://media.glamour.com/photos/56e1f3c462b398fa64cbd304/master/w_1280,c_limit/entertainment-2016-02-18-main.jpg',
  1
);
