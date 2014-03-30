CREATE TABLE users (
            user_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
            user_name VARCHAR(50) NOT NULL,
            password VARCHAR(50) NOT NULL,
            CONSTRAINT user_pk PRIMARY KEY ( user_id )
);

CREATE TABLE exam (
        exam_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
        title VARCHAR(50) NOT NULL,
        description VARCHAR(255),
        exam_date DATE NOT NULL,
        duration TIME,
        CONSTRAINT exam_pk PRIMARY KEY ( exam_id )
);

CREATE TABLE exam_question (
        exam_question_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
        exam_id INTEGER NOT NULL,
        question_id INTEGER NOT NULL,
        CONSTRAINT exam_question_pk  PRIMARY KEY ( exam_question_id )
);

CREATE TABLE question (
        question_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
        type_id INTEGER NOT NULL,
        question VARCHAR(255),
        option_id INTEGER NOT NULL,
        CONSTRAINT question_pk PRIMARY KEY ( question_id )
);

CREATE TABLE question_type (
        type_id INTEGER NOT NULL,
        description VARCHAR(50) NOT NULL,
        CONSTRAINT question_type_pk PRIMARY KEY ( type_id)
);

CREATE TABLE question_option (
        option_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
        question_id INTEGER NOT NULL,
        option_text VARCHAR(255),
        CONSTRAINT question_option_pk PRIMARY KEY ( option_id)
);

ALTER TABLE exam_question ADD CONSTRAINT exam_fk_question FOREIGN KEY ( exam_id ) REFERENCES exam( exam_id );
ALTER TABLE exam_question ADD CONSTRAINT question_fk_exam FOREIGN KEY ( question_id ) REFERENCES question ( question_id );

ALTER TABLE question ADD CONSTRAINT question_fk_question_type FOREIGN KEY ( type_id ) REFERENCES question_type ( type_id );
ALTER TABLE question ADD CONSTRAINT question_fk_option FOREIGN KEY ( option_id ) REFERENCES question_option ( option_id );

ALTER TABLE question_option ADD CONSTRAINT option_fk_question FOREIGN KEY ( question_id) REFERENCES question ( question_id );


        
        

