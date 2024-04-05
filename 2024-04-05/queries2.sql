-- Outer join: keep rows form one relation that are not 
 -- in the other
 --INSERT INTO recipes values (6, 'Cake', 7.9, 2000);
 --INSERT INTO recipes values (7, 'Donut', 7.2, 2005);
 
SELECT R.rid, R.name, A.aid
  FROM recipes R
  LEFT OUTER JOIN assignments A USING (rid);

-- Find all recipes that have no ingredient assignments
SELECT R.rid, R.name, A.aid
  FROM recipes R
  LEFT OUTER JOIN assignments A USING (rid)
  WHERE A.aid IS NULL;

-- also have RIGHT OUTER JOIN, FULL OUTER JOIN


explain SELECT I.name
  FROM ingredients I
 WHERE I.iid IN 
       (SELECT A.iid
          FROM assignments A
         WHERE A.rid=4);

-- runs the subquery: getting all iids where rid is 4
--- so i get iids of 2 and 3
-- so, then goes to outer, gets me all ingredients
-- with iids of 2 and 3, because those are IN the
-- results of the subquery


explain SELECT I.name
  FROM ingredients I
 WHERE EXISTS
       (SELECT A.iid
        FROM assignments A
        WHERE A.rid=4
          AND I.iid=A.iid);

-- above is a correlated subquery
-- run the outer query and for each value in it,
-- .... run the subquery
-- think nested loop
-- FIRST ITERATION: first row of ingredients
-- subquery is
-- SELECT A.iid
-- FROM assignments A
-- WHERE A.rid=4 AND 0=A.iid;
-- this result is empty, so WHERE EXISTS fails
-- and so tuple is not emitted
--... for each tuple in ingredients


-- -- Making subqueries more readable
-- SELECT I.name
--   FROM ingredients I
--  WHERE I.iid IN 
--        (SELECT A.iid
--           FROM assignments A
--          WHERE A.rid=4);

-- CREATE VIEW partialresults(iid) AS
-- SELECT A.iid
--   FROM assignments A
--  WHERE A.rid=4;

-- SELECT I.name
--   FROM ingredients I
--  WHERE I.iid  partialresults;
       
-- Find all assignments where servings = max
create view maxstuff(servings) as
select max(servings)
from assignments;

select *
from assignments A, maxstuff M
where A.servings = M.servings;


