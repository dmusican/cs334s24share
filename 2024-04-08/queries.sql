DROP TABLE IF EXISTS immediate_prereqs;
CREATE TABLE immediate_prereqs (
    prereq_id varchar(10),
    course_id varchar(10)
);

INSERT INTO immediate_prereqs VALUES ('CS111', 'CS201');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS257');
INSERT INTO immediate_prereqs VALUES ('CS257', 'CS347');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS251');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS344');

-- Just to get second level of prereqs
SELECT 
FROM immediate_prereqs IP1,
     immediate_prereqs IP2
WHERE IP1.course_id = IP2.prereq_id;
