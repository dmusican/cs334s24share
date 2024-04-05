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


SELECT I.name
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


SELECT I.name
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

