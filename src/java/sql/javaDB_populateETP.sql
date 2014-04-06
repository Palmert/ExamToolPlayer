INSERT INTO question_type (description) VALUES ('2 Distractors');
INSERT INTO question_type (description) VALUES ('4 Distractors');
INSERT INTO question_type (description) VALUES ('5 Distractors');

INSERT INTO users (user_name, password) VALUES ('admin','admin');


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

INSERT INTO exam (title, description, exam_date, duration) VALUES ('My first exam', 'Test exam', '2114-12-13', '12:12:12' );

INSERT INTO exam_question (exam_id, question_id) VALUES (1, 1);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 2);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 3);
INSERT INTO exam_question (exam_id, question_id) VALUES (1, 4);
