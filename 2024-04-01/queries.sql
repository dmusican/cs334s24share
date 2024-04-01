  SELECT A.iid, I.name, MAX(A.servings)
    FROM assignments A, ingredients I
    WHERE A.iid=I.iid
   GROUP BY A.iid, I.name;
