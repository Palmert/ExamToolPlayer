INSERT INTO question_type (description) VALUES ('2 Distractors');
INSERT INTO question_type (description) VALUES ('4 Distractors');
INSERT INTO question_type (description) VALUES ('5 Distractors');

INSERT INTO users (user_name, password) VALUES ('admin','admin');


INSERT INTO question (type_id, question) VALUES (2,'The main function of myelin is to:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'form a protective coating over nerve axons.',TRUE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'affect the speed of nerve impulses.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'block the reception of acetylcholine.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (1,'form a protective coating over nerve axons.',FALSE);

INSERT INTO question (type_id, question) VALUES (2,'The part of the nerve cell specialized for conducting information is the:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'axon.',TRUE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'cell body.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'soma.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (2,'neurilemma.',FALSE);

INSERT INTO question (type_id, question) VALUES (2,'The cell body of a neuron is also called the:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'dendrite.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'axon.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'myelin.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (3,'soma.',TRUE);

INSERT INTO question (type_id, question) VALUES (2,'Neurons are made up of dendrites, a soma, and:');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'axons.',TRUE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'axles.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'atoms.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (4,'axes.',FALSE);

INSERT INTO question (type_id, question) VALUES (2,'Which of the following is NOT a part of a neuron?');
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'axon.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'axon terminal.',FALSE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'synapse.',TRUE);
INSERT INTO question_option (question_id,option_text,option_isAnswer) VALUES (5,'soma.',FALSE);


