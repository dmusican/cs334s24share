   SELECT R.name
     FROM recipes R,
          assignments A
    WHERE R.rid = A.rid
      AND A.iid = 3;

   SELECT *
     FROM recipes R,
          assignments A;

-- String matching
SELECT recipes.year, recipes.year-5
FROM recipes
WHERE recipes.name LIKE 'C%';