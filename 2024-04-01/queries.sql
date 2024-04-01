  SELECT A.iid, MAX(A.servings)
    FROM assignments A
   GROUP BY A.iid;
