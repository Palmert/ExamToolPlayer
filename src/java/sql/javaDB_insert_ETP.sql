INSERT INTO question_type (description) VALUES ('2 Distractors');
INSERT INTO question_type (description) VALUES ('4 Distractors');
INSERT INTO question_type (description) VALUES ('5 Distractors');

INSERT INTO users (user_name, password) VALUES ('admin','admin');
INSERT INTO users (user_name, password) VALUES ('hurdleg','password');

--Questions with 4 distractors
INSERT INTO question (type_id, question) VALUES (2,'The main function of myelin is to:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'form a protective coating over nerve axons.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'affect the speed of nerve impulses.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'block the reception of acetylcholine.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'form a protective coating over nerve.',0);

INSERT INTO question (type_id, question) VALUES (2,'The part of the nerve cell specialized for conducting information is the:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'axon.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'cell body.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'soma.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'neurilemma.',0);

INSERT INTO question (type_id, question) VALUES (2,'The cell body of a neuron is also called the:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'dendrite.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'axon.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'myelin.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'soma.',1);

INSERT INTO question (type_id, question) VALUES (2,'Neurons are made up of dendrites, a soma, and:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'axons.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'axles.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'atoms.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'axes.',0);

INSERT INTO question (type_id, question) VALUES (2,'Which of the following is NOT a part of a neuron?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'axon.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'axon terminal.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'synapse.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'soma.',0);

