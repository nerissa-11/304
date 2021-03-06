USE ubc_clubs;

INSERT INTO Members VALUES(1, 'mike_zhang','abcdef','Mike Zhang','cpsc', 37482646);
INSERT INTO Members VALUES(2, 'kate_lee','abcef','Kate Lee','cpsc', 39264839);
INSERT INTO Members VALUES(3, 'joe_kim','abcdef','Joe Kim','math', 68645378);
INSERT INTO Members VALUES(4, 'mary_stemoe','abcdef','Mary Stemoe','econ', 36382637);
INSERT INTO Members VALUES(5, 'tom_lee','abcdef','Tom Lee','cpsc', 24845393);

#get all the messages of mike zhang
#select * from Messages msg, Members m WHERE (msg.sender_id = m.id OR msg.receiver_id = m.id) AND m.username = 'mike_zhang';

INSERT INTO Messages VALUES(1, 4, 1, 'Hello');
INSERT INTO Messages VALUES(2, 5, 2, 'Enjoy your time');
INSERT INTO Messages VALUES(3, 2, 3, 'Happy time here');
INSERT INTO Messages VALUES(4, 1, 4, 'Nice to meet you');
INSERT INTO Messages VALUES(5, 2, 5, 'Thanks');

INSERT INTO Clubs VALUES(1, 'Book Club', 100);
INSERT INTO Clubs VALUES(2, 'Tea Club', 89)   ;
INSERT INTO Clubs VALUES(3, 'Movie Club', 47);
INSERT INTO Clubs VALUES(4, 'Write Club', 35);
INSERT INTO Clubs VALUES(5, 'Coffee Club', 90);

#get all the names of people who made posts
#select m.name FROM Posts p, Members m WHERE m.id = p.member_id;

#get all the posts of the book club
#select p.body FROM Posts p, Clubs c WHERE c.id = p.club_id AND c.name = 'Book Club';
#select p.body FROM Posts p, Clubs c WHERE c.id = p.club_id AND c.id = 1;

INSERT INTO Posts VALUES(1, 1, 1, 'New books arrived!');
INSERT INTO Posts VALUES(2, 2, 1, 'Relax yourself here!');
INSERT INTO Posts VALUES(3, 3, 2, 'New movie!');
INSERT INTO Posts VALUES(4, 1, 2, 'Getting your number!');
INSERT INTO Posts VALUES(5, 2, 5, 'Summer drinks!');

#get all the members of the book club
#select * from Clubs c, Members m, Members_Clubs mc WHERE mc.club_id = c.id AND m.id = mc.member_id AND c.name = 'Book Club';

#get all the clubs a mike zhang is part of
#select * from Clubs c, Members m, Members_Clubs mc WHERE mc.club_id = c.id AND m.id = mc.member_id AND m.username = 'mike_zhang';

INSERT INTO Members_Clubs VALUES(1, 1, true);
INSERT INTO Members_Clubs VALUES(1, 2, true);
INSERT INTO Members_Clubs VALUES(1, 3, true);
INSERT INTO Members_Clubs VALUES(1, 4, true);
INSERT INTO Members_Clubs VALUES(1, 5, true);
INSERT INTO Members_Clubs VALUES(2, 3, true);
INSERT INTO Members_Clubs VALUES(2, 1, true);
INSERT INTO Members_Clubs VALUES(5, 1, true);
INSERT INTO Members_Clubs VALUES(5, 2, true);
INSERT INTO Members_Clubs VALUES(5, 3, true);
INSERT INTO Members_Clubs VALUES(5, 4, true);
INSERT INTO Members_Clubs VALUES(5, 5, true);

#get all events of the book club
#select * from Events e, Clubs c WHERE c.id = e.club_id AND c.name = 'Book Club';

INSERT INTO Events VALUES(1, 1, DATE('2017-01-01'), 'Book Club Meeting');
INSERT INTO Events VALUES(2, 2, DATE('2017-01-03'), 'Tea Party');
INSERT INTO Events VALUES(3, 3, DATE('2017-01-09'), 'Movie Screening');
INSERT INTO Events VALUES(4, 1, DATE('2017-01-13'), 'Book Club Meeting Part II');
INSERT INTO Events VALUES(5, 2, DATE('2017-01-15'), 'Juice Party');







