-- JOIN is an alternative syntax for joining
SELECT R.name
FROM recipes R, assignments A
WHERE R.rid = A.rid
   AND A.rid=3;

SELECT R.name
  FROM recipes R
  JOIN assignments A ON R.rid = A.rid
 WHERE A.rid=3;