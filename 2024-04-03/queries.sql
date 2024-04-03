-- Aggregation goodness
   SELECT max(R.year) as maxyear
     FROM recipes R;

select I.iid, I.name, max(A.servings) as maxservings
from   assignments A, ingredients I
where  A.iid=I.iid
group by I.iid, I.name
having max(A.servings) > 2;