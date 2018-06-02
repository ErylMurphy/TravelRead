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
), 
(
  'I Know Why the Caged Bird Sings',
  'Maya Angelou',
  1969, 
  'I Know Why the Caged Bird Sings is a 1969 autobiography about the early years of American writer and poet Maya Angelou. The first in a seven-volume series, it is a coming-of-age story that illustrates how strength of character and a love of literature can help overcome racism and trauma.',
  'https://upload.wikimedia.org/wikipedia/en/d/d0/Caged_Bird_cover.jpg',
  4
),
(
  'Of Mice and Men',
  'John Steinbeck',
  1937, 
  'Of Mice and Men tells the story of George Milton and Lennie Small, two displaced migrant ranch workers, who move from place to place in California in search of new job opportunities during the Great Depression in the United States.',
  'https://upload.wikimedia.org/wikipedia/en/0/01/OfMiceAndMen.jpg',
  5
),
(
  'On the Road',
  'Jack Kerouac',
  1957, 
  'On the Road is a novel by American writer Jack Kerouac, based on the travels of Kerouac and his friends across the United States. It is considered a defining work of the postwar Beat and Counterculture generations, with its protagonists living life against a backdrop of jazz, poetry, and drug use.',
  'https://upload.wikimedia.org/wikipedia/en/8/8a/OnTheRoad.jpg',
  6
),
(
  'The Stepford Wives',
  'Ira Levin',
  1972, 
  'The Stepford Wives is a 1972 satirical thriller novel by Ira Levin. The story concerns Joanna Eberhart, a photographer and young mother who begins to suspect that the frighteningly submissive housewives in her new idyllic Connecticut neighborhood may be robots created by their husbands.',
  'https://upload.wikimedia.org/wikipedia/en/c/ca/IraLevin_TheStepfordWives.jpg',
  7
),
(
  'Hoot',
  'Carl Hiaasen',
  2002, 
  'Hoot is a 2002 young adult novel by Carl Hiaasen. The setting takes place in Florida, where new arrival Roy makes two oddball friends and a bad enemy, and joins an effort to stop construction of a pancake house which would destroy a colony of burrowing owls who live on the site.',
  'https://upload.wikimedia.org/wikipedia/commons/0/0e/Hoot.png',
  9
),
(
  'The Color Purple',
  'Alice Walker',
  1982, 
  'Taking place mostly in rural Georgia, the story focuses on the life of African-American women in the Southern United States in the 1930s, addressing numerous issues including their exceedingly low position in American social culture.',
  'https://upload.wikimedia.org/wikipedia/en/6/60/ColorPurple.jpg',
  10
),
(
  'The Heart Is a Lonely Hunter',
  'Carson McCullers',
  1940, 
  'The Heart Is a Lonely Hunter (1940) is the début novel by the American author Carson McCullers; she was 23 at the time of publication. It is about a deaf man named John Singer and the people he encounters in a 1930s mill town in the US state of Georgia.',
  'https://upload.wikimedia.org/wikipedia/en/b/bf/HeartIsALonelyHunter.jpg',
  10
),
(
  'From Here to Eternity',
  'James Jones',
  1951, 
  'From Here to Eternity is the debut novel of American author James Jones, published in 1951. Set in 1941, the novel focuses on several members of a U.S. Army infantry company stationed in Hawaii in the months leading up to the Japanese attack on Pearl Harbor.',
  'https://upload.wikimedia.org/wikipedia/en/9/9e/JamesJones_FromHereToEternity1.jpg',
  11
),
(
  'The Adventures of Augie March',
  'Saul Bellow',
  1953, 
  'The Adventures of Augie March is a picaresque novel by Saul Bellow, published in 1953 by Viking Press. It features the eponymous Augie March who grows up during the Great Depression and it is an example of bildungsroman, tracing the development of an individual through a series of encounters, occupations and relationships from boyhood to manhood.',
  'https://upload.wikimedia.org/wikipedia/en/b/b6/Augiemarch.jpg',
  13
),
(
  'Little House on the Prairie',
  'Laura Ingalls Wilder',
  1935, 
  'The novel is about the months the Ingalls spent on the Kansas prairie around the town of Independence.',
  'https://upload.wikimedia.org/wikipedia/en/5/5a/LHbookCover.jpg',
  16
),
(
  'The Awakening',
  'Kate Chopin',
  1899, 
  `Set in New Orleans and on the Louisiana Gulf coast at the end of the 19th century, the plot centers on Edna Pontellier and her struggle between her increasingly unorthodox views on femininity and motherhood with the prevailing social attitudes of the turn-of-the-century American South.`,
  'https://upload.wikimedia.org/wikipedia/en/d/df/The_Awakening_%28Chopin_novel%29_cover.jpg',
  18
),
(
  'Ethan Frome',
  'Edith Wharton',
  1911, 
  `Ethan Frome is a book published in 1911 by the Pulitzer Prize-winning American author Edith Wharton. It is set in the fictitious town of Starkfield, Massachusetts.`,
  'https://upload.wikimedia.org/wikipedia/commons/7/7f/Ethan_Frome_first_edition_cover.jpg',
  21
),
(
  'As I Lay Dying',
  'William Faulkner',
  1930, 
  `The book is narrated by 15 different characters over 59 chapters. It is the story of the death of Addie Bundren and her poor, rural family's quest and motivations—noble or selfish—to honor her wish to be buried in her hometown of Jefferson, Mississippi.`,
  'https://upload.wikimedia.org/wikipedia/commons/0/08/AsILayDying.jpg',
  24
),
(
  'Stoner',
  'John Williams',
  2003, 
  `Stoner follows William Stoner's undistinguished career and workplace politics, his marriage to Edith, his affair with his colleague Katherine, and his love and pursuit of literature.`,
  'https://upload.wikimedia.org/wikipedia/en/f/f0/Stoner.jpg',
  25
),
(
  'Fear and Loathing in Las Vegas',
  'Hunter S. Thompson',
  1971, 
  `The story follows its protagonist, Raoul Duke, and his attorney, Dr. Gonzo, as they descend on Las Vegas to chase the American Dream through a drug-induced haze, all the while ruminating on the failure of the 1960s countercultural movement. The work is Thompson's most famous book, and is noted for its lurid descriptions of illegal drug use and its early retrospective on the culture of the 1960s.`,
  'https://upload.wikimedia.org/wikipedia/en/7/7c/Fear_and_Loathing_in_Las_Vegas.jpg',
  28
),
(
  'The Age of Innocence',
  'Edith Wharton',
  1920, 
  'The story is set in the 1870s, in upper-class, "Gilded-Age" New York City.',
  'https://upload.wikimedia.org/wikipedia/commons/b/b0/Age_of_Innocence_%281st_ed_dust_jacket%29.jpg',
  32
),
(
  'Where the Red Fern Grows',
  'Wilson Rawls',
  1961, 
  `Where the Red Fern Grows is a 1961 children's novel by Wilson Rawls about a boy who buys and trains two Redbone Coonhound hunting dogs.`,
  'https://upload.wikimedia.org/wikipedia/en/b/be/Where_the_red_fern_grows_1996.jpg',
  36
),
(
  `One Flew Over the Cuckoo's Nest`,
  'Ken Kesey',
  1961, 
  `Set in an Oregon psychiatric hospital, the narrative serves as a study of the institutional processes and the human mind as well as a critique of behaviorism and a celebration of humanistic principles.`,
  'https://upload.wikimedia.org/wikipedia/en/c/c1/OneFlewOverTheCuckoosNest.jpg',
  37
);




