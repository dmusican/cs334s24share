-- Aggregation goodness
   SELECT max(R.year) AS maxyear
     FROM recipes R;

   SELECT I.iid,
          I.name,
          max(A.servings)
     FROM assignments A,
          ingredients I
    WHERE A.iid = I.iid
 GROUP BY I.iid,
          I.name;