DROP TABLE IF EXISTS immediate_prereqs;
CREATE TABLE immediate_prereqs (
    prereq_id varchar(10),
    course_id varchar(10)
);

INSERT INTO immediate_prereqs VALUES ('CS111', 'CS201');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS257');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS251');
--INSERT INTO immediate_prereqs VALUES ('CS251', 'CS257');
INSERT INTO immediate_prereqs VALUES ('CS257', 'CS347');
INSERT INTO immediate_prereqs VALUES ('CS201', 'CS344');
--INSERT INTO immediate_prereqs VALUES ('CS111', 'CS111');

-- Just to get second level of prereqs
-- SELECT IP1.prereq_id, IP2.course_id
-- FROM immediate_prereqs IP1,
--      immediate_prereqs IP2
-- WHERE IP1.course_id = IP2.prereq_id;

-- Before getting all of them, let's just combine the originals
-- and the new ones
-- SELECT *
-- FROM immediate_prereqs
-- UNION
-- SELECT IP1.prereq_id, IP2.course_id
-- FROM immediate_prereqs IP1,
--      immediate_prereqs IP2
-- WHERE IP1.course_id = IP2.prereq_id;

-- So, now, all of them!
WITH RECURSIVE all_reqs (prereq_id, course_id) AS (
       SELECT  prereq_id, course_id
        FROM   immediate_prereqs
        UNION ALL
        SELECT AR.prereq_id, IP.course_id
        FROM   all_reqs AR,
               immediate_prereqs IP
        WHERE  AR.course_id = IP.prereq_id
)
SELECT *
FROM all_reqs;













