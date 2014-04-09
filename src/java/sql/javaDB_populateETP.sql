INSERT INTO question_type (description) VALUES ('2 Distractors');
INSERT INTO question_type (description) VALUES ('4 Distractors');
INSERT INTO question_type (description) VALUES ('5 Distractors');

INSERT INTO users (user_name, password) VALUES ('admin','admin');

# Questions with 4 distractors
INSERT INTO question (type_id, question) VALUES (2,'The main function of myelin is to:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'form a protective coating over nerve axons.',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'affect the speed of nerve impulses.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'block the reception of acetylcholine.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'form a protective coating over nerve axons.',0);

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


# True or false questions
INSERT INTO question (type_id, question) VALUES (1,'Java is amazing');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (16,'True',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (16,'False',1);

INSERT INTO question (type_id, question) VALUES (1,'JSF is amazing');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (17,'True.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (17,'False',1);

# Questions with 5 distractors
INSERT INTO question (type_id, question) VALUES (3,'Svillen\'s favorite mythical creatureis a?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'Dragon.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'Platypus',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'Unicorn.',0);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'Horse',1);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (31,'All of the above.',0);


INSERT INTO exam (title, description, exam_date, duration) VALUES ('Shortest possible exam', '! minute exam with 50 questions', '2014-12-13', '00:01' );
INSERT INTO exam (title, description, exam_date, duration) VALUES ('Longest Possible exam', '3 hour exam with 1 question', '2014-11-13', '03:00' );


INSERT INTO exam_question (exam_id, question_id) VALUES (1, 1);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 2);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 3);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 4);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 5);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 6);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 7);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 8);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 9);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 10);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 11);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 12);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 13);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 14);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 15);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 16);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 17);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 18);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 19);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 20);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 21);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 22);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 23);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 24);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 25);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 26);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 27);
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
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 40);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 41);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 42);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 43);
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
