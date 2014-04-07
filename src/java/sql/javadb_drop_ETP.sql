
ALTER TABLE question DROP CONSTRAINT question_fk_question_type;
ALTER TABLE question_option DROP CONSTRAINT option_fk_question;

ALTER TABLE exam_question DROP CONSTRAINT exam_fk_question;
ALTER TABLE exam_question DROP CONSTRAINT question_fk_exam;

ALTER TABLE exam_question DROP CONSTRAINT exam_question_pk;
ALTER TABLE exam_question DROP CONSTRAINT selected_option_fk;

ALTER TABLE exam DROP CONSTRAINT exam_pk;
ALTER TABLE question DROP CONSTRAINT question_pk;
ALTER TABLE question_option DROP CONSTRAINT question_option_pk;
ALTER TABLE question_type DROP CONSTRAINT question_type_pk;
ALTER TABLE users DROP CONSTRAINT user_pk;

DROP TABLE exam;
DROP TABLE exam_question;
DROP TABLE question;
DROP TABLE question_type;
DROP TABLE question_option;
DROP TABLE users;
