  SELECT I.iid, I.name, COUNT(*) AS count
    FROM ingredients I, assignments A
    WHERE I.iid=A.iid AND I.cal >= 100
   GROUP BY I.iid, I.name;
