-- JOIN is an alternative syntax for joining
SELECT R.name
FROM recipes R, assignments A
WHERE R.rid = A.rid
   AND A.rid=3;

SELECT R.name
  FROM recipes R
  JOIN assignments A ON R.rid = A.rid
  JOIN ingredients I ON A.iid = I.iid
 WHERE A.rid=3;

 SELECT R.name
  FROM recipes R
  JOIN assignments A USING (rid)
 WHERE A.rid=3;

 -- Outer join: keep rows form one relation that are not 
 -- in the other
 --INSERT INTO recipes values (6, 'Cake', 7.9, 2000);
 --INSERT INTO recipes values (7, 'Donut', 7.2, 2005);
 
