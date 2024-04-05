-- Outer join: keep rows form one relation that are not 
 -- in the other
 --INSERT INTO recipes values (6, 'Cake', 7.9, 2000);
 --INSERT INTO recipes values (7, 'Donut', 7.2, 2005);
 
SELECT R.rid, R.name
  FROM recipes R
  LEFT OUTER JOIN assignments A USING (rid);