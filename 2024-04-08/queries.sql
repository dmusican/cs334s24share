CREATE TABLE immediate_prereqs (
    prereq_id varchar(10),
    course_id varchar(10)
);

INSERT INTO immediate_prereqs VALUES ('CS111', 'CS201');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS257');
INSERT INTO immediate_prereqs VALUES ('CS257', 'CS347');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS251');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS344');