INSERT INTO question (type_id, question) VALUES (2,'Which of the follwing is not a color?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (6,'Orange',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (6,'Blue',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (6,'Java.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (6,'Purple',0);

INSERT INTO question (type_id, question) VALUES (2,'Which of the follwing is an HBO show?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (7,'Game of thrones',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (7,'Dexter',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (7,'Homeland',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (7,'Breaking bad',0);

INSERT INTO question (type_id, question) VALUES (2,'What company makes the Play Station console');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (8,'Microsoft',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (8,'Samsung',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (8,'Sony',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (8,'LG',0);

INSERT INTO question (type_id, question) VALUES (2,'Which  coffee shop is located in the E building?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (9,'Second cup',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (9,'Bridge head',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (9,'Tim Hortons',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (9,'Starbucks',1);

INSERT INTO question (type_id, question) VALUES (2,'Which season of game of thrones started last sunday?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (10,'3',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (10,'4',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (10,'2',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (10,'none of the above',0);

INSERT INTO question (type_id, question) VALUES (2,'What is the best game on the google play store?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (11,'Clash of the clans',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (11,'Candy crush',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (11,'Netflix',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (11,'Facebook',0);

INSERT INTO question (type_id, question) VALUES (2,'Which of the follwing are common house hold appliances?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (12,'Dishwasher',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (12,'Fridge',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (12,'Stove',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (12,'All of the above',1);

INSERT INTO question (type_id, question) VALUES (2,'Where were fortune cookies invented');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (13,'United States',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (13,'Japan',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (13,'China',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (13,'Canada',0);

INSERT INTO question (type_id, question) VALUES (2,'How many medals did Canada get at the Sochi games?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (14,'22',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (14,'15',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (14,'19',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (14,'25',1);

INSERT INTO question (type_id, question) VALUES (2,'What is the best type of version control?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (15,'SVN',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (15,'CVS',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (15,'DropBox',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (15,'GIT',1);



--True or false questions
INSERT INTO question (type_id, question) VALUES (1,'Java is amazing');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (16,'True',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (16,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'JSF is amazing');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (17,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (17,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'There are 1024 mb in a GB.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (18,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (18,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Thoms sons name is Atlas.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (19,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (19,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'3 out of 5 of our profs form this semester are graduates from this program?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (20,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (20,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'Monkeys are related to fish because if need be they can breathe underwater.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (21,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (21,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Though it is difficult, you are able to start a fire by rapidly rubbing two cool ranch doritos together for a long period of time.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (22,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (22,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Singing in the shower lowers your cholesterol, heart rate and risk of cancer and heart disease');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (23,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (23,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'Cats have tails');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (24,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (24,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'Electrons are larger than molecules.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (25,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (25,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'The Atlantic ocean is the biggest ocean on Earth.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (26,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (26,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Sharks are mammals.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (27,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (27,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Herbivors eat meat. ');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (28,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (28,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Spiders have 6 legs ');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (29,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (29,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Molecules are chemically bonded');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (30,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (30,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'Floatation seperates molecules based on density.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'Venus is the closes planet to the sun.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (32,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (32,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Atoms are more stable when their outer shell is full.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (33,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (33,'False',0);

INSERT INTO question (type_id, question) VALUES (1,'The human body has 4 lungs');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (34,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (34,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'Kelvin is a measure of temperature.');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (35,'True.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (35,'False',0);



--Questions with 5 distractors
INSERT INTO question (type_id, question) VALUES (3,'What is the favorite mythical creature of Svillen?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (36,'Dragon.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (36,'Platypus',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (36,'Unicorn.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (36,'Horse',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (36,'All of the above.',0);

INSERT INTO question (type_id, question) VALUES (3,'Grand central station , Park Avenue, New York is the worlds ');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (37,'Largest railway stations.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (37,'Smallest railway station',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (37,'Highest railway station.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (37,'Longest railway station',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (37,'None of the above.',0);

INSERT INTO question (type_id, question) VALUES (3,'Entomology is the science that studies');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (38,'Insects.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (38,'Behaviour of human beings. ',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (38,'The origin and history of technical and scientific terms',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (38,'The formation of rocks',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (38,'None of the above',0);

INSERT INTO question (type_id, question) VALUES (3,'Eritria which became the 182nd member of the UN in 1993 is in the continent of ');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (39,'Asia.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (39,'Africa. ',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (39,'Europe',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (39,'South America',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (39,'Australia',0);

INSERT INTO question (type_id, question) VALUES (3,'For which of the following disciplines is the Nobel Prize awarded?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (40,'Physics and chemistry',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (40,'Physiology or medicine ',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (40,'Literature, Peace and Economics',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (40,'All of the above',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (40,'None of the above',0);

INSERT INTO question (type_id, question) VALUES (3,'Hitler party that cam into power in 1933 is known as');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (41,'Nazi party.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (41,'Labour party',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (41,'Republican party',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (41,'Democratic party',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (41,'Klu-Klux-Klan',0);

INSERT INTO question (type_id, question) VALUES (3,'FFC stand for');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (42,'Foreign Finance Corporation',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (42,'Film FIncance Corporation',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (42,'Federation of Football Council',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (42,'All of the above',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (42,'None of the above',0);

INSERT INTO question (type_id, question) VALUES (3,'Calileo was the Italian astronomer who');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (43,'Developed the telescope',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (43,'Discovered four satelites of jupiter',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (43,'discovered the the movement of a pendulum produces a regular time measurment',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (43,'Was born in Italy',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (43,'All of the above',0);

INSERT INTO question (type_id, question) VALUES (3,'Exposure to  the sun helps improve a person health because ');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (44,'The infared light kills bacteria in the body.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (44,'Resistance power increases',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (44,'The pigment cells in the skin get simulated and produce a healthy tan',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (44,'The ultraviolet rays convert skin oil into Vitamin D',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (44,'All of the above',0);

INSERT INTO question (type_id, question) VALUES (3,'Golf player Vijay Singh belongs to which country');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (45,'Fiji.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (45,'India',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (45,'Canada',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (45,'USA',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (45,'UK',0);

INSERT INTO question (type_id, question) VALUES (3,'First Afghan war took place in');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (46,'1987',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (46,'1839',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (46,'1939',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (46,'1917',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (46,'1872',0);

INSERT INTO question (type_id, question) VALUES (3,'First China war was between');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (47,'China and Britian',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (47,'USA and Britian',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (47,'China and Egypt',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (47,'China and Greece',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (47,'China and France',0);

INSERT INTO question (type_id, question) VALUES (3,'Film and TV institute of India is located at ');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (48,'Rajkot(Gujarat)',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (48,'Pune(Maharasjtra',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (48,'Pimpri(Maharasjtra)',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (48,'Perambu(Tamilndau)',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (48,'Pimpri(Maharasjtra)',0);

INSERT INTO question (type_id, question) VALUES (3,'Germany signed the Armistice Treaty on ___ and World War I ended');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (49,'January 19, 1918',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (49,'May 30, 1918',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (49,'November 11, 1918',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (49,'November 11, 1919',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (49,'February 15, 1918',0);

INSERT INTO question (type_id, question) VALUES (3,'During World War II, when did germany attack France?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (50,' 1940',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (50,'1941',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (50,'1942',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (50,'1943',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (50,'1944',0);


INSERT INTO exam (title, description, exam_date, duration) VALUES ('ShortestExam', '1 minute exam with 50 questions', '2014-12-13', '00:01' );
INSERT INTO exam (title, description, exam_date, duration) VALUES ('LongestExam', '3 hour exam with 1 question', '2014-11-13', '03:00' );


--Adding questions to examd
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 13);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 14);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 15);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 25);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 26);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 40);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 41);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 42);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 43);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 27);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 5);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 6);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 7);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 8);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 9);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 10);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 11);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 12);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 16);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 17);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 18);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 19);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 20);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 21);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 22);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 23);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 24);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 1);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 2);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 3);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 4);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 28);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 29);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 30);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 31);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 32);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 33);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 34);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 35);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 36);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 37);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 38);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 39);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 44);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 45);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 46);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 47);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 48);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 49);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 50);



INSERT INTO exam_question (exam_id, question_id) VALUES (2, 1);
INSERT INTO exam_question (exam_id, question_id) VALUES (2, 2);
INSERT INTO exam_question (exam_id, question_id) VALUES (2, 3);
INSERT INTO exam_question (exam_id, question_id) VALUES (2, 4);
